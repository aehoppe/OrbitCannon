function res = targeting(targetLatitude, results)

% set up variables for linear search
impactLats = results(:,3);
bestValue = -inf;
bestIndex = 0;


% linear search for best launch params
for i = 1:length(impactLats)
    if(abs(impactLats(i) - targetLatitude) < abs(impactLats(i) - bestValue))
        bestValue = impactLats(i);
        bestIndex = i;
    end
end

%package output
angle = results(bestIndex, 1);
velocity = results(bestIndex, 2);
res = [angle, velocity];
end