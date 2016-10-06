% Used Pr.: Orbits, GCD

function ind=IndR(m)

[data,orbs]=Orbits(m);
ind=zeros(m,1);

for b=1:m
	if (data(b,1) == 1)
		for k=1:data(b,2)
			indba=GCD(k,data(b,2));
			if (indba > ind(orbs(b,k)))
				ind(orbs(b,k))=indba;
			end
		end
	end
end

ind(m)=1;