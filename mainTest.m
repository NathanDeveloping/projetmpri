function  mainTest()
    clc;
    im = logical(imread('C:\Users\Guillaume\Desktop\Ecole\MPRI\projetmpri\db\apple-2.gif'));
    [x, y] = getBarycentre(im);
    getSignature(x, y, im);
end

