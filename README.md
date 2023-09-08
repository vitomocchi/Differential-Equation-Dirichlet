# Differential-Equation-Dirichlet


## Table of Contents
- [Exercise 1](#exercise-1)
  - [Introduction](#introduction)
  - [Analysis](#analysis)
  - [Green's Method](#greens-method)
  - [Code Summary](#code-summary)
- [Conclusion](#conclusion)

---

## Exercise 1

### Introduction
We aim to solve the differential problem subject to Dirichlet boundary conditions:

\[
u'' = f(x), \quad u(a) = k_1u(\eta_1), \quad u(b) = k_2u(\eta_2), \quad a < x < b
\]

We use Green's functions to find a solution of the form \( u(x) = w(x) + (c + dx)[w(\eta_1) + w(\eta_2)] \).

### Analysis
To find \(c\) and \(d\), we impose the boundary conditions and solve the system of equations. The details are as follows:

\[
\alpha c + \beta d = \gamma, \quad \gamma c + \delta y = \epsilon
\]

### Green's Method
We consider Green's differential problem associated with the equation and find \( G(x, t) \) satisfying the boundary conditions.

### Code Summary
In the Matlab script `generic.m`, we compute generic values \(c\) and \(d\) for Green's method applied to problem (1).

In `resolver.m`, we implement Green's method to solve (3). The code is divided into four main steps:
1. Finding \( w(t) \)
2. Finding \( c \) and \( d \)
3. Finding \( u(t) \)
4. Verification of boundary conditions

![Graph of the numerical approximation of \( w(x) \)](Figure1.png)
![Comparison between exact solution \( u(x) \) and numerical approximation of \( u(x) \)](Figure2.png)

## Conclusion
We effectively utilized Green's function method to solve a differential problem with Dirichlet boundary conditions. This method offers a systematic approach to finding solutions while satisfying implicit boundary conditions.

