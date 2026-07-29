import HautevilleHouse.BestConstantsApproximationTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryCanonicalLaneLean

structure MarkovNikolskiiPackage (A : AdmissibleClass) where
  markovConstant : ℝ
  nikolskiiConstant : ℝ
  markovInequality : Prop
  nikolskiiInequality : Prop
  markovInequalityClosed : markovInequality
  nikolskiiInequalityClosed : nikolskiiInequality

structure MarkovNikolskiiEvidence (A : AdmissibleClass) (MN : MarkovNikolskiiPackage A) where
  markovInequalityClosed : MN.markovInequality
  nikolskiiInequalityClosed : MN.nikolskiiInequality

def MarkovNikolskiiClosed (A : AdmissibleClass) (MN : MarkovNikolskiiPackage A) : Prop :=
  MN.markovInequality ∧ MN.nikolskiiInequality

theorem markovNikolskii_closed_from_evidence (A : AdmissibleClass) (MN : MarkovNikolskiiPackage A)
    (E : MarkovNikolskiiEvidence A MN) : MarkovNikolskiiClosed A MN := by
  exact And.intro E.markovInequalityClosed E.nikolskiiInequalityClosed

end HautevilleHouse.BestConstantsApproximationTheoryCanonicalLaneLean
end HautevilleHouse