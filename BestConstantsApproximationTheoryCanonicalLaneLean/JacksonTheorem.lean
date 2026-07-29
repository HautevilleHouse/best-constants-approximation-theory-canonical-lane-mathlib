import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryCanonicalLaneLean

structure JacksonTheoremPackage where
  targetFunction : Type u
  approximationDegree : Nat
  jacksonConstant : ℝ
  errorBound : Prop
  constantSharp : Prop

structure JacksonTheoremEvidence (J : JacksonTheoremPackage) where
  errorBoundClosed : J.errorBound
  constantSharpClosed : J.constantSharp

def JacksonTheoremClosed (J : JacksonTheoremPackage) : Prop :=
  J.errorBound ∧ J.constantSharp

theorem jackson_theorem_closed_from_evidence (J : JacksonTheoremPackage)
    (E : JacksonTheoremEvidence J) : JacksonTheoremClosed J := by
  exact And.intro E.errorBoundClosed E.constantSharpClosed

end BestConstantsApproximationTheoryCanonicalLaneLean
end HautevilleHouse