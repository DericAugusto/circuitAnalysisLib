function [wc] = freqCorte(DEN,NUM)
%freqCorte Calcula e plota frequ�ncia de corte de fun��o de transfer�ncia.
%   Recebe um vetor DEN = DENOMINADOR e NUM = NUMERADOR da fun��o de
%   transfer�ncia de um dado circuito, no sistema: 
%       VETOR = [s^n, s^n-1,...,s^2,s^1,s^0]]
%
%   Da�, calcula a frequ�ncia de corte (numericamente), a frequ�ncia
%   a partir da qual tem-se ganho <= -3 dB (ou tamb�m, frequ�ncia
%   na qual o m�dulo da fun��o de transfer�ncia |H(jw)| �:
%       |H(jwc)| = |H(jw)|max / sqrt(2).
%   
%   Exemplo de uso: (Johnson, Cap. 15, Ex. 15.2, pg. 388)
%   
%   >> wc = freqCorte([2],[1,2,2])
%
%   wc =
%
%       1.4142
%
%   * Observe que a resposta exata � sqrt(2) ~ 1.4142!
%
%   Refer�ncias: 
%   - Livros de circtuitos (Johnson, Sadiku)
%   - Essa resposta no f�rum da mathworks: 
%   https://www.mathworks.com/matlabcentral/answers/314007-bode-plot-and-cutoff-frequency

Transfer_Function = tf(DEN,NUM);
[mag,phase,wout] = bode(Transfer_Function);                     % Get Plot Data
mag = squeeze(mag);                                             % Reduce (1x1xN) Matrix To (1xN)
phase= squeeze(phase);
magr2 = (mag/max(mag)).^2;                                      % Calculate Power Of Ratio Of �mag/max(mag)�
dB3 = interp1(magr2, [wout phase mag], 0.5, 'spline');          % Find Frequency & Phase & Amplitude of Half-Power (-3 dB) Point
figure(1)
title('Diagrama de Bode')
subplot(2,1,1)
wc = dB3(1);
Hwc = 20*log10(dB3(3));
semilogx(wout, 20*log10(mag), '-b',  wc, Hwc, '+r', 'MarkerSize',10)
l1 = ['|| H( j\cdot \omega_c) || ;  \omega_c \approx ',num2str(dB3(1))];
legend(' || H( j\cdot \omega) || ',l1)
grid on;
subplot(2,1,2)
semilogx(wout, phase, '-b',  dB3(1), dB3(2), '+r', 'MarkerSize',10)
grid on;
end

