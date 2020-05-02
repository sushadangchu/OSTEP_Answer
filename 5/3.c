#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>

int main()
{
	int rc = fork();
	int i = 0;
	if(rc == 0){
		printf("hello\n");
	}else{
		sleep(0.1);
		printf("goodbye\n");
	}
	return 0;
}
