function  toFeko(chaff,filename,chfPATTERN)
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
fprintf(fileId,'-- Created geometry: rectangle "Plate"\n');
fprintf(fileId,'properties = cf.Rectangle.GetDefaultProperties()\n');
fprintf(fileId,'properties.DefinitionMethod = cf.Enums.RectangleDefinitionMethodEnum.BaseAtCentre\n');
fprintf(fileId,'properties.Depth = "W"\n');
fprintf(fileId,'properties.Label = "Plate"\n');
fprintf(fileId,'properties.Width = "W"\n');
fprintf(fileId,'Plate = project.Geometry:AddRectangle(properties)\n\n');


%hole creation will be here
[row,col] = find(chfPATTERN == 0);
nullPos = [row,col];
% nullPos = nullPos;
holeLen = chaff.pixelSize*chaff.plateLength/chaff.plateFull.NumCells;

target = [];zeros(size(nullPos,1));

for ii = 1:length(nullPos)
    %properties of chaff
    rectLabel = ['Rectangle',num2str(ii)];
    
    %getNullPos
    row = nullPos(ii,1)-1; col = nullPos(ii,2)-1;
    
    %generate rectangle to be removed
    fprintf(fileId,['-- Created geometry: rectangle "',rectLabel,'"\n']);
    fprintf(fileId,'properties = cf.Rectangle.GetDefaultProperties()\n');
    fprintf(fileId,['properties.Depth = "',num2str(holeLen),'"\n']);
    fprintf(fileId,['properties.Label = "',rectLabel,'"\n']);
    fprintf(fileId,['properties.Origin.U = "',num2str(-chaff.plateLength/2+row*holeLen),'"\n']);
    fprintf(fileId,['properties.Origin.V = "',num2str(-chaff.plateLength/2+col*holeLen),'"\n']);
    fprintf(fileId,['properties.Width = "',num2str(holeLen),'"\n']);
    fprintf(fileId,[rectLabel ,'= project.Geometry:AddRectangle(properties)\n\n']);

    if(ii ~=  length(nullPos))
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

