% This is the STARTUP.M file. It is executed automatically 
%                  at the beginning of each MATLAB session. 

% The following commands are required in order to use the EDIT command:
if exist('edit.mat')
	load edit.mat     % If returning from editor, load the workspace.
	delete edit.mat
end

format compact, clc, disp('')

disp('                            MATLAB Version 3.5k')
disp('                           Serial Number: 327644')
disp(' ')

pr=input('Load primes? 1/0 ');
if (pr)
	load Lib\primes.txt
end

tpr=input('Load twin primes? 1/0 ');
if (tpr)
	load Lib\tprimes.txt
end

disp(' ')