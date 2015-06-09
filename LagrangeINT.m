function yi = LagrangeInter(x,y,xi)
% Algoritmo de interpolação de LaGrange
% x,y - vetor com as coordenadas x e y
% xi - vetor ou numero do ponto a ser encontrado
% yi - vetor ou numero do valor de Y encontrado

n = length(x) - 1; % encontra grau da interpolação
ni = length(xi); % quantidade de pontos a serem encontrados 

L = ones(n+1,ni); % A matriz do polinomio da interpolação de Lagrange  L_(n,k)(x)

for k = 0 : n 
    
    for kk = 0 : (k-1) 
        L(kk+1,:) = L(kk+1,:).*(xi - x(k+1))/(x(kk+1)-x(k+1)); 
    end 
    
    for kk = k+1 : n 
        L(kk+1,:) = L(kk+1,:).*(xi - x(k+1))/(x(kk+1)-x(k+1)); 
    end 
end 

yi = y * L; 