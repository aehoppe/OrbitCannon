x = linspace(0, 44);
y = 101325*(1 - (x.*6.5)./288.15).^((9.8*28.964)/(8.314*6.5));

clf
linewidth = 2;
plot(x, y, 'm', 'LineWidth', linewidth);
xlabel('Altitude (Kilometers)');
ylabel('Pressure (Pascals)'); 