function res = targeting(latitude, results)

thetas = results(:,3);
bestValue = 0;
bestIndex = 0;


%currentTheta init
currentTheta = -900000;

for i = 1:length(thetas)
    if(abs(thetas(i) - latitude) < abs(thetas(i) - bestValue))
        bestValue = thetas(i);
        bestIndex = i;
    end
end

angle = results(bestIndex, 1);
velocity = results(bestIndex, 2);
res = [angle, velocity];
end