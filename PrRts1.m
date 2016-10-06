% Used Pr.: DataRRS

% Primitive Roots (mod m)

function proots=PrRts1(m)

drrs=DataRRS(m);
[ld, nc]=size(drrs);

for i=1:ld
	if (drrs(i,3) == 1)
		proots=[proots; drrs(i,1)];
	end
end