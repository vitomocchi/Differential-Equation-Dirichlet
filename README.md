# Differential Problem Solver Using Green's Method


### Introduction
This project aims to solve a differential problem with Dirichlet boundary conditions using Green's functions. We explore the equation \( u'' = f(x) \) with boundary conditions \( u(a) = k_1u(\eta_1) \) and \( u(b) = k_2u(\eta_2) \).

### Methodology
1. **Green's Functions**: We use Green's functions to find \( c \) and \( d \) that satisfy the boundary conditions.
2. **Numerical Solution**: MATLAB scripts (`generic.m` and `resolver.m`) are used for numerical approximations.

### Key Steps in Code
1. **Finding \( w(t) \)**: Initializes grid and solves for \( w(t) \) using finite differences.
2. **Finding Constants \( c \) and \( d \)**: Solves a linear system to find \( c \) and \( d \).
3. **Finding \( u(t) \)**: Computes \( u(t) \) using \( w(t) \), \( c \), and \( d \).
4. **Verification**: Verifies the boundary conditions.

### Results
The project successfully solves the differential problem while satisfying Dirichlet boundary conditions, both analytically and numerically.

![Numerical approximation of \( w(x) \)](Figure1.png)
![Comparison between exact and approximated \( u(x) \)](Figure2.png)

### Conclusion
The Green's function method provides a systematic approach to solving differential problems with Dirichlet boundary conditions. The MATLAB code effectively approximates the solution, which is verified against the analytical solution.

