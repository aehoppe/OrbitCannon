%% Set some shit up
clf
hold on
angleEnd = 70;
velocityEnd = 110;

%% Plot Earth
axis equal;
hold on
radiusEarth = 6371000;
th = 0:pi/50:2*pi;
xunit = radiusEarth * cos(th);
yunit = radiusEarth * sin(th);
plot(xunit, yunit, 'g');

%% Parameter Sweep
for i = 1:angleEnd
    angle = i + 9;
    disp(i/(angleEnd)*100);

    for j = 1:velocityEnd
        velocity = j*4000000;
        
        h = orbitFirstCut2(angle, velocity);
        
        X(i, j) = h(1); 
        Y(i, j) = h(2); 
        
        hold on;
        plot(X(i,j), Y(i,j), '*'); 
    end
end

%% PLOT EARTH AGAAAAAAIN
        
hold on
radiusEarth = 6371000;
th = 0:pi/50:2*pi;
xunit = radiusEarth * cos(th);
yunit = radiusEarth * sin(th);
plot(xunit, yunit, 'g');
axis([-8e+6 8e+6 -8e+6 8e+6])
        
