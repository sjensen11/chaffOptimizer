function  toFeko(chaff,filename)
%toFeko creates a feko file for the chaff
%remember to add .lua to filename

%you should really update code to have chfPATTERN built into object :P

%open file
fileId = fopen(filename,'w');

%header garbage
fprintf(fileId,'-- CADFEKO v2021-2100 (x64)\n');
fprintf(fileId,'app = cf.GetApplication()\n');
fprintf(fileId,'project = app.Project\n\n');

%set plate length
fprintf(fileId,'-- Added variable "W"\n');
fprintf(fileId,sprintf(['W = project.Variables:Add("W",', num2str(chaff.plateLength), ')\n\n']));



%generate plate
% fprintf(fileId,'-- Created geometry: rectangle "Plate"\n');
% fprintf(fileId,'properties = cf.Rectangle.GetDefaultProperties()\n');
% fprintf(fileId,'properties.DefinitionMethod = cf.Enums.RectangleDefinitionMethodEnum.BaseAtCentre\n');
% fprintf(fileId,'properties.Depth = "W"\n');
% fprintf(fileId,'properties.Label = "Plate"\n');
% fprintf(fileId,'properties.Width = "W"\n');
% fprintf(fileId,'Plate = project.Geometry:AddRectangle(properties)\n\n');


%hole creation will be here
% [row,col] = find(chfPATTERN == 1);
% pixelOn = [row,col];
% % nullPos = nullPos;
% holeLen = chaff.pixelSize*chaff.plateLength/chaff.plateFull.NumCells;

%generate all positions
pixelOn = []; %initialize
count = 1; %counting through nullPos

%i wrote bad code and this is the working solution now :P
NumCells = chaff.plateFull.NumCells;
NumCells = NumCells(1);

for ii = 1:NumCells
    for jj = 1:NumCells
        if(count>size(chaff.nullPos,1))
            pixelOn = [pixelOn; ii jj];
        elseif(chaff.nullPos(count,1)== ii && chaff.nullPos(count,2) == jj) 
            count = count+1; %looking for next nullPos
        else
            pixelOn = [pixelOn; ii jj];
        end
    end
end
cellSize = chaff.plateLength/NumCells;

target = [];zeros(size(pixelOn,1));

for ii = 1:length(pixelOn)
    %properties of chaff
    rectLabel = ['Rectangle',num2str(ii)];
    
    %getNullPos
    row = pixelOn(ii,1)-1; col = pixelOn(ii,2)-1;
    
    %generate rectangle to be removed
    fprintf(fileId,['-- Created geometry: rectangle "',rectLabel,'"\n']);
    fprintf(fileId,'properties = cf.Rectangle.GetDefaultProperties()\n');
    fprintf(fileId,['properties.Depth = "',num2str(cellSize),'"\n']);
    fprintf(fileId,['properties.Label = "',rectLabel,'"\n']);
    fprintf(fileId,['properties.Origin.U = "',num2str(-chaff.plateLength/2+row*cellSize),'"\n']);
    fprintf(fileId,['properties.Origin.V = "',num2str(-chaff.plateLength/2+col*cellSize),'"\n']);
    fprintf(fileId,['properties.Width = "',num2str(cellSize),'"\n']);
    fprintf(fileId,[rectLabel ,'= project.Geometry:AddRectangle(properties)\n\n']);

    if(ii ~=  length(pixelOn))
        target = [target,rectLabel,','];
    else
        target = [target,rectLabel,];
    end
end
%subtract
%     fprintf(fileId,'-- Created geometry: subtract "Subtract1"\n');
%     fprintf(fileId,['targets = { ',target,' }\n']);
%     fprintf(fileId,['project.Geometry:Subtract(Plate, targets)\n\n']);

fclose(fileId);



end

