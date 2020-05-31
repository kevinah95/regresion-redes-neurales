function g = sigmoide(z)
%SIGMOIDE calcule la función sigmoide
%   J = SIGMOIDE(z) calcula la sigmoide de z.

g = 1.0 ./ (1.0 + exp(-z));
end
