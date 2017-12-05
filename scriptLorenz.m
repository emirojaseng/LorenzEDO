CI=[0,1,0];
param=[10,8/3,28];
h=0.01;
N=6000;
a=5;
[x,y,z,t]=lorenz_EDO(CI, param, h, N);
plot3(x,y,z)
title("Sistema de Lorenz");
xlabel('x');
ylabel('y');
zlabel('z');
pause
clf;

%%%
A=animatedline('Color','b');
axis([(min(x)-a) (max(x)+a) (min(y)-a) (max(y)+a) (min(z)-a) (max(z)+a)]);
title("Sistema de Lorenz");
xlabel('x');
ylabel('y');
zlabel('z');
for i=1:N
    addpoints(A,x(i),y(i),z(i));
    drawnow update
    pause(0.003)
end

pause

clf;
%%%

CI=[0,1.01,0]; %condicion inicial diferente.

[x2,y2,z2,t]=lorenz_EDO(CI, param, h, N);
plot3(x,y,z,'Color', 'r');
title("Perturbación del 1%");
xlabel('x');
ylabel('y');
zlabel('z');
pause
clf;

A=animatedline('Color','b');
B=animatedline('Color','r');
axis([(min(x)-a) (max(x)+a) (min(y)-a) (max(y)+a) (min(z)-a) (max(z)+a)]);
title("original vs perturbacion del 1%");
xlabel('x');
ylabel('y');
zlabel('z');
for i=1:N
    addpoints(A,x(i),y(i),z(i));
    addpoints(B,x2(i),y2(i),z2(i));
    drawnow update
    pause(0.003)
end
pause

compara
