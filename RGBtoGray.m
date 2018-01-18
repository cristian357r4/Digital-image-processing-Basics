clear;
img=imread('C:\Users\A.HOUMADI\Desktop\vision artificielle\Taroudant_maroc.jpg');
[i,j,k]=size(img);
for m = 1:i
    for n = 1:j
        imgG(m,n,1)=(img(m,n,1)+img(m,n,2)+img(m,n,3))/3;
    end
end
imshow(img,'notruesize');figure;imshow(imgG,'notruesize');