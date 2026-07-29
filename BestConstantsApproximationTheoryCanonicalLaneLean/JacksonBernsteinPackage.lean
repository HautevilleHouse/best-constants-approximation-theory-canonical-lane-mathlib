import HautevilleHouse.BestConstantsApproximationTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryCanonicalLaneLean

structure JacksonBernsteinPackage (A : AdmissibleClass) where
  jacksonConstant : ℝ
  bernsteinConstant : ℝ
  jacksonInequality : Prop
  bernsteinInequality : Prop
  jacksonInequalityClosed : jacksonInequality
  bernsteinInequalityClosed : bernsteinInequality

structure JacksonBernsteinEvidence (A : AdmissibleClass) (JB : JacksonBernsteinPackage A) where
  jacksonInequalityClosed : JB.jacksonInequality
  bernsteinInequalityClosed : JB.bernsteinInequality

def JacksonBernsteinClosed (A : AdmissibleClass) (JB : JacksonBernsteinPackage A) : Prop :=
  JB.jacksonInequality ∧ JB.bernsteinInequality

theorem jacksonBernstein_closed_from_evidence (A : AdmissibleClass) (JB : JacksonBernsteinPackage A)
    (E : JacksonBernsteinEvidence A JB) : JacksonBernsteinClosed A JB := by
  exact And.intro E.jacksonInequalityClosed E.bernsteinInequalityClosed

end HautevilleHouse.BestConstantsApproximationTheoryCanonicalLaneLean
end HautevilleHouse