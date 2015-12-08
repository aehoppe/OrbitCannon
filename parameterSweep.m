%% Set some shit up 
clf
hold on
angleEnd = 90;
velocityEnd = 180;

results = [-1, -1, -1, 0, 0];

X = zeros(angleEnd, velocityEnd);
Y = zeros(angleEnd, velocityEnd);
escape = zeros(angleEnd, velocityEnd);

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

    parfor j = 1:velocityEnd
        velocity = j*1000 ;
         
        h = orbitFirstCut2(angle, velocity);
        
        x = h(1);
        y = h(2);
        
        X(i, j) = x; 
        Y(i, j) = y; 
        escape(i,j) = h(3); 
        
        hold on;
        if escape(i,j) == 0  
            if(x < 0)
                theta = 90 - atand(y/x);
            else
                theta = 90 - atand(y/(-x));
            end
            results = [results; [angle, velocity, theta, x, y]];
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


