%% Set up sweep params
angleEnd = 90;
velocityEnd = 180;

%set up output
results = [-1, -1, -1];
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
parfor i = 1:angleEnd
    angle = i;
    disp(i/(angleEnd)*100);

    for j = 1:velocityEnd
        velocity = j*1000  ;
        %simulate
        h = orbitFirstCut2(angle, velocity);
        
        %unpack values
        x = h(1);
        y = h(2);
        
        %store values
        X(i, j) = x; 
        Y(i, j) = y; 
        escape(i,j) = h(3); 
        
        %package relevant results into results[]
        if (escape(i,j) == 0)  
            
            if(x >= 0)
                impactLat = atand(y/x);
            else
                impactLat = atand(y/(-x));
                angle = 180 - angle;
            end
            results = [results; [angle, velocity, impactLat]];
        end
    end
end

disp('parameter sweep complete'); 
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


