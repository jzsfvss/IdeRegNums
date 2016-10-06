% Used Pr.: Phi

function mo=MaxROrd(m)

a=rem(a,m);
mo=1;
phi=Phi(m);

for a=2:(m-1)
	ord=1;
	b=a;
	while (b ~= rem(b*b,m))
		b=rem(b*a,m);
		ord=ord+1;
	end
	if (rem(b*a,m) == a)
		mo=max(mo,ord);
	end
end