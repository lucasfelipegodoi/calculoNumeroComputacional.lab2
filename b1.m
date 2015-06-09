
%exercicio b1 - Estime o consumo de energia elétrica às 15:20, utilizando dois pontos (plote os gráficos);

%encontrando função
c = [1 15 165 ;1 15.5 163];
m21 = c(2,1)/c(1,1);

for j=1:3 
c(2,j) = c(2,j)-m21*c(1,j);
end

x = resolve_L(c);

%encontrando estimativa do consumo de energia as 15:20
x(2,1)*15.33+x(1,1)


p = [15 15.33 15.5];
f = [x(2,1)*p+x(1,1)];

plot(f, p, 'k-');grid on
ylabel('Hora (Hrs)');
xlabel('Potência');




