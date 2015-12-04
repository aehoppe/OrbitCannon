function res = orbitFlow2(t, state);
    x = state(1);
    y = state(2);
    Vx = state(3);
    Vy = state(4);
    
    position = [x; y];
    velocity = [Vx; Vy];
    radius = sqrt(x^2 + y^2); % meters
    normVelocity = sqrt(Vx^2 + Vy^2); 
    
    positionHat = position / radius; 
    velocityHat = velocity / normVelocity;
    normDrag = aDrag(normVelocity, radius); 

    
    gravity = -1*aGravity(radius); %m/s^2
    drag = -1*normDrag*velocityHat;
    
    dsdt = velocity; 
    
    dvdt = drag + (gravity*positionHat); 
    
    
    if and(radius > 6415000, normVelocity > 11144)
        escape = 1; 
    else
        escape = 0; 
    end
        
    res = [dsdt; dvdt; escape];
    
end