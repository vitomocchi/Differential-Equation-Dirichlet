clearvars, close all

W=@(x)sin(x)-x.*sin(1);

% STEP 1: FINDING THE FUNCTION w(t) ASSOCIATED TO THE GREEN PROBLEM

N = 100;  % Number of interior points (excluding the boundary points)
h = 1/(N+1);  % Grid spacing

% Construct the tridiagonal matrix A
diagonal=-2*ones(N,1);
offDiagonal=ones(N-1,1);
A=diag(diagonal) + diag(offDiagonal,1)+diag(offDiagonal,-1);
A=A/h^2;

% Construct the vector B
B=-sin((1:N)*h)';

% Apply the boundary conditions
B(1)=B(1)-0;  % w(0)=0
B(end)=B(end)-0;  % w(1)=0

% Solve the linear system
w=[0; A\B; 0];  % Include the boundary points in the solution

% Plot the solution
figure()
x = linspace(0,1,N+2);
plot(x,w,'b*',x,W(x),'r--');
xlabel('t');
ylabel('w(t)');
title('Solution of the ODE associated to the Green problem');
legend('Approxim.','Exact');

% STEP 2: FINDING THE CONSTANTS c AND d

a=0;
b=1;
n1=1/5;
n2=1/6;
k1=1/2;
k2=2/3;

wn1=W(n1);
wn2=W(n2);

A=[(1-k1) (a-k1*n1); (1-k2) (b-k2*n2)];
b=[(k1*wn1)/(wn1+wn2) (k2*wn2)/(wn1+wn2)]';

X=A\b; 

c=X(1); d=X(2);

% STEP 3: FINDING u(t)

u=w+(c+d.*x').*(wn1+wn2);

figure()
plot(x,u);
xlabel('t');
ylabel('u(t)');
title('Solution of the differential problem');

% STEP 4: VERIFICATION OF BOUNDARY CONDITION

u0=u(1);
u1=u(end);

u0G=1/2*u(22);
u1G=2/3*u(18);

fprintf('\nu0=%f, u0G=%f',u0,u0G);
fprintf('\nu1=%f, u1G=%f\n',u1,u1G);


