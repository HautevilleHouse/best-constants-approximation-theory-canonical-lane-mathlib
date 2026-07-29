import BestConstantsApproximationTheoryCanonicalLaneLean.ApproximationTheoryPackage

/-!
# Jackson Inequality Package
-/

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryCanonicalLaneLean

structure JacksonInequalityPackage (P : ApproximationTheoryPackage) where
  targetFunction : P.FunctionSpace
  degree : Nat
  bestConstant : ℝ
  inequalityHolds : Prop
  constantOptimal : Prop

structure JacksonInequalityEvidence (P : ApproximationTheoryPackage) (J : JacksonInequalityPackage P) where
  inequalityHoldsClosed : J.inequalityHolds
  constantOptimalClosed : J.constantOptimal

def JacksonInequalityClosed (P : ApproximationTheoryPackage) (J : JacksonInequalityPackage P) : Prop :=
  J.inequalityHolds ∧ J.constantOptimal

theorem jackson_inequality_closed_from_evidence (P : ApproximationTheoryPackage) (J : JacksonInequalityPackage P) (E : JacksonInequalityEvidence P J) : JacksonInequalityClosed P J := by
  exact And.intro E.inequalityHoldsClosed E.constantOptimalClosed

end BestConstantsApproximationTheoryCanonicalLaneLean
end HautevilleHouse