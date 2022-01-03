function [] = plot_Phase_Plane(x_prey,x_predator)
% Plot Phase Plane Plot (Predator vs Prey)
% x_prey - Prey Array
% x_predator - Predator Array


figure;

% Plot the graph and the starting point
plot(x_prey, x_predator, 'b-', x_prey(1), x_predator(1), 'r*')
% Include plot title
title('Phase Plane Plot')
% Label x-axis
xlabel('Prey Populations, x prey')
% Label y-axis
ylabel('Predator Populations, x predator')
% Include Legends
legend('Predator-prey Population', 'Starting Point', 'Location', 'Northeast')

end

