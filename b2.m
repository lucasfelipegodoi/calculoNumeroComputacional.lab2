
%exercicio b2 - Repita o exercício, utilizando 3 pontos (plote os gráficos);

%encontrando função
c = [1 15 15*15 165 ;1 15.5 15.5*15.5 163;1 16 16*16 142];

m21 = c(2,1)/c(1,1);

for j=1:4 
c(2,j) = c(2,j)-m21*c(1,j);
end

m31 = c(3,1)/c(1,1);

for j=1:4 
c(3,j) = c(3,j)-m31*c(1,j);
end

m32 = c(3,2)/c(2,2);

for j=1:4 
c(3,j) = c(3,j)-m32*c(2,j);
end


x = resolve_L(c)

%encontrando estimativa do consumo de energia as 15:20
x(3,1)*(15.33*15.33)+x(2,1)*15.33+x(1,1)

p = [15 15.33 15.5 16];
f = [x(3,1)*(p.^2)+x(2,1)*p+x(1,1)];

plot(f, p, 'k-');grid on
ylabel('Hora (Hrs)');
xlabel('Potência');



