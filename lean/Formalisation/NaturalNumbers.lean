module

import Mathlib.Data.Nat.Basic

/-- Adding zero on the left leaves every natural number unchanged. -/
public theorem zero_add_example (n : Nat) : 0 + n = n :=
  Nat.zero_add n
