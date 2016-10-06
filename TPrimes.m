% Used Pr.: -

% Twin Primes <= 83717

tprimes=[3 2];

for i=3:8187
	if (primes(i+1) == primes(i)+2)
		tprimes=[tprimes; [primes(i), i]];
	end
end