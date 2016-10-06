% Used Pr.: ListStat, Order, PrRts1

% Primitive Roots Statistics

function st=PRStat(m,wrt)

st=ListStat(Order(PrRts1(m),m));

if (wrt)
	[nr, nc]=size(st);
	fprintf('prstat.txt','\n%g = ',m);
	fprintf('prstat.txt',PFactStr(m));
	fprintf('prstat.txt',' : %g (%g)',st(1,1),st(1,2));
	for i=2:nr
		fprintf('prstat.txt',', %g (%g)',st(i,1),st(i,2));
	end
end