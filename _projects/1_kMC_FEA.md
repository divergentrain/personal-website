---
layout: post
title: Kinetic Monte Carlo integration into FEA
img: assets/img/kMC_FEA_preview.png
date: 2025-07-27
description: A proof on concept for kMCFEA of Additive Manufacturing
category: [ongoing, personal]
tags: [Finite Element, Scientific Computing, deal.II]
importance: 1
---

Kinetic Monte Carlo (kMC) is a stochastic simulation technique that, at first glance, appears to contrast sharply with conventional deterministic approaches like Finite Element Analysis (FEA). However, kMC offers unique advantages—particularly in capturing atomistic or mesoscale events driven by probability—which make it a compelling candidate for coupling with FEA in certain contexts.

One such context is solid-state phase transformation, where material properties such as diffusivity, thermal conductivity, or mechanical behavior change dynamically as phases evolve. In such cases, integrating kMC with FEA can offer a more physically grounded approach to capturing microstructural evolution and its impact on macroscopic behavior.

{% include figure.liquid loading="eager" path="assets/img/kMC_FEA.png" title="JMAK vs kMC" class="img-fluid rounded z-depth-1" %}

In traditional FEA implementations using the JMAK model, phase-dependent material properties are usually assigned based on the predominant phase in each element, often using predefined interpolation or switching rules. In contrast, this project aims to leverage the discrete, event-driven nature of Kinetic Monte Carlo to dynamically evolve the phase state at a more granular level. This enables a more physically faithful assignment of material properties, potentially allowing for heterogeneous mixtures within an element and capturing complex transformation pathways without relying solely on empirical laws.

This project aims to develop a **proof-of-concept single-element transient simulation**, using only open-source tools, to demonstrate this coupling strategy. The focus is on simulating phase transformation behavior using a Kinetic Monte Carlo scheme and comparing the results against more traditional approaches used in FEA, such as the Johnson-Mehl-Avrami-Kolmogorov (JMAK) model.

Development is ongoing, and the source code is publicly available on [GitHub](https://github.com/gmsundar15/KMC-AM.git).

## Key Objectives

- Implement a Kinetic Monte Carlo model for solid-state phase transformation
- Couple it with a simple transient thermal simulation in FEA
- Compare results with classical transformation models (e.g., JMAK, Cellular Automata)
- Evaluate computational feasibility and physical fidelity

---

Feel free to explore the repository, contribute, or raise issues if you'd like to collaborate or provide feedback.
