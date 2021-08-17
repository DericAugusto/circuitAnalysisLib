function [result] = quadripoles( str_matrix_input, str_matrix_output, matrix_input )

    % Recebe 2 strings de inputs/outputs que podem ser 'T', 'Z', 'Y' e 'H'
    % (maiúsculas ou minúsculas). Recebe também a matriz do quadripolo 
    % com elementos simbólicos de entrada.
    % Assim, faz a conversão dos parâmatros das matrizes de quadripolos.
    % Faz a conversão da matriz dada como entrada para a matriz definida
    % através da string como saída. Tem como resultado a matriz simbólica
    % de sáida, após a conversão da matriz de entrada.
    
    % Strings serão maiúsculas independentemente das entradas
    str_matrix_input = upper(str_matrix_input);
    str_matrix_output = upper(str_matrix_output);
    
    if str_matrix_input == 'Z' && str_matrix_output == 'Y'
        
        Z = matrix_input;
        detZ = det(Z);
        
        Y = sym([2,2]);
        Y(1,1) = Z(2,2)/detZ;
        Y(1,2) = -Z(1,2)/detZ;
        Y(2,1) = -Z(2,1)/detZ;
        Y(2,2) = Z(1,1)/detZ;
          
        result = Y;
        
    elseif str_matrix_input == 'Y' && str_matrix_output == 'Z'
        
        Y = matrix_input;
        detY = det(Y);
        
        Z = sym([2,2]);
        Z(1,1) = Y(2,2)/detY;
        Z(1,2) = -Y(1,2)/detY;
        Z(2,1) = -Y(2,1)/detY;
        Z(2,2) = Y(1,1)/detY;
        
        result = Z;
    
    elseif str_matrix_input == 'Z' && str_matrix_output == 'T'
        
        Z = matrix_input;
        detZ = det(Z);
        
        T = sym([2,2]);
        T(1,1) = Z(1,1)/Z(2,1); % A
        T(1,2) = detZ/Z(2,1); % B
        T(2,1) = 1/Z(2,1); % C
        T(2,2) = Z(2,2)/Z(2,1); % D
            
        result = T;
    
    elseif str_matrix_input == 'T' && str_matrix_output == 'Z'
        
        T = matrix_input;
        detT = det(T);
        
        Z = sym([2,2]);
        Z(1,1) = T(1,1)/T(2,1); % A/C
        Z(1,2) = detT/T(2,1); % detT/C
        Z(2,1) = 1/T(2,1); % 1/C
        Z(2,2) = T(2,2)/T(2,1); % D/C
            
        result = Z;
    
    elseif str_matrix_input == 'Z' && str_matrix_output == 'H'
        
        Z = matrix_input;
        detZ = det(Z);
        
        H = sym([2,2]);
        H(1,1) = detZ/Z(2,2);
        H(1,2) = Z(1,2)/Z(2,2);
        H(2,1) = -Z(2,1)/Z(2,2);
        H(2,2) = 1/Z(2,2);
            
        result = H;
        
    elseif str_matrix_input == 'H' && str_matrix_output == 'Z'
        
        H = matrix_input;
        detH = det(H);
        
        Z = sym([2,2]);
        Z(1,1) = detH/H(2,2);
        Z(1,2) = H(1,2)/H(2,2);
        Z(2,1) = -H(2,1)/H(2,2);
        Z(2,2) = 1/H(2,2);
        
        result = Z;
        
    elseif str_matrix_input == 'Y' && str_matrix_output == 'T'
        
        Y = matrix_input;
        detY = det(Y);
        
        T = sym([2,2]);
        T(1,1) = -Y(2,2)/Y(2,1); % A
        T(1,2) = -1/Y(2,1); % B
        T(2,1) = -detY/Y(2,1); % C
        T(2,2) = -Y(1,1)/Y(2,1); % D
            
        result = T;
        
    elseif str_matrix_input == 'T' && str_matrix_output == 'Y'
        
        T = matrix_input;
        detT = det(T);
        
        Y = sym([2,2]);
        Y(1,1) = T(2,2)/T(1,2); % D/B
        Y(1,2) = -detT/T(1,2); % -detT/B
        Y(2,1) = -1/T(1,2); % -1/B
        Y(2,2) = T(1,1)/T(1,2); % A/B
        
        result = Y;
        
    elseif str_matrix_input == 'Y' && str_matrix_output == 'H'
        
        Y = matrix_input;
        detY = det(Y);
        
        H = sym([2,2]);
        H(1,1) = 1/Y(1,1);
        H(1,2) = -Y(1,2)/Y(1,1);
        H(2,1) = Y(2,1)/Y(1,1);
        H(2,2) = detY/Y(1,1);
        
        result = H;
        
    elseif str_matrix_input == 'H' && str_matrix_output == 'Y'
        
        H = matrix_input;
        detH = det(H);
        
        Y = sym([2,2]);
        Y(1,1) = 1/H(1,1);
        Y(1,2) = -H(1,2)/H(1,1);
        Y(2,1) = H(2,1)/H(1,1);
        Y(2,2) = detH/H(1,1);
        
        result = Y;
        
    elseif str_matrix_input == 'H' && str_matrix_output == 'T'
        
        H = matrix_input;
        detH = det(H);
        
        T = sym([2,2]);
        T(1,1) = -detH/H(2,1); % A
        T(1,2) = -H(1,1)/H(2,1); % B
        T(2,1) = -H(2,2)/H(2,1); % C
        T(2,2) = -1/H(2,1); % D
        
        result = T;
        
    elseif str_matrix_input == 'T' && str_matrix_output == 'H'
        
        T = matrix_input;
        detT = det(T);
        
        H = sym([2,2]);
        H(1,1) = T(1,2)/T(2,2); % B/D
        H(1,2) = detT/T(2,2); % detT/D
        H(2,1) = -1/T(2,2); % -1/D
        H(2,2) = T(2,1)/T(2,2); % C/D
        
        result = H;
        
    end

end

