# c3d_to_xyz
Convert C3D data to XYZ coordinates along time for CMU Mocap Dataset

# Usage
Run loadc3d.m to open a GUI to select, load and display a scatter plot of X,Y,Z coordinates along time of a .c3d file

The core data object is Markers which is of dimension NFrames x NMarkers x 3 where NFrames is the total of time steps in data, NMarkers is the total number of markers and the last dimension stores (x,y,z) location of an individual marker.

# Reference
This is a slightly modified version of the Matlab Code for [c3d loading and saving](http://graphics.cs.cmu.edu/software/c3d_matlab.zip) in Matlab, by Q Youn Hong, using code from Alan Morris and Jaap Harlaar. 

CMU Mocap Dataset <http://mocap.cs.cmu.edu/>
