λ(kubernetes : ./../kubernetes.dhall) →
  { nodeAffinity : Optional kubernetes.NodeAffinity
  , podAffinity : Optional kubernetes.PodAffinity
  , podAntiAffinity : Optional kubernetes.PodAntiAffinity
  , tolerations : Optional (List kubernetes.Toleration)
  , topologySpreadConstraints :
      Optional (List kubernetes.TopologySpreadConstraint)
  }
