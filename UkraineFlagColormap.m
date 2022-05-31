% Create a custom colormap using the Ukraine flag colors 
% (I added white to increase visibility)
% 
% Feel free to adapt the code as you like!
% sincxpress.com
% 

% specify colors in RGB codes
b = [  0  87 184];
w = [255 255 255];
y = [254 221   0];

% create interpolation grid
k = 30;
xi = linspace(0,1,k);

% create colormap matrix
R = interp1([0,.5,1],[b(1) w(1) y(1)],xi)';
G = interp1([0,.5,1],[b(2) w(2) y(2)],xi)';
B = interp1([0,.5,1],[b(3) w(3) y(3)],xi)';

cmap = [R G B] / 255; % scale by 255 for range of [0,1]


% test on random data!
imagesc(randn(30));
colormap(cmap)
colorbar
set(gca,'clim',[-1 1]*2.5)

