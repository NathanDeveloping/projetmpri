function afficherRecall( recall, title_im, imageQuery )
    
    V = [1:19];
    subplot(1,2,1), plot(V, recall * 100,'LineWidth',2);
    title(strcat( 'courbe recall pour: ',title_im))
    ylabel('precision in percentage %') % y-axis label
    xlabel('number of image /19') % x-axis label 
    
    subplot(1,2,2), imshow(imageQuery);
    
    
end

