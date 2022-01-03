function [EX] = Rectangular_Method(f_x, a, b, n, h)
% Rectangular Method function that calculates the expected value of a
% probability density function (PDF)
% f_x - x * PDF function
% a   - initial x
% b   - final x
% h   - step size
% n   - number of intervals

% Store all the x values in a vector form.
x = a:h:b;

% Initialize Expected Value.
EX = 0;

% Calculate the Expected Value with rectangular method.
for iter = 1:n
    
    % Accumulate the EX value
    EX = EX + f_x(x(iter));
    
end

% Calculate the final EX value
EX = h * EX;

end
