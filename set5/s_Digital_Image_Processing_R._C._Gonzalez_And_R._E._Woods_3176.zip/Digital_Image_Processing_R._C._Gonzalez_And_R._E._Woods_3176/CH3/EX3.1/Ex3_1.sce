mode(2);errcatch(-1,"stop");driver("GIF");//Ex3_1
// Gamma Intensity transformation
// Version : Scilab 5.4.1
// Operating System : Window-xp, Window-7
//Toolbox: Image Processing Design 8.3.1-1
//Toolbox: SIVP 0.5.3.1-2
//Reference book name : Digital Image Processing
//book author: Rafael C. Gonzalez and Richard E. Woods

clc;

clear;
xdel(winsid())//to close all currently open figure(s).
gray=imread("Ex3_1.tif");
figure,ShowImage(gray,'Gray Image');
title('Original Image','color','blue','fontsize',4);
[M,N]=size(gray);
c=1;
gamma=[0.6 0.4 0.3];
for i=1:length(gamma)
    b=c.*(gray).^gamma(i); //Gamma transformation
    b=mat2gray(b);
    figure,ShowImage(b,'Gray Image');
    title('Enhance Image after Gamma transformation','color','blue','fontsize',4);
end







xinit('/home/fossee/Downloads/tbc_graphs/Digital_Image_Processing_R._C._Gonzalez_And_R._E._Woods_3176/Ex3_1');xend();exit();
