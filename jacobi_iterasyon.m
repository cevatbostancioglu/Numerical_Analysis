%%Author: Cevat Bostancioglu Ankara/Turkey
function [P,dP,Z] = jacobi_iterasyon(A,B,P,delta,max1)
format long;
Z = P';
n = length(B);
Pnew = P;
for k=1:max1,
  for r = 1:n,
    Sum1 = B(r) - A(r,[1:r-1,r+1:n])*P([1:r-1,r+1:n]);
    Pnew(r) = Sum1/A(r,r);
  end
  dP = abs(Pnew-P);
  err = norm(dP);
  relerr = err/(norm(Pnew)+eps);
  P = Pnew;
  Z = [Z;P'];%#ok
  if (err<delta)||(relerr<delta), break, end
end