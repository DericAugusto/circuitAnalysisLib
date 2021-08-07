function [result] = impCap( capacitancia, s )
%impCap( capacitancia, s ) recebe como entrada o valor
% de capacitância do capacitor e "s", tal que:
% (s = a + j*w), 
% onde "w" é a a frequência angular (rd/s) da fonte
% e "a" é a frequência Neperiana (Np/s) da fonte
% A função retorna o valor de impedância sobre aquele capacitor.

result = 1/(s*capacitancia);

end
