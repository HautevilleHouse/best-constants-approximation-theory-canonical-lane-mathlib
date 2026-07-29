import HautevilleHouse.BestConstantsApproximationTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BestConstantsApproximationTheoryCanonicalLaneLean

structure BestConstantTheoremStatement where
  problemDescription : String
  bestConstantValue : ℝ
  certificateLane : String
  carriedRemainder : String

def defaultTheoremStatement : BestConstantTheoremStatement := {
  problemDescription := "Best constant in the Hardy inequality"
  bestConstantValue := (1 : ℝ)
  certificateLane := "manifold_constrained"
  carriedRemainder := "Unrestricted classical closure remains open"
}

theorem theorem_statement_certificate_lane_checked :
    defaultTheoremStatement.certificateLane = "manifold_constrained" := by
  rfl

end BestConstantsApproximationTheoryCanonicalLaneLean
end HautevilleHouse