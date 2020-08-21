%% figuring out averaging
tt = [2 4 6 8 3 1];
%% figuring out ploting
% numVals = 5;
% theta = linspace(-pi/2,pi/2,numVals)
% phi = linspace(0,pi,numVals)
% TT = repmat(theta,numVals,1)
% PP = repmat(phi.',1,numVals)
% Vals = sin(TT).*sin(PP);
%  figure;mesh(TT,PP,Vals);

%% curent plotter bug testing
%something is wrong with current plotter so trying
% nullPosLoc = [2 2]
% row = nullPosLoc(:,1);
% col = nullPosLoc(:,2);
% 
% NumCells = 3;
% NumEdge = NumCells -1;
% bxn_len = NumCells*NumEdge;
% 
% nullLen = size(nullPosLoc,1)
% cellNum = zeros(1,nullLen)
% 
% %allocating maximum space needed for edges... -1 so that I can throw
% %anything I don't use away
% edgex = zeros(1,4*nullLen)-1; %[];
% edgey = zeros(1,4*nullLen)-1;%[];
% edgex_count = 1;
% edgey_count = 1;
% 
% innerNulls = nullPosLoc; %want to save nullPos right now
% [rowBad, colBad] = find(innerNulls==1); %right next to the edge
% innerNulls(rowBad,:) = [];
% 
% [rowBad,colBad] = find(innerNulls==NumCells);
% innerNulls(rowBad,:) = [];
% 
% for ii = 1:size(innerNulls,1)
%     rowVal = innerNulls(ii,1); colVal = innerNulls(ii,2); 
%     %edge 1,2 next to eachother and 3,4 next to eachother
%     edge1 = (rowVal-1)*(NumCells-1) +(colVal-1); %each time through removes one edge previous
%     edge2 = (rowVal-1)*(NumCells-1) + colVal;
%     edge3 = (colVal-1)*(NumCells-1) + (rowVal-1);
%     edge4 = (colVal-1)*(NumCells-1) +  rowVal;
% 
%     edgex(edgex_count:edgex_count+1) = [edge1 edge2];
%     edgey(edgey_count:edgey_count+1) = [edge3 edge4];
% 
%     edgex_count = edgex_count+2; %added 2 edges
%     edgey_count = edgey_count+2; %added 2 edges
% end
% 
% %throw out uncessary allocation 
% edgex(edgex==-1) = [];
% edgey(edgey==-1) = [];
% 
% %finally get values
% edgex = unique(edgex);
% edgey = unique(edgey);
% % edgeyshiftup = bxn_len-length(edgex)+edgey; 
% edgeyshiftup = bxn_len+edgey; 
% 
% edges = [edgex edgeyshiftup]; %store all edges in one spot

%% running balanis eq to play with comsol


%% generating big plates to play with
%% testing the plate RCS stuff
% NumCells = 50;
% len = 5;
% phiInc = 0; %60degre
% thetaInc = 0; %45degree
% %generate plate... timing for fun
% tic
% plateTest = thePlate(NumCells, len ,phiInc,thetaInc);
% plateTest = plateTest.generateMatrix();
% myTime= toc

% %% testing the plate RCS stuff
% cellsperlambda = 16; %15 %per thesis rec %upped to 16 because need even
% len = 1;
% 
% NumCells = ceil(len*cellsperlambda)
% 
% phiInc = 0; %60degre
% thetaInc = pi/4; %45degree
% %generate plate... timing for fun
% tic
% plate10 = thePlate(NumCells, len ,phiInc,thetaInc);
% plate10 = plate10.generateMatrix();
% myTime= toc

% %RCS stuff
% phi_s = pi/6;
% %get RCS - doing it this way to match paper
% numVals = 100;
% theta = linspace(0,2*pi,numVals);
% rcs = zeros(1,numVals);
% 
% 
% for ii = 1:numVals
%     rcs(ii) = plateTest.getRCSVal(theta(ii),phi_s);
% end
% 
% plot(theta*180/pi,10*log10(rcs/lambda^2))

%% some random stuff I don't remember what I was playing with
% this is whay you should always document sarah :P
% NumCells = 5;
% nullpos = [1 5; 2 3; 4 1; 3 3];
% 
% [rowBad, colBad] = find(nullpos==1) %right next to the edge
% nullpos(rowBad,:) = 0
% %testing out quarter division stuff
% NumCells = 10;
% NumCells = NumCells%/2
% %xx is a series of zeros and one, zero means null that position
% xx = ones(1,NumCells^2);
% xx(37) = 0;


% cellPos = find(xx==0) %positions x=0;
% %get into [row,col] coordinates
% row = floor((cellPos-1)./(NumCells))+1
% col = cellPos-(row-1).*(NumCells)

%% create chaffElt
%takes in nullPos (null position) and plate object...
% nullPos = []; %don't null anything to start

% %chf chaff element that holds two plate objects, one is the full plate
% %without any nulling. The second is after the appropriate edges have been
% %removed
% freq = .3*10^9;
% lambda = physconst('LightSpeed')/freq
% plateLength =1* lambda; %made a plate with size lambda :P
% thetaVals =0;linspace(0,pi/4,3);
% phiVals = 0;linspace(-pi/2,pi/2,4);
% chf = chaffElt(freq,plateLength,thetaVals, phiVals); 


%% null fun
% chfTemp = chf;
% row = [repmat(1:10,1,6) ].';
% col1 =  [ones(10,1); 2*ones(10,1); 3*ones(10,1); 4*ones(10,1); 5*ones(10,1); 6*ones(10,1)];
% 
% % row2 = [6:10 6:10 6:10 ].'
% col2 =  [15*ones(10,1); 16*ones(10,1); 17*ones(10,1); 18*ones(10,1); 19*ones(10,1); 20*ones(10,1)];
% 
% row = [row;row];
% col = [col1;col2];
% 
% nullPos = [row,col]
% % nullPos = [4 5; 4 6; 5 5; 5 6]
% chfTemp = chfTemp.nullNew(nullPos);
% chfTemp.plotNullPos
% chfTemp.plotCurrent
% 
% %set parameters to paper
% chfTemp = chfTemp.changeEinc(pi/6,pi/4);
% phi_s = pi/6;
% %get RCS - doing it this way to match paper
% numVals = 100;
% theta = linspace(0,2*pi,numVals);
% rcs = zeros(1,numVals);
% 
% 
% for ii = 1:numVals
%     rcs(ii) = chfTemp.plateNull.getRCSVal(theta(ii),phi_s);
% end
% 
% plot(theta*180/pi,10*log10(rcs/lambda^2))


%% optimize stuff - sym
% [chfNulled,pointsOnVal,RCSavg] = chf.maximizeRCSAvgSymm;
% 
% chfNulled.plotNullPos()
% chfNulled.plateNull.plotRCS(0);
% chfNulled.plateFull.plotRCS(0);

%% me muking around with nulling for comsol
% chfPlay = chf.changeEincX; %to get to HFSS inc wave
% %created chfPlay as a 1x1 plate and nulling things to put into comsol
% nullPlay = [[1:10].' 3*ones(10,1)];
% nullPlay = [nullPlay ; [1:10].' 4*ones(10,1)];
% nullPlay = [nullPlay; [1:10].' 7*ones(10,1)];
% nullPlay = [nullPlay; [1:10].' 8*ones(10,1)]
% % nullPlay = [nullPlay; 3*ones(10,1), [1:10].'; 4*ones(10,1), [1:10].']
% chfPlay = chfPlay.nullNew(nullPlay)
% chfPlay.plotNullPos
% chfPlay.plateNull.plotRCS(0);
% % chfPlay.plateFull.plotRCS(0);





%% optimize stuff
% [chfNulled,pointsOnVal,RCSavg] = chf.maximizeRCSAvg;
% 
% chfNulled.plotNullPos()
% chfNulled.plateNull.plotRCS(0);
% chfNulled.plateFull.plotRCS(0);



%% playing with nulling
% close all
% nullpos = [1 1; 9 5 ;3 2];
% 
% tempChf = chf;
% tempChf = tempChf.nullNew(nullpos)
% tempChf.plotNullPos

%% plotting fun
% NumCells = 5;
% NumEdges = 4;
% xx = repmat([1 2 3 4 ],1,NumCells) 
% yy = [ones(1,NumEdges), 2*ones(1,NumEdges), 3*ones(1,NumEdges), 4*ones(1,NumEdges),5*ones(1,NumEdges)]
% % jj= [1 2 3 4  ...
% %       2 3 4 5  ...
% %       3 4 5 6  ...
% %       4 5 6 7  ...
% %       5 6 7 8 ];
% jj= [1 1 1 1  ...
%      2 1 1 1  ...
%      1 1 1 1  ...
%      1 1 1 1  ...
%      1 1 1 1 ];
% XX = zeros(NumCells,NumEdges);
% YY = zeros(NumCells,NumEdges);
% JJMat = zeros(NumCells,NumEdges);
% 
% for row = 1:NumCells
%     for col = 1:NumEdges
%         XX(row,col) = xx(col+NumEdges*(row-1));
%         YY(row,col) = yy(col+NumEdges*(row-1));
%         JJMat(row,col) = jj( col+NumEdges*(row-1));
% %                     JJYMat(row,col) = obj.JJ(yup+col+NumEdges*(row-1));
%     end
% end
% 
%             figure;surf(XX,YY,abs(JJMat))
%             title(['J_x phiInc = ',num2str(0)]);
%             xlabel('x'); ylabel('y')