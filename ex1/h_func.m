function [ret] = h_func(theta,x)
    ret = 1/(1+exp(-1*theta'*x))
end
