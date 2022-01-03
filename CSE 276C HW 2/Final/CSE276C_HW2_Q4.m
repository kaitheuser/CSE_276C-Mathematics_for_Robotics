% Name          : Kai Chuen Tan
% Title         : Homework 2
% Course        : CSE 276C: Mathematics for Robotics
% Professor     : Dr. Henrik I. Christensen
% Date          : 17th October 2021

clear all;
clc;

fprintf('Name          : Kai Chuen Tan\n')
fprintf('Title         : Homework 2\n')
fprintf('Course        : CSE 276C: Mathematics for Robotics\n')
fprintf('Professor     : Dr. Henrik I. Christensen\n')
fprintf('Date          : 21st October 2021\n\n')
fprintf('--------------------------------------------------------\n\n')

%% --------------------------------------------------------
% Problem 4 - Lagrange's Method
fprintf('Problem 4 - Lagrange''s Method\n')
fprintf('-------------------------------\n\n')

% Planets' distance from the sun, s [10^6 km]
% [Mercury, Venus, Earth, Mars, Jupiter] (left to right)
s = [58, 108, 149.5, 227, 778];
s_Uranus = 2952.4;

% Days in a Planet Year, T [days]
% [Mercury, Venus, Earth, Mars, Jupiter] (left to right)
T = [88, 224.7, 365.3, 687, 4331.5];

% Applying Vandermonde Matrix and Lagrange Polynomial to get the Lagrange
% Funcion / Equation [a_o, a_1, a_2,..., a_n] 
[fx_Lagrange_coeffs] = Lagrange_Method_Eq(s,T);

% Lagrange Function Check
fx = @(x, coeffs) coeffs(1) + coeffs(2) * x + coeffs(3) * x^2 + coeffs(4) * x^3 + coeffs(5) * x^4;

% Test Lagrange function that calculate the Days in a planet year, T [days]
T_Mars = fx(s(4), fx_Lagrange_coeffs);

T_Earth = fx(s(3), fx_Lagrange_coeffs);

T_Uranus = fx(s_Uranus, fx_Lagrange_coeffs);

% Print Lagrange Function.
fprintf('The Lagrange Function is:\n\n')
fprintf('f(x) = %.4e x%c + %.4e x%c + %.4e x%c + %.4f x + %.4f\n\n',...
    fx_Lagrange_coeffs(end),8308, fx_Lagrange_coeffs(4), 179, fx_Lagrange_coeffs(3), 178, fx_Lagrange_coeffs(2), fx_Lagrange_coeffs(1))

% Print results
fprintf('Given the Mars'' distance from the Sun is %.2f million kilometers,\nthe number of days in the planet year is %.2f days.\n\n',...
    s(4), T_Mars)

fprintf('Given the Earth''s distance from the Sun is %.2f million kilometers,\nthe number of days in the planet year is %.2f days.\n\n',...
    s(3), T_Earth)

fprintf('Given the Uranus''s distance from the Sun is %.2f million kilometers,\nthe number of days in the planet year is %.2f days.\n\n',...
    s_Uranus, T_Uranus)