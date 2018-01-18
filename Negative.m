clear;
img=imread('C:\Users\A.HOUMADI\Desktop\vision artificielle\Taroudant_maroc.jpg');
[i,j,k]=size(img);
for m = 1:i
    for n = 1:j
        for o = 1:k
            imgG(m,n,o)=255-img(m,n,o);
        end
    end
end
imshow(img,'notruesize');figure;imshow(imgG,'notruesize');