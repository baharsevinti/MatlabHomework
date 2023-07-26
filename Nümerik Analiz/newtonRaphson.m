
function [kok, iterasyonSayisi] = newtonRaphson(fonksiyon, df, baslangicDegeri, tolerans, max_iterasyonSayisi)
  
    x = baslangicDegeri;  
    iterasyonSayisi = 0;
    
    while iterasyonSayisi < max_iterasyonSayisi
        x_onceki = x;
        x = x - fonksiyon(x) / df(x);
        iterasyonSayisi = iterasyonSayisi + 1;
        if abs(x - x_onceki) < tolerans
            break;
        end
    end
    
    kok = x;
    
end



