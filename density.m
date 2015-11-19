function res = density(radius)
    p = pressure(radius); % pascals
    t = temperature(radius); % Kelvin 
    m = 28.9644; % dry air weight in gm/mol
    R = 8.31431; %ideal gas constant in J/mol Kelvin
    
    d = (p*m)/(R*t*1000); 
    res = d;
end