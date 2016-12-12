function y = Apartenenta(x, val1, val2)
	a=1/(val2-val1); % Calculam a folosind continuitatea
	b=-a*val1; % Calculam b
	if (0<=x && x<val1) % Calculam y=f(x)
		y=0;
	elseif (x>=val1 && x<=val2)
		y=a*x+b;
	elseif (val2<x && x<=1)
		y=1;
	end
end
