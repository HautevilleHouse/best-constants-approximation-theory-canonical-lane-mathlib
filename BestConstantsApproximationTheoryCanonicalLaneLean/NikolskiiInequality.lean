import canonicalLaneMathlib.ApproximationObject

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryCanonicalLaneLean

structure NikolskiiInequalityPackage where
  functionSpace : Type u
  normPair : ℕ × ℕ
  inequality : Prop
  constant : ℝ
  sharpness : Prop

structure NikolskiiInequalityEvidence (N : NikolskiiInequalityPackage) where
  inequalityClosed : N.inequality
  constantClosed : N.constant = N.constant
  sharpnessClosed : N.sharpness

def NikolskiiInequalityClosed (N : NikolskiiInequalityPackage) : Prop :=
  N.inequality ∧ N.sharpness

theorem nikolskii_inequality_closed_from_evidence (N : NikolskiiInequalityPackage)
    (E : NikolskiiInequalityEvidence N) : NikolskiiInequalityClosed N := by
  exact And.intro E.inequalityClosed E.sharpnessClosed

end BestConstantsApproximationTheoryCanonicalLaneLean
end HautevilleHouse
