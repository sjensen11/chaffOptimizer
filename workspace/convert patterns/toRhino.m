%toRhino creates an csv to feed into Rhino
%   creates a csv of Positions fed in [row,col] to be fed into rhino
%   inMat in a square matrix of 0 and 1's 

%mildly cheating and just writing a script, because lazy
%values that can change
inMat = Fullpattern_3mm_35GHz_without_registration;
plateLength = 3;
NumCells =60;
filename = 'Fullpattern_3mm_35GHz_without_registration.csv'

%turn 1/0 into nullPos
[row,col]=find(inMat==0);
nullPos = [row,col];

%write csv file
outMat = [plateLength,NumCells;nullPos];
csvwrite(filename,outMat);


