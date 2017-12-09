function  mainTest()
    clc;
    im = logical(imread('C:\Users\Guillaume\Desktop\Ecole\MPRI\projetmpri\db\hammer-7.gif'));
    [x, y] = getBarycentre(im);
    imshow(im);
    hold on;
    plot(x, y , '+');
    getSignature(x, y, im);
end

