% Used Pr.: Primes1

% Primes <= 83969

primes=Primes1(8188);

k=1027;
n=8179;

while (k < 8188 & n < 10e+016)
	n=n+2;
	sqn=sqrt(n);
	i=1; t=1;
	while (primes(i) <= sqn & t)
		t=(rem(n,primes(i)) ~= 0);
		i=i+1;
	end
	if (t)
		k=k+1;
		primes=[primes; n];
	end
end