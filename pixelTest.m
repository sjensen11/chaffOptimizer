%create pixel
%% create chaff
freq = 10.*10^9; %hz, operating frequency
lda = physconst("lightspeed")/freq;
plateLength = 2 * .0254; %2 inches converted to meters
%angles to be optimized over
thetaVals = 0;
phiVals = 0;
loadVal = 0; % don't have to have value, lets you preload a plate to speed up process (if already generated)
NumCells = 40;
% chf = chaffElt(freq,plateLength,thetaVals, phiVals,NumCells);
chf = chf40;
%% pattern code
pixelNum = 4;
pixelSize = NumCells/pixelNum

pattern = randi(

%% row fix
plate = ones(NumCells);

for pixelRow = 1:pixelNum
    for pixelCol = 1:pixelNum
        rowPos = 1+pixelSize *(pixelRow-1)
        colPos = 1+pixelSize *(pixelCol-1);
        if(pixelCol==pixelNum)
            %last pixel, don't have to worry about connecting corners
            plate(rowPos:rowPos+pixelSize-1,colPos:colPos+pixelSize-1) = pattern(pixelRow,pixelCol)*ones(pixelSize);
        else
            %have to connect corners
            %this one makes a row
           plate(rowPos:rowPos+pixelSize-1,colPos:colPos+pixelSize-2) = pattern(pixelRow,pixelCol)*ones(pixelSize,pixelSize-1);

        end
    end
end

[row,col] = find(plate==0);
nullPos = [row,col];

%% corner fix
plate = ones(NumCells);
       
for pixelRow = 1:pixelNum
    for pixelCol = 1:pixelNum
        rowPos = 1+pixelSize *(pixelRow-1)
        colPos = 1+pixelSize *(pixelCol-1);
        if(pixelCol==pixelNum)
            %last pixel, don't have to worry about connecting corners
            plate(rowPos:rowPos+pixelSize-1,colPos:colPos+pixelSize-1) = pattern(pixelRow,pixelCol)*ones(pixelSize);
        elseif(pixelRow ==1)
            %don't take out edge corner
            plate(rowPos:rowPos+pixelSize-1,colPos:colPos+pixelSize-2) = pattern(pixelRow,pixelCol)*ones(pixelSize,pixelSize-1);
           %takes out the middle if needed
           plate(rowPos:rowPos+pixelSize-2,colPos+pixelSize-1) = pattern(pixelRow,pixelCol)*ones(pixelSize-1,1);
        elseif(pixelRow ==pixelNum)
            %don't take out edge corner
            plate(rowPos:rowPos+pixelSize-1,colPos:colPos+pixelSize-2) = pattern(pixelRow,pixelCol)*ones(pixelSize,pixelSize-1);
           %takes out the middle if needed
           plate(rowPos+1:rowPos+pixelSize-1,colPos+pixelSize-1) = pattern(pixelRow,pixelCol)*ones(pixelSize-1,1);
        
        else
            %have to connect corners
            %this one makes a row
           plate(rowPos:rowPos+pixelSize-1,colPos:colPos+pixelSize-2) = pattern(pixelRow,pixelCol)*ones(pixelSize,pixelSize-1)
           %takes out the middle if needed
           plate(rowPos+1:rowPos+pixelSize-2,colPos+pixelSize-1) = pattern(pixelRow,pixelCol)*ones(pixelSize-2,1);

        end
    end
end

[row,col] = find(plate==0);
nullPos = [row,col];
%% null
chf = chf.nullNew(nullPos)