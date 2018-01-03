function [distances] = distancesEuclidiennes(query, descripteurs)
    distances = [];

    for i = 1:size(descripteurs)
        current_distance = norm(query - descripteurs(i,:));
        %indexImg(i) = i;
        
        distances = [distances ; [current_distance , i]];
    end

end