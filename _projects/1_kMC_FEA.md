---
layout: post
title: Kinetic Monte Carlo integration into FEA
img: assets/img/kMC_FEA_preview.png
mermaid:
  enabled: true
  zoomable: true
date: 2025-07-27
description: A proof on concept for kMCFEA of Additive Manufacturing
category: [ongoing, personal]
tags: [Finite Element, Scientific Computing, deal.II]
importance: 1
---

Kinetic Monte Carlo (kMC) is a stochastic simulation technique that, at first
glance, appears to contrast sharply with conventional deterministic approaches
like Finite Element Analysis (FEA). However, kMC offers unique
advantages—particularly in capturing atomistic or mesoscale events driven by
probability—which make it a compelling candidate for coupling with FEA in
certain contexts.

One such context is solid-state phase transformation, where material properties
such as diffusivity, thermal conductivity, or mechanical behavior change
dynamically as phases evolve. In such cases, integrating kMC with FEA can offer
a more physically grounded approach to capturing microstructural evolution and
its impact on macroscopic behavior.

<figure>
    <div class="mermaid-wrapper custom-zoom">
      <pre><code class="language-mermaid">
    --- 
    config:
      flowchart: 
        htmlLabels: false 
        diagramPadding: 1
        useMaxWidth: true
    ---
    flowchart TD
        subgraph kMC["kMC-Coupled FEA"]
            fea2[FEA element]
            kmc["kMC Simulation
            (Event-driven kinetics)"]
            phase2[Track evolving microstructure]
            mat2["`Assign material properties locally per event state
            (Based on dynamic event-based states)`"]
            style mat2 fill:#e78284,stroke:#e78284,stroke-width:4px,color:#fff
            fea2 --> kmc --> phase2 --> mat2
        end

        subgraph JMAK["Traditional FEA – JMAK"]
            fea1[FEA element]
            jmak["JMAK Model
            (Empirical kinetics)"]
            phase1[Compute phase fractions]
            mat1["`Select material properties based on predominant phase
            (Based on phase fraction)`"]
            style mat1 fill:#e78284,stroke:#e78284,stroke-width:4px,color:#fff
            fea1 --> jmak --> phase1 --> mat1
        end

      </code></pre>
    </div>
    <figcaption style="text-align:center; font-style: italic; font-size: 0.9em;">
      Figure 1: Difference between kMC and JMAK models
    </figcaption>

</figure>

In traditional FEA implementations using the JMAK model, phase-dependent
material properties are usually assigned based on the predominant phase in each
element, often using predefined interpolation or switching rules. In contrast,
this project aims to leverage the discrete, event-driven nature of Kinetic
Monte Carlo to dynamically evolve the phase state at a more granular level.
This enables a more physically faithful assignment of material properties,
potentially allowing for heterogeneous mixtures within an element and capturing
complex transformation pathways without relying solely on empirical laws.

This project aims to develop a **proof-of-concept single-element transient
simulation**, using only open-source tools, to demonstrate this coupling
strategy. The focus is on simulating phase transformation behavior using a
Kinetic Monte Carlo scheme and comparing the results against more traditional
approaches used in FEA, such as the Johnson-Mehl-Avrami-Kolmogorov (JMAK)
model.

Development is ongoing, and the source code is publicly available on
[GitHub](https://github.com/divergentrain/KMC-AM.git).

## Key Objectives

- Implement a Kinetic Monte Carlo model for solid-state phase transformation
- Couple it with a simple transient thermal simulation in FEA
- Compare results with classical transformation models (e.g., JMAK, Cellular
  Automata)
- Evaluate computational feasibility and physical fidelity

---

Feel free to explore the repository, contribute, or raise issues if you'd like
to collaborate or provide feedback.
