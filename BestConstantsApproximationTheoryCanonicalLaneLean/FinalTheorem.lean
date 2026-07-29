import HautevilleHouse.BestConstantsApproximationTheoryCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryCanonicalLaneLean

def ConstrainedBestConstantsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_best_constants_endgame (A : AdmissibleClass) : ConstrainedBestConstantsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse.BestConstantsApproximationTheoryCanonicalLaneLean
end HautevilleHouse