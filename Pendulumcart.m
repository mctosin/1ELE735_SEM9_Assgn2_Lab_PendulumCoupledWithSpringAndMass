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

%p = coeficiente de fricção do cart "mi" [N/(m/s)]
%b = coeficiente de fricção do pendulo "gama" [Nm/(rad/s)]

%Condição 1
p = 1;
b = 0.001;

% %Condição 2
% p = 0.1;
% b = 0.001;

% %Condição 3
% p = 1;
% b = 0.1;

% %Condição 4
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