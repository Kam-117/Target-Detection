im550 = imread('550.1.png');
dbl550 = im2double(im550);
dbl550 = dbl550(190:1930,1:2440);

im590 = imread('590.1.png');
dbl590 = im2double(im590);
dbl590 = dbl590(190:1930,1:2440);

im630 = imread('630.1.png');
dbl630 = im2double(im630);
dbl630 = dbl630(190:1930,1:2440);

im750 = imread('750.1.png');
dbl750 = im2double(im750);
dbl750 = dbl750(190:1930,1:2440);

n = 4;
%% to do
% After reading in files need to crop sections to relevant areas, then look
% at behavior of green and yellow targets and threshold appropriately,
% changing values as needed.

[M, N] = size(dbl550);

x550590 = dbl550./dbl590;
x550630 = dbl550./dbl630;
x550750 = dbl550./dbl750;

xx550590 = reshape(x550590,1,N*M);
xx550630 = reshape(x550630,1,N*M);
xx550750 = reshape(x550750,1,N*M);

xx = reshape(xx550590,M,N);

x590550 = dbl590./dbl550;
x590630 = dbl590./dbl630;
x590750 = dbl590./dbl750;

xx590550 = reshape(x590550,1,N*M);
xx590630 = reshape(x590630,1,N*M);
xx590750 = reshape(x590750,1,N*M);

x630550 = dbl630./dbl550;
x630590 = dbl630./dbl590;
x630750 = dbl630./dbl750;

xx630550 = reshape(x630550,1,N*M);
xx630590 = reshape(x630590,1,N*M);
xx630750 = reshape(x630750,1,N*M);

x750550 = dbl750./dbl550;
x750590 = dbl750./dbl590;
x750630 = dbl750./dbl630;

xx750550 = reshape(x750550,1,N*M);
xx750590 = reshape(x750590,1,N*M);
xx750630 = reshape(x750630,1,N*M);

%%


greenMask = zeros(M,N);
for i = 1:N*M
    if (xx550630(i) > 0.60) &&  (xx550630(i) < 0.85) && ...
            (xx550590(i) > 0.50) &&  (xx550590(i) < 1.00) && ...
            (xx550750(i) > 1.00) &&  (xx550750(i) < 2.00) && ...
            (xx590550(i) > 1.00) &&  (xx590550(i) < 2.00) && ...
            (xx590630(i) > 0.70) &&  (xx590630(i) < 1.50) && ...
            (xx590750(i) > 1.90) &&  (xx590750(i) < 2.50) && ...
            (xx630590(i) > 0.60) &&  (xx630590(i) < 1.30) && ...
            (xx630750(i) > 1.50) &&  (xx630750(i) < 2.80) && ...
            (xx750550(i) > 0.50) &&  (xx750550(i) < 0.90) && ...
            (xx750590(i) > 0.40) &&  (xx750590(i) < 0.53) && ...
            (xx750630(i) > 0.35) &&  (xx750630(i) < 0.70)
        
        greenMask(i) = greenMask(i) + 0.2;
    else
        greenMask(i) = greenMask(i);
    end
end

figure
imagesc(greenMask)

%%
for i = 1:N*M
    if (xx590750(i) > 1.90) &&  (xx590750(i) < 2.40) && ...
            (xx550590(i) > 0.50) &&  (xx550590(i) < 1.00) && ...
            (xx550630(i) > 0.60) &&  (xx550630(i) < 0.85) && ...
            (xx550750(i) > 1.00) &&  (xx550750(i) < 2.00) && ...
            (xx590550(i) > 1.00) &&  (xx590550(i) < 2.00) && ...
            (xx590630(i) > 0.80) &&  (xx590630(i) < 1.40) && ...
            (xx630550(i) > 1.20) &&  (xx630550(i) < 1.60) && ...
            (xx630590(i) > 0.60) &&  (xx630590(i) < 1.30) && ...
            (xx630750(i) > 1.50) &&  (xx630750(i) < 2.50) && ...
            (xx750550(i) > 0.50) &&  (xx750550(i) < 0.90) && ...
            (xx750630(i) > 0.30) &&  (xx750630(i) < 0.70)
        
        greenMask(i) = greenMask(i) + 0.2;
    else
        greenMask(i) = greenMask(i);
    end
