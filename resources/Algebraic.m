function R = Algebraic(nume, d)
	FILE=fopen(nume,'r'); 
	N=fscanf(FILE,'%d',1); %Citirea nr. de elemente
	A=zeros(N,N);
	K=zeros(N,N);
	for i=1:N
		nod=fscanf(FILE,'%d',1); %Citirea nodului
		nr_vecini=fscanf(FILE,'%d',1); %Vecinii
		ok=0;
		for j=1:nr_vecini
			vecin=fscanf(FILE,'%d',1); %Citirea vecinilor
			if (vecin != nod) % 1 in matricea A daca vecinul nu este nodul in sine.
				A(nod,vecin)=1;
			else
				ok=1;
			end
		end
		if (ok == 1) %Matricea K
			K(nod,nod)=nr_vecini-1; % Daca nodul i se are ca vecin pe el.
		else
			K(nod,nod)=nr_vecini;
		end
	end
	Kinv=zeros(N,N);
	for i=1:N
		Kinv(i,i)=1/K(i,i); % Inversarea lui K(Diagonal)
	end
	M=(Kinv*A)';
	identitate=eye(N);
	vcol=ones(N,1);
	INV=GramSchmidt(identitate-d*M); % Determinarea inversei folosind GS optimizat
	R=INV*((1-d)/N)*vcol; % Determinarea lui R
	fclose(FILE);
end
