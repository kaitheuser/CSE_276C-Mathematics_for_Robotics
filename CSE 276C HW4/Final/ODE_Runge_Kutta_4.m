function [t, x_prey, x_predator] = ODE_Runge_Kutta_4(dx1_dt, dx2_dt, t, x_prey, x_predator, h, n)
% ODE_Runge_Kutta_4 solves 1st order initial value ODE with Runge-Kutta 
% Fourth Order's Method
% dx1_dt     - First Order Differential Equation of the Prey Population
%              Over Time
% dx2_dt     - First Order Differential Equation of the Predator Population
%              Over Time
% t          - Time Array
% x_prey     - Prey Array
% x_predator - Predator Array
% h          - Step Size
% n          - Number of Intervals

% Apply Runge-Kutta Fourth Order.
for k = 1 : n
    
    % Update time array, t
    t(k+1) = t(k) + h;
   
    % Update prey array, x_prey, and predator array, x_predator
    K_1_prey = dx1_dt(x_prey(k), x_predator(k));
    K_1_predator = dx2_dt(x_prey(k), x_predator(k));
    
    x_prey_K1 = x_prey(k) + K_1_prey / 2 * h;
    x_predator_K1 = x_predator(k) + K_1_predator / 2 * h;
    
    K_2_prey = dx1_dt(x_prey_K1, x_predator_K1);
    K_2_predator = dx2_dt(x_prey_K1, x_predator_K1);
    
    x_prey_K2 = x_prey(k) + K_2_prey / 2 * h;
    x_predator_K2 = x_predator(k) + K_2_predator / 2 * h;
    
    K_3_prey = dx1_dt(x_prey_K2, x_predator_K2);
    K_3_predator = dx2_dt(x_prey_K2, x_predator_K2);
    
    x_prey_K3 = x_prey(k) + K_3_prey * h;
    x_predator_K3 = x_predator(k) + K_3_predator * h;
    
    K_4_prey = dx1_dt(x_prey_K3, x_predator_K3);
    K_4_predator = dx2_dt(x_prey_K3, x_predator_K3);
    
    x_prey(k+1) = x_prey(k) + h / 6 * (K_1_prey + 2 * K_2_prey + 2 * K_3_prey + K_4_prey);
    x_predator(k+1) = x_predator(k) + h / 6 * (K_1_predator + 2 * K_2_predator + 2 * K_3_predator + K_4_predator);
    
end
end