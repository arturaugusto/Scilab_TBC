mode(2);errcatch(-1,"stop");driver("GIF");//Ex4_16
//Image Smooting Using an ILPF
// Version : Scilab 5.4.1
// Operating System : Window-xp, Window-7
//Toolbox: Image Processing Design 8.3.1-1
//Toolbox: SIVP 0.5.3.1-2
//Reference book name : Digital Image Processing
//book author: Rafael C. Gonzalez and Richard E. Woods

clc;

clear;
xdel(winsid())//to close all currently open figure(s).

function[H]=lowpassfilter(type1,M,N,D0,n)//lowpassfilter is used to filter an image .
    u=0:(M-1);
    v=0:(N-1);
    idx=find(u>M/2);
    u(idx)=u(idx)-M;
    idy=find(v>N/2);
    v(idy)=v(idy)-N;
    [U,V]=meshgrid(v,u);
    D=sqrt(U.^2+V.^2);
    select type1
        
    case'ideal'then
        H=double(D<=D0);
    else
        disp('Unknownfiltertype.')
    end
endfunction


///////////////////////////////////   Main Programm   ////////////////////////////////
a=imread("Ex4_16.tif");
//gray=rgb2gray(a);
gray=im2double(a);

figure,ShowImage(gray,'Gray Image');
title('Original Image');
[M,N]=size(gray);

h=fft2(gray);//fft2() is used to find 2-Dimensional Fast Fourier Transform of an matrix
i=log(1+abs(h));
in=fftshift(i);//fftshift() is used to rearrange the fft output, moving the zero frequency to the center of the spectrum.
inm=mat2gray(in)
figure,ShowImage(inm,'Frequency Spectrum');
title('Frequency Spectrum','color','blue','fontsize',4);

/////////////////////////// Filtering With Cut-off Frequency 10   ///////////////////////
filt=lowpassfilter('ideal',M,N,10); // Function which generate Filter Mask Corresponding to Low Frequency
//filt_shift=fftshift(filt);
//figure,ShowImage(filt_shift,'Filter Mask');
//title('Filter Mask to Specific Cut-Off Frequency');
n=filt.*h;//Multiply the Original Spectrum with the Filter Mask.
Image_filter=real(ifft(n));
Image_filter=mat2gray(Image_filter)
figure,ShowImage(Image_filter,'Filtered Image');
title('Filtered Image with Cut-Off Frequency 10','color','blue','fontsize',4);


/////////////////////////// Filtering With Cut-off Frequency 30   ///////////////////////
filt=lowpassfilter('ideal',M,N,30); // Function which generate Filter Mask Corresponding to Low Frequency
//filt_shift=fftshift(filt);
//figure,ShowImage(filt_shift,'Filter Mask');
//title('Filter Mask to Specific Cut-Off Frequency');
n=filt.*h;//Multiply the Original Spectrum with the Filter Mask.
Image_filter=real(ifft(n));
Image_filter=mat2gray(Image_filter)
figure,ShowImage(Image_filter,'Filtered Image');
title('Filtered Image with Cut-Off Frequency 30','color','blue','fontsize',4);


/////////////////////////// Filtering With Cut-off Frequency 60   ///////////////////////
filt=lowpassfilter('ideal',M,N,60); // Function which generate Filter Mask Corresponding to Low Frequency
//filt_shift=fftshift(filt);
//figure,ShowImage(filt_shift,'Filter Mask');
//title('Filter Mask to Specific Cut-Off Frequency');
n=filt.*h;//Multiply the Original Spectrum with the Filter Mask.
Image_filter=real(ifft(n));
Image_filter=mat2gray(Image_filter)
figure,ShowImage(Image_filter,'Filtered Image');
title('Filtered Image with Cut-Off Frequency 60','color','blue','fontsize',4);


/////////////////////////// Filtering With Cut-off Frequency 160   ///////////////////////
filt=lowpassfilter('ideal',M,N,160); // Function which generate Filter Mask Corresponding to Low Frequency
//filt_shift=fftshift(filt);
//figure,ShowImage(filt_shift,'Filter Mask');
//title('Filter Mask to Specific Cut-Off Frequency');
n=filt.*h;//Multiply the Original Spectrum with the Filter Mask.
Image_filter=real(ifft(n));
Image_filter=mat2gray(Image_filter)
figure,ShowImage(Image_filter,'Filtered Image');
title('Filtered Image with Cut-Off Frequency 160','color','blue','fontsize',4);


/////////////////////////// Filtering With Cut-off Frequency 460   ///////////////////////
filt=lowpassfilter('ideal',M,N,460); // Function which generate Filter Mask Corresponding to Low Frequency
//filt_shift=fftshift(filt);
//figure,ShowImage(filt_shift,'Filter Mask');
//title('Filter Mask to Specific Cut-Off Frequency');
n=filt.*h;//Multiply the Original Spectrum with the Filter Mask.
Image_filter=real(ifft(n));
Image_filter=mat2gray(Image_filter)
figure,ShowImage(Image_filter,'Filtered Image');
title('Filtered Image with Cut-Off Frequency 460','color','blue','fontsize',4);

xinit('/home/fossee/Downloads/tbc_graphs/Digital_Image_Processing_R._C._Gonzalez_And_R._E._Woods_3176/Ex4_16');xend();exit();
