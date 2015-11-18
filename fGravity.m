%This funciton calcualtes the force of gravity
%radius is a required input (radius is calculated from the origin) 
function res = fGravity(radius)
    massEarth = 5.972 * 10^24; % kilograms
    massObject = 4.4282; %kilograms
    G = 6.67408 * 10^-11; %m^3 * kg^-1 * s^-2
    
    force = (G*massEarth*massObject)/radius^2; %newtons
    res = force; %newtons
end