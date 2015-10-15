%%Author: Cevat Bostancioglu Ankara/Turkey
function aSon = numeric_integral_dikdortgen(f,a,b,n,c)
format long
syms x;
h=0;
h=((b-a)/n);
p=0;
hata=0;
p=f(a)+f(b-h);%%b-h -> sondan bir onceki x degeri.Xn-1 yani.
    for i = (a+h):h:(b-2*h)
        p=p+f(i);
    end
    p=p*h;
    disp('Yapilan hata:');
    f(x)=diff(f,x); %% yeni fonk tanimlamakla ugrasmadim. mevcutu kullandim. nasolsa local.
    hata=(b-a)*(h/2)*f(c);
    disp(hata);
    disp('Integral sonucu:');
    aSon=p;
end