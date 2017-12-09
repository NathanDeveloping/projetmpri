function [r, teta] = getSignature(XCentre, YCentre, img)
    
    pointContourX = [];
    pointContourY = [];
    
    for VTheta = 0:pi/10:2*pi % 0:10:360
        % VTheta = VThetaDeg *pi / 180;
        
        % Cherche le point du contour
        i = 1;
        
        
        while img(round(XCentre + i * cos(VTheta)), round(YCentre + i * sin(VTheta))) == 1
            i = i + 5; % pas du deplacement sur la droite pour aller au contour
        end
        
        
        pointContourX(end+1) = XCentre + i * cos(VTheta);
        pointContourY(end+1) = YCentre + i * sin(VTheta);
        
        
    end
    
    
    %imshow(img);
    hold on;
    plot(pointContourX, pointContourY, '*');
   
end