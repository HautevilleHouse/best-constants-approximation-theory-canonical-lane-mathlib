import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryCanonicalLaneLean

structure BestConstantsSpace where
  space : Type u
  norm : space → ℝ
  normedAddCommGroup : NormedAddCommGroup space := by infer_instance
  norm_eq : ∀ x : space, norm x = ‖x‖ := by intro x; rfl

structure BestConstantsAdmittedObject where
  space : BestConstantsSpace
  approximationProperty : Prop
  conclusion : approximationProperty

def BestConstantsWitnessClosed (O : BestConstantsAdmittedObject) : Prop :=
  O.approximationProperty

end HautevilleHouse.BestConstantsApproximationTheoryCanonicalLaneLean
end HautevilleHouse