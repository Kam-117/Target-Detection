im550 = imread('550.1.png');
dbl550 = im2double(im550);
% dbl550 = rgb2gray(im550);

im590 = imread('590.1.png');
dbl590 = im2double(im590);

im630 = imread('630.1.png');
dbl630 = im2double(im630);

im750 = imread('750.1.png');
dbl750 = im2double(im750);
n = 4;

[M, N] = size(im550);
%% mask0

% x550590 = dbl550./dbl590;
% x550630 = dbl550./dbl630;
% x550750 = dbl550./dbl750;
% 
% % x550590 = x550590(630:660,1050:1110);
% 
% xx550590 = reshape(x550590,1,N*M);
% xx550630 = reshape(x550630,1,N*M);
% xx550750 = reshape(x550750,1,N*M);
% 
% x590550 = dbl590./dbl550;
% x590630 = dbl590./dbl630;
% x590750 = dbl590./dbl750;
% 
% xx590550 = reshape(x590550,1,N*M);
% xx590630 = reshape(x590630,1,N*M);
% xx590750 = reshape(x590750,1,N*M);
% 
% x630550 = dbl630./dbl550;
% x630590 = dbl630./dbl590;
% x630750 = dbl630./dbl750;
% 
% xx630550 = reshape(x630550,1,N*M);
% xx630590 = reshape(x630590,1,N*M);
% xx630750 = reshape(x630750,1,N*M);
% 
% x750550 = dbl750./dbl550;
% x750590 = dbl750./dbl590;
% x750630 = dbl750./dbl630;
% 
% xx750550 = reshape(x750550,1,N*M);
% xx750590 = reshape(x750590,1,N*M);
% xx750630 = reshape(x750630,1,N*M);

%% mask1
% x550590 = dbl550./dbl590;
% x550630 = dbl550./dbl630;
% x550750 = dbl550./dbl750;
% 
% x550590 = x550590(630:660,1050:1110);
% x550630 = x550630(630:660,1050:1110);
% x550750 = x550750(630:660,1050:1110);
% 
% xx550590 = reshape(x550590,1,61*31);
% xx550630 = reshape(x550630,1,61*31);
% xx550750 = reshape(x550750,1,61*31);
% 
% 
% 
% x590550 = dbl590./dbl550;
% x590630 = dbl590./dbl630;
% x590750 = dbl590./dbl750;
% 
% x590550 = x590550(630:660,1050:1110);
% x590630 = x590630(630:660,1050:1110);
% x590750 = x590750(630:660,1050:1110);
% 
% xx590550 = reshape(x590550,1,61*31);
% xx590630 = reshape(x590630,1,61*31);
% xx590750 = reshape(x590750,1,61*31);
% 
% x630550 = dbl630./dbl550;
% x630590 = dbl630./dbl590;
% x630750 = dbl630./dbl750;
% 
% x630550 = x630550(630:660,1050:1110);
% x630590 = x630590(630:660,1050:1110);
% x630750 = x630750(630:660,1050:1110);
% 
% xx630550 = reshape(x630550,1,61*31);
% xx630590 = reshape(x630590,1,61*31);
% xx630750 = reshape(x630750,1,61*31);
% 
% x750550 = dbl750./dbl550;
% x750590 = dbl750./dbl590;
% x750630 = dbl750./dbl630;
% 
% x750550 = x750550(630:660,1050:1110);
% x750590 = x750590(630:660,1050:1110);
% x750630 = x750630(630:660,1050:1110);
% 
% xx750550 = reshape(x750550,1,61*31);
% xx750590 = reshape(x750590,1,61*31);
% xx750630 = reshape(x750630,1,61*31);

%% mask2
x550590 = dbl550./dbl590;
x550630 = dbl550./dbl630;
x550750 = dbl550./dbl750;

x550590 = x550590(640:646,1080:1086);
x550630 = x550630(640:646,1080:1086);
x550750 = x550750(640:646,1080:1086);

xx550590 = reshape(x550590,1,49);
xx550630 = reshape(x550630,1,49);
xx550750 = reshape(x550750,1,49);



x590550 = dbl590./dbl550;
x590630 = dbl590./dbl630;
x590750 = dbl590./dbl750;

x590550 = x590550(640:646,1080:1086);
x590630 = x590630(640:646,1080:1086);
x590750 = x590750(640:646,1080:1086);

