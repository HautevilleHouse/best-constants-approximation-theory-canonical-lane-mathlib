import canonicalLaneMathlib.AdmissibleClass

/-!
# Approximation Theory Package
-/

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryCanonicalLaneLean

structure ApproximationAdmittedObject where
  functionSpace : Type u
  norm : Type v
  approximationMetric : Prop
  bestConstantExists : Prop
  conclusion : bestConstantExists

def ApproximationWitnessClosed (O : ApproximationAdmittedObject) : Prop :=
  O.bestConstantExists

structure ApproximationTheoryPackage where
  FunctionSpace : Type u
  Norm : Type v
  approximationMetric : Prop
  bestConstantTheory : Prop

structure ApproximationTheoryEvidence (P : ApproximationTheoryPackage) where
  approximationMetricClosed : P.approximationMetric
  bestConstantTheoryClosed : P.bestConstantTheory

def ApproximationTheoryClosed (P : ApproximationTheoryPackage) : Prop :=
  P.approximationMetric ∧ P.bestConstantTheory

theorem approximation_theory_closed_from_evidence (P : ApproximationTheoryPackage) (E : ApproximationTheoryEvidence P) : ApproximationTheoryClosed P := by
  exact And.intro E.approximationMetricClosed E.bestConstantTheoryClosed

end BestConstantsApproximationTheoryCanonicalLaneLean
end HautevilleHouse