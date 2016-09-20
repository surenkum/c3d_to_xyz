% script loadc3d

[datafile,datapath] = uigetfile('*.c3d', 'open C3D file');

if datafile ~= 0
    
    [Markers,VideoFrameRate,AnalogSignals,AnalogFrameRate,Event,ParameterGroup,CameraInfo,ResidualError]=...
        readC3D([datapath,datafile]);
    
end

% For plotting the data
fig = figure(1);
xlim([min(min(Markers(:,:,1))),max(max(Markers(:,:,1)))]);
ylim([min(min(Markers(:,:,2))),max(max(Markers(:,:,2)))]);
zlim([min(min(Markers(:,:,3))),max(max(Markers(:,:,3)))]);
view(3)
hold on;

%Animate data for all the video frames
for i = 1:size(Markers,1)
    hold on;
    % x,y,z position at time frame i
    scatter3(Markers(i,:,1),Markers(i,:,2),Markers(i,:,3));
    drawnow;
    cla;
end


