function [Azeros, Amat]=makezeros(Apattern,Nbasis)

Np=length(Apattern);
Nbperp=round(Nbasis/Np);

Amat=ones(Nbasis,Nbasis);

Azeros=[];
for ii=1:Np
    for jj=1:Np
        
        if Apattern(ii,jj)==0
            
            %zero out those pixels
            
            for pp=1:Nbperp
                for kk=1:Nbperp
            
                    xloc=(ii-1)*Nbperp+kk;
                    yloc=(jj-1)*Nbperp+pp;
                    
            Azeros=[Azeros; xloc yloc ];
            Amat(xloc,yloc)=0;
            
                end
            end
            
        end
    end
end
