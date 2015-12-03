%pressure is a function that requires an input of radius in meters, and
%returns pressure in pacals
function res = pressure(radius)
    radiusEarth = 6371000; % meters
    radiusKilometers = (radius - radiusEarth) / 1000; %kilometers
    pressureInitial = 101325; % Pascals 
    dryAirWeight = 28.9644; % gm / mol
    temperatureInitial = 288.15; % degrees Kelvin
    lapseRate = 6.5; % temperature lapse rate in K/km
    gravity = 9.8; 
    R = 8.31432; % J/mol*K (ideal gas constant) 
    if radiusKilometers <= 44
        x = radiusKilometers; 
        res = 101325*(1 - (x.*6.5)./288.15).^((9.8*28.964)/(8.314*6.5)); %pascals
    else
        res = 0;
    end 

    try
        assert(isreal(res));
    catch
        whos
    end
    
end
