import BestConstantsApproximationTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryCanonicalLaneLean

structure ApproximationContextPackage where
  functionSpace : Type u
  normedSpace : NormedAddCommGroup functionSpace
  approximationMethod : Type v
  optimalError : ℝ
  sharpConstant : ℝ
  constantReached : Prop
  constantUniqueness : Prop

structure ApproximationContextEvidence (G : ApproximationContextPackage) where
  functionSpaceClosed : Nonempty G.functionSpace
  methodDefined : True
  optimalErrorClosed : G.optimalError > 0
  sharpConstantClosed : G.sharpConstant > 0
  constantReachedClosed : G.constantReached
  constantUniquenessClosed : G.constantUniqueness

def ApproximationContextClosed (G : ApproximationContextPackage) : Prop :=
  Nonempty G.functionSpace ∧ G.optimalError > 0 ∧ G.sharpConstant > 0 ∧
  G.constantReached ∧ G.constantUniqueness

theorem approximation_context_closed_from_evidence
    (G : ApproximationContextPackage) (E : ApproximationContextEvidence G) :
    ApproximationContextClosed G := by
  exact And.intro E.functionSpaceClosed
    (And.intro E.optimalErrorClosed
      (And.intro E.sharpConstantClosed
        (And.intro E.constantReachedClosed E.constantUniquenessClosed)))

end BestConstantsApproximationTheoryCanonicalLaneLean
end HautevilleHouse