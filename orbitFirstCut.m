radiusEarth = 6371000; % meters

initialAngle = 0; %radians
initialRadius =  radiusEarth; % meters

initialVelocity = 4000; % m /s  
launchAngle = 30; % degrees
launchAngleRad = pi* launchAngle / 180; % radians 

initialRadialVelocity = sin(launchAngleRad) * initialVelocity; % m / s
initialAngularVelocity = initialVelocity * cos(launchAngleRad) / radiusEarth; % rad / sec

initial = [initialAngle; initialRadius; initialAngularVelocity; initialRadialVelocity];

initialTime = 0; %seconds
finalTime = 120* 60; %seconds


[T, U] = ode45(@orbitFlow, [initialTime finalTime], initial); 

%%pLOT TIME!

angle = U(:, 1);
radius = U(:, 2);

format long;
disp(U); 

clf
% hold on 
polar(angle, radius, 'b*'); 