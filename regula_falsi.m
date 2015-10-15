%%Author: Cevat Bostancioglu Ankara/Turkey
function aSon = regula_falsi(f,b,X,eps)
yeni=0;eksi=0;
format long;
persistent iter; %% global degisken icin.
if(isempty(iter)) %% fonksiyon rekustif oldugundan
    iter=1;      %%tanimlanan degiskenler siliniyor.silinmemesi icin.
end

    if(f(b(1))*f(b(2))<0) %% sinirlar dogru
        yeni=X(2);
        eski=X(1);
        X(2)=(X(1)*f(X(2))-X(2)*f(X(1)))/(f(X(2))-f(X(1)));
        X(1)=yeni;

        disp('iterasyon sayisi>>');
        disp(iter);
        iter=iter+1;
        disp('elde edilen deger>>');
        disp(X(2));
        if(abs(X(2)-X(1))>eps && abs(X(2)-eski)>eps)
            %%kok arama algoritmasi
            if(f(X(2))*f(eski)<0)
                X(1)=eski;%%recursive cozum.
                aSon=regula_falsi(f,b,X,eps); %% kendini cagir.
            elseif(f(X(2))*f(X(1))<0)
                disp('ilginc..');
                %% sinirlar sirayla yazilmazsa buraya girebilir.
            end
        else
            disp('Sonuc bulundu..');
            disp(X(2));
            aSon=X(2);
        end
        
    else %% fonksiyonun verilen sinirlari yanlis
        aSon=NaN;
        disp('Verilen sinirlarda kok olmayabilir..');
    end
end