xx590550 = reshape(x590550,1,49);
xx590630 = reshape(x590630,1,49);
xx590750 = reshape(x590750,1,49);

x630550 = dbl630./dbl550;
x630590 = dbl630./dbl590;
x630750 = dbl630./dbl750;

x630550 = x630550(640:646,1080:1086);
x630590 = x630590(640:646,1080:1086);
x630750 = x630750(640:646,1080:1086);

xx630550 = reshape(x630550,1,49);
xx630590 = reshape(x630590,1,49);
xx630750 = reshape(x630750,1,49);

x750550 = dbl750./dbl550;
x750590 = dbl750./dbl590;
x750630 = dbl750./dbl630;

x750550 = x750550(640:646,1080:1086);
x750590 = x750590(640:646,1080:1086);
x750630 = x750630(640:646,1080:1086);

xx750550 = reshape(x750550,1,49);
xx750590 = reshape(x750590,1,49);
xx750630 = reshape(x750630,1,49);

%%
figure('units','normalized','outerposition',[0 0 1 1])
subplot(4,3,1)
imagesc(x550590)
subplot(4,3,2)
imagesc(x550630)
subplot(4,3,3)
imagesc(x550750)

subplot(4,3,4)
imagesc(x590550)
subplot(4,3,5)
imagesc(x590630)
subplot(4,3,6)
imagesc(x590750)

subplot(4,3,7)
imagesc(x630550)
subplot(4,3,8)
imagesc(x630590)
subplot(4,3,9)
imagesc(x630750)

subplot(4,3,10)
imagesc(x750550)
subplot(4,3,11)
imagesc(x750590)
subplot(4,3,12)
imagesc(x750630)

%% 550590 vs
figure('units','normalized','outerposition',[0 0 1 1])
subplot(4,3,1)
scatter(xx550590,xx550590,'.')
title('550590 vs 550590')
subplot(4,3,2)
scatter(xx550590,xx550630,'.')
title('550590 vs 550630')
subplot(4,3,3)
scatter(xx550590,xx550750,'.')
title('550590 vs 550750')


subplot(4,3,4)
scatter(xx550590,xx590550,'.')
title('550590 vs 590550')
subplot(4,3,5)
scatter(xx550590,xx590630,'.')
title('550590 vs 590630')
subplot(4,3,6)
scatter(xx550590,xx590750,'.')
title('550590 vs 590750')


subplot(4,3,7)
scatter(xx550590,xx630550,'.')
title('550590 vs 630550')
subplot(4,3,8)
scatter(xx550590,xx630590,'.')
title('550590 vs 630590')
subplot(4,3,9)
scatter(xx550590,xx630750,'.')
title('550590 vs 630750')


subplot(4,3,10)
scatter(xx550590,xx750550,'.')
title('550590 vs 750590')
subplot(4,3,11)
scatter(xx550590,xx750590,'.')
title('550590 vs 750630')
subplot(4,3,12)
scatter(xx550590,xx750630,'.')
title('550590 vs 750630')
%% 550630 vs
figure('units','normalized','outerposition',[0 0 1 1])
subplot(4,3,1)
scatter(xx550630,xx550590,'.')
title('550630 vs 550630')
subplot(4,3,2)
scatter(xx550630,xx550630,'.')
title('550630 vs 550630')
subplot(4,3,3)
scatter(xx550630,xx550750,'.')
title('550630 vs 550750')


subplot(4,3,4)
scatter(xx550630,xx590550,'.')
title('550630 vs 590550')
subplot(4,3,5)
scatter(xx550630,xx590630,'.')
title('550630 vs 590630')
subplot(4,3,6)
scatter(xx550630,xx590750,'.')
title('550630 vs 590750')


subplot(4,3,7)
scatter(xx550630,xx630550,'.')
title('550630 vs 630550')
subplot(4,3,8)
scatter(xx550630,xx630590,'.')
title('550630 vs 630590')
subplot(4,3,9)
scatter(xx550630,xx630750,'.')
title('550630 vs 630750')


subplot(4,3,10)
scatter(xx550630,xx750550,'.')
title('550630 vs 750590')
subplot(4,3,11)
scatter(xx550630,xx750590,'.')
title('550630 vs 750630')
subplot(4,3,12)
scatter(xx550630,xx750630,'.')
title('550630 vs 750630')
%% 550750 vs
figure('units','normalized','outerposition',[0 0 1 1])
subplot(4,3,1)
scatter(xx550750,xx550590,'.')
title('550750 vs 550590')
subplot(4,3,2)
scatter(xx550750,xx550630,'.')
title('550750 vs 550630')
subplot(4,3,3)
scatter(xx550750,xx550750,'.')
title('550750 vs 550750')


