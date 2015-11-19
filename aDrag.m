% function drag = aDrag(v, h)
% This function returns the drag force on a projectile as a function of its
% velocity and its radius (distance from origin)
function drag = aDrag(v, r)
    if(r > 6451000)
        drag = 0;
    else 
        area = 0.001137; %m^2
        mass = 4.4282; % kg
        drag = (Cd(v, r) * density(r) * v^2 * area)/2 * mass;
    end
end
