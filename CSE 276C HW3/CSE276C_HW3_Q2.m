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
% Problem 2 - Solving Expected Value of a PDF with Numerical Integration 
fprintf('Problem 2 - Solving Expected Value of a PDF with Numerical Integration\n')
fprintf('--------------------------------------------------------------------------\n\n')

% Given a probability density function (PDF), f(x)
% f_x = @(x) 1 / exp(1) * exp(x) .* (x + 1);

% x * f(x) function
xf_x = @(x) x / exp(1) .* exp(x) .* (x + 1);

% Given the range from a to b
a = 0; b = 1;

% Given the size of the interval
h = 0.1;

% Calculate the number of intervals, n
% h = (b - a) / n
n = (b - a) / h;

fprintf('Problem 2a - Rectangular Method\n')
fprintf('--------------------------------\n\n')

EX_rectangular = Rectangular_Method(xf_x, a, b, n, h);

fprintf("The expected value, E(X) using Rectangular Method is E(X) = %.6f.\n\n", EX_rectangular)

fprintf('\nProblem 2b - Midpoint Method\n')
fprintf('-------------------------------\n\n')

EX_midpoint = Midpoint_Method(xf_x, a, b, n, h);

fprintf("The expected value, E(X) using Midpoint Method is E(X) = %.6f.\n\n", EX_midpoint)

fprintf('\nProblem 2c - Trapezoidal Method\n')
fprintf('----------------------------------\n\n')

EX_trapezoidal = trapezoidal_method(xf_x, a, b, n, h);

fprintf("The expected value, E(X) using Trapezoidal Method is E(X) = %.6f.\n\n", EX_trapezoidal)