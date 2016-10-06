% Used Pr.: DataRRS, Divs

% Sum_{d|m} w_d(a) for each element 'a' of RRS_m
% m=12; [a,o,i,d,w,s]=WRRS(m); display([[0,0,0,d,0];[a,o,i,w,s]]);
% The last column displays the sum for each 'a' in the
% first column over d|m in the first row. The second
% and third column gives the orders and indices for each 'a'.
% Other displays:
% m=60; [a,o,i,d,w,s]=WRRS(m); display([a,o,i,w(:,length(d)),s]);
% m=60; [a,o,i,d,w,s]=WRRS(m); display(sortrows([a,o,i,w(:,length(d)),s],5));
% m=60; [a,o,i,d,w,s]=WRRS(m); display(sortrows([[0,0,0,d,0];[a,o,i,w,s]],length(d)+4));
% m=60; [a,o,i,d,w,s]=WRRS(m); display(sortrows([a,o,i,w(:,length(d)),s,(m-s)./w(:,length(d))],5));

function [a,ords,inds,divs,w,sums]=WRRS(m)

drrs=DataRRS(m);
[nrrs,c]=size(drrs);
a=drrs(:,1);
ords=drrs(:,2);
inds=drrs(:,3);
wm=ords.*inds;

divs=Divs(m);
ndivs=length(divs);

w=zeros(nrrs,ndivs);
w(:,1)=ones(nrrs,1);
w(1,:)=ones(1,ndivs);
w(:,ndivs)=wm;

for j=2:(ndivs-1)
	d=divs(j);
	ddrrs=DataRRS(d);
	[dnrrs,c]=size(drrs);
	da=ddrrs(:,1);
	dw=ddrrs(:,2).*ddrrs(:,3);
	bdw=zeros(d,1);
	bdw(da)=dw;
	for i=1:nrrs
		w(i,j)=bdw(rem(a(i),d));
	end
end

sums=sum(w')';