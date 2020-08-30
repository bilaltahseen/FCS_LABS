clear all;
close all;
clc;
X0=[0;0;0;0];	% (Initial xb, Vb, xa, Va)
figure;
for change=0:50:150   
    [t,X]=ode45(@(t,y)multiple_element_sys(t,y,change,100,100,100,100,100,100,100),[0 200],X0);
    subplot(2,1,1);
    plot(t,X(:,1),'DisplayName',[num2str(change),' % Mass Xb' ]);
    hold on
    plot(t,X(:,2),'DisplayName',[num2str(change),' % Mass Vb' ]);
end
legend('show');
hold on
xlabel('Time(t)');
ylabel('Position xb / Speed Vb');
title('Mass spring system');
grid;
for change=0:50:150   
    [t,X]=ode45(@(t,y)multiple_element_sys(t,y,change,100,100,100,100,100,100,100),[0 200],X0);
    subplot(2,1,2);
    plot(t,X(:,3),'DisplayName',[num2str(change),' % Mass Xa' ]);
    hold on
    plot(t,X(:,4),'DisplayName',[num2str(change),' % Mass Va' ]);
end
legend('show');
hold on
xlabel('Time(t)');
ylabel('Position xa / Speed Va');
title('Mass spring system');
grid;
