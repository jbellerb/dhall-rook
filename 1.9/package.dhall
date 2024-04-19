λ(kubernetes : ./kubernetes.dhall) →
    ./schemas.dhall kubernetes
  ∧ { NatOrString = (./types.dhall kubernetes).NatOrString
    , Resource = ./typesUnion.dhall kubernetes
    }
