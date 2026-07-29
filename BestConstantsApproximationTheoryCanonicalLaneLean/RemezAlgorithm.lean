import BestConstantsApproximationTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryCanonicalLaneLean

structure RemezAlgorithmPackage where
  functionSpace : Type u
  normedSpace : NormedAddCommGroup functionSpace
  targetFunction : functionSpace
  degree : ℕ
  initialGuess : functionSpace
  iterationCount : ℕ
  convergedToBestApproximation : Prop
  finalError : ℝ
  convergenceRate : ℝ
  algorithmTerminates : iterationCount < ∞

structure RemezAlgorithmEvidence (R : RemezAlgorithmPackage) where
  convergedToBestApproximationClosed : R.convergedToBestApproximation
  algorithmTerminatesClosed : R.algorithmTerminates

def RemezAlgorithmClosed (R : RemezAlgorithmPackage) : Prop :=
  R.convergedToBestApproximation ∧ R.algorithmTerminates

theorem remez_algorithm_closed_from_evidence (R : RemezAlgorithmPackage) (E : RemezAlgorithmEvidence R) :
    RemezAlgorithmClosed R := by
  exact And.intro E.convergedToBestApproximationClosed E.algorithmTerminatesClosed

end BestConstantsApproximationTheoryCanonicalLaneLean
end HautevilleHouse