function [R1 R2 R3] = PageRank(nume, d, eps)
	out=strcat(nume,'.out');
	OUT=fopen(out,'w');
	FILE=fopen(nume,'r');
	N=fscanf(FILE,'%d',1); %Citirea nr. de elemente
	fclose(FILE);
	[val1 val2]=valori(nume);
	% Construirea lui R1, R2 si R3
	R1=Iterative(nume,d,eps);
	R2=Algebraic(nume,d);
	R3=Power(nume,d,eps);
	fprintf(OUT,'%d\n\n',N);
	% Scrierea in fisier a lui R1
	for i=1:N
		fprintf(OUT,'%.6f\n',R1(i));
	end
	fprintf(OUT,'\n');
	% Scrierea in fisier a lui R2
	for i=1:N
		fprintf(OUT,'%.6f\n',R2(i));
	end
	fprintf(OUT,'\n');
	% Scrierea in fisier a lui R3
	for i=1:N
		fprintf(OUT,'%.6f\n',R3(i));
	end
	fprintf(OUT,'\n');
	PR1=mysort(R2); %Sortarea lui R2
	% Scrierea in fisier pentru task-ul 4
	for i=1:N
		fprintf(OUT,'%d ',i); %Nodul
		ind=indice(PR1(i),R2);
		fprintf(OUT,'%d ',ind); %Indicele in vectorul initial
		fprintf(OUT,'%.6f\n',Apartenenta(PR1(i),val1,val2)); % Apartenenta
	end
	fclose(OUT);
end
