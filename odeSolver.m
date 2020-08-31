function [t,X] = odeSolver(change)
X0=[0;0];% (Initial speed and position)
[t,X]=ode45(@(t,y)mass_spring(t,y,change),[0 200],X0);
end