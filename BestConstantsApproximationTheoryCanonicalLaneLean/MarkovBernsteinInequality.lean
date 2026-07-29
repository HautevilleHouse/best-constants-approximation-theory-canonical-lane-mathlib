import canonicalLaneMathlib.ApproximationObject

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryCanonicalLaneLean

structure MarkovBernsteinInequalityPackage where
  algebraicPolynomials : Type u
  degree : ℕ
  inequality : Prop
  constant : ℝ
  sharpness : Prop

structure MarkovBernsteinInequalityEvidence (M : MarkovBernsteinInequalityPackage) where
  inequalityClosed : M.inequality
  constantClosed : M.constant = M.constant
  sharpnessClosed : M.sharpness

def MarkovBernsteinInequalityClosed (M : MarkovBernsteinInequalityPackage) : Prop :=
  M.inequality ∧ M.sharpness

theorem markov_bernstein_inequality_closed_from_evidence (M : MarkovBernsteinInequalityPackage)
    (E : MarkovBernsteinInequalityEvidence M) : MarkovBernsteinInequalityClosed M := by
  exact And.intro E.inequalityClosed E.sharpnessClosed

end BestConstantsApproximationTheoryCanonicalLaneLean
end HautevilleHouse
