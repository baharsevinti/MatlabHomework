
% c şıkkı

function [kok, iterasyonSayisi] = yerDegistir(fonksiyon, x0, x1, tolerans, max_iterasyonSayisi)

    iterasyonSayisi = 0;
    error = tolerans + 1;
    
    while error > tolerans && iterasyonSayisi < max_iterasyonSayisi
        iterasyonSayisi = iterasyonSayisi + 1;
        deger = (x0 * fonksiyon(x1) - x1 * fonksiyon(x0)) / (fonksiyon(x1) - fonksiyon(x0));
        if fonksiyon(deger) * fonksiyon(x0) < 0
            x1 = deger;
        else
            x0 = deger;
        end
        error = abs((x1 - x0) / deger) * 100;
    end
    
    kok = deger;
end
