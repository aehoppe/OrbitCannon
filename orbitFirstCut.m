radiusEarth = 6371000; % meters

initialAngle = 0; %radians
initialRadius =  radiusEarth + 1; % meters

initialVelocity = 8000; % m /s  
launchAngle = 30; % degrees
launchAngleRad = pi* launchAngle / 180; % radians 

initialRadialVelocity = sin(launchAngleRad) * initialVelocity; % m / s
initialAngularVelocity = initialVelocity * cos(launchAngleRad) / radiusEarth; % rad / sec

initial = [initialAngle; initialRadius; initialAngularVelocity; initialRadialVelocity];

initialTime = 0; %seconds
finalTime = 120* 60; %seconds

options = odeset('events', @orbitEvent);


[T, U] = ode45(@orbitFlow, [initialTime finalTime], initial, options); 

%% pLOT TIME!

angle = U(:, 1);
radius = U(:, 2);


clf
% hold on 

theta = 0:.1:(2.1*pi);
n = length(theta);
r = zeros(1, n); 
r = r + radiusEarth;
polar(theta, r); 
hold on
polar(angle, radius, 'b'); 
