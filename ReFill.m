% Used Pr.: -

function mat=ReFill(mat,m)

d=size(mat);

for i=1:d(1)
	for j=1:d(2)
		if (mat(i,j) == 0)
			mat(i,j)=m;
		end
	end
end