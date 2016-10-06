% Used Pr.: Phi, PFactStr

% Writes phi's of the elements of a list to "phis.txt"

function phil=PhiL(lst)

for n=lst
	disp(n)
	pn=Phi(n);
	fprintf('phis.txt',['\nPhi(%g) = %g = ', PFactStr(pn)], n, pn);
end