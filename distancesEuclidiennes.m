function distances = distancesEuclidiennes(query, descripteurs)
    distances = [];

    for i = 1:size(descripteurs)
        current_distance = norm(query - descripteurs(i,:));
        
        distances(i) = current_distance;
    end

end