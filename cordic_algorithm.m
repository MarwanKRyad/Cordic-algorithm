function [cosine, sine] =cordic_algorithm (angle,n) 
initial_vector=[1;0];
k=0.6072;
cosine=ones(size(angle));
sine=ones(size(angle));
number_of_cycle=0;
angle=(angle/pi)*180;
for LL=1:length(angle)
    if(angle(LL)<0)
        number_of_cycle=ceil(abs(angle(LL))/360);
        angle(LL)=angle(LL)+number_of_cycle*360;
    elseif(angle(LL)>360)
        number_of_cycle=floor(angle(LL)/360);
        angle(LL)=angle(LL)-number_of_cycle*360;
    
    end
        if (angle(LL)>90 && angle(LL)<=180)  %second
            angle(LL)=180-angle(LL);
            cosine(LL)=-1;
            sine(LL)=1;
        elseif(angle(LL)>180 && angle(LL)<=270)
            angle(LL)=angle(LL)-180;
            cosine(LL)=-1;
            sine(LL)=-1;
        elseif (angle(LL)>270 && angle(LL)<=360)
            angle(LL)=360-angle(LL);
            cosine(LL)=1;
            sine(LL)=-1;
        end
    
end


for LL=1:length(angle)
    accumlate_angle=0;
    if(angle(LL)==45)
    cosine(LL)=cosine(LL)*(1/sqrt(2));
    sine(LL)=sine(LL)* (1/sqrt(2));
    
    else
    
    for ii=0:1:n
      if(ii==0)

          if(accumlate_angle<angle(LL) )  
             a=[1 -2^-ii;2^-ii 1 ]*initial_vector;
             accumlate_angle=accumlate_angle+((atan((2^-ii)))/pi)*180 ;
            
          elseif(accumlate_angle>angle(LL)  )
             a=[1 2^-ii;-2^-ii 1 ]*initial_vector;
             accumlate_angle=accumlate_angle-((atan((2^-ii)))/pi)*180 ;
          elseif(accumlate_angle==angle(LL))
              a=[1/k ; 0];
            break;
          end

      else

          if(accumlate_angle<angle(LL) )  
            a=[1 -2^-ii;2^-ii 1]*a;
          accumlate_angle=accumlate_angle+((atan((2^-ii)))/pi)*180 ;
          elseif(accumlate_angle>angle(LL))
             a=[1 2^-ii;-2^-ii 1] *a;
             accumlate_angle=accumlate_angle-((atan((2^-ii)))/pi)*180 ;
          elseif(accumlate_angle==angle(LL))
            break;
          end

      end
    end
    a= k * a;
    
   
    
    cosine(LL)=cosine(LL) * a(1);
    sine(LL)= sine(LL)* a(2);
    

    
    end
end    
     
  

    
end