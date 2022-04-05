function yprime = Pendulumcart(t,y)

%gravidade (m/s)
g = 9.8;
%massa do cart (kg)
M = 5.0;
%massa do pendulo (kg)
m = 0.05;
%constante de mola (N/m)
k = 25.0;
%comprimento da haste (m)
L = 0.25;

%p = coeficiente de fric��o do cart "mi" [N/(m/s)]
%b = coeficiente de fric��o do pendulo "gama" [Nm/(rad/s)]

%Condi��o 1
p = 1;
b = 0.001;

% %Condi��o 2
% p = 0.1;
% b = 0.001;

% %Condi��o 3
% p = 1;
% b = 0.1;

% %Condi��o 4
% p = 10;
% b = 0.9;

yprime(1,1) = y(3);
yprime(2,1) = y(4);
yprime(3,1) = ( m*L*(y(4))^2*sin(y(2)) + m*g*sin(y(2))*cos(y(2)) + ...
    (1/L)*b*y(4)*cos(y(2)) - p*y(3) - k*y(1) ) / ( M + m*(sin(y(2)))^2 );
yprime(4,1) = ( -m*L*(y(4))^2*sin(y(2))*cos(y(2)) - ...
    ((1/(L*m))*b*y(4) + g*sin(y(2)))*(M+m) + (p*y(3) + ...
    k*y(1))*cos(y(2)) ) / ( L*(M + m*(sin(y(2)))^2) );
end