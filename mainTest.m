function  mainTest()
    clc;
    im = logical(imread('./db/bat-14.gif'));
    [x, y] = getBarycentre(im);
    imshow(im);
    hold on;
    plot(y, x , '+');
    signature = getSignature(x, y, im);
    afficherSignature(signature);
    hold off;
    descripteur = getDescripteur(signature, 30)
    
    
    hold on;
    figure;
    nbEchantillons = 2*pi / (pi/15);
    t = [0:1/nbEchantillons:0.6];
    N = length(t); % nombre d'échantillons
    f = nbEchantillons*(0:(N-1))/N;
    n=length(f);
    plot(descripteur);
    t=0:1:50;
    
    plot(t,descripteur, '-p');
    
    hold off;
end

