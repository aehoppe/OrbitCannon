function plotTargeting(latitude, results)

    %input checking
    assert(latitude <= 90)
    assert(latitude >= -90) 
    
    %find launch params
    res = targeting(latitude, results);
    angle = res(1);
    velocity = res(2);
    
    %plot them!
    orbitFirstCut2Plot(angle, velocity)
end