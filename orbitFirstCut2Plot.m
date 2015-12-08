
function res = orbitFirstCut2Plot(angle, velocity)
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
    finalTime = 100000*60; %seconds

    options = odeset('events', @orbitEvent2); 

    [T, S] = ode45(@orbitFlow2, [initialTime, finalTime], initial, options);
    
    %% plot section
    hold on
    axis equal
    th = 0:pi/50:2*pi;
    xunit = radiusEarth * cos(th);
    yunit = radiusEarth * sin(th);
    linewidth = 2;
    plot(xunit, yunit, 'g', 'LineWidth', linewidth);

    X = S(:, 1);
    Y = S(:, 2);

    xlabel('Meters');
    ylabel('Meters');

   comet(X, Y);
%     
%     plot(X, Y,'k', 'LineWidth', linewidth);
%     axis([-1, 50, (radiusEarth -3), (radiusEarth + 20)]); 

    xEnd = S(length(T),1);
    yEnd = S(length(T), 2);
    
    if max(S(:, 5)) > 0
        finalEscape = 1;
    else
        finalEscape = 0; 
    end
    
    res = [xEnd, yEnd, finalEscape];
end