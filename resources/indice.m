% Functie care determina indicele unui element intr-un vector
% Va fi folosita pentru a afla indicele unui element dintr-un
% vector sortat in vectorul initial(nesortat)
function j = indice(val,R)
	n=length(R);
	for i=1:n
		if(R(i)==val)
			j=i;
			break;
		end
	end
end
