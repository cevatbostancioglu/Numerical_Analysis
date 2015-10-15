%%Author: Cevat Bostancioglu Ankara/Turkey
function aSon=non_lin_newton(f,g,xb,yb,eps)
syms x y;
xn1(x,y)=x+y;yn1(x,y)=x+y;
yeni_x=0;yeni_y=0;bx=0;by=0;
iter=1;

format long;

fx=diff(f,x);fy=diff(f,y);
gx=diff(g,x);gy=diff(g,y);

xn1(x,y)=x-((f*gy-g*fy)/(fx*gy-fy*gx));
yn1(x,y)=y-((g*fx-f*gx)/(fx*gy-fy*gx));
%%disp(xn1);disp(yn1); %% fonksiyonlari olusturduk.
disp('iterasyon sayisi>>');disp(iter);

yeni_x=double(xn1(xb,yb));yeni_y=double(yn1(xb,yb)); %% ilk
disp(yeni_x);disp(yeni_y);

    while(max(abs(yeni_x-xb),abs(yeni_y-yb))>eps)
        xb=yeni_x;yb=yeni_y;
        yeni_x=double(xn1(xb,yb));yeni_y=double(yn1(xb,yb));
        disp(yeni_x);disp(yeni_y);
        %%disp(xb);disp(yb);
        disp('iterasyon sayisi>>');disp(iter);
        iter=iter+1;
    end
    disp('Sonuc bulundu!!');
    disp(yeni_x);disp(yeni_y);
end
