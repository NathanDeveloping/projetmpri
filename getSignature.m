function signature = getSignature(XCentre, YCentre, img)
    signature = [];
    pointContourX = [];
    pointContourY = [];
    
    for VTheta = 0:pi/15:2*pi % 0:10:360
        % VTheta = VThetaDeg *pi / 180;
        
        % Cherche le point du contour
        i = 1;
        
        
        while ( round(XCentre + i * cos(VTheta)) < size(img, 1) && round(XCentre + i * cos(VTheta)) > 0 ) && ( round(YCentre + i * sin(VTheta)) < size(img, 2) && round(YCentre + i * sin(VTheta)) > 0 ) && ( img(round(XCentre + i * cos(VTheta)), round(YCentre + i * sin(VTheta))) == 1 )
            i = i + 5; % pas du deplacement sur la droite pour aller au contour
            round(XCentre + i * cos(VTheta));
            round(YCentre + i * sin(VTheta));
        end
        
        X = XCentre + i * cos(VTheta);
        Y = YCentre + i * sin(VTheta);
        pointContourX(end+1) = X;
        pointContourY(end+1) = Y;
        
        distance = sqrt((X - XCentre)^2 + (Y - YCentre)^2);
        signature = [signature; distance];
        angle = VTheta;
        
    end
    
    
    %imshow(img);
    hold on;
    plot(pointContourY, pointContourX, 'g');
   
end