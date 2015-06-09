%Ajuste de curvas ou  regress�o linear

%dados experimentais

c = [15 18.75 20 17.55 3.8];
f = [1 1.5 2 2.7 3.8];

%calculando os coeficientes do polinomio quadratico

b = polyfit(c,f,2);

%calculando agora os pontos do polinomio de regressao de grau 2

c = [15 18.75 20 17.55 3.8 3];

p = polyval(b,c);


%plotando o diagram de dispers�o e a reta ajustada

plot(c, p, 'k-');grid on
xlabel('Potencia (W)');
ylabel('Intensidade (A)');
title('Ajuste quadr�tico');
