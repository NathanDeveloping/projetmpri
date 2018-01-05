function afficherRecallDetail(recall, title_im, imageQuery, tested, img_db)
    
    V = [1:19];
    subplot(1,7,1), plot(V, recall * 100,'LineWidth',2);
    title(strcat( 'courbe recall pour: ',title_im))
    ylabel('precision in percentage %') % y-axis label
    xlabel('number of image /19') % x-axis label 
    
    subplot(1,7,2); imshow(imageQuery); title('query: ');
    for i = 1:5;
        subplot(1,7,2+i), imshow(img_db{tested(i,:)});
    end
    
    
    
end