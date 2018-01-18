clear ;
img =imread('pout.tif');

x= changeColor(img,10);

imshow(img,'InitialMagnification','fit');
figure;
imshow(x,'InitialMagnification','fit');


function f = changeColor(imgGray,pas)
[i,j,k]=size(imgGray);

z=floor(255/pas) ;
for m = 1:i
    for n = 1:j
        for o= 1:k
            newColor = floor(imgGray(m,n)/z)*z ;
          r(m,n,o)=uint8(newColor); 
        end
    end
end
f=r ;
end