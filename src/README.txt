// Octavian Guzu //

Pentru toate taskurile 1, 2, 3 am realizat urmatoarele lucruri:
	-Citirea lui N din fisier(nr de elemente);
	-Citirea fiecarui nod;
	-Citirea numarului de vecini;
	-Citirea vecinilor;
	
	-Matricea de adiacenta am construit-o folosind citirea de mai sus;
	-Am tinut cont ca pe diagonala principala sa fie doar 0(un nod nu se va avea ca vecin);
	-Am construit matricea K;
	-Am folosit numarul de vecini sau nr de vecini-1 (Daca nodul este propriul vecin);
	-Am inversat K(matricea diagonala), Kinv=1/K(i,i);
	
Pentru task-ul 1 in plus:
	-Am folosit in R initial;
	-An aplicat algoritmul iterativ folosindu-ma de eps;
	
Pentru task-ul 2 in plus:
	-Am implementat algorimul de inversare a unei matrici;
	-Pentru acest lucru am folosit Gram-Schmidt optimizat;
	-Am calculat R;
	
Pentru task-ul 3 in plus:
	-Am abordat formula data iterativ;
	-Astfel am facut un lucru echivalent cu folosirea unui algoritm precum MPD;

Pentru task-ul 4:
	-Apartenenta am calculat-o afland a si b din continuitatea functiei;
	-Am facut propria sortare a unui vector folosind un algoritm foarte des intalnit;
	-Am implementat o functie care determina inidicele unui element intr-un vector;
	-Am scris in fisier N R1 R2 R3 si informatiile de la task 4;

Pentru testare se va rula check.m aflat in acelasi director cu directorul teste/;

