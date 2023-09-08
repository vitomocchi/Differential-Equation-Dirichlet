

### Introduction
This project aims to solve a specific differential problem with Dirichlet boundary conditions using Green's functions. The problem involves a function \( f(x) \) and two real constants \( k_1 \) and \( k_2 \).

### Analysis

#### Green's Coefficients
The project starts by finding the coefficients \( c \) and \( d \) that satisfy the boundary conditions. This is done through a system of equations involving \( c \) and \( d \).

#### Green's Method
The Green's method is then explained, focusing on how it can be applied to the given differential problem. A function \( w(t) \) is derived that satisfies a standard homogeneous problem.

#### An Application of Green's Method
The method is applied to a specific problem involving \( \sin(t) \). The solution \( u(x) \) is constructed using Green's method and is numerically solved using MATLAB.

### Code Summary
Two MATLAB scripts are used:
- `generic.m`: Computes generic values \( c \) and \( d \) for Green's method.
- `resolver.m`: Implements Green's method to solve the specific problem. The code is divided into four main steps: finding \( \omega(t) \), finding \( c \) and \( d \), finding \( u(t) \), and verifying the boundary condition.

### Conclusion
The project successfully uses Green's function method to solve a differential problem with Dirichlet boundary conditions. The method provides a systematic approach to finding solutions while satisfying implicit boundary conditions.

