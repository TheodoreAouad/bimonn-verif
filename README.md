# bimonn-verif

Lean 4 formalization of the theory of Binary Morphological Neural Networks (BiMoNN),
from the PhD thesis of Théodore Aouad, "A Foundation For Binary Morphological Neural
Networks" (Université Paris-Saclay, 2024).

The goal is to state and machine-check the results of chapter 4 (equivalence between
thresholded convolutions and binary dilations and erosions, almost binary images, the
BiSE neuron), then chapter 5 (binarization).

## Layout

| File | Content |
|---|---|
| `Bimonn/FirstSteps.lean` | Three warm-up statements, including the monotonicity of the sum of nonnegative weights (the argument behind Proposition 4.1). |

## Build

Requires [elan](https://github.com/leanprover/elan). Then:

```sh
lake exe cache get   # download the precompiled Mathlib
lake build
```

A successful build means every statement in the library has been checked by the Lean kernel.
