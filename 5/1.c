#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<sys/wait.h>

int main()
{
    //子进程和父进程各有自己的内存空间，变量不共享
	int m = 100;
	int *x = &m;	
	int rc = fork();
	if(rc == 0){
		printf("(pid:%d)child x = %d\n",(int)getpid(),*x);
	}else{
		*x = 50;	
		printf("(pid:%d)parent x = %d\n",(int)getpid(),*x);
	}
	return 0;
}
