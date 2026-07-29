import HautevilleHouse.BestConstantsApproximationTheoryCanonicalLaneLean.ApproximationObjects

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryCanonicalLaneLean

structure AdmissibleClass where
  object : BestConstantsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BestConstantsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HautevilleHouse.BestConstantsApproximationTheoryCanonicalLaneLean
end HautevilleHouse