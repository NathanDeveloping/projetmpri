function  mainTest()
    clc;
    im = logical(imread('C:\Users\Guillaume\Desktop\Ecole\MPRI\projetmpri\db\device5-2.gif'));
    [x, y] = getBarycentre(im);
    imshow(im);
    hold on;
    plot(y, x , '+');
    getSignature(x, y, im);
end

