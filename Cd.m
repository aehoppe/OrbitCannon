% function for the drag coefficient
%requires total velocity in m /s and radius from the origin
function res = Cd(velocity, radius)
    c = 331.3 + (0.6*temperature(radius));
    
    M = velocity / c; 
    
    dragC = 1.401/ M; 
    
    res = dragC; 
end