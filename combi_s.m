%%Author: Cevat Bostancioglu Ankara/Turkey
%%kombinasyon icin submetod olusturmayi basaramadim.
%%ayri bir m-file ile fonksiyonu kullaniyoruz.
%%combi.m den ayri olarak bu symbolic islemler icin.
 function n = combi_s(s,b,derece,deger)
 syms p;
 p=1;
 f(s)=s; %% f fonksiyonunun sembolic oldugunu gostermek icin.
        for k=0:1:(b-1)
            p=p*(s-k);
        end
        
        for k=1:1:derece
            f(s)=diff(p/(factorial(b)),s); %% n. mertebeden turev
        end
        
        n=f(deger);
 end