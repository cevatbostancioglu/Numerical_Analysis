%%Author: Cevat Bostancioglu Ankara/Turkey
function [x] = Gauss_Eliminasyon(A,b)
N = length(b);
format long;
for col=1:1:(N-1)
    for row=(col+1):1:N
        mik=A(row,col)/A(col,col);
        A(row,:)=A(row,:)-mik*A(col,:);
        b(row)=b(row)-mik*b(col);
    end
end

%%disp('A');disp(A);
%%disp('b');disp(b);

for row=N:-1:1 
    x(row) = b(row); 
    for i=(row+1):N 
        x(row) = x(row)-A(row,i)*x(i); 
    end 
    x(row) = x(row)/A(row,row); 
end 

disp('X');disp(x);

end
