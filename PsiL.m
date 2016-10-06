% Used Pr.: Psi, PFactStr

% Writes psi's of the elements of a list to "psis.txt"

function psil=PsiL(lst)

for n=lst
	pn=Psi(n);
	fprintf('psis.txt',['\nPsi(%g) = %g = ', PFactStr(pn)], n, pn);
end