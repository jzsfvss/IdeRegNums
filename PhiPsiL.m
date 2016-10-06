% Used Pr.: Phi, Psi, PFactStr

% Writes phipsi's of the elements of a list to "phipsis.txt"

function psl=PhiPsiL(lst)

for n=lst
	pn=Phi(Psi(n));
	fprintf('phipsis.txt',['\nPhi(Psi(%g)) = %g = ', PFactStr(pn)], n, pn);
end