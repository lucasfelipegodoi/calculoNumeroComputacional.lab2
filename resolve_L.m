function x = resolve_L(C)
[m n]= size(C);
x = zeros(m,1);
	for j = m:-1:1
		x(j) = 	C(j,n);	
		for k = j+1:n-1
			x(j) = x(j) - C(j,k)*x(k);
        end
		x(j) = x(j)/C(j,j);	
	end
end


