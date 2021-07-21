function [result] = impCap( capacitancia, w )
%impCap( capacitancia, w ) recebe como entrada o valor
% de capacitância do capacitor e a frequência angular
% da fonte e retorna o valor de impedância sobre aquele 
% capacitor.

result = (1/(w*capacitancia))*-j;

end
