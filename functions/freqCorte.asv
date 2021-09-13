function [wc] = freqCorte(DEN,NUM)
%freqCorte Calcula e plota frequência de corte de função de transferência.
%   Recebe um vetor DEN = DENOMINADOR e NUM = NUMERADOR da função de
%   transferência de um dado circuito, no sistema: 
%       VETOR = [s^n, s^n-1,...,s^2,s^1,s^0]]
%
%   Daí, calcula a frequência de corte (numericamente), a frequência
%   a partir da qual tem-se ganho <= -3 dB (ou também, frequência
%   na qual o módulo da função de transferência |H(jw)| é:
%       |H(jwc)| = |H(jw)|max / sqrt(2).
%   
%   Referências: 
%   - Livros de circtuitos (Johnson, Sadiku)
%   - Essa resposta no fórum da mathworks: 
%   https://www.mathworks.com/matlabcentral/answers/314007-bode-plot-and-cutoff-frequency

Transfer_Function = tf(DEN,NUM);
[mag,phase,wout] = bode(Transfer_Function);                     % Get Plot Data
mag = squeeze(mag);                                             % Reduce (1x1xN) Matrix To (1xN)
phase= squeeze(phase);
magr2 = (mag/max(mag)).^2;                                      % Calculate Power Of Ratio Of ‘mag/max(mag)’
dB3 = interp1(magr2, [wout phase mag], 0.5, 'spline');          % Find Frequency & Phase & Amplitude of Half-Power (-3 dB) Point
figure(1)
title('Diagrama de Bode')
subplot(2,1,1)
wc = 20*log10(dB3(3));
semilogx(wout, 20*log10(mag), '-b',  dB3(1), wc, '+r', 'MarkerSize',10)
l1 = ['|| H( j\cdot \omega_c) || ;  \omega_c \approx ',num2str(dB3(1))];
legend(' || H( j\cdot \omega) || ',l1)
grid on;
subplot(2,1,2)
semilogx(wout, phase, '-b',  dB3(1), dB3(2), '+r', 'MarkerSize',10)
grid on;
end

