% Used Pr.: -

function ress=SearchL(ns,lst,std)

if (std == 0)
	lst=sort(lst);
end

for n=ns
	res=0;
	mn=1; mx=length(lst);
	while ((mx-mn) > 1)
		rav=round((mn+mx)/2);
		if (n < lst(rav))
			mx=rav;
		else
			mn=rav;
		end
	end
	if (lst(mn) == n)
		if (std)
			res=mn;
		else
			res=1;
		end
	end
	if (lst(mx) == n)
		if (std)
			res=mx;
		else
			res=1;
		end
	end
	ress=[ress res];
end