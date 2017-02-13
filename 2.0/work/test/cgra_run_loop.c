#include<stdio.h>

void main()
{

	int j;
	int k;
	int l;
	int m;
	int i;
	for(i=0;i<500;i++) {
		l = j + 2;
		m = k + 4;
		j = l + (m*3);
		k = m - (l*2);
    }

    //print-statements for CGRA
    printf("\nk = %d\n",k);

}
