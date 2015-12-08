function plotTargeting(latitude, results)
    res = targeting(latitude, results);
    angle = res(1);
    velocity = res(2);
    
    orbitFirstCut2(angle, velocity)
end