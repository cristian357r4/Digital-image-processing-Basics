clear;
imgGray =imread('pout.tif');
[i,j]=size(imgGray);
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

plot(r);