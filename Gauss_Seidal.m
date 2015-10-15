%%Author: Cevat Bostancioglu Ankara/Turkey
function [x,succes] = Gauss_Seidal(A,B,x0,iter)
format long;
[m,n] = size(A);

if m~=n
    disp('Kare matris ile tekrar deneyiniz.')
end;

for k=1 : iter
    for i = 1 : n
        s1=A(i,1:i-1)*x(1:i-1);
        s2=A(i,i+1:n)*x0(i+1:n);
        x(i) = (B(i)-s1-s2)/A(i,i)
    end
    p = norm(x-x0,1);
    q = norm(x, 1);
    x = x0
end
if k<=iter succes=1;
else succes=0;
end

end
