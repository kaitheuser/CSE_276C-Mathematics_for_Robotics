% Name          : Kai Chuen Tan
% Title         : Homework 3
% Course        : CSE 276C: Mathematics for Robotics
% Professor     : Dr. Henrik I. Christensen
% Date          : 25 th October 2021

clear all;
clc;

fprintf('Name          : Kai Chuen Tan\n')
fprintf('Title         : Homework 3\n')
fprintf('Course        : CSE 276C: Mathematics for Robotics\n')
fprintf('Professor     : Dr. Henrik I. Christensen\n')
fprintf('Date          : 25 th October 2021\n\n')
fprintf('--------------------------------------------------------\n\n')

%% --------------------------------------------------------
% Problem 3 - Solving First Order Odinary Differential Equation
fprintf('Problem 3 - Solving First Order Odinary Differential Equation\n')
fprintf('--------------------------------------------------------------\n\n')

% First Order Differential Equation
dydx = @(x, y) 1 / (x^2 .* (1 - y));

% Positive Analytical Solution, y_positive = 1 + sqrt(2 * (1 + 1/x))
y_positive =@(x) 1 + sqrt(2 * (1 + 1/x));

% Positive Analytical Solution, y_positive = 1 - sqrt(2 * (1 + 1/x))
y_negative =@(x) 1 - sqrt(2 * (1 + 1/x));

% Interval [a, b]
a = 1;
b = 0;

% Step Size, h
h = 0.05;

% Number of intervals, n
n = abs(b - a)/h;

% Initial of of y.
y_ini = -1;

fprintf('Problem 3a - Analytical Method\n')
fprintf('--------------------------------\n\n')
    
y_exact = y_negative(0);

fprintf("Analytical Method's Exact Solution for Problem 3b,c, and d to compare, y(0) = %.6f.\n\n", y_exact)

fprintf('Problem 3b - Euler''s ODE Method\n')
fprintf('--------------------------------\n\n')

[x_Euler, y_Euler] = ODE_Euler(dydx, a, b, n, h, y_ini);

if y_Euler < 0
    
    %y_exact = y_negative(x_Euler(end));
    y_exact = y_negative(0);
    
elseif y_Euler > 0
    
    %y_exact = y_positive(x_Euler(end));
    y_exact = y_positive(0);
    
end

% Calculate the percentage error and accuracy
error_Euler = abs((y_exact - y_Euler(end))/y_exact) * 100;
%accuracy_Euler = abs(100 - error_Euler);

fprintf("Using ODE Euler's Method, y(0) = %.6f.\n\n", y_Euler(end))
fprintf("Percentage error of the ODE Euler's Method Solution =  %.6f %%\n\n", error_Euler)
%fprintf("Accuracy of the ODE Euler's Method Solution =  %.6f %%\n\n", accuracy_Euler)
fprintf("Since the exact analytical solution is negative infinity and the relative error is infinity\n")
fprintf("divided by infinity, which is an intermediate form,\n")
fprintf("the accuracy of the ODE Euler's Method solution y_Euler is undefined at x = 0.\n\n\n")

fprintf('Problem 3c - Runge-Kutta 4th Order''s ODE Method\n')
fprintf('-------------------------------------------------\n\n')

[x_RK4, y_RK4] = ODE_Runge_Kutta_4(dydx, a, b, n, h, y_ini);

if y_RK4 < 0
    
    %y_exact = y_negative(x_RK4(end));
    y_exact = y_negative(0);
    
elseif y_RK4 > 0
    
    %y_exact = y_positive(x_RK4(end));
    y_exact = y_positive(0);
    
end

% Calculate the percentage error and accuracy.
error_RK4 = abs((y_exact - y_RK4(end))/y_exact) * 100;
%accuracy_RK4 = abs(100 - error_RK4);

fprintf("Using ODE Runge-Kutta 4th Order's Method, y(0) = %.2f.\n\n", y_RK4(end))
fprintf("Percentage error of the ODE Runge-Kutta 4th Order's Method Solution =  %.6f %%.\n\n", error_RK4)
%fprintf("Accuracy of the ODE Runge-Kutta 4th Order's Method Solution =  %.6f %%.\n\n", accuracy_RK4)
fprintf("Since the exact analytical solution is negative infinity and the relative error is infinity\n")
fprintf("divided by infinity, which is an intermediate form,\n")
fprintf("the accuracy of the ODE Runge-Kutta 4th Order's Method solution y_RK4 is undefined at x = 0.\n\n\n")

fprintf('Problem 3d - Richardson Extrapolation''s ODE Method\n')
fprintf('-------------------------------------------------\n\n')

[x_Richard, y_Richard] = Richardson_Extrpolation_Method(dydx, a, b, n, h, y_ini);

if y_Richard < 0
    
    %y_exact = y_negative(x_Richard(end));
    y_exact = y_negative(0);
    
elseif y_RK4 > 0
    
    %y_exact = y_positive(x_Richard(end));
    y_exact = y_positive(0);
    
end

% Calculate the percentage error and accuracy.
error_Richard = abs((y_exact - y_Richard(end))/y_exact) * 100;
%accuracy_Richard = abs(100 - error_Richard);

fprintf("Using ODE Richardson Extrapolation Method, y(0) = %.2f.\n\n", y_Richard(end))
fprintf("Percentage error of the ODE Richardson Extrapolation Method Solution =  %.6f %%.\n\n", error_Richard)
%fprintf("Accuracy of the ODE Richardson Extrapolation Method Solution =  %.6f. %%\n\n", accuracy_Richard)
fprintf("Since the exact analytical solution is negative infinity and the relative error is infinity\n")
fprintf("divided by infinity, which is an intermediate form,\n")
fprintf("the accuracy of the ODE Richardson Extrapolation Method solution y_Richard is undefined at x = 0.\n\n\n")