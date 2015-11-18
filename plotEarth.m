    th = 0:pi/50:2*pi;
    xunit = radiusEarth * cos(th);
    yunit = radiusEarth * sin(th);
    plot(xunit, yunit);