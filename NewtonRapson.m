%%Author: Cevat Bostancioglu Ankara/Turkey
function aSon=NewtonRapson(f,border,x0,eps)  
yenideger=0;
format long;
g=diff(f);
if(f(border(1))*f(border(2))<0) %% sinirlar dogru
    yenideger=x0-(f(x0)/g(x0)); %% ilk degeri hesaplattir.
    if(abs(yenideger-x0)>eps) %% aramaya devam.
        while(abs(yenideger-x0)>eps)
            x0=yenideger;
            yenideger=yenideger-(f(yenideger)/g(yenideger));
        end
        disp('Sayi bulundu..');
        aSon=yenideger;
    else %% sayiyi bulduk
        disp('Sayi bulundu.');
        disp(eval(yenideger))
        aSon=eval(yenideger);
    end
    
else %% fonksiyonun verilen sinirlar? yanlis
    aSon=NaN;
    disp('Verilen sinirlarda kok olmayabilir..');
end
end
