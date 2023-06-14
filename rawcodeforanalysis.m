clc
clear all
close all
load -ascii ef00
n=128;
t1 =0;
b1=(ef00((t1*n*n*n)+1:(t1+1)*n*n*n,1)); 
b=(b1).^0.5;  


nx=n;
ny=n;
nz=n;
alf= 0.2;
dx=2*pi/(alf*n);
dy=2*pi/(alf*n);
dz=2*pi/(alf*n);
ux=-(n/2-1)*dx:dx:(n/2)*dx;
uz=-(n/2-1)*dy:dy:(n/2)*dy;
[x,z]=meshgrid(ux,uz);


sum=1;
for i=1:nx
    for j=1:ny
        for k=1:nz
        z1(i,j,k)=b(sum);
        sum=sum+1;
        end
    end
end


z2 = squeeze(z1(:,:,n/2));

surf(x,z,z2)
colormap(jet)
c=colorbar