function res = orbitFlow2(t, state);
    x = state(1);
    y = state(2);
    Vx = state(3);
    Vy = state(4);
    
    position = [x; y];
    velocity = [Vx; Vy];

    radius = sqrt(x^2 + y^2); % meters
    
    gravity = -1*aGravity(radius); %m/s^2
    positionHat = position / radius; 
    velocityHat = velocity / norm(velocity); 
    
    dsdt = velocity; 
    
    dvdt = gravity*positionHat; 
    
    res = [dsdt; dvdt];
    
end