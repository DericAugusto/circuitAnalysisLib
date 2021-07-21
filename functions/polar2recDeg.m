function [a] = polar2recDeg( r, thetaDeg )
%polar2rec( r, theta ) retorna a conversão de um vetor polar
%em um número complexo na forma retangular.
% Recebe um ângulo em graus.

thetaRad = deg2rad(thetaDeg);
a = r*exp(1i.* thetaRad);

end
