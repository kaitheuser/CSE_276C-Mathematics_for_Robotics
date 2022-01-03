function [x, y_Euler] = ODE_Euler(dydx, a, b, n, h, y_ini)
% ODE_Euler solves 1st order initial value ODE with Euler's Method
% dydx - First Order Differential Equation
% a    - starting point of a range
% b    - ending point of a range
% h    - step size
% n    - number of intervals

% Initialize y vectors;
y_Euler = zeros(n, 1);

% Store all the x values in a vector form.
if a > b
    h = -h;
end
%x = a : h : b;

% Initial value of x
x(1) = a;

% Initial value of y
y_Euler(1) = y_ini;

% Apply Euler's Method
for i = 1 : n
    
    x(i+1) = x(i) + h;
    
    y_Euler(i + 1) = y_Euler(i) + dydx(x(i), y_Euler(i)) * h;
    
end

end
