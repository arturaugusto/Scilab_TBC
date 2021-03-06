mode(2);errcatch(-1,"stop");driver("GIF");//Ex10_7
// Illustration of the Marr-Hildreth Edge Detection Methods
// Version : Scilab 5.4.1
// Operating System : Window-xp, Window-7
//Toolbox: Image Processing Design 8.3.1-1
//Toolbox: SIVP 0.5.3.1-2
//Reference book name : Digital Image Processing
//book author: Rafael C. Gonzalez and Richard E. Woods

clc;

clear;
xdel(winsid())//to close all currently open figure(s).

a=imread("Ex10_7.tif");
a=im2double(a);
figure,ShowImage(a,'Gray Image');
title('Original Image','color','blue','fontsize',4);
[M,N]=size(a);
sigma=4;
for i=1:25
    for j=1:25
        Mask(i,j)=[(i^2+j^2-(2*sigma^2))/sigma^4]*exp(-(i^2+j^2)/(2*sigma^2));  // Mask Generation
    end
end

Filter_Image=imfilter(a,Mask);  // Filtering the Original Image with the Mask
figure,ShowImage(Filter_Image,'Filter Image');
title('Laplacian of gaussian Image','color','blue','fontsize',4);
b=zeros(M,N);
temp=Filter_Image;
for i=2:M-1  // Zero Crossing Detection
    for j=2:N-1
        //temp=[Filter_Image(i-1:i+1,j-1:j+1)];
        if((temp(i-1,j-1)>0 & temp(i+1,j+1)<0) | (temp(i-1,j-1)<0 & temp(i+1,j+1)>0)) then
            b(i,j)=255;
        else if ((temp(i-1,j+1)>0 & temp(i+1,j-1)<0) | (temp(i-1,j+1)<0 & temp(i+1,j-1)>0)) then
            b(i,j)=255;
        else if ((temp(i,j+1)>0 & temp(i,j-1)<0) | (temp(i,j+1)<0 & temp(i,j-1)>0)) then
            b(i,j)=255;
        else if ((temp(i-1,j)>0 & temp(i+1,j)<0) | (temp(i,j+1)<0 & temp(i,j-1)>0)) then
            b(i,j)=255;
        end
        end
        end
        end            
    end
end

figure,ShowImage(b,'Zero Crossing Image');
title('Zero Crossing Detected Image','color','blue','fontsize',4);

xinit('/home/fossee/Downloads/tbc_graphs/Digital_Image_Processing_R._C._Gonzalez_And_R._E._Woods_3176/Ex10_7');xend();exit();
