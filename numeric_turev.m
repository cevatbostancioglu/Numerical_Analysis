%%Author: Cevat Bostancioglu Ankara/Turkey
function aSon=numeric_turev(X,fx,ara)
%%degiskenler
n=length(fx);
z=zeros(n,n); %% ileri fark interpolasyon icin tablo
b=zeros(n,n); %% geri fark interpolasyon icin tablo
ss=0;
p=0;
syms s;
test(s)=s; %% geri fark interpolasyonda combinasyonlar icin.suanda rastgele atadim.
format long
%%
%%tablo olusturma
    z(:,1)=fx';%%disp(z)
    for c=2:1:n %% c deltayi , k dikeyleri ifade ediyor
        for k=n:-1:2
            z(k-1,c)=z(k,c-1)-z(k-1,c-1); %% bazi hatalar olusturuyor.ancak degerler dogru.
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
      ss=0;ss=(ara-X(1))/(X(2)-X(1)); %% ileride ayri formul
      p=0;p=z(1,2);
      for k=1:1:n-2
        p=p+combi_s(s,k+1,k+1,ss)*z(1,k+2);
      end
      p=p*(1/(X(2)-X(1)));
    elseif(ara>X(int8(n/2)))
      disp('geri fark interpolasyon polinomu'); 
      X=rot90(X,2);
      ss=0;ss=(ara-X(1))/(X(1)-X(2)); %% geride ayri formul var. ornekde ki degerler tutmasi icin s formulunu duzelttim.
      b=diag(rot90(z,3))'; %% 270 dondur,diagonalini al. transpozunu al. boylelikle ilk sutun olusturuoyurz.
      p=0;p=b(1,2);
      for k=1:1:n-2
          test(s)=combi(s+k,k+1);
          test(s)=diff(test(s),s);
          test(s)=test(ss);
          p=p+test(s)*b(1,k+2);
      end
      p=p*(1/(X(1)-X(2)));
    end
    
    aSon=p;
end