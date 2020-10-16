function Apattern=bitpattern(Npixels)
% create bit pattern (must be odd number of pixels)

Npix=(Npixels+1)/2;
As=round(rand(Npix,Npix));
As = tril(As.',-1) + triu(As);


As=[As fliplr(As(:,1:end-1))];
As=[As; flipud(As(1:end-1,:))];

imagesc(As)
axis('equal')

Apattern=As;

end