function [angle, velocity] = targeting(latitude, results)

thetas = results(:,3);
bestValue = 0;
bestIndex = 0;


%lat to theta here
theta = latitude - 180;

%currentTheta init
currentTheta = -900000;

for i = 1:length(thetas)
    if(abs(thetas(i) - currentTheta) < abs(thetas(i) - bestValue))
        bestValue = thetas(i);
        bestIndex = i;
    end
end

angle = results(bestIndex, 2);
velocity = results(bestIndex, 3);
