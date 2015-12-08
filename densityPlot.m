radiusEarth = 6371000;

x = linspace(radiusEarth, radiusEarth + 44000, 100);

for i = 1:length(x)
    d(i) = density(x(i));
end
linewidth = 2;
plot(x-radiusEarth, d, 'r', 'LineWidth', linewidth);
xlabel('Altitude (Meters)');
ylabel('Density (kg/m^3)'); 