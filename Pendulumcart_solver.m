clear all;
close all;

%Condi��es iniciais
%y0(1,1) = posi��o inicial do cart: x(0)
%y0(2,1) = �ngulo inicial do p�ndulo: theta(0)
%y0(3,1) = velocidade inicial do cart: v(0)
%y0(4,1) = velocidade angular inicial do p�ndulo: w(0)

%Condi��o 1: Cart parado, pendulo solto em 30 graus
y0(1,1) = 0;
y0(2,1) = pi/6;
y0(3,1) = 0;
y0(4,1) = 0;

% %Condi��o 2: Cart e p�ndulo em movimento, baixa fric��o
% y0(1,1) = 0.1;
% y0(2,1) = pi/6;
% y0(3,1) = 0.1;
% y0(4,1) = pi/20;

% %Condi��o 3: Cart e p�ndulo em movimento, alta fric��o
% y0(1,1) = 0.3;
% y0(2,1) = pi/4;
% y0(3,1) = 0;
% y0(4,1) = 0;

% % Condi��o 4: Cart e p�ndulo em movimento, fric��o muito alta
% y0(1,1) = 0.2;
% y0(2,1) = pi/10;
% y0(3,1) = 0;
% y0(4,1) = 0;

tspan = [0 60];
[t,y] = ode45('Pendulumcart', tspan, y0);

subplot(2,2,1)
plot(t,y(:,1))
legend('cart')
xlabel('tempo (s)')
ylabel('Posi��o (m)')
title('Posi��o do Cart')

subplot(2,2,2)
plot(t,y(:,2),'r')
legend('p�ndulo')
xlabel('tempo (s)')
ylabel('Posi��o (rad)')
title('Posi��o do P�ndulo')

subplot(2,2,3)
plot(t,y(:,3))
legend('cart')
xlabel('tempo (s)')
ylabel('Velocidade (m/s)')
title('Velocidade do Cart')

subplot(2,2,4)
plot(t,y(:,4),'r')
legend('p�ndulo')
xlabel('tempo (s)')
ylabel('Velocidade Angular (rad/s)')
title('Velocidade Angular do P�ndulo')
