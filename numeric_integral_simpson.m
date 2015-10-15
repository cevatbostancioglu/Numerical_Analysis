%%Author: Cevat Bostancioglu Ankara/Turkey
function aSon = numeric_integral_simpson(f,a,b,n,c)
format long
syms x;
h=0;
h=((b-a)/(2*n));
p=0;
hata=0;
kontrol=1;
p=f(a)+f(b);%%b-h -> sondan bir onceki x degeri.Xn-1 yani.
    for i = (a+h):h:(b-h)
        if(mod(kontrol,2)==0) %% 2 nin kati
            p=p+2*f(i);
        elseif(mod(kontrol,2)~=0) %% 2 nin kati degil.
            p=p+4*f(i);
        end
        kontrol=kontrol+1; %% i degeri f(i) seklinde oldugundan i ile mod almiyoruz. ayri bi degiskenle tek-cift ilerliyoruz.
    end
    p=p*h/3;
    disp('Yapilan hata:');
    f(x)=diff(f,x,4); %%4. dereceden x e gore turev.
    hata=-1*(b-a)*(h*h*h*h)*f(c);
    disp(hata);
    disp('Integral sonucu:');
    aSon=p;  

end
