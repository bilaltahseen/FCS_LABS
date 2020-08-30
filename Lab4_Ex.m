clear 
close
clc
X0=[0 0 0];
[t,X]=ode45('RLC_COMPLEX',[0 500],X0);
subplot(3,1,1);
plot(t,X(:,1));
legend('i1');
grid on;
title('i1');
subplot(3,1,2);
plot(t,X(:,2),'r');
legend('i2');
grid on;
title('i2');
subplot(3,1,3);
plot(t,X(:,3),'b');
legend('Vc');
grid on;
title('Vc');
