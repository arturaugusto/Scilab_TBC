errcatch(-1,"stop");mode(2);
// example 5-6 in page 133
;
//Given data
//error should be less thsn 1%
// for less than 1% error count&gt;=100
n=6;
N=0;
while(N&lt;100)
N=(2^n)-1;//count value
if(N&lt;100)
n=n+1;//increment n and check weather N has exceeded 100
end
end
printf("for less 1percent error,use n=%d\n",n);
//end
// for less 1percent error,use n=7
exit();
