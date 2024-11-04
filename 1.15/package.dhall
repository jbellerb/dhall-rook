λ(kubernetes : ./kubernetes.dhall) →
  ./schemas.dhall kubernetes ∧ { Resource = ./typesUnion.dhall kubernetes }
