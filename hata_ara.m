%%Author: Cevat Bostancioglu Ankara/Turkey
function [mutlak,bagil] = hata_ara(ifade,hesaplanan)
mutlak=abs(ifade-hesaplanan);
bagil=abs(ifade-hesaplanan)/ifade;
end