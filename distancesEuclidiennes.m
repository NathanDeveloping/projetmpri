function [image, distance] = distancesEuclidiennes(query, descripteurs, keyDescripteurs)
    

    for i = 1:size(descripteurs)
        distance(i) = norm(query - descripteurs(i,:));
        image(i) = keyDescripteurs(i);
    end

end