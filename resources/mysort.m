%Clasica sortare descrescatoare a unui vector
function Rs = mysort(R)
	n=length(R);
	for i=1:n-1
		for j=i+1:n
			% Folosim doar un numar semnificativ de zecimale
			if (round(R(i)*10^6)/10^6 < round(R(j)*10^6)/10^6 )
				aux=R(i);
				R(i)=R(j);
				R(j)=aux;
			end
		end
	end
	Rs=R;
end
