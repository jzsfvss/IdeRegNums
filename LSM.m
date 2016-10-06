% Used Pr.: -

% Method of Least Squares

function [c,r]=LSM(A,b)

c=((inv((A')*A))*((A')*b));
r=norm(b-A*c)/norm(b);