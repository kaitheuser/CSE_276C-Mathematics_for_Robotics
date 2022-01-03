function [fx_Lagrange] = Lagrange_Method(x_vector,y_vector, x_integer)
% Langrange Method Function that calculates the final value of f(x)
% with given:
% x_vector - a vector with x coordinates
% y_vector - a vector with y coordinates
% x_integer - an integer of x that helps to find f(x)

% Determine the length of the vector.
num_Points = length(y_vector);

for i = 1 : num_Points
   
    % Initialize the Lagrangre variable
    Lagrange(i) = 1;
    
    % Calculate each Lagrange
    for j = 1 : num_Points
        
        % Given that j must not equal to i
        if j ~= i
            
            Lagrange(i) = Lagrange(i) * (x_integer - x_vector(j))/(x_vector(i) - x_vector(j));
            
        end
        
    end
    
end

% Initialize fx_Lagrange
fx_Lagrange = 0;

% Calculate the f_x
for i = 1 : num_Points
    
    fx_Lagrange = fx_Lagrange + y_vector(i) * Lagrange(i);
    
end

end


