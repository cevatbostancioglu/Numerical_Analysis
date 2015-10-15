%%Author: Cevat Bostancioglu Ankara/Turkey
function aSon = VionelloIterasyon(A,V,I,B)
    aSon=0;alfa=0;iter=1;
	format long;
    disp('Yapilmasi istenen iterasyon sayisi=');
    disp(I);
    if(B==1)
        while(I>=iter)
        disp('Yapilan iterasyon sayisi=');
        disp(iter);
        AV=A*V;
        disp(AV);
        alfa=max(max(AV)); %% sat?r yada sütün almas?n diye.
        disp('Alfa degeri=');
        disp(alfa);
        V=AV./max(AV);
        disp(V);
        disp('************'),
        iter=iter+1;
        end
        aSon=alfa;
    elseif(B==0)
        A=inv(A);
        disp(1/VionelloIteration(A,V,I,1));
    end
end
