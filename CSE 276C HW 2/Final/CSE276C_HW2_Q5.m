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
fprintf('Date          : 17th October 2021\n\n')
fprintf('--------------------------------------------------------\n\n')

%% --------------------------------------------------------
% Problem 5 - Solving Alice's Problem with Bisection Method
fprintf('Problem 5 - Solving Alice''s Problem with Bisection Method \n')

% Define x
x =linspace(-1, 3, 100);
% Alice's internet speed function, f(x)
fx = @(x)exp(x) - 4 * x +1;

% Plot the graph to guess the location of the roots.
figure
plot(x,fx(x),'b-')
title('f(x) Plot')
xlabel('x')
ylabel('e^x - 4x + 1')
grid on

% Based on the plot, we know there are a root in between 0 and 1.
a_1 = 0;
b_1 = 1;

fprintf("\na is %i, and b is %i.\n", a_1, b_1)

x_root_1 = Bisection_Method( fx, a_1, b_1 )

fprintf("--------------------------------\n")

% Based on the plot, we know there are a root in between 1 and 2.

a_2 = 1;
b_2 = 2;

fprintf("\na is %i, and b is %i.\n", a_2, b_2)

x_root_2 = Bisection_Method( fx, a_2, b_2 )

