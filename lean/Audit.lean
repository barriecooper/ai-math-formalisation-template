import Lean
import Example

open Lean in
run_cmd do
  let env ← getEnv
  let some moduleIndex := env.getModuleIdx? `Example
    | throwError "Could not find the Example module to audit"
  let declarations := env.header.moduleData[moduleIndex]!.constNames
  if declarations.isEmpty then
    throwError "No declarations found in Example"
  -- This example has an empty axiom allowlist.
  for declaration in declarations do
    let axioms ← collectAxioms declaration
    unless axioms.isEmpty do
      logError m!"{declaration} depends on forbidden axioms: {axioms.toList}"
  logInfo m!"Checked axiom dependencies of {declarations.size} Example declarations"
