plant = tf(1,[1 10 20]);
Ki=300; 
Kd=50; 
contr=tf([Kd Kp Ki],[1 0]); 
sys_cl=feedback(contr*plant,1);  
t=0:0.01:2; 
[y,t]=step(sys_cl,t);
plot(t,y);
ss_error = 1-y(end)
stepinfo(sys_cl)
