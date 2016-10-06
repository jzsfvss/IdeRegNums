% Used Pr.: GCD

function rrs=RRS(m)

rrs=1;

for a=2:(m-1)
	if (GCD(a,m) == 1)
		rrs=[rrs; a];
	end
end