function dXdt=RLC_COMPLEX(t,X)
E=60;     	% (V)
R1=10;   	% (Ohm)
R2=20;      % (Ohm)
L1=1;       % (H)
L2=2;     	% (H)
C=10;      	% (F)
%dX/dt
dXdt(1,1)=(-R1/L1)*X(1)-(1/L1)*X(3)+(1/L1)*E;
dXdt(2,1)=(-R2/L2)*X(2)+(1/L2)*X(3);
dXdt(3,1)=(1/C)*X(1)-(1/C)*X(2);
