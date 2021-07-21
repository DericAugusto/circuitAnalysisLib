function [a] = polar2rec( r, theta )
%polar2rec( r, theta ) retorna a conversão de um vetor polar
%em um número complexo na forma retangular.
% Recebe um ângulo em radianos.

a = r*exp(1i.*theta);

end

