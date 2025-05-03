# Sensitivity-Analysis-of-Mixed-Strategy-Equilibrium
Thought for a second


````markdown
# game-theory-risk-sim

Monte Carlo–based MATLAB simulations for game-theoretic risk assessment in steganographic systems.

## Repository Structure

```plaintext
/game-theory-risk-sim
│
├── sensitivity_analysis.m        # Sensitivity analysis of mixed Nash equilibrium (MNE) strategies
├── nash_equilibrium_histogram.m  # 2D histogram of Nash-equilibrium (p, q) distributions
├── images/
│   ├── sensitivity_output.png    # Sample output from sensitivity_analysis.m
│   └── nash_histogram.png        # Sample output from nash_equilibrium_histogram.m
├── LICENSE                       # (Optional) License file
└── README.md                     # This file
````

## Description

This repository contains two MATLAB scripts that explore strategic interactions between a steganographic user (𝒰) and an adversary (𝒜):

1. **sensitivity\_analysis.m**

   * Performs sensitivity analysis on the MNE probabilities:

     * $p^*$ = Probability of 𝒜 attacking
     * $q^*$ = Probability of 𝒰 hiding
   * Varies key cost/benefit parameters $B_A_{leak}$, $C_A_{\text{look}}$, $B_U_{\text{harmony}}$, $B_U_{\text{hide}}$, $C_U_{\text{hide}}$, $C_U_{\text{leak}}$ and plots how $p^*$ and $q^*$ respond.

2. **nash\_equilibrium\_histogram.m**

   * Generates synthetic samples of $(p, q)$ around chosen equilibrium values.
   * Builds a 3D bar histogram (using `histogram2`) to visualize the joint distribution of attacker and defender strategies.

## Requirements

* **MATLAB R2018b** or later.
* No additional toolboxes required.

## Usage

### 1. Sensitivity Analysis

```matlab
% In MATLAB command window, navigate to this folder:
>> sensitivity_analysis
```

* Opens a figure with six subplots:

  1. $p^*$ vs. $C^A_{\text{look}}$
  2. $p^*$ vs. $B^A_{\text{leak}}$
  3. $q^*$ vs. $B^U_{\text{harmony}}$
  4. $q^*$ vs. $B^U_{\text{hide}}$
  5. $q^*$ vs. $C^U_{\text{hide}}$
  6. $q^*$ vs. $C^U_{\text{leak}}$

### 2. Nash-Equilibrium Distribution

```matlab
% In MATLAB command window, navigate to this folder:
>> nash_equilibrium_histogram
```

* Opens a 3D bar histogram showing frequency of $(p, q)$ samples.

## Sample Outputs

Figure 1: Sensitivity of MNE strategies to parameter variations.*

Figure 2: 2D histogram of sampled Nash-equilibrium strategies.*

## Topics

```
matlab game-theory cybersecurity steganography risk-analysis monte-carlo
```

## License

This project is released under the [MIT License](LICENSE).
Feel free to reuse and adapt for academic and research purposes.

```
```
