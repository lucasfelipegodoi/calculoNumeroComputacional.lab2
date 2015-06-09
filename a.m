%considerando o circuito da imagem e considerado que Ri = i; temos a matriz

c = [7 -2 -3 10;-2 10 -5 0; -4 -5 15 4];

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


x = resolve_L(c)'
