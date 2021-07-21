function polarDeg( z )
%polarDeg(z) mostra z na forma retangular e polar,
% (com o ângulo em graus).
% A função não tem retorno, apenas mostra o valor na tela.

disp([ num2str( z ), ' = '                               ... 
       '(', num2str( abs(z), '%.4f' ), ')'               ...
       ' ∠', num2str( angle(z)*180/pi, '%.4f' ), '°'     ...
      ])

end