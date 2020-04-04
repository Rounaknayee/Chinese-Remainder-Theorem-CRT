%---Rounak Hitendra Nayee
%---K.J.Somaiya College Of Engineering
% Function for Chinese Remainder Theorem
% MATLAB CODE
%-- n = no.of EQUATIONS
%-- a = array of dividends
%-- m = array of divisors
%-- c = the output of CRT

function c = crtfunction(n,a,m)
j=1;
M=1;
while j<=n
    M=M*m(j);
    j=j+1;
end
disp('Value of M')
disp(M)
k=1;
while k<=n
    M_a(k)=(M/m(k));
    k=k+1;
end
disp('Values of M_a')
disp(M_a)
p=1;
while p<=n
    x=m(p);
    y=M_a(p);
    g=gcd(x,y);
    if g==1
        r1=x;
        r2=y;
        r=mod(r1,r2);
        t1=0;
        t2=1;
        while r~=0
            r=mod(r1,r2);
            q=floor(r1/r2);
            r1=r2;
            r2=r;
            t=t1-(t2*q);
            t1=t2;
            t2=t;
        end

        if t1<0
            t1=t1+m(p);
        end
        M_inverse(p)=t1;
        p=p+1;
    else
        disp('Invalid values for multiplicative inverse')
        return
    end 
end
disp('Values of M_inverse')
disp(M_inverse)

q=1;
z=0;
while q<=n
    z=(a(q)*M_a(q)*M_inverse(q))+z;
    q=q+1;
end
c=mod(z,M);
end
