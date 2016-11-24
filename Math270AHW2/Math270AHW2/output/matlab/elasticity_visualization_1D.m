clear all;
close all;

simulation_info=load('../simulation_info.dat');
last_frame=simulation_info(1);
N=simulation_info(2);

for f=0:last_frame
    x=load(strcat('particle_x_',sprintf('%i',f),'.dat'));
    phi(f+1,:)=x;
    hold on;
end

plot(phi);