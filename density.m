function res = density(radius)
    p = pressure(radius); % pascals
    t = temperature(radius); % Kelvin 
    m = 0.0289644; % dry air weight in kg/mol
    R = 8.31431; %ideal gas constant in J/mol Kelvin
    
    d = (p*m)/(R*t); 
    res = d;
end