function [value, isTerminal, direction] = orbitEvent(~, S) 
    radius = S(2);
    
    radiusEarth = 6371000; % meters
    
    value = radius - radiusEarth; 
    isTerminal = 1;
    direction = 0; 
end 