% Exercise: 1

% v0= 0; %(initial speed)
% [t,v]=ode45('cruise_speed', [0 200],v0);
% plot(t,v); grid on;
% title('cruise speed time response to a constant traction force Fa(t) ')

% Exercise: 2

clear;
close all;
clc;
X0=[0;0];% (Initial speed and position)
figure('Renderer', 'painters', 'Position', [10 10 2048 1024])
subplot(4,2,1)

for n=1:8 
    for change=0:50:150
        hold on;
        [t,X]=ode45(@(t,y)mass_spring(t,y,change,100,100,100),[0 200],X0);
         subplot(4,2,1);
         plot(t,X(:,1),'DisplayName',[num2str(change),' % Mass' ]);
         
    end
    hold off;
    legend('show');
    xlabel('Time(t)');
    ylabel('Position');
    title('Mass spring system');

    for change=0:50:150
        hold on;
        [t,X]=ode45(@(t,y)mass_spring(t,y,100,change,100,100),[0 200],X0);
        subplot(4,2,2); 
        plot(t,X(:,1),'DisplayName',[num2str(change),' % Friction' ]);
    end
    hold off;
    legend('show');
    xlabel('Time(t)');
    ylabel('Position');
    title('Mass spring system');

    for change=0:50:150
        hold on;
        [t,X]=ode45(@(t,y)mass_spring(t,y,100,100,change,100),[0 200],X0);
        subplot(4,2,3); 
        plot(t,X(:,1),'DisplayName',[num2str(change),' % Force' ]);
    end
    hold off;
    legend('show');
    xlabel('Time(t)');
    ylabel('Position');
    title('Mass spring system');

    for change=0:50:150
        hold on;
        [t,X]=ode45(@(t,y)mass_spring(t,y,100,100,100,change),[0 200],X0);
        subplot(4,2,4); 
        plot(t,X(:,1),'DisplayName',[num2str(change),' % Spring' ]);
    end
   hold off;
   legend('show');
   xlabel('Time(t)');
   ylabel('Position');
   title('Mass spring system');
   
   %Speed
   for change=0:50:150
        hold on;
        [t,X]=ode45(@(t,y)mass_spring(t,y,change,100,100,100),[0 200],X0);
         subplot(4,2,5);
         plot(t,X(:,2),'DisplayName',[num2str(change),' % Mass' ]);
         
    end
    hold off;
    legend('show');
    xlabel('Time(t)');
    ylabel('Speed');
    title('Mass spring system');

    for change=0:50:150
        hold on;
        [t,X]=ode45(@(t,y)mass_spring(t,y,100,change,100,100),[0 200],X0);
        subplot(4,2,6); 
        plot(t,X(:,2),'DisplayName',[num2str(change),' % Friction' ]);
    end
    hold off;
    legend('show');
    xlabel('Time(t)');
    ylabel('Speed');
    title('Mass spring system');

    for change=0:50:150
        hold on;
        [t,X]=ode45(@(t,y)mass_spring(t,y,100,100,change,100),[0 200],X0);
        subplot(4,2,7); 
        plot(t,X(:,2),'DisplayName',[num2str(change),' % Force' ]);
    end
    hold off;
    legend('show');
    xlabel('Time(t)');
    ylabel('Speed');
    title('Mass spring system');

    for change=0:50:150
        hold on;
        [t,X]=ode45(@(t,y)mass_spring(t,y,100,100,100,change),[0 200],X0);
        subplot(4,2,8); 
        plot(t,X(:,2),'DisplayName',[num2str(change),' % Spring' ]);
    end
   hold off;
   legend('show');
   xlabel('Time(t)');
   ylabel('Speed');
   title('Mass spring system');
end
 


grid;
% figure;
% plot(t,X(:,2),'r');
% xlabel('Time(t)');
% ylabel('Speed');
% title('Mass spring system');
% legend('Speed ');
% grid;


