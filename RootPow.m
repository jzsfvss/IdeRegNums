% Used Pr.: Phi, MaxROrd, Divs, 

m=input('modulus = ')

phi=Phi(m);
mo=MaxROrd(m);
divs=Divs(phi);
l=1;

while (divs(l) < mo)
	l=l+1;
end

pow=divs(2:l);

l=l-1;
opmat=zeros(m,l);
fprintf([0,pow],'op_RPM_1.txt');

for i=1:l
	k=pow(i);
	vec=Pow([1:m],k,m);
	vec=vec';
	mat=sort([vec,[1:m]']);
	save(k,'op_RPM_2.txt');
	fprintf(' ','op_RPM_2.txt');
	s=1, t=1, a=mat(1,1);
	while (t <= m)
		while ((mat(t,1) == a) & (t <= m))
			t=t+1;
		end
		opvec=mat(s:t,2)';
		opmat(a,k)=length(opvec);
		fprintf([a,opvec],'op_RPM_2.txt');
		s=t+1; t=t+1;
	end
end

save([[1:m]',opmat],'op_RPM_1.txt');