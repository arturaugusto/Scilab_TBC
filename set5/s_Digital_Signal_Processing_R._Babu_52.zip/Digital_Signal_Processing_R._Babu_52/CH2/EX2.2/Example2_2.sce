errcatch(-1,"stop");mode(2);//Example 2.2
//Z- transform of [-3 -2 -1 0 1] 
;
 ;
 ;
function[za]=ztransfer(sequence,n)
z=poly(0,'z','r')
za=sequence*(1/z)^n'
endfunction
x1=[-3 -2 -1 0 1];
n=-(length(x1)-1):0;
zz=ztransfer(x1,n);    
//Display the result in command window
disp (zz,"Z-transform of sequence is:");
disp('ROC is the entire plane except z = %inf');
exit();
