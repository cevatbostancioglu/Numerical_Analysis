%%Author: Cevat Bostancioglu Ankara/Turkey
function aSon = numeric_integral_yamuk(f,a,b,n,c)
format long
syms x;
h=0;
h=((b-a)/n);
p=0;
hata=0;
test=0;
test=f(a);
test=f(b);
p=(f(a)+f(b))/2;%%b-h -> sondan bir onceki x degeri.Xn-1 yani.
    for i = (a+h):h:(b-h)
        test=f(i);
        p=p+f(i);
    end
    p=p*h;
    disp('Yapilan hata:');
    f(x)=diff(f,x); %% yeni fonk tanimlamakla ugrasmadim. mevcutu kullandim. nasolsa local.
    hata=(-1*h*h/12)*(b-a)*f(c);
    disp(hata);
    disp('Integral sonucu:');
    aSon=p;
end
