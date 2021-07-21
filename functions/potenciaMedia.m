function [result] = potenciaMedia( p_de_t, w)
% potenciaMedia( p_de_t, w) calcula a potência mádia da função p(t).

    T = (2*pi)/w;
    
    if isa(p_de_t, 'double')
        result = p_de_t;
    else
        result = double( (1/T)*int(p_de_t, 0, T) );
    end
       
end
