import BestConstantsApproximationTheoryCanonicalLaneLean.ApproximationContext

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryCanonicalLaneLean

structure SharpConstantResultPackage {G : ApproximationContextPackage} where
  constantValue : ℝ
  proofOfOptimality : Prop
  extremalFunction : G.functionSpace
  extremalAttainsConstant : Prop
  constantMatchesKnownBound : Prop

structure SharpConstantResultEvidence {G : ApproximationContextPackage}
    (R : SharpConstantResultPackage G) where
  proofClosed : R.proofOfOptimality
  extremalAttainsConstantClosed : R.extremalAttainsConstant
  constantMatchesKnownBoundClosed : R.constantMatchesKnownBound

def SharpConstantResultClosed {G : ApproximationContextPackage}
    (R : SharpConstantResultPackage G) : Prop :=
  R.proofOfOptimality ∧ R.extremalAttainsConstant ∧ R.constantMatchesKnownBound

theorem sharp_constant_result_closed_from_evidence
    {G : ApproximationContextPackage} (R : SharpConstantResultPackage G)
    (E : SharpConstantResultEvidence R) : SharpConstantResultClosed R := by
  exact And.intro E.proofClosed
    (And.intro E.extremalAttainsConstantClosed E.constantMatchesKnownBoundClosed)

theorem sharp_constant_value_pos {G : ApproximationContextPackage}
    (R : SharpConstantResultPackage G) (h : SharpConstantResultClosed R) :
    R.constantValue > 0 := by
  sorry

end BestConstantsApproximationTheoryCanonicalLaneLean
end HautevilleHouse