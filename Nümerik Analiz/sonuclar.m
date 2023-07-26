% Fonksiyonları kullanmak için oluşturulan script

% İkiye böl
fonksiyon = @(x) -12 - 21*x + 18*x.^2 - 2.75*x.^3;
baslangicDegeri = -1;
bitisDegeri = 0;
tolerans = 0.02;
    
[ikiyeBolKok, ikiyeBolIterasyonSayisi] = ikiyeBol(fonksiyon, baslangicDegeri, bitisDegeri, tolerans);


% Yer değiştirme 
fonksiyon = @(x) -12 - 21*x + 18*x.^2 - 2.75*x.^3;
baslangicDegeri = -1;
bitisDegeri = 0;
tolerans = 0.015;
max_iterasyonSayisi = 500;

[yerDegistirKok, yerDegistirIterasyonSayisi] = yerDegistir(fonksiyon, baslangicDegeri, bitisDegeri, tolerans, max_iterasyonSayisi);


% Newton-Rapshon 
fonksiyon = @(x) -12 - 21*x + 18*x.^2 - 2.75*x.^3;
df = @(x) -21 + 36*x - 8.25*x.^2;
baslangicDegeri = -3; 
tolerans = 0.015;
max_iterasyonSayisi = 500;

[newtonRaphsonKok, newtonRaphsonIterasyonSayisi] = newtonRaphson(fonksiyon, df,baslangicDegeri, tolerans, max_iterasyonSayisi);


% Reel kök
fonksiyon = @(x) -12 - 21*x + 18*x.^2 - 2.75*x.^3;

reelKok = fzero(fonksiyon, [-1, 0]);



% Yaklaşık bağıl hata
ikiyeBolHata = yaklasikBagilHata(ikiyeBolKok, reelKok);
yerDegistirHata = yaklasikBagilHata(yerDegistirKok, reelKok);
newtonRapshonHata = yaklasikBagilHata(newtonRaphsonKok, reelKok);

fprintf('\n');

% SONUÇLAR

fprintf('SONUÇLAR\n\n');

fprintf('Reel kök: %.6f\n', reelKok);

fprintf('\nBulunan Kökler');
fprintf('\n----------------------------\n');

fprintf('b-) İkiye Bölme => %.6f\n',ikiyeBolKok);
fprintf('c-) Yer Değiştirme => %.6f\n',yerDegistirKok);
fprintf('d-) Newton - Rapshon => %.6f\n',newtonRaphsonKok);

fprintf('\n\n');

fprintf('İterasyon Sayıları');
fprintf('\n----------------------------\n');
fprintf('b-) İkiye Bölme => %d\n',ikiyeBolIterasyonSayisi);
fprintf('c-) Yer Değiştirme => %.d\n',yerDegistirIterasyonSayisi);
fprintf('d-) Newton - Rapshon => %d\n',newtonRaphsonIterasyonSayisi);

fprintf('\n\n');

fprintf('Yaklaşık Bağıl Hatalar');
fprintf('\n----------------------------\n');

fprintf('b-) İkiye Bölme => %%%.3f\n',ikiyeBolHata);
fprintf('c-) Yer Değiştirme => %%%.3f\n',yerDegistirHata);
fprintf('d-) Newton - Rapshon => %%%.3f\n',newtonRapshonHata);

