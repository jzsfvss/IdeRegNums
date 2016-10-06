% Used Pr.: ListStat

% Intersection of two lists

function isect=IntsectL(lst1,lst2)

stl1=ListStat(lst1);
[ll1, nc]=size(stl1);
lst2=sort(lst2);

for i=1:ll1
	if (SearchL(stl1(i),lst2,1) ~= 0)
		isect=[isect stl1(i)];
	end
end