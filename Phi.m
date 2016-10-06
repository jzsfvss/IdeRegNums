% Used Pr.: PFact

function phi=Phi(m)

mat=PFact(m);
[nr,nc]=size(mat);
phi=1;

for k=1:nr
	phi=phi*(mat(k,1)^(mat(k,2)-1))*(mat(k,1)-1);
end