function plotTargeting(latitude, results)

    %input checking
    assert(latitude <= 90, 'Latitude cannot be greater than 90 degrees!') 
    assert(latitude >= -90, 'Latitude cannot be less than -90 degrees!') 
    
    %find launch params
    res = targeting(latitude, results);
    angle = res(1);
    velocity = res(2);
    
    %plot them!
    orbitFirstCut2Plot(angle, velocity)
end