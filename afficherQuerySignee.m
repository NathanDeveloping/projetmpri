function afficherQuerySignee(im)
    [x, y] = getBarycentre(im);
    signature = getSignature(x, y, im);
    afficherSignature(signature)
end