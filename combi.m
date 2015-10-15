%%Author: Cevat Bostancioglu Ankara/Turkey
%%kombinasyon icin submetod olusturmayi basaramadim.
%%ayri bir m-file ile fonksiyonu kullaniyoruz.
 function n = combi(a,b)
        p=1;
        for k=0:1:(b-1)
            p=p*(a-k);
        end
        n=p/(factorial(b));
 end