mode(2);errcatch(-1,"stop");driver("GIF");//Ex4_24
// Enhancement of Corrupted Cassini Saturn Image by Notch Filtering
// Version : Scilab 5.4.1
// Operating System : Window-xp, Window-7
//Toolbox: Image Processing Design 8.3.1-1
//Toolbox: SIVP 0.5.3.1-2
//Reference book name : Digital Image Processing
//book author: Rafael C. Gonzalez and Richard E. Woods

clc;

clear;
xdel(winsid())//to close all currently open figure(s).

function[H]=notchfilter(M,N,W)//notchfilter is used to filter an image .
        H=ones(M,N);
        H(1:ceil(M/2-5),ceil(N/2-W/2):ceil(N/2+W/2))=0;
        H(ceil(M/2+5):M,ceil(N/2-W/2):ceil(N/2+W/2))=0;    

endfunction



///////////////////////////////////   Main Programm   ////////////////////////////////
a=imread("Ex4_24.tif");
//gray=rgb2gray(a);
gray=im2double(a);

figure,ShowImage(gray,'Gray Image');
title('Original Image','color','blue','fontsize',4);
[M,N]=size(gray);

h=fft2(gray);//fft2() is used to find 2-Dimensional Fast Fourier Transform of an matrix
i=log(1+abs(h));
in=fftshift(i);//fftshift() is used to rearrange the fft output, moving the zero frequency to the center of the spectrum.
inm=mat2gray(in)
figure,ShowImage(inm,'Frequency Spectrum');
title('Frequency Spectrum','color','blue','fontsize',4);

filt=notchfilter(M,N,7); // User Define Function which generate Filter Mask Corresponding to Low Frequency
filt_pass=1-filt;
//filt_shift=fftshift(filt);
figure,ShowImage(filt,'Filter Mask');
title('Filter Mask (Band stop) to Specific Cut-Off Frequency','color','blue','fontsize',4);

n=filt.*fftshift(h);//Multiply the Original Spectrum with the Filter Mask.
Image_filter=real(ifft(fftshift(n)));
Image_filter=mat2gray(Image_filter)
figure,ShowImage(Image_filter,'Filtered Image');
title('Filtered Image with Specific Cut-Off Frequency','color','blue','fontsize',4);


figure,ShowImage(filt_pass,'Filter Mask');
title('Filter Mask (Band Pass) to Specific Cut-Off Frequency','color','blue','fontsize',4);

n=filt_pass.*fftshift(h);//Multiply the Original Spectrum with the Filter Mask.
Image_filter=real(ifft(fftshift(n)));
Image_filter=mat2gray(Image_filter)
figure,ShowImage(Image_filter,'Filtered Image');
title('Filtered Image (Noise Pattern) with Specific Cut-Off Frequency','color','blue','fontsize',4);







xinit('/home/fossee/Downloads/tbc_graphs/Digital_Image_Processing_R._C._Gonzalez_And_R._E._Woods_3176/Ex4_24');xend();exit();
