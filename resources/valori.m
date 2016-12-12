% Functie care determina numere val1 si val2 din fisier
function [val1 val2] = valori(nume)
	FILE=fopen(nume,'r');
	N=fscanf(FILE,'%d',1);
	A=zeros(N,N);
	for i=1:N
		nod=fscanf(FILE,'%d',1);
		nr_vecini=fscanf(FILE,'%d',1);
		for j=1:nr_vecini
			vecin=fscanf(FILE,'%d',1);
		end
	end
	val1=fscanf(FILE,'%f',1);
	val2=fscanf(FILE,'%f',1);
	fclose(FILE);
end
