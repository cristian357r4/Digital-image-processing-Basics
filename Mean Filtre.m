clear;
imgGray =imread('pout.tif');
img=imnoise(imgGray,'salt & pepper',0.062);
imshow(img,'notruesize');
[i,j]=size(img);
for m = 2:4
    for n = 2:4
        k= (img(m-1,n)/9+img(m-1,n+1)/9+img(m,n-1)/9+img(m,n)/9+img(m,n+1)/9+img(m+1,n-1)/9+img(m-1,n-1)/9+img(m+1,n+1)/9+img(m+1,n))/9;
        imgG(m,n)=round(k);
    end
end
imgG1=uint8(imgG);
figure;imshow(imgG1,'notruesize');
