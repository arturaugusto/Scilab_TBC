mode(2);errcatch(-1,"stop");driver("GIF");//Ex9_9
// Illustration of Gray Scale Erosion and Dilation
// Version : Scilab 5.4.1
// Operating System : Window-xp, Window-7
//Toolbox: Image Processing Design 8.3.1-1
//Toolbox: SIVP 0.5.3.1-2
//Reference book name : Digital Image Processing
//book author: Rafael C. Gonzalez and Richard E. Woods

clc;

clear;
xdel(winsid())//to close all currently open figure(s).

function [f]=restoration_filter(v,type,m,n,Q,d)
    if argn(2) ==2 then
        m=7;n=7;Q=1.5;d=10; 
    elseif argn(2)==5 then
        Q=parameter;d=parameter; 
    elseif argn(2)==4 then
        Q=1.5;d=2; 
    else  
        disp('wrong number of inputs'); 
    end 
    
    select type
        
    case'median'then
        f=MedianFilter(v,[m n]);
        
    case'MIN'then
       size1=m;
       [nr,nc]=size(v);
       temp=zeros(nr+2*floor(size1/2),nc+2*floor(size1/2));
       temp(ceil(size1/2):nr+ceil(size1/2)-1,ceil(size1/2):nc+ceil(size1/2)-1)=v(1:$,1:$);
        for i=ceil(size1/2):nr+ceil(size1/2)-1
            for j=ceil(size1/2):nc+ceil(size1/2)-1
                t=temp(i-floor(size1/2):1:i+floor(size1/2),j-floor(size1/2):1:j+floor(size1/2)) ;
                y=gsort(t);
                temp2(i-floor(size1/2),j-floor(size1/2))=min(y);
            end
        end
        f=mat2gray(temp2);    
    
    case'MAX'then
       size1=m;
       [nr,nc]=size(v);
       temp=zeros(nr+2*floor(size1/2),nc+2*floor(size1/2));
       temp(ceil(size1/2):nr+ceil(size1/2)-1,ceil(size1/2):nc+ceil(size1/2)-1)=v(1:$,1:$);
        for i=ceil(size1/2):nr+ceil(size1/2)-1
            for j=ceil(size1/2):nc+ceil(size1/2)-1
                t=temp(i-floor(size1/2):1:i+floor(size1/2),j-floor(size1/2):1:j+floor(size1/2)) ;
                y=gsort(t);
                temp2(i-floor(size1/2),j-floor(size1/2))=max(y);
            end
        end
        f=mat2gray(temp2);
        
        case'Mid_Point'then
       size1=m;
       [nr,nc]=size(v);
       temp=zeros(nr+2*floor(size1/2),nc+2*floor(size1/2));
       temp(ceil(size1/2):nr+ceil(size1/2)-1,ceil(size1/2):nc+ceil(size1/2)-1)=v(1:$,1:$);
        for i=ceil(size1/2):nr+ceil(size1/2)-1
            for j=ceil(size1/2):nc+ceil(size1/2)-1
                t=temp(i-floor(size1/2):1:i+floor(size1/2),j-floor(size1/2):1:j+floor(size1/2)) ;
                y=gsort(t);
                temp2(i-floor(size1/2),j-floor(size1/2))=0.5*(min(y)+max(y));
            end
        end
        f=mat2gray(temp2);       
    
        else
        disp('Unknownfiltertype.')
    end     
endfunction

/////////////////////////////////////    Main Programm    ////////////////////

a=imread("Ex9_9.png");
gray=rgb2gray(a);
//gray=im2double(gray);
figure,ShowImage(gray,'Gray Image');
title('Original X-Ray Image','color','blue','fontsize',4);
[M,N]=size(gray);

////////////////////////////////////       MIN Filter    ////////////////////
h=restoration_filter(gray,'MIN',3,3);
figure,ShowImage(h,'Recovered Image');
title('Erosion using Flat Structuring Element','color','blue','fontsize',4);


///////////////////////////////////       MAX Filter    ////////////////////
h=restoration_filter(gray,'MAX',3,3);
figure,ShowImage(h,'Recovered Image');
title('Dilation using Flat Structuring Element','color','blue','fontsize',4);



xinit('/home/fossee/Downloads/tbc_graphs/Digital_Image_Processing_R._C._Gonzalez_And_R._E._Woods_3176/Ex9_9');xend();exit();
