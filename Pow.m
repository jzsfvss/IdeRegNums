% Used Pr.: ReFill

function mat2=Pow(mat1,n,m)

mat2=mat1;

for k=2:n
	mat2=rem(mat2.*mat1,m);
end

ReFill(mat2,m);