% Used Pr.: PFact, LCM

function psi=Psi(m)

mat=PFact(m);
[nr,nc]=size(mat);
psi=1;

for k=1:nr
	psi=LCM(psi,(mat(k,1)^(mat(k,2)-1))*(mat(k,1)-1));
end	