function descripteur = calculerDescripteur(im)
    [x, y] = getBarycentre(im);
    signature = getSignature(x, y, im);
    descripteur = getDescripteur(signature, 30);
end