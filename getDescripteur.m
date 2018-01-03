function d = getDescripteur(signature, nbCoefficients)
    tf = fft(signature);
    size(tf);
    tfreduced = tf(1:nbCoefficients, 1);
    d = abs(tfreduced) ./ abs(tfreduced(1));
end