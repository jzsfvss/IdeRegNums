% Used Pr.: -

% Prime factorization for n <= 7.05e+009

function fact=PFact(n)

load primes.txt

fact=[1 1];

i=0; k=0;

while (n > 1)
	i=i+1;
	if (rem(n,primes(i)) == 0)
		pri=primes(i);		
		k=k+1;
		fact=[fact; [pri, 1]];
		n=n/pri;
		while (rem(n,pri) == 0)
			n=n/pri;
			fact(k,2)=fact(k,2)+1;
		end
	end
end

clear primes

[r,c]=size(fact);

if (r == 1)
	fact=[n 1];
else
	fact=fact(2:r,:);
end