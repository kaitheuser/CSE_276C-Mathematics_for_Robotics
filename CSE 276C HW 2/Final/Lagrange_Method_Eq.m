function [fx_Lagrange_coeffs] = Lagrange_Method_Eq(x_vector,y_vector)
% Langrange Method Equation Function that gives the coefficients
% with given:
% x_vector - a vector with x coordinates
% y_vector - a vector with y coordinates

% Determine the length of the vector.
num_Points = length(y_vector);

% Initialize the Vandermonde Matrix, A.
A = ones(num_Points);

% Construct the Vandermonde Matrix, A.
for row = 1 : num_Points
    for column = 2 : num_Points
        
        A(row, column) = x_vector(row)^(column - 1);
        
    end
end

% Calculate the coefficients
fx_Lagrange_coeffs = A \ y_vector';

end
