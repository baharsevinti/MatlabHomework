
cizilecekFonksiyon = @(x) -12 - 21*x + 18*x.^2 - 2.75*x.^3; 

x = linspace(-2, 4, 800);  

y = cizilecekFonksiyon(x);

% Grafik çizen kodlar
figure; 
plot(x, y,'g' , 'LineWidth', 2);
title('f(x) = -12 - 21x + 18x^2 - 2.75x^3'); 
xlabel('x Ekseni'); 
ylabel('f(x) Ekseni'); 
grid on;
grid minor;


