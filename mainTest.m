function  mainTest()
    im = imread('C:\Users\Guillaume\Desktop\Ecole\MPRI\projetmpri\db\apple-2.gif');
    coord = getBarycentre(im);
    coord(1, 1)
    getSignature(coord(1), coord(2), im);
end

