%% creating strip in the center
% mostly was using this to check got the right hole positions back
nullPos = [8*ones(8,1) (5:12)'; 9*ones(8,1) (5:12)'];

chf_strip = chf.nullNew(nullPos);
nullMat_strip = chf_strip.nullPos2Mat


%% optimize  chf
[chf_optimize,pointsOnVal,RCSavg] = chf.maximizeRCSAvgSymm;

%% get matrix out and rcs
nullMat_optimize = chf_optimize.nullPos2Mat

[theta,biRCS] =  chf_optimize.getBiRCSVals();