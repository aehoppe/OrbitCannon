function res = orbitFlow(t, state)
angle = state(1);
radius = state(2);
angularVelocity = state(3); 
radialVelocity = state(4); 


dadt = angularVelocity;
drdt = radialVelocity; 

drvdt = -aGravity(radius);
davdt = -2*tan(angle)*angularVelocity^2; 

res = [dadt; drdt; davdt; drvdt]; 
end