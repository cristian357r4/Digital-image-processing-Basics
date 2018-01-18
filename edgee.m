%algo du contour basique de Sobel
clear;
H=[-1 0 1; -2 0 2; -1 0 1]; %ou bien H=fspecial('sobel')
img=imread('C:\Users\A.HOUMADI\Desktop\vision artificielle\1.jpg');
img=rgb2gray(img);
[i,j]=size(img);
r=255*ones(i,j);
for m = 2:(i-1)
    for n = 2:(j-1)
        px=[img(m-1,n-1) img(m-1,n) img(m-1,n+1); img(m,n-1) img(m,n) img(m,n+1); img(m+1,n-1) img(m+1,n) img(m+1,n+1)];
        Gx=filter2(px,H); %appliquer le masque H sur px
        Gy=filter2(px,H');
        G=sqrt(Gx.*Gx+Gy.*Gy);
        if G > 160
            r(m,n)= 255;
        else
            r(m,n)= 0;
        end
    end
end
subplot(3,1,1);imshow(img);subplot(3,1,2);imshow(r);subplot(3,1,3);imshow(edge(img,'canny'));


%on peut appliquer la fonction edge() 
%ou bien faire h=fspecial('sobel')
%imfilter(h,i)




%Amincissement
%o=arctg(Gy/Gx)


