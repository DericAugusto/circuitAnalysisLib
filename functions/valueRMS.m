function [result] = valueRMS( func_de_t , w)
%valueRMS( func_de_t , w) recebe como entrada f(t) e a
%frequência angular, devolvendo o valor RMS.

    T = (2*pi)/w;
    quadrado = func_de_t^2;

    if isa(quadrado, 'double')
        integral = double(T);
    else
        integral = int( quadrado , 0, T );
    end
    
    result = double( sqrt( (1/T)*integral ) );

end