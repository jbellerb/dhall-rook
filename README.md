# dhall-rook

This package provides [Dhall](https://dhall-lang.org/) bindings for [Rook](https://rook.io/). For why this may be useful to you, check out [dhall-kubernetes](https://github.com/dhall-lang/dhall-kubernetes).

## Usage

To better support various clusters, dhall-rook does not prescribe a specific version of dhall-kubernetes. Instead, all expressions in dhall-rook are functions which take the types provided by dhall-kubernetes as a parameter. It's recommended to call the main package function from a central import file, like a `rook.dhall`, similar to this:

```dhall
let rook =
      https://raw.githubusercontent.com/jbellerb/dhall-rook/<commit-hash>/1.9/package.dhall

in  rook
      ( https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/<commit-hash>/1.22/types.dhall
      ).(https://raw.githubusercontent.com/jbellerb/dhall-rook/<commit-hash>/1.9/kubernetes.dhall)
```

Imports should probably use a commit hash to avoid breaking with upstream changes. It's also a good idea to `dhall freeze` this file, which allows caching and prevents execution if the contents change. With this import file, rook objects can be created:

```dhall
let kubernetes = ./kubernetes.dhall

let rook = ./rook.dhall

let store =
      rook.CephObjectStore::{
      , metadata = kubernetes.ObjectMeta::{
        , name = Some "my-store"
        , namespace = Some "rook-ceph"
        }
      , spec = rook.ObjectStoreSpec::{
        , metadataPool = Some rook.PoolSpec::{
          , failureDomain = Some "host"
          , replicated = Some rook.ReplicatedSpec::{ size = 3 }
          }
        , dataPool = Some rook.PoolSpec::{
          , failureDomain = Some "host"
          , erasureCoded = Some rook.ErasureCodedSpec::{
            , dataChunks = 2
            , codingChunks = 1
            }
          }
        , preservePoolsOnDelete = Some True
        , gateway = Some rook.GatewaySpec::{
          , sslCertificateRef = None Text
          , port = Some 80
          -- , securePort = Some 443
          , instances = Some 1
          }
        , healthCheck = Some rook.BucketHealthCheckSpec::{
          , bucket = Some rook.HealthCheckSpec::{
            , disabled = Some False
            , interval = Some "60s"
            }
          }
        }
      }

in  store
```

<br />

#### License

<sup>
Copyright (C) Jared Beller, 2022.
</sup>
<br />
<sup>
Released under the <a href="LICENSE">Apache License, Version 2.0</a>.
</sup>
