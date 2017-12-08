function [x, y] = getBarycentre(im)
    im = logical(imread('./db/brick-12.gif'))
    imshow(im);
    [x, y] = find(im);
    x = mean(x);
    y = mean(y);
    
end