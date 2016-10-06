% Used Pr.: -

function gcd=GCD(a,b)

if (a > b)
	c=a; a=b; b=c;
end

if (rem(b,a) == 0)
	gcd=a;
else
	while (rem(b,a) ~= 0)
		r=rem(b,a); b=a; a=r;
	end
	gcd=r;
end