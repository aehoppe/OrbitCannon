function res = orbitFlow2(t, state);
    x = state(1);
    y = state(2);
    Vx = state(3);
    Vy = state(4);
        %negative tangent cases
    if (x < 0)
        theta = atan(y/x) + pi; %radians
    else
        theta = atan(y/x); %radians
    end
    radius = sqrt(x^2 + y^2); % meters
    
    gravity = aGravity(radius); %m/s^2
    
    dxdt = Vx; %m/s
    dydt = Vy; %m/s
    
    dVxdt = -gravity * cos(theta); %m/s^2
    dVydt = -gravity * sin(theta); %m/s^2
    
    res = [dxdt; dydt; dVxdt; dVydt];
    
end