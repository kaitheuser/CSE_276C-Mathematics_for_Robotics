function [EX] = trapezoidal_method(f_x, a, b, n, h)
% Trapezoidal Method function that calculates the expected value of a
% probability density function (PDF)
% f_x - x * PDF function
% a   - initial x
% b   - final x
% h   - step size
% n   - number of intervals

% Store all the x values in a vector form.
x = a:h:b;

% PDF Function
F_x = f_x(x);

% Calculate the Expected Value with trapezoidal method.
EX = 1 / 2 * h * (F_x(1) + F_x(n + 1)) + h * sum(F_x(2:n));

end

