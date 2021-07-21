function [result] = funcTempo(grandeza_em_retangular, w)
% funcTempo(grandeza_em_retangular, w) transforma por exemplo a tensão V
% que está na forma retangular em uma função v(t)

    syms('t');
    result = abs(grandeza_em_retangular)*cos(w*t + angle(grandeza_em_retangular));
end
