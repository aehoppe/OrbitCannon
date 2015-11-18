%this function calculates the accleration due to gravity 
%raduis is required as an input (radius is calculated from the origin)
function res = aGravity(radius)
    massObject = 4.4282; % kilograms
    force = fGravity(radius); % newtons
    
    accleration = force / massObject; % m/ s^2
    res = accleration; % m/s^2
    
end
    
    

