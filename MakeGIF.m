close all;
clear;
clc;

load('results/problem1.mat')

% P2 v/s P3
figure;
surf(ppx, ppy, log(-objP2P3));
xlabel('p2');
ylabel('p3');
zlabel('log(-f(x))');
% title('Objective v/s p2 and p3');

grid on
az = 0;
el = 45;
view([az,el])
degStep = 10;
detlaT = 0.1;
fCount = 36;
f = getframe(gcf);
[im,map] = rgb2ind(f.cdata,256,'nodither');

im(1,1,1,fCount) = 0;
k = 1;

% spin left
for i = 0:degStep:360
  az = i;
  view([az,el])
  f = getframe(gcf);
  axis vis3d;
  im(:,:,1,k) = rgb2ind(f.cdata,map,'nodither');
  k = k + 1;
end

imwrite(im,map,'Animation-Objective vs p2 and p3.gif','DelayTime',detlaT,'LoopCount',inf)



% P1 v/s P3
figure;
surf(ppx, ppy, log(-objP1P3));
xlabel('p1');
ylabel('p3');
zlabel('log(-f(x))');
% title();
% title('Objective v/s p2 and p3');

grid on
az = 0;
el = 45;
view([az,el])
degStep = 10;
detlaT = 0.1;
fCount = 36;
f = getframe(gcf);
[im,map] = rgb2ind(f.cdata,256,'nodither');

im(1,1,1,fCount) = 0;
k = 1;

% spin left
for i = 0:degStep:360
  az = i;
  view([az,el])
  f = getframe(gcf);
  axis vis3d;
  im(:,:,1,k) = rgb2ind(f.cdata,map,'nodither');
  k = k + 1;
end

imwrite(im,map,'Animation-Objective vs p1 and p3.gif','DelayTime',detlaT,'LoopCount',inf)


% Objective v/s Variances of coefficients of x1, x2
figure;
surf(scales, scales, log(-objscale));
xlabel('\sigma_1');
ylabel('\sigma_2');
zlabel('log(-f(x))');
% title('Objective v/s \sigma of x_1, x_2');

grid on
az = 0;
el = 45;
view([az,el])
degStep = 10;
detlaT = 0.1;
fCount = 36;
f = getframe(gcf);
[im,map] = rgb2ind(f.cdata,256,'nodither');

im(1,1,1,fCount) = 0;
k = 1;

% spin left
for i = 0:degStep:360
  az = i;
  view([az,el])
  f = getframe(gcf);
  axis vis3d;
  im(:,:,1,k) = rgb2ind(f.cdata,map,'nodither');
  k = k + 1;
end

imwrite(im,map,'Animation-Objective vs \sigma of x_1, x_2.gif','DelayTime',detlaT,'LoopCount',inf)


