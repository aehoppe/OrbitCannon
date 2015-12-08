function [angle, velocity] = targeting(latitude)

thetas = results(:,3);
bestValue = 0;
bestIndex = 0;


%lat to theta here


for i = 1:length(thetas)
    if(abs(thetas(i) - currentTheta) < abs(thetas(i) - bestValue))
        bestValue = thetas(i);
        bestIndex = i;
    end
end

angle = results(bestIndex