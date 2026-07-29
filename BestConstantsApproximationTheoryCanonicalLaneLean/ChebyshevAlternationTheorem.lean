import BestConstantsApproximationTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryCanonicalLaneLean

structure ChebyshevAlternationPackage where
  interval : Set ℝ
  continuousFunctionSpace : Type u
  normedSpace : NormedAddCommGroup continuousFunctionSpace
  targetFunction : continuousFunctionSpace
  degree : ℕ
  bestApproximationPolynomial : continuousFunctionSpace
  alternationPoints : List ℝ
  alternationSetSizeGeqDegreePlusTwo : alternationPoints.length ≥ degree + 2
  signAlternation : Prop
  errorMagnitudeConstant : ℝ
  alternationConditionHolds : signAlternation ∧ (∀ x ∈ alternationPoints, |(targetFunction - bestApproximationPolynomial) x| = errorMagnitudeConstant)

structure ChebyshevAlternationEvidence (C : ChebyshevAlternationPackage) where
  alternationConditionHoldsClosed : C.alternationConditionHolds
  bestApproximationExists : Prop
  bestApproximationUnique : Prop
  alternationImpliesBest : C.alternationConditionHolds → (bestApproximationExists ∧ bestApproximationUnique)

def ChebyshevAlternationClosed (C : ChebyshevAlternationPackage) : Prop :=
  C.alternationConditionHolds ∧ C.alternationSetSizeGeqDegreePlusTwo

theorem chebyshev_alternation_closed_from_evidence (C : ChebyshevAlternationPackage) (E : ChebyshevAlternationEvidence C) :
    ChebyshevAlternationClosed C := by
  exact And.intro E.alternationConditionHoldsClosed C.alternationSetSizeGeqDegreePlusTwo

end BestConstantsApproximationTheoryCanonicalLaneLean
end HautevilleHouse