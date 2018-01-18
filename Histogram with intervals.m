clear;
imgGray =imread('pout.tif');
[i,j]=size(imgGray);
% r c est la tabe representant l'histogramme simple
for p = 1:256
    r(p)=0;
end
for m = 1:i
    for n = 1:j
        for p = 1:256
            if imgGray(m,n)== (p-1)
                r(p)=r(p)+1;
            end
        end
    end
end
% res la table respresentant l histogramme par plage de 15 : [0..15] [15..30] .... 
for p = 1:17
    res(p)=0;
end
for p = 1:17
    for k = (1+15*(p-1)):15*p
        res(p)=res(p)+r(k);
    end
end

plot(r),figure,plot(res);