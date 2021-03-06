function [f,g] = logistic_regression(theta, X,y)
  %
  % Arguments:
  %   theta - A column vector containing the parameter values to optimize.
  %   X - The examples stored in a matrix.  
  %       X(i,j) is the i'th coordinate of the j'th example.
  %   y - The label for each example.  y(j) is the j'th example's label.
  %

  m=size(X,2);
  
  % initialize objective value and gradient.
  f = 0;
  g = zeros(size(theta));


  %
  % TODO:  Compute the objective function by looping over the dataset and summing
  %        up the objective values for each example.  Store the result in 'f'.
  %
  % TODO:  Compute the gradient of the objective by looping over the dataset and summing
  %        up the gradients (df/dtheta) for each example. Store the result in 'g'.
  %
%%% YOUR CODE HERE %%%

sum = 0.0;
for i=1:m
   sum += y(i)*log(h_func(theta,X(:,i))) + (1 - y(i))*log(1 - h_func(theta,X(:,i)));
end
f = -sum;

for j=1:size(theta,1)
    for i=i:m
        g(j)+= X(j,i)*(h_func(theta,X(:,i))-y(i));
    end
end

g

