
function res = orbitFirstCut2(angle, velocity)
    radiusEarth = 6371000; % meters
   
    initialVelocity = velocity; % m /s  
    launchAngle = angle; % degrees
    launchAngleRad = pi* launchAngle / 180; % radians  

    initialX = 0; %meters
    initialY = radiusEarth + 1; %meters

    initialVx = initialVelocity*cos(launchAngleRad); % m/s 
    initialVy = initialVelocity*sin(launchAngleRad); % m/s

    initial = [initialX; initialY; initialVx; initialVy; 0]; 

    initialTime = 0; %seconds
    finalTime = 1000000*60; %seconds

    options = odeset('events', @orbitEvent2); 

    [T, S] = ode45(@orbitFlow2, [initialTime, finalTime], initial, options);
    
%     clf
%     hold on
%     th = 0:pi/50:2*pi;
%     xunit = radiusEarth * cos(th);
%     yunit = radiusEarth * sin(th);
%     plot(xunit, yunit, 'g');
% 
%     X = S(:, 1);
%     Y = S(:, 2);
%     pause; 
%     comet(X, Y);

    xEnd = S(length(T),1);
    yEnd = S(length(T), 2);
    
    if max(S(:, 5)) > 0
        finalEscape = 1;
    else
        finalEscape = 0; 
    end
    
    res = [xEnd, yEnd, finalEscape];
end