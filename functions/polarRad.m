function polarRad( z )
%polarRad(z) mostra z na forma retangular e polar,
% (com o ângulo em radianos).
% A função não tem retorno, apenas mostra o valor na tela.

disp([ num2str( z ), ' = '                   ... 
       '(', num2str( abs(z), '%.4f' ), ')'   ...
       ' ∠', num2str( angle(z), '%.4f' )     ...
      ])

end