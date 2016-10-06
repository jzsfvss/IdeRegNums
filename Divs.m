% Used Pr.: -

function divs=Divs(a)

divs=1;

for d=2:a
	if (rem(a,d) == 0)
		divs=[divs,d];
	end
end