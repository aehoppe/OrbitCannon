function [value, isTerminal, direction] = orbitEvent2(~, S) 
    X = S(1);
    Y = S(2);
    
    radiusEarth = 6371000; % meters
    
    radius = sqrt(X^2 + Y^2); 
    value = radius - radiusEarth; 
    isTerminal = 1;
    direction = 0; 
end 