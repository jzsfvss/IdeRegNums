% Used Pr.: LSM

% ln f(x) ~ c0 + c1*(ln x) + c2*(ln ln x) + ... + cn*(ln ... ln x)

function [c,r]=LogFit(x,fx,n,kwnc)

if (n >= 1)
	lb=0;
	for k=2:n
		lb=exp(lb);
	end
	st=1;
	while (x(st) <= lb)
		st=st+1;
	end
	nr=length(x);
	x=x(st:nr);
	fx=fx(st:nr);
end

nr=length(x);
nkc=length(kwnc);
lfx=log(fx);

if (nkc == 0)
	lx=log(x);
	mat=[ones(nr,1), lx];
	kezd=2;
end

if (nkc == 1)
	lx=log(x);
	mat=lx;
	kezd=2;
end

if (nkc >= 1)
	lfx=lfx-kwnc(1);
end

if (nkc >= 2)
	lx=x;
	for k=2:nkc
		lx=log(lx);
		lfx=lfx-kwnc(k).*lx;
	end
	kezd=nkc;
end

for k=kezd:n
	lx=log(lx);
	mat=[mat, lx];
end

[c,r]=LSM(mat,lfx);