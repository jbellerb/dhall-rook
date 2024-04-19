λ(kubernetes : ./../kubernetes.dhall) →
  { amqp = None (./../types/io.rook.ceph.v1.AMQPEndpointSpec.dhall kubernetes)
  , http = None (./../types/io.rook.ceph.v1.HTTPEndpointSpec.dhall kubernetes)
  , kafka = None (./../types/io.rook.ceph.v1.KafkaEndpointSpec.dhall kubernetes)
  }
