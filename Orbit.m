% Used Pr.: -

function orb=Orbit(a,m)

a=rem(a,m);
orb=a;

b=a;
while (b ~= rem(b*b,m))
	b=rem(b*a,m);
	orb=[orb,b];
end

if (b == 0)
	orb(length(orb))=m;
end