subplot(4,3,4)
scatter(xx550750,xx590550,'.')
title('550750 vs 590550')
subplot(4,3,5)
scatter(xx550750,xx590630,'.')
title('550750 vs 590630')
subplot(4,3,6)
scatter(xx550750,xx590750,'.')
title('550750 vs 590750')


subplot(4,3,7)
scatter(xx550750,xx630550,'.')
title('550750 vs 630550')
subplot(4,3,8)
scatter(xx550750,xx630590,'.')
title('550750 vs 630590')
subplot(4,3,9)
scatter(xx550750,xx630750,'.')
title('550750 vs 630750')


subplot(4,3,10)
scatter(xx550750,xx750550,'.')
title('550750 vs 750590')
subplot(4,3,11)
scatter(xx550750,xx750590,'.')
title('550750 vs 750630')
subplot(4,3,12)
scatter(xx550750,xx750630,'.')
title('550750 vs 750630')
%% 590550 vs
figure('units','normalized','outerposition',[0 0 1 1])
subplot(4,3,1)
scatter(xx590550,xx550590,'.')
title('590550 vs 550590')
subplot(4,3,2)
scatter(xx590550,xx550630,'.')
title('590550 vs 550630')
subplot(4,3,3)
scatter(xx590550,xx550750,'.')
title('590550 vs 590550')


subplot(4,3,4)
scatter(xx590550,xx590550,'.')
title('590550 vs 590550')
subplot(4,3,5)
scatter(xx590550,xx590630,'.')
title('590550 vs 590630')
subplot(4,3,6)
scatter(xx590550,xx590750,'.')
title('590550 vs 590750')


subplot(4,3,7)
scatter(xx590550,xx630550,'.')
title('590550 vs 630550')
subplot(4,3,8)
scatter(xx590550,xx630590,'.')
title('590550 vs 630590')
subplot(4,3,9)
scatter(xx590550,xx630750,'.')
title('590550 vs 630750')


subplot(4,3,10)
scatter(xx590550,xx750550,'.')
title('590550 vs 750590')
subplot(4,3,11)
scatter(xx590550,xx750590,'.')
title('590550 vs 750630')
subplot(4,3,12)
scatter(xx590550,xx750630,'.')
title('590550 vs 750630')
%% 590630 vs
figure('units','normalized','outerposition',[0 0 1 1])
subplot(4,3,1)
scatter(xx590630,xx550590,'.')
title('590630 vs 550590')
subplot(4,3,2)
scatter(xx590630,xx550630,'.')
title('590630 vs 550630')
subplot(4,3,3)
scatter(xx590630,xx550750,'.')
title('590630 vs 590630')


subplot(4,3,4)
scatter(xx590630,xx590550,'.')
title('590630 vs 590630')
subplot(4,3,5)
scatter(xx590630,xx590630,'.')
title('590630 vs 590630')
subplot(4,3,6)
scatter(xx590630,xx590750,'.')
title('590630 vs 590750')


subplot(4,3,7)
scatter(xx590630,xx630550,'.')
title('590630 vs 630550')
subplot(4,3,8)
scatter(xx590630,xx630590,'.')
title('590630 vs 630590')
subplot(4,3,9)
scatter(xx590630,xx630750,'.')
title('590630 vs 630750')


subplot(4,3,10)
scatter(xx590630,xx750550,'.')
title('590630 vs 750590')
subplot(4,3,11)
scatter(xx590630,xx750590,'.')
title('590630 vs 750630')
subplot(4,3,12)
scatter(xx590630,xx750630,'.')
title('590630 vs 750630')

%% 590750 vs
figure('units','normalized','outerposition',[0 0 1 1])
subplot(4,3,1)
scatter(xx590750,xx550590,'.')
title('590750 vs 550590')
subplot(4,3,2)
scatter(xx590750,xx550630,'.')
title('590750 vs 550630')
subplot(4,3,3)
scatter(xx590750,xx550750,'.')
title('590750 vs 590750')


