% Used Pr.: Orbit

function [data,orbs]=Orbits(m)

mro=MaxROrd(m);
orbs=zeros(m,mro);

for a=1:m
	orb=Orbit(a,m);
	ord=length(orb);
	idn=orb(ord);
	reg=(a == rem(a*idn,m));
	data=[data;[reg,ord,idn]];
	orbs(a,1:ord)=orb;
end

orbs(m,1)=1;