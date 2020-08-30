function dXdt=RLC(t,X)
e=60;     	% (V)
R=10;   	% (Ohm)
L=1;     	% (H)
C=10;      	% (F)
%dX/dt
dXdt(1,1)=(1/C)*X(2);
dXdt(2,1)=(-1/L)*X(1)-(R/L)*X(2)+(1/L)*e;