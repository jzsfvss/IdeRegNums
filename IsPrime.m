% Used Pr.: -

% Tests whether n is in "primes.txt"

function ip=IsPrime(n)

load primes.txt

ip=SearchL(n,primes,1);