end

figure
imagesc(greenMask)

%%

for i = 1:N*M
    if (xx630550(i) > 1.20) &&  (xx630550(i) < 1.60) && ...
            (xx550590(i) > 0.50) &&  (xx550590(i) < 1.00) && ...
            (xx550750(i) > 1.00) &&  (xx550750(i) < 2.00) && ...
            (xx590550(i) > 1.00) &&  (xx590550(i) < 2.00) && ...
            (xx590630(i) > 0.80) &&  (xx590630(i) < 1.50) && ...
            (xx590750(i) > 2.00) &&  (xx590750(i) < 2.40) && ...
            (xx630590(i) > 0.60) &&  (xx630590(i) < 1.40) && ...
            (xx630750(i) > 1.50) &&  (xx630750(i) < 2.80) && ...
            (xx750550(i) > 0.50) &&  (xx750550(i) < 0.90) && ...
            (xx750590(i) > 0.40) &&  (xx750590(i) < 0.52) &&...
            (xx750630(i) > 0.40) &&  (xx750630(i) < 0.70)
        
        greenMask(i) = greenMask(i) + 0.2;
    else
        greenMask(i) = greenMask(i);
    end
end

figure
imagesc(greenMask)

%%

for i = 1:N*M
    if (xx750550(i) > 0.45) &&  (xx750550(i) < 0.90) && ...
            (xx550590(i) > 0.50) &&  (xx550590(i) < 1.00) && ...
            (xx550630(i) > 0.60) &&  (xx550630(i) < 0.85) && ...
            (xx590550(i) > 1.00) &&  (xx550750(i) < 2.00) && ...
            (xx590630(i) > 0.70) &&  (xx590550(i) < 1.60) && ...
            (xx590750(i) > 1.95) &&  (xx590630(i) < 2.45) && ...
            (xx630550(i) > 1.20) &&  (xx630550(i) < 1.70) && ...
            (xx630590(i) > 0.60) &&  (xx630590(i) < 1.40) && ...
            (xx630750(i) > 1.50) &&  (xx630750(i) < 2.80) && ...
            (xx750590(i) > 0.40) &&  (xx750590(i) < 0.52) && ...
            (xx750630(i) > 0.35) &&  (xx750630(i) < 0.70)
        
        greenMask(i) = greenMask(i) + 0.2;
    else
        greenMask(i) = greenMask(i);
    end
end



%% Pseudo binary

greenMask_pb = zeros(M,N);
for i = 1:M*N
    if greenMask(i) ~= 0
        greenMask_pb(i) = 1;
    end
end


%%
greenMask_b = imbinarize(greenMask, 'adaptive');
% figure
% imagesc(maskb)


figure
subplot(2,2,1)
imagesc(dbl550)
subplot(2,2,2)
imagesc(dbl590)
subplot(2,2,3)
imagesc(dbl630)
subplot(2,2,4)
imagesc(dbl750)

figure
subplot(1,2,1)
imshow(greenMask_pb)
subplot(1,2,2)
imshow(greenMask_b)

%% Overlap

maskOverlay550 = dbl550.*greenMask_pb;
figure('units','normalized','outerposition',[0 0 1 1])
subplot(1,2,1)
imagesc(dbl550)
title('500nm raw image (cropped)')
subplot(1,2,2)
imagesc(greenMask_pb)
title('Green targets found')

figure('units','normalized','outerposition',[0 0 1 1])
imshow(greenMask_pb)

figure('units','normalized','outerposition',[0 0 1 1])
imagesc(maskOverlay550)
title('Green target mask')

%% circles overlay
[centers, radii] = imfindcircles(greenMask_pb,[10 30]);
imshow(greenMask_pb)
viscircles(centers, radii,'EdgeColor','r');



