function [r, teta] = getSignature(XCentre, YCentre, img)
    
    pointContourX = []
    pointContourY = []
    
    for VThetaDeg = 0:10:360
        VTheta = VThetaDeg *pi / 180;

        % Cherche le point du contour
        i = 1;

        while img(round(XCentre + i * cos(VTheta)), round(YCentre + i * sin(VTheta))) == 1
            i = i + 1; % pas du deplacement sur la droite pour aller au contour
        end

        pointContourX(end+1) = XCentre + i * cos(VTheta);
        pointContourY(end+1) = YCentre + i * cos(VTheta);
        pointContourX
        pointContourY
    end
    %insertMarker(img, [pointContourX, pointContourY]);
    
    imshow(img);
    hold on;
    plot(pointContourX, pointContourY);
    
    %Rayon = 5;
    
    %XCercle = XCentre + Rayon * cosd(VTheta);
    
    %YCercle = YCentre + Rayon * sind(VTheta);
    % plot(XCercle, YCercle);
end