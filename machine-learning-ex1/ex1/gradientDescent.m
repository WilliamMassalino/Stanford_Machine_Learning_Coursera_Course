function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%   GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);



    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

for iter = 1:num_iters
    theta=theta-alpha*((X')*(X*theta-y))/m;
    
    



    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    fprintf('\nIteration nº %d Theta_1 is: %f e Theta_2 is: %f and Cost Function is: %f ',round(iter),theta(1),theta(2),J_history(iter));

end

end
