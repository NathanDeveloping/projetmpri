function [x, y] = getBarycentre(im)
    %im = logical(imread('./db/brick-12.gif'))
    imshow(im);
    [row, col] = find(im);
    x = mean(col);
    y = mean(row);
end