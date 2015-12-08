radiusEarth = 6371000;

x = linspace(radiusEarth, radiusEarth + 44000, 100);

for i = 1:length(x)
    d(i) = density(x(i));
end

plot(x-radiusEarth, d, 'g*');