% Used Pr.: PRStat

% Does PRStat(m,1) for a list of m's and writes to 'prstat.txt'

function var=PRStatL(lst)

n=length(lst);

for i=1:n
	disp(lst(i));
	var2=PRStat(lst(i),1);
end