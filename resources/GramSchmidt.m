function B = GramSchmidt(A) % Algoritmul GS optimizat.
	[n n]=size(A);
	R=zeros(n,n);
	Q=zeros(n,n);
	for i=1:n % Determinarea lui Q si R
		R(i,i)=norm(A(:,i));
		Q(:,i)=A(:,i)/R(i,i);
		for j=i+1:n
			R(i,j)=(Q(:,i)')*A(:,j);
			A(:,j)=A(:,j)-Q(:,i)*R(i,j);
		end
	end
	e=eye(n);
	y=zeros(n,n);
	B=zeros(n,n);
	% Pentru rezolvarea sistemul A*xi=ei
	% Folosim Q*R*xi=ei
	% Rezolvam Q*yi=ei;
	% Rezolvam R*xi=yi;
	% Pentru ultimul pas folosim algorimtul SST
	for i=1:n
		y(:,i)=Q'*e(:,i);
	end
	for i=1:n
		B(:,i)=SST(R,y(:,i));
	end	
	
end
