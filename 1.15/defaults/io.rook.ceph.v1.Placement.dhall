λ(kubernetes : ./../kubernetes.dhall) →
  { nodeAffinity = None kubernetes.NodeAffinity
  , podAffinity = None kubernetes.PodAffinity
  , podAntiAffinity = None kubernetes.PodAntiAffinity
  , tolerations = None (List kubernetes.Toleration)
  , topologySpreadConstraints = None (List kubernetes.TopologySpreadConstraint)
  }
