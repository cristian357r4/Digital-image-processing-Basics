clear;
imgGray =imread('pout.tif');
[i,j]=size(imgGray);

% tableau r contient les niveaux de gris avec le nombre d'apparition
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

%tableau de probabilté d'apparition pour chaque niveau
for p = 1:256
    pi(p)=0;
end
for p = 1:256
    pi(p)=r(p)/(i*j);
end

%tableau de probabilité cumulé
si(1)=pi(1);
for p = 2:256
    si(p)=si(p-1)+pi(p);
end

%la table ei
for p = 1:256
    ei(p)=si(p)*255;
end

%la table ei arrondi
for p = 1:256
    eiA(p)=round(ei(p));
end
%ploter l'egalisation d histogramme
plot(eiA);

%image pour laquelle on a appliqué l egalisation d histogramme
res=imgGray;
for m = 1:i
    for n = 1:j
        for p = 1:256
            if imgGray(m,n)== (p-1)
                res(m,n)=eiA(p-1);
            end
        end
    end
end

imshow(res);