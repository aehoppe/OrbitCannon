function orbitFirstCut2(angle, velocity)
    radiusEarth = 6371000; % meters

    initialVelocity = velocity; % m /s  
    launchAngle = angle; % degrees
    launchAngleRad = pi* launchAngle / 180; % radians  

    initialX = 0; %meters
    initialY = radiusEarth + 1; %meters

    initialVx = initialVelocity*cos(launchAngleRad); % m/s 
    initialVy = initialVelocity*sin(launchAngleRad); % m/s

    initial = [initialX; initialY; initialVx; initialVy]; 

    initialTime = 0; %seconds
    finalTime = 1000*60; %seconds

    options = odeset('events', @orbitEvent); 

    [T, S] = ode45(@orbitFlow2, [initialTime, finalTime], initial, options);

    X = S(:, 1); 
    Y = S(:, 2); 
    
    th = 0:pi/50:2*pi;
    xunit = radiusEarth * cos(th);
    yunit = radiusEarth * sin(th);
    plot(xunit, yunit);

    hold on
    axis equal
    
    %% plot output
    comet(X, Y); 
end