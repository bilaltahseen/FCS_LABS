
% [t,X]=ode45('RLC',[0 500],X0);
% subplot(2,1,1);
% plot(t,X(:,1));
% legend('Vc');
% grid on;
% title('Vc');
% subplot(2,1,2);
% plot(t,X(:,2),'r');
% legend('i');
% grid on;
% title('i');
clear 
close
clc
X0=[0 0];
for change=0:50:150
    hold on;
    [t,X]=ode45(@(t,y)RLC(t,y,change,100,100,100),[0 200],X0);
    subplot(2,1,1);
    plot(t,X(:,1),'DisplayName',[num2str(change),' % E (Vc)' ]);
    
end
hold off;
grid on;
legend('show');
xlabel('Time(t)');
ylabel('Voltage');
title('RLC Circuit');

for change=0:50:150
    hold on;
    [t,X]=ode45(@(t,y)RLC(t,y,change,100,100,100),[0 200],X0);
    subplot(2,1,2);
    plot(t,X(:,2),'DisplayName',[num2str(change),' % E (Ic)' ]);    
end
hold off;
grid on;
legend('show');
xlabel('Time(t)');
ylabel('Current');
title('RLC Circuit');
