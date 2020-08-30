function dXdt=mass_spring(t,X,M,B,Fa,K)
M=705*M/100;        %  Kg
B=30*B/100;   					% (Nsec/m)
Fa=300*Fa/100; 					% (N)
K=15*K/100;   					% (N/m)
r=1;					    
dXdt(1,1)=X(2); 			% dX/dt
dXdt(2,1)=-B/M*X(2)-K/M*X(1)^r+Fa/M; 


