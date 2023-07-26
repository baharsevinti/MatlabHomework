
% e şıkkı
function yaklasikBagilHata = yaklasikBagilHata(tahminKok, reelKok)

    yaklasikBagilHata = abs((tahminKok - reelKok) / reelKok) * 100;

end
