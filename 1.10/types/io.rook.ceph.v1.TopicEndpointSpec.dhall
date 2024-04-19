λ(kubernetes : ./../kubernetes.dhall) →
  { amqp : Optional (./io.rook.ceph.v1.AMQPEndpointSpec.dhall kubernetes)
  , http : Optional (./io.rook.ceph.v1.HTTPEndpointSpec.dhall kubernetes)
  , kafka : Optional (./io.rook.ceph.v1.KafkaEndpointSpec.dhall kubernetes)
  }
