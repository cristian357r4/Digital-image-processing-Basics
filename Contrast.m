clear;
imgGray=imread('pout.tif');
[i,j]=size(imgGray);
mx = max(max(imgGray));
mn = min(min(imgGray));
for m = 1:i
    for n = 1:j
        r(m,n)= (255/(mx-mn))*(imgGray(m,n)-mn);
    end
end
imshow(imgGray);figure;imshow(r);