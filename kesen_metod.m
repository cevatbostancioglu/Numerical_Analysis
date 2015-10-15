%%Author: Cevat Bostancioglu Ankara/Turkey
function aSon=kesen_metod(f,border,x,eps)
format long;
yeni=0;iter=1;%%guncellenen degerleri aktarmak icin.
if(f(border(1))*f(border(2))<0) %% sinirlar dogru
   while(abs(x(2)-x(1))>eps) %% istenen degerlere ulasilmadigi surece
   yeni=x(2);
   x(2)=(x(1)*f(x(2))-x(2)*f(x(1)))/(f(x(2))-f(x(1)));
   x(1)=yeni;
   disp('iterasyon sayisi=');disp(iter);iter=iter+1;
   disp('Bulunan deger=');disp(x(2));
   end
   disp('Sayi bulundu..');
   disp(x(2));
   aSon=x(2);
else %% fonksiyonun verilen sinirlar? yanlis
    aSon=NaN;
    disp('Verilen sinirlarda kok olmayabilir..');
end
end
