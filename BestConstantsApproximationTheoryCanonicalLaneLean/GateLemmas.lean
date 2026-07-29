import HautevilleHouse.BestConstantsApproximationTheoryCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end HautevilleHouse.BestConstantsApproximationTheoryCanonicalLaneLean
end HautevilleHouse