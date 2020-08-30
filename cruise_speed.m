function dvdt=cruise_speed(t, v)
%flow rate
M=750; %(Kg)
B=30; %( Nsec/m)
Fa=300; %N
% dv/dt=Fa/M-B/M v
dvdt=Fa/M-B/M*v;
