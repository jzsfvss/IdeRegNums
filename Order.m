% Used Pr.: -

% Order of elements in a list

function ords=Order(lst,m)

ll=length(lst);
ords=0;

for i=1:ll
	a=rem(lst(i),m);
	ord=1;
	b=a;
	while (b ~= rem(b*b,m))
		b=rem(b*a,m);
		ord=ord+1;
	end
	ords=[ords; ord];
end

ords=ords(2:(ll+1));