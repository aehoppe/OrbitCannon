% function for the drag coefficient
%requires total velocity in m /s and radius from the origin
function res = Cd(velocity, radius)
    radiusEarth = 6371000;
    radius = radius - radiusEarth; 
    c = 331.3 + (0.6*temperature(radius));
    
    M = velocity / c; 
    
    dragC = 1.401/ M; 
    
    res = dragC; 
end