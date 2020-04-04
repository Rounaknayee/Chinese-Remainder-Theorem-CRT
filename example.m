% X≡ 1 (mod 5)
% X ≡ 2 (mod 7)
% X ≡ 3 (mod 9)
% X ≡ 4 (mod 11)

clc;
close all;
n = 4;
a = [1 2 3 4];
m = [5 7 9 11];
X = crtfunction(n,a,m);%desired answer
disp('The value of X is');
disp(X);
