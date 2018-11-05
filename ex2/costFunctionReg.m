function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
z=X*theta;
% You need to return the following variables correctly 
h=sigmoid(z);
theta_=theta(2:size(theta,1),1);
J = (1/m)*(-(y')*log(h)-(1-y)'*log(1-h))+(lambda/(2*m))*(sum(theta_.^2));
grad = zeros(size(theta));
Grad=(1/m)*(X'*(h-y));
Reg=((lambda/m)*theta);
for i=1:length(grad)
  if i==1
    grad(i)=Grad(i);
  else
    grad(i)=Grad(i)+Reg(i);
  end
  end


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
