%% Set some shit up
clf
hold on
angleEnd = 90;
velocityEnd = 210;

results = [-1, -1, -1];

%% Plot Earth
% axis equal;
% hold on
% radiusEarth = 6371000;
% th = 0:pi/50:2*pi;
% xunit = radiusEarth * cos(th);
% yunit = radiusEarth * sin(th);
% plot(xunit, yunit, 'g');

%% Parameter Sweep
for i = 1:angleEnd
    angle = i;
    disp(i/(angleEnd)*100);

    for j = 1:velocityEnd
        velocity = j*2000000;
        
        h = orbitFirstCut2(angle, velocity);
        
        x = h(1);
        y = h(2);
        
        X(i, j) = x; 
        Y(i, j) = y; 
        escape(i,j) = h(3); 
        
        hold on;
        if escape(i,j) == 0  
            if(x < 0)
                theta = atand(y/x);
            else
                theta = 180 - atand(y/x);
            end
            results = [results; [angle, velocity, theta]];
        end
    end
end

%% PLOT EARTH AGAAAAAAIN  
%         
% hold on
% axis equal
% radiusEarth = 6371000;
% th = 0:pi/50:2*pi;
% xunit = radiusEarth * cos(th);
% yunit = radiusEarth * sin(th);
% plot(xunit, yunit, 'g');
% axis([-8e+6 8e+6 -8e+6 8e+6]);


