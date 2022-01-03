function [] = plot_Populations_Over_Time(t,x_prey, x_predator)
% Plot Predator-prey Population Over Time
% t - Time array
% x_prey - Prey Array
% x_predator - Predator Array


figure;

% Plot the graph
plot(t, x_prey, 'r-', t, x_predator, 'b--')
% Include plot title
title('Populations of Prey and Predator Over Time')
% Label x-axis
xlabel('Time, t')
xlim([0 50])
% Label y-axis
ylabel('Population')
% Include Legends
legend('Prey', 'Predator', 'Location', 'North')

end

