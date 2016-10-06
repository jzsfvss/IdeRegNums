% Used Pr.: DataRRS

function proots=PrRts2(ord, m)

drrs=DataRRS(m);
[phim, nc]=size(drrs);

for i=1:phim
	if ((drrs(i,2) == ord) & (drrs(i,3) == 1))
		proots=[proots; drrs(i,1)];
	end
end