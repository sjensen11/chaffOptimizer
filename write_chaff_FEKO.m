function write_chaff_FEKO(FILENAME,bitpattern,W,fo,thetainc,phiinc)
%function write_chaff_FEKO(bitpattern,W,fo)

%fid=fopen(FILENAME,'rt');
fid = fopen(FILENAME,'w'); %open file

Ntheta=length(thetainc)
Nphi=length(phiinc)
theta_start=thetainc(1)
theta_increment=thetainc(2)-thetainc(1)
phi_start=phiinc(1);

if Nphi>1
phi_increment=phiinc(2)-phiinc(1)
else
phi_increment=0;
end

[Nx,Ny]=size(bitpattern)
delx=W/Nx;
dely=W/Ny;

fo=fo*1e9;
% write some header info

fprintf(fid, '#W=%5.11f \n',delx/2); 
fprintf(fid, '#fo=%5.3f \n',fo); 
fprintf(fid, '#c=3e8 \n'); 
fprintf(fid, '#lo=#c/#fo \n');
fprintf(fid, 'IP:  :  :  :  :  : #lo/100 : #lo/30 : #lo/30 : #lo/30 : #lo/30 \n');
fprintf(fid, 'DP: S1 :  :  :  :  : #W : -#W : 0 \n');
fprintf(fid, 'DP: S2 :  :  :  :  : #W : #W : 0 \n');
fprintf(fid, 'DP: S3 :  :  :  :  : -#W : #W : 0 \n');
fprintf(fid, 'DP: S4 :  :  :  :  : -#W : -#W : 0 \n');

labinc=1;
for jj=1:Ny
    for ii=1:Nx

        xcent=-W/2+ii*delx-delx/2;
        ycent=-W/2+jj*dely-delx/2;
        
        % first non-zero spot move base pixel
        if bitpattern(ii,jj)==1
           fprintf(fid, 'LA: %3i \n', labinc); 
           fprintf(fid, 'BP: S1 : S2 : S3 : S4 \n'); 
           fprintf(fid, 'TG: 0 : %3i : %3i : 0 : 0 :  :  :  : %5.11f : %5.11f :  :  : 0 \n',labinc,labinc,xcent,ycent); 
       labinc=labinc+1;
        end

    end
end


fprintf(fid, 'FP: 0 : 0 \n');
fprintf(fid, 'EG: 1 : 0 : 0 :  :  : 1e-6 :  :  :  :  :  :  : 1 \n');

fprintf(fid, 'PS: 0 : 0 : 3 : 1 :  : 1 \n');
fprintf(fid, 'CG: -1 :  : -1 \n');

fprintf(fid, 'DI: 0 :  : -1 :  :  : 1 :  :  :  : 0 : 1000 \n');


% set incident fields

fprintf(fid, 'PW: 0 \n');

fprintf(fid, 'FR:  :  :  :  :  : #fo \n');

fprintf(fid, 'A0: 0 :  :  %6.3f  : %6.3f : 1 : 1 : 0 : 0 : 0 : 0 : %6.3f : %6.3f : 0  \n',Ntheta,Nphi,theta_increment,phi_increment);
fprintf(fid, '  : 1 :  :  :  :  :  :  : 0 : 0 : 0 : 0 : 0 : 0  \n');

fprintf(fid, 'NC: StandardConfiguration1 \n');
fprintf(fid, 'DA:  :  :  :  : 0 \n');

fprintf(fid, 'DA:  :  :  : 0 : 0 \n');

fprintf(fid, 'OS: 1 :  : 1 \n');

fprintf(fid, 'DA:  :  : 0 :  : 0 :  : 0 \n');
fprintf(fid, 'OF: 1 : 0 :  :  :  : 0 : 0 : 0 : 0 : 0 : 0 \n');
fprintf(fid, 'FF: 1 : 91 : 1 : 0 : 0 : 0 : 0 : 1 : 0 :  :  : 0   ** RCS_BI \n');

fprintf(fid, 'DA:  :  : 1 :  : 0 \n');
fprintf(fid, 'OF: 1 : 0 :  :  :  : 0 : 0 : 0 : 0 : 0 : 0 \n');
fprintf(fid, 'FF: 2   ** RCS_MONO_TE \n');


fprintf(fid, 'EN \n');

fclose(fid);

end

