function [result] = impInd( indutancia, w )
%impInd( indutancia, w ) recebe como entrada o valor
% de indutância do intutor e a frequência angular
% da fonte e retorna o valor de impedância sobre aquele 
% indutor.

result = (indutancia*w)*j;

end

