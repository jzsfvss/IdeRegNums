% Used Pr.: -

% Primes <= 8179

function list=Primes1(n)

list=[2;[3:2:n]'];
l=length(list);
mx=list(l);
mx1=mx+1;

p=1;
q=1;

for i=2:l
	if (list(i) ~= mx1)
		g=list(i);
		q=q+1;
		r=3;
		while (g*r <= mx)
			list((g*r+1)/2)=mx1;
			r=r+2;
		end
	end
end

list=sort(list);
list=list(1:q);