subplot(4,3,4)
scatter(xx590750,xx590550,'.')
title('590750 vs 590750')
subplot(4,3,5)
scatter(xx590750,xx590630,'.')
title('590750 vs 590750')
subplot(4,3,6)
scatter(xx590750,xx590750,'.')
title('590750 vs 590750')


subplot(4,3,7)
scatter(xx590750,xx630550,'.')
title('590750 vs 630550')
subplot(4,3,8)
scatter(xx590750,xx630590,'.')
title('590750 vs 630590')
subplot(4,3,9)
scatter(xx590750,xx630750,'.')
title('590750 vs 630750')


subplot(4,3,10)
scatter(xx590750,xx750550,'.')
title('590750 vs 750590')
subplot(4,3,11)
scatter(xx590750,xx750590,'.')
title('590750 vs 750630')
subplot(4,3,12)
scatter(xx590750,xx750630,'.')
title('590750 vs 750630')

%% 630550 vs
figure('units','normalized','outerposition',[0 0 1 1])
subplot(4,3,1)
scatter(xx630550,xx550590,'.')
title('630550 vs 550590')
subplot(4,3,2)
scatter(xx630550,xx550630,'.')
title('630550 vs 550630')
subplot(4,3,3)
scatter(xx630550,xx550750,'.')
title('630550 vs 630550')


subplot(4,3,4)
scatter(xx630550,xx590550,'.')
title('630550 vs 630550')
subplot(4,3,5)
scatter(xx630550,xx590630,'.')
title('630550 vs 630550')
subplot(4,3,6)
scatter(xx630550,xx590750,'.')
title('630550 vs 630550')


subplot(4,3,7)
scatter(xx630550,xx630550,'.')
title('630550 vs 630550')
subplot(4,3,8)
scatter(xx630550,xx630590,'.')
title('630550 vs 630590')
subplot(4,3,9)
scatter(xx630550,xx630750,'.')
title('630550 vs 630750')


subplot(4,3,10)
scatter(xx630550,xx750550,'.')
title('630550 vs 750590')
subplot(4,3,11)
scatter(xx630550,xx750590,'.')
title('630550 vs 750630')
subplot(4,3,12)
scatter(xx630550,xx750630,'.')
title('630550 vs 750630')

%% 630590 vs
figure('units','normalized','outerposition',[0 0 1 1])
subplot(4,3,1)
scatter(xx630590,xx550590,'.')
title('630590 vs 550590')
subplot(4,3,2)
scatter(xx630590,xx550630,'.')
title('630590 vs 550630')
subplot(4,3,3)
scatter(xx630590,xx550750,'.')
title('630590 vs 630590')


subplot(4,3,4)
scatter(xx630590,xx590550,'.')
title('630590 vs 630590')
subplot(4,3,5)
scatter(xx630590,xx590630,'.')
title('630590 vs 630590')
subplot(4,3,6)
scatter(xx630590,xx590750,'.')
title('630590 vs 630590')


subplot(4,3,7)
scatter(xx630590,xx630550,'.')
title('630590 vs 630590')
subplot(4,3,8)
scatter(xx630590,xx630590,'.')
title('630590 vs 630590')
subplot(4,3,9)
scatter(xx630590,xx630750,'.')
title('630590 vs 630750')


subplot(4,3,10)
scatter(xx630590,xx750550,'.')
title('630590 vs 750590')
subplot(4,3,11)
scatter(xx630590,xx750590,'.')
title('630590 vs 750630')
subplot(4,3,12)
scatter(xx630590,xx750630,'.')
title('630590 vs 750630')

%% 630750 vs
figure('units','normalized','outerposition',[0 0 1 1])
subplot(4,3,1)
scatter(xx630750,xx550590,'.')
title('630750 vs 550590')
subplot(4,3,2)
scatter(xx630750,xx550630,'.')
title('630750 vs 550630')
subplot(4,3,3)
scatter(xx630750,xx550750,'.')
title('630750 vs 630750')


subplot(4,3,4)
scatter(xx630750,xx590550,'.')
title('630750 vs 630750')
subplot(4,3,5)
scatter(xx630750,xx590630,'.')
title('630750 vs 630750')
subplot(4,3,6)
scatter(xx630750,xx590750,'.')
title('630750 vs 630750')


subplot(4,3,7)
scatter(xx630750,xx630550,'.')
title('630750 vs 630750')
subplot(4,3,8)
scatter(xx630750,xx630590,'.')
title('630750 vs 630750')
subplot(4,3,9)
scatter(xx630750,xx630750,'.')
title('630750 vs 630750')


