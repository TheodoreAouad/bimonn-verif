/-
Copyright (c) 2026 Théodore Aouad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Théodore Aouad
-/
module

public import Mathlib

/-!
# First steps

Three tiny statements, from pure logic to a first lemma in the spirit of the thesis.
Each one is checked by the Lean kernel when the file compiles.
-/

public section

open Finset

namespace Bimonn

/-- Example 1 (pure logic): the two sides of a conjunction can be swapped. -/
theorem and_swap_example (p q : Prop) (h : p ∧ q) : q ∧ p := by
  obtain ⟨hp, hq⟩ := h
  constructor
  · exact hq
  · exact hp

/-- Example 2 (real numbers): a strict and a large inequality chain into a strict one. -/
theorem lt_of_lt_bound (b U w : ℝ) (hb : b < U) (hU : U ≤ w) : b < w := by
  linarith

/-- Example 3 (first thesis-flavoured lemma): with nonnegative weights, the sum of the
weights over a set of pixels is monotone in the set. This is the argument behind
Proposition 4.1 of the manuscript. -/
theorem sum_weights_mono {ι : Type*} (W : ι → ℝ) (hW : ∀ k, 0 ≤ W k)
    (X Y : Finset ι) (hXY : X ⊆ Y) : ∑ k ∈ X, W k ≤ ∑ k ∈ Y, W k := by
  apply Finset.sum_le_sum_of_subset_of_nonneg hXY
  intro k _ _
  exact hW k

end Bimonn
