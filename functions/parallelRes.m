function [resEquivalent] = parallelRes(resList)
%parallelRes(resList) tem como entrada uma lista de resistores
%(ou reatâncias) em paralelo e retorna o valor da resistência 
%(ou reatância) equivalente. Funciona para o cálculo de qualquer
%outra grandeza que siga a mesma fórmula, à exemplo capacitores
%em série.

    condutEquivalent = 0;
    for i = 1:length(resList)
        condutEquivalent = condutEquivalent + 1/resList{i};
    end

    resEquivalent = 1/condutEquivalent;

end