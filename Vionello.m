%%Author: Cevat Bostancioglu Ankara/Turkey
function aSon=Vionello(A,V,Epsilon,B)
    aSon=0;alfa=0;iter=1;
	format long;
    if(B==1) %% en buyugu bulma
       while(1==1)
        %%disp('AV=A*V');
        disp('Yapilan iterasyon Sayisi=');
        disp(iter);
        AV=A*V; %% Alfa(i)*Vson;
        disp(AV);
        if(abs(alfa-max(max(AV)))<Epsilon)
            disp('Yapilan Iterasyon sayisi');disp(iter);
            disp('Alfa');disp(alfa);
            disp('V');disp(AV./max(AV));
            disp('Sonuc');disp(alfa);
            aSon=alfa;
            break;
        end
        alfa=max(max(AV)); %% sat?r yada sütün almas?n diye.
        disp('Alfa degeri=');
        disp(alfa);
        V=AV./max(AV);
        disp(V);
        disp('************'),
        iter=iter+1;
        end
    elseif(B==0) %% en kucugu bulma
    A=inv(A); %% Recursive cozum
    disp(1/Vionello(A,V,Epsilon,1)); 
    end
    
end
