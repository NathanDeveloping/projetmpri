function [r, teta] = getSignature(XCentre, YCentre, img)
    
    VThetaDeg = 0:1:360;
    VTheta = VThetaDeg *pi / 180;
    
    % Cherche le point du contour
    i = 1;
    
    while img(round(XCentre + i * cosd(VTheta)), round(YCentre + i * sind(VTheta))) == 1
        i = i + 1; % pas du deplacement sur la droite pour aller au contour
    end
    
    pointContourX = XCentre + i * cosd(VTheta);
    pointContourY = YCentre + i * cosd(VTheta);
    
    insertMarker(img, [pointContourX, pointContourY]);
    imshow(img);
    
    %Rayon = 5;
    
    %XCercle = XCentre + Rayon * cosd(VTheta);
    
    %YCercle = YCentre + Rayon * sind(VTheta);
    % plot(XCercle, YCercle);
end