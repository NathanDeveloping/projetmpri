% recall et precision sont des matrices  de tailles identiques num_ref X 19 
% oÃ¹ num_ref est le nombre d'objets de rÃ©fÃ©rence (le nombre d'images requÃªtes) 
% et 19 est le nombre d'images Ã  retrouver pour chaque requÃªte

function [recall, precision] = tests()
    img_db_path = 'C:\Users\Guillaume\Desktop\Ecole\MPRI\projetmpri\db\';
    img_db_list = glob([img_db_path, '*.gif']);
    img_db = cell(1);
    label_db = cell(1);
    fd_db = cell(1);
    figure();
    
    angle= pi/15;
    nbDistances = round((2.0*pi/angle));
    descripteurs = zeros(numel(img_db_list), nbDistances);
    
    for im = 1:numel(img_db_list);
        img_db{im} = logical(imread(img_db_list{im}));
        label_db{im} = get_label(img_db_list{im});
        clf;imshow(img_db{im});
        disp(label_db{im}); 
        drawnow();
        disp(label_db{im});
        descripteurs(im,:) = calculerDescripteur(img_db{im});       
    end
    
    for im = 1:numel(img_db_list);
        
        % On récupère l'image
        imageQuery = logical(imread(img_db_list{im}));
        
        % On récupère le label de l'image
        labelQuery = get_label(img_db_list{im});
        
        % On calcule son descripteur
        descripteurQuery = calculerDescripteur(imageQuery);
        
        % On calcule les distances euclidiennes de ce descripteur
        % avec tous les descripteurs de la base
        [distances] = distancesEuclidiennes(descripteurQuery, descripteurs);
        
        clc;
        % On trie les distances par ordre croissant
        % matrice contenant les distances avec l'indice
        % de l'image associe
        distances_sorted = sortrows(distances, 1)
        
       
        
        

    end
end