% Used Pr.: RRS, Order, SearchL, GCD

% Order and index data for reduced residue system (mod m)

function drrs=DataRRS(m)

rrs=RRS(m);
ord=Order(rrs,m);
[phim, nc]=size(rrs);
ind=zeros(phim,1);
pm=zeros(m,1);
pm(rrs)=[1:phim];

for i=1:phim
	b=rrs(i);
	ordb=ord(i);
	a=1;
	for k=1:ord(i)
		a=rem(a*b,m);
		pa=pm(a);
		indba=GCD(k,ordb);
		if (indba > ind(pa))
			ind(pa)=indba;
		end
	end
end

drrs=[rrs, ord, ind];