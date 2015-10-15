%%Author: Cevat Bostancioglu Ankara/Turkey
function aSon = hizli_newton(f,g,xb,yb,eps)
format long;
syms x y;
xn1(x,y)=x+y;yn1(x,y)=x+y;
yeni_x=0;yeni_y=0;bx=0;by=0;
iter=1;

fx=diff(f,x);
gy=diff(g,y);

xn1(x,y)=x-((f)/(fx));
yn1(x,y)=y-((g)/(gy));
%%disp(xn1);disp(yn1); %% fonksiyonlari olusturduk.
disp('iterasyon sayisi>>');disp(iter);iter=iter+1;

yeni_x=double(xn1(xb,yb));yeni_y=double(yn1(yeni_x,yb)); %% ilk
disp(yeni_x);disp(yeni_y);

    while(max(abs(yeni_x-xb),abs(yeni_y-yb))>eps)
        xb=yeni_x;yb=yeni_y;
        yeni_x=double(xn1(xb,yb));yeni_y=double(yn1(yeni_x,yb));
        disp(yeni_x);disp(yeni_y);
        %%disp(xb);disp(yb);
        disp('iterasyon sayisi>>');disp(iter);
        iter=iter+1;
    end
    disp('Sonuc bulundu!!');
    disp(yeni_x);disp(yeni_y);
end

