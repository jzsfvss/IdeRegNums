% Used Pr.: -

function stat=ListStat(lst);

lst=sort(lst);
ll=length(lst)+1;
lst(ll)=lst(ll-1)+1;
i=1;

while (i < ll)
	comp=lst(i);
	k=0;
	while ((i < ll) & (lst(i) == comp))
		i=i+1;
		k=k+1;
	end
	stat=[stat; [comp k]];
end