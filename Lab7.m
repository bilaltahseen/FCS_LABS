close;
clear;
clc;
wn = 1;
figure;
zetas = [0.1,0.4,0.7,1.0,2.0];
for count=1:length(zetas)
    sys = tf([wn^2],[1 2*zetas(count)*wn wn^2]);
    fprintf('Value of Zeta %d',zetas(count));
    stepinfo(sys)
    subplot(3,2,count);
    [y,t]=step(sys);
    y(end)
    title(sprintf('Step Response at Zeta = %f',zetas(count)));
end

% % Ex Question # 1
% R = 2.5e3;
% C = 0.003;
% tau = R*C;
% % Transfer Function
% sys = tf(1,[tau 1]);
% stepinfo(sys)
% [y,t]=step(sys);
% plot(t,y);
% display('Seady State Value')
% dcgain(sys);
% y(end)