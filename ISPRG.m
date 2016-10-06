% Used Pr.: IntsectL, Gen, PrRts2

% Intersection of primitive root generates of two different orders (mod m)

function [isect,reg]=ISPRG(ord1,ord2,m)

disp('Gen 1')
gen1=Gen(PrRts2(ord1,m),m);
disp('Gen 2')
gen2=Gen(PrRts2(ord2,m),m);
disp('Isect')
isect=IntsectL(gen1,gen2)';
disp('Gen 3')
gen3=Gen(PrRts2(LCM(ord1,ord2),m),m);
disp('Reg')
reg=SearchL(isect,gen3,1)';

