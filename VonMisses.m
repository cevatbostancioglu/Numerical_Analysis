%%Author: Cevat Bostancioglu Ankara/Turkey
function aSon = VonMisses(f,border,x0,eps)
yenideger=0;
eski=0;
iter=1;
format long;
g=diff(f);
if(f(border(1))*f(border(2))<0) %% sinirlar dogru
    %%disp('iterasyon sayisi=');disp(iter);iter=iter+1;
    yenideger=x0-(f(x0)/g(x0)); %% ilk degeri hesaplattir.
    %%disp('deger='); disp(yenideger);
    if(abs(yenideger-x0)>eps) %% aramaya devam.
        while(abs(yenideger-eski)>eps)
            %%disp('iterasyon sayisi=');disp(iter);iter=iter+1;
            eski=yenideger;
            yenideger=yenideger-(f(yenideger)/g(x0));
            %%disp('deger=');disp(yenideger);
        end
        disp('Sayi bulundu..');
        aSon=yenideger;
    else %% sayiyi bulduk
        disp('Sayi bulundu.');
        disp(eval(yenideger))
        aSon=yenideger;
    end
    
else %% fonksiyonun verilen sinirlar? yanlis
    aSon=NaN;
    disp('Verilen sinirlarda kok olmayabilir..');
end
end