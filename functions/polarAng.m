function polarAng( z )
%polarAng(z) mostra z na forma retangular e polar,
% (disponibilizando  o ângulo em graus e radianos).
% A função não tem retorno, apenas mostra o valor na tela.

disp([ num2str( z ), ' = '                               ... 
       '(', num2str( abs(z), '%.4f' ), ')'               ...
       ' ∠ ', num2str( angle(z)*180/pi, '%.4f' ), '°'    ...
       '  ou  ', num2str( angle(z), '%.4f' )             ...
      ])
 
end