clear all;
close all;

%Condições iniciais
%y0(1,1) = posição inicial do cart: x(0)
%y0(2,1) = ângulo inicial do pêndulo: theta(0)
%y0(3,1) = velocidade inicial do cart: v(0)
%y0(4,1) = velocidade angular inicial do pêndulo: w(0)

%Condição 1: Cart parado, pendulo solto em 30 graus
y0(1,1) = 0;
y0(2,1) = pi/6;
y0(3,1) = 0;
y0(4,1) = 0;

% %Condição 2: Cart e pêndulo em movimento, baixa fricção
% y0(1,1) = 0.1;
% y0(2,1) = pi/6;
% y0(3,1) = 0.1;
% y0(4,1) = pi/20;

% %Condição 3: Cart e pêndulo em movimento, alta fricção
% y0(1,1) = 0.3;
% y0(2,1) = pi/4;
% y0(3,1) = 0;
% y0(4,1) = 0;

% % Condição 4: Cart e pêndulo em movimento, fricção muito alta
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
ylabel('Posição (m)')
title('Posição do Cart')

subplot(2,2,2)
plot(t,y(:,2),'r')
legend('pêndulo')
xlabel('tempo (s)')
ylabel('Posição (rad)')
title('Posição do Pêndulo')

subplot(2,2,3)
plot(t,y(:,3))
legend('cart')
xlabel('tempo (s)')
ylabel('Velocidade (m/s)')
title('Velocidade do Cart')

subplot(2,2,4)
plot(t,y(:,4),'r')
legend('pêndulo')
xlabel('tempo (s)')
ylabel('Velocidade Angular (rad/s)')
title('Velocidade Angular do Pêndulo')
