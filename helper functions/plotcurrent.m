function [Jx_phi_mat,Jy_phi_mat,Jx_theta_mat,Jy_theta_mat,del] = plotcurrent(obj)            

%get currents
J_theta=obj.JJ_theta;
J_phi=obj.JJ_phi;

%values
Npixels=obj.NumCells;
L=obj.len;
del=L/Npixels

%pre-allocate
Jx_phi_mat=zeros(Npixels-1,Npixels);
Jy_phi_mat=zeros(Npixels,Npixels-1);
Jx_theta_mat=zeros(Npixels-1,Npixels);
Jy_theta_mat=zeros(Npixels,Npixels-1);


%have to do Bxn and Byn seperately, because number could be different for
%null plate
%do bxn currents first
%get the size of Bxn
BxnSize = size(obj.Bxn_xx,2);

%divide into Jx and Jy current
Jx_theta=J_theta(1:BxnSize);
Jy_theta=J_theta(BxnSize+1:end);

Jx_phi=J_phi(1:BxnSize);
Jy_phi=J_phi(BxnSize+1:end);


for ii=1:BxnSize

    ipx=round(obj.Bxn_xx(ii)/del);
    jpx=round((obj.Bxn_yy(ii)+del/2)/del);
    
    Jx_phi_mat(ipx,jpx)=Jx_phi(ii);
    Jx_theta_mat(ipx,jpx)=Jx_theta(ii);

        
end

%now do Byn
BynSize = size(obj.Byn_xx,2);
for ii = 1:BynSize
    ipy=round((obj.Byn_xx(ii)+del/2)/del);
    jpy=round((obj.Byn_yy(ii))/del);
    
    Jy_phi_mat(ipy,jpy)=Jy_phi(ii);
    Jy_theta_mat(ipy,jpy)=Jy_theta(ii);
end

end