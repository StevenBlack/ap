% author : Vinu kamalasanan
% reading the annotation file and parsing each of the column values 
% ---------------------------------------------------------
% '%d  %d     %d    %d    %d   %d       %d  %d  %d %s'
%  id  xmin   ymin  xmax  ymax frame_id  _   _  _  class

annotationfile = fopen('annotationsvideo0.txt','r');
S = textscan(annotationfile,'%s','delimiter','\n') ;

for k=1:length(S{1})
    cell = S(1);
    annotation = cell{1}(k);
    annotation= char(annotation);
    split = textscan(annotation, '%f%f%f%f%f%f%f%f%f%s');
    id = split{1};
    xmin = split{2};
    ymin = split{3};
    xmax = split{4};
    ymax = split{5};
    display(split);
    fprintf("displaying the box cordinates\n")
    
    
    x = (xmin +((xmax-xmin)/2));
    y = (ymin +((ymax-ymin)/2));
    fprintf("%d\n",x); 
    fprintf("%d\n",y);
    
    plot(x,y,'or','MarkerSize',2,'LineWidth',2);
   
    break
end
