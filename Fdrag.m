% function drag = fDrag(v, h)
% This function returns the drag force on a projectile as a function of its
% velocity and its radius (distance from origin)
function drag = fDrag(v, r)
    area = 0.001137; %m^2
    drag = (Cd(v, r) * density(r) * v^2 * area)/2;
end