subplot(4,3,10)
scatter(xx630750,xx750550,'.')
title('630750 vs 750590')
subplot(4,3,11)
scatter(xx630750,xx750590,'.')
title('630750 vs 750630')
subplot(4,3,12)
scatter(xx630750,xx750630,'.')
title('630750 vs 750630')

%% 750550 vs
figure('units','normalized','outerposition',[0 0 1 1])
subplot(4,3,1)
scatter(xx750550,xx550590,'.')
title('750550 vs 550590')
subplot(4,3,2)
scatter(xx750550,xx550630,'.')
title('750550 vs 550630')
subplot(4,3,3)
scatter(xx750550,xx550750,'.')
title('750550 vs 750550')


subplot(4,3,4)
scatter(xx750550,xx590550,'.')
title('750550 vs 750550')
subplot(4,3,5)
scatter(xx750550,xx590630,'.')
title('750550 vs 750550')
subplot(4,3,6)
scatter(xx750550,xx590750,'.')
title('750550 vs 750550')


subplot(4,3,7)
scatter(xx750550,xx630550,'.')
title('750550 vs 750550')
subplot(4,3,8)
scatter(xx750550,xx630590,'.')
title('750550 vs 750550')
subplot(4,3,9)
scatter(xx750550,xx630750,'.')
title('750550 vs 750550')


subplot(4,3,10)
scatter(xx750550,xx750550,'.')
title('750550 vs 750590')
subplot(4,3,11)
scatter(xx750550,xx750590,'.')
title('750550 vs 750630')
subplot(4,3,12)
scatter(xx750550,xx750630,'.')
title('750550 vs 750630')

%% 750590 vs
figure('units','normalized','outerposition',[0 0 1 1])
subplot(4,3,1)
scatter(xx750590,xx550590,'.')
title('750590 vs 550590')
subplot(4,3,2)
scatter(xx750590,xx550630,'.')
title('750590 vs 550630')
subplot(4,3,3)
scatter(xx750590,xx550750,'.')
title('750590 vs 750590')


subplot(4,3,4)
scatter(xx750590,xx590550,'.')
title('750590 vs 750590')
subplot(4,3,5)
scatter(xx750590,xx590630,'.')
title('750590 vs 750590')
subplot(4,3,6)
scatter(xx750590,xx590750,'.')
title('750590 vs 750590')


subplot(4,3,7)
scatter(xx750590,xx630550,'.')
title('750590 vs 750590')
subplot(4,3,8)
scatter(xx750590,xx630590,'.')
title('750590 vs 750590')
subplot(4,3,9)
scatter(xx750590,xx630750,'.')
title('750590 vs 750590')


subplot(4,3,10)
scatter(xx750590,xx750550,'.')
title('750590 vs 750590')
subplot(4,3,11)
scatter(xx750590,xx750590,'.')
title('750590 vs 750630')
subplot(4,3,12)
scatter(xx750590,xx750630,'.')
title('750590 vs 750630')

%% 750630 vs
figure('units','normalized','outerposition',[0 0 1 1])
subplot(4,3,1)
scatter(xx750630,xx550590,'.')
title('750630 vs 550590')
subplot(4,3,2)
scatter(xx750630,xx550630,'.')
title('750630 vs 550630')
subplot(4,3,3)
scatter(xx750630,xx550750,'.')
title('750630 vs 750630')


subplot(4,3,4)
scatter(xx750630,xx590550,'.')
title('750630 vs 750630')
subplot(4,3,5)
scatter(xx750630,xx590630,'.')
title('750630 vs 750630')
subplot(4,3,6)
scatter(xx750630,xx590750,'.')
title('750630 vs 750630')


subplot(4,3,7)
scatter(xx750630,xx630550,'.')
title('750630 vs 750630')
subplot(4,3,8)
scatter(xx750630,xx630590,'.')
title('750630 vs 750630')
subplot(4,3,9)
scatter(xx750630,xx630750,'.')
title('750630 vs 750630')


subplot(4,3,10)
scatter(xx750630,xx750550,'.')
title('750630 vs 750630')
subplot(4,3,11)
scatter(xx750630,xx750590,'.')
title('750630 vs 750630')
subplot(4,3,12)
scatter(xx750630,xx750630,'.')
title('750630 vs 750630')

