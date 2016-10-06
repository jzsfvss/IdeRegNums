% Used Pr.: 

% Union of orbits (mod m)

function gen=Gen(st,m)

genl=zeros(m,1);
lst=length(st);

for i=1:lst
	sti=st(i);
	osti=Order(sti,m);
	a=1;
	for j=1:osti
		a=rem(a*sti,m);
		if (a == 0)
			a=m;
		end
		genl(a)=1;
	end
end

for a=1:m
	if (genl(a))
		gen=[gen, a];
	end
end