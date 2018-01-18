clear;
imgGray =imread('pout.tif');
img=imnoise(imgGray,'salt & pepper',0.062);
imshow(img,'notruesize');
[i,j]=size(img);
for m = 2:i-1
    for n = 2:j-1
       tab(1)=img(m-1,n-1);
       tab(2)=img(m-1,n);
       tab(3)=img(m-1,n+1);
       tab(4)=img(m,n-1);
       tab(5)=img(m,n);
       tab(6)=img(m,n+1);
       tab(7)=img(m+1,n-1);
       tab(8)=img(m+1,n);
       tab(9)=img(m+1,n+1);
       p=sort(tab);
       imgG(m,n)=p(5);
    end
end
figure;imshow(imgG,'notruesize');
