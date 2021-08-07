function [result] = impInd( indutancia, s )
%impInd( indutancia, s ) recebe como entrada o valor
% de indutância do intutor e "s", tal que:
% (s = a + j*w), 
% onde "w" é a a frequência angular (rd/s) da fonte
% e "a" é a frequência Neperiana (Np/s) da fonte
% A função retorna o valor de impedância sobre aquele indutor.

result = indutancia*s;

end
