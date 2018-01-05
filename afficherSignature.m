function afficherSignature(signature)
    hold on;
    
    t=0:pi/15:2*pi;
    %figure
    plot(t,signature, '-g');
    set(gca,'XTick',0:pi/2:2*pi) 
    set(gca,'XTickLabel',{'0','pi/2','pi','3*pi/2','2*pi'})
    
    hold off;
end