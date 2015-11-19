%pressure is a function that requires an input of radius in meters, and
%returns pressure in pacals
function res = pressure(radius)
    radiusEarth = 6371000; % meters
    radiusKilometers = (radius - radiusEarth) / 1000; %kilometers
    pressureInitial = 101325; % Pascals 
    dryAirWeight = 28.9644 % gm / mol
    temperatureInitial = 288.15; % degrees Kelvin
    lapseRate = 6.5 % temperature lapse rate in K/km
    gravity = aGravity(radius); 
    R = 8.31432 % J/mol*K (ideal gas constant) 
    
    p = pressureInitial*(1 - (lapseRate*radiusKilometers)/temperatureInitial)^(gravity*dryAirWeight/R*lapseRate); %pascals
end