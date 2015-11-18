function res = temperature(radius)
    %radius needs to be in kilometers for this function
    radiusEarth = 6371000; % meters
    radiusKilometers = (radius - radiusEarth)  / 1000; %kilometers
    temperatureInitial = 288.15; % degrees Kelvin
    lapseRate = 6.5; % temperature lapse rate in K/km

    temp = temperatureInitial - lapseRate*radiusKilometers; % kelvin

    res = temp; %kelvin 
end