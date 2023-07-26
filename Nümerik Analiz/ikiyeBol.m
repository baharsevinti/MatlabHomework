% b şıkkı

function [kok, iterasyonSayisi] = ikiyeBol(fonksiyon, baslangic, bitis, tolerans)
     iterasyonSayisi = 0;
    for i = 1:500 
        c = (baslangic + bitis) / 2;
        if fonksiyon(baslangic) * fonksiyon(c) < 0
            bitis = c;
        else
            baslangic = c;
        end
        iterasyonSayisi = iterasyonSayisi + 1;
        if abs(bitis - baslangic) < tolerans % istenen toleransa ulaştığımızda çık
            kok = (baslangic + bitis) / 2;
            return;
        end
    end
    error('Tolerans için yeterli iterasyon sayısına ulaşılamadı');
end


