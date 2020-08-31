function dXdt=RLC(t,X,e,R,L,C)
e=60*e/100;     	% (V)
R=10*R/100;   	% (Ohm)
L=1*L/100;     	% (H)
C=10*C/100;      	% (F)
%dX/dt
dXdt(1,1)=(1/C)*X(2);
dXdt(2,1)=(-1/L)*X(1)-(R/L)*X(2)+(1/L)*e;