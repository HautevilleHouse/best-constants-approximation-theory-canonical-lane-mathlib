import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryCanonicalLaneLean

structure BernsteinInequalityPackage where
  degree : Nat
  polynomialClass : Type u
  supremumNorm : Prop
  bernsteinConstant : ℝ
  inequalityHolds : Prop
  constantMinimal : Prop

structure BernsteinInequalityEvidence (B : BernsteinInequalityPackage) where
  supremumNormClosed : B.supremumNorm
  inequalityHoldsClosed : B.inequalityHolds
  constantMinimalClosed : B.constantMinimal

def BernsteinInequalityClosed (B : BernsteinInequalityPackage) : Prop :=
  B.supremumNorm ∧ B.inequalityHolds ∧ B.constantMinimal

theorem bernstein_inequality_closed_from_evidence (B : BernsteinInequalityPackage)
    (E : BernsteinInequalityEvidence B) : BernsteinInequalityClosed B := by
  exact And.intro E.supremumNormClosed
    (And.intro E.inequalityHoldsClosed E.constantMinimalClosed)

end BestConstantsApproximationTheoryCanonicalLaneLean
end HautevilleHouse