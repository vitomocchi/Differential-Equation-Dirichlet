clearvars, close all

syms k1 k2 a b n1 n2 wn1 wn2
A=[(1-k1) (a-k1*n1); (1-k2) (b-k2*n2)];
b=[(k1*wn1)/(wn1+wn2) (k2*wn2)/(wn1+wn2)]';

x=A\b; % x(1) is c, x(2) is d
