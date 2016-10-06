% Used Pr.: PFact

% Converts prime factorization to string

function cs=PFactStr(n)

fact=PFact(n);
[nr,nc]=size(fact);
cs=sprintf('%g^%g',fact(1,1),fact(1,2));

for i=2:nr
	tmpcs=sprintf(' * %g^%g',fact(i,1),fact(i,2));
	cs=[cs, tmpcs];
end