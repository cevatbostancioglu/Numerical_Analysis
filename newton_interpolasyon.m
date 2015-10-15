%%Author: Cevat Bostancioglu Ankara/Turkey
function aSon=newton_interpolasyon(X,fx,ara)
%%degiskenler
n=length(fx);
z=zeros(n,n); %% ileri fark interpolasyon icin tablo
b=zeros(n,n); %% geri fark interpolasyon icin tablo
s=0;
p=0;
format long
%%
%%tablo olusturma
    z(:,1)=fx';%%disp(z)
    for c=2:1:n %% c deltayi , k dikeyleri ifade ediyor
        for k=n:-1:2
            z(k-1,c)=z(k,c-1)-z(k-1,c-1);
            %%disp(z);
        end
    end
   
    z=rot90(z,3); %% tablo olusturma algoritmas?nda ki hatalari
    z=triu(z);    %% duzeltmek icin.
    z=rot90(z,1);
    disp('Olusturulan tablo=>');
    disp(z);
%%   
%%tablodan sonrasi
    if(ara<X(int8(n/2)))
        disp('ileri fark interpolasyon polinomu');
        s=0;s=(ara-X(1))/(X(2)-X(1)); %% ileride ayri formul
        p=z(1,1);
        for k=1:1:n-1
            p=p+combi(s,k)*z(1,k+1); %% combi ayni klasorde (combi.m)
        end
    elseif(ara>X(int8(n/2)))
        disp('geri fark interpolasyon polinomu');
        X=rot90(X,2);
        s=0;s=(ara-X(1))/(X(1)-X(2)); %% geride ayri formul var. ornekde ki degerler tutmasi icin s formulunu duzelttim.
        b=diag(rot90(z,3))'; %% 
        p=b(1,1);
        for k=1:1:n-1
            p=p+combi(s+k-1,k)*b(1,k+1); %% combi ayni klasorde (combi.m)
        end
        disp(z);
    end
    aSon=p;
end



