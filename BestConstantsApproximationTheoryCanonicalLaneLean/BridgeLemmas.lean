import HautevilleHouse.BestConstantsApproximationTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BestConstantsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end HautevilleHouse.BestConstantsApproximationTheoryCanonicalLaneLean
end HautevilleHouse