%%Author: Cevat Bostancioglu Ankara/Turkey
function aSon=balzano(f,X,iterasyon)
yeni=0;eski=0;iter=1;
format long;
    if(f(X(1))*f(X(2))<0) %% sinirlar dogru,
        while(iter<(iterasyon+1))
        yeni=X(2);
        eski=X(1);
        X(2)=(X(1)+X(2))/2;
        disp('iterasyon sayisi>>');
        disp(iter);
        iter=iter+1;
        disp('elde edilen deger>>');
        disp(X(2));
        
            %% sinirlari degistirme 
            if(f(X(2))*f(eski)<0)
               X(1)=eski; 
            elseif(f(X(2))*f(yeni)<0)
               X(1)=X(2);
               X(2)=yeni;
            end
        end
    else %% fonksiyonun verilen sinirlari yanlis
        aSon=NaN;
        disp('Verilen sinirlarda kok olmayabilir..');
    end
end
