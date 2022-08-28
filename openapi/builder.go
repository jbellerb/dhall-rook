package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"strings"

	"github.com/emicklei/go-restful/v3"
	"k8s.io/kube-openapi/pkg/builder"
	"k8s.io/kube-openapi/pkg/common"
	"k8s.io/kube-openapi/pkg/util"
	"k8s.io/kube-openapi/pkg/validation/spec"
)

func main() {
	outputFile := os.Args[2]

	config := &common.Config{
		ProtocolList:   []string{"https"},
		IgnorePrefixes: []string{"/swaggerapi"},
		Info: &spec.Info{
			InfoProps: spec.InfoProps{
				Title:   "rook-ceph",
				Version: os.Args[1],
			},
		},
		ResponseDefinitions: map[string]spec.Response{
			"NotFound": spec.Response{
				ResponseProps: spec.ResponseProps{
					Description: "Entity not found.",
				},
			},
		},
		CommonResponses: map[int]spec.Response{
			404: *spec.ResponseRef("#/responses/NotFound"),
		},
		GetDefinitions: GetCleanedOpenAPIDefinitions,
		GetDefinitionName: func(name string) (string, spec.Extensions) {
			namer := ParseName(name)
			switch namer.path {
			case "github.com/rook/rook/pkg/apis/ceph.rook.io":
				return fmt.Sprintf("io.rook.ceph.%s.%s", namer.version, namer.name), nil
			case "github.com/kube-object-storage/lib-bucket-provisioner/pkg/apis/objectbucket.io":
				return fmt.Sprintf("io.objectbucket.%s.%s", namer.version, namer.name), nil
			case "k8s.io/api/core":
				return fmt.Sprintf("io.k8s.api.core.%s.%s", namer.version, namer.name), nil
			case "k8s.io/apimachinery/pkg/api":
				return fmt.Sprintf("io.k8s.apimachinery.pkg.api.%s.%s", namer.version, namer.name), nil
			case "k8s.io/apimachinery/pkg/apis/meta":
				return fmt.Sprintf("io.k8s.apimachinery.pkg.apis.meta.%s.%s", namer.version, namer.name), nil
			case "k8s.io/apimachinery/pkg/util":
				return fmt.Sprintf("io.k8s.apimachinery.pkg.util.%s.%s", namer.version, namer.name), nil
			case "k8s.io/apimachinery/pkg":
				return fmt.Sprintf("io.k8s.apimachinery.pkg.%s.%s", namer.version, namer.name), nil
			}

			log.Fatalf("unrecognised prefix: %s", namer.path)
			return "this should never happen", nil
		},
	}

	swagger, err := builder.BuildOpenAPISpec(CreateWebServices(), config)
	if err != nil {
		log.Fatalf("error building spec: %s", err.Error())
	}

	jsonSpec, err := swagger.MarshalJSON()
	if err != nil {
		log.Fatalf("error marshaling to json: %s", err.Error())
	}

	err = ioutil.WriteFile(outputFile, jsonSpec, 0644)
	if err != nil {
		log.Fatalf("error writing to file: %s", err.Error())
	}
}

func GetCleanedOpenAPIDefinitions(ref common.ReferenceCallback) map[string]common.OpenAPIDefinition {
	defs := GetOpenAPIDefinitions(ref)
	for name, value := range defs {
		// Populate meta.v1.TypeMeta
		properties := value.Schema.SchemaProps.Properties
		_, hasKind := properties["kind"]
		_, hasApiVersion := properties["apiVersion"]
		if hasKind && hasApiVersion {
			schema := value.Schema
			namer := ParseName(name)
			schema.VendorExtensible.AddExtension(
				"x-kubernetes-group-version-kind",
				[1]map[string]string{
					map[string]string{
						"version": namer.version,
						"kind":    namer.name,
					},
				},
			)
			value.Schema = schema
			defs[name] = value
		}
	}

	return defs
}

var _ = util.OpenAPICanonicalTypeNamer(&typeNamer{})

type typeNamer struct {
	name    string
	path    string
	version string
}

func ParseName(name string) typeNamer {
	pathSplit := strings.LastIndex(name, "/")
	versionSplit := strings.LastIndex(name, ".")

	return typeNamer{
		name:    name[versionSplit+1:],
		path:    name[0:pathSplit],
		version: name[pathSplit+1 : versionSplit],
	}
}

func (t *typeNamer) OpenAPICanonicalTypeName() string {
	return fmt.Sprintf("%s/%s.%s", t.path, t.version, t.name)
}

func CreateWebServices() []*restful.WebService {
	ws := new(restful.WebService)

	for name, _ := range GetCleanedOpenAPIDefinitions(func(name string) spec.Ref {
		return spec.Ref{}
	}) {
		namer := ParseName(name)

		if namer.path != "github.com/rook/rook/pkg/apis/ceph.rook.io" &&
			namer.path != "github.com/kube-object-storage/lib-bucket-provisioner/pkg/apis/objectbucket.io" {
			continue
		}

		ws.Route(ws.GET(fmt.Sprintf("%s/%s", strings.ToLower(namer.version), strings.ToLower(namer.name))).
			Operation(fmt.Sprintf("get-%s.%s", namer.version, namer.name)).
			Produces(restful.MIME_JSON).
			To(func(*restful.Request, *restful.Response) {}).
			Writes(&namer))
	}

	return []*restful.WebService{ws}
}
