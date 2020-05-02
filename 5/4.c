#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<string.h>
#include<sys/wait.h>

int main()
{
	int rc = fork();
	if(rc == 0){
		char *myargs[2];
		myargs[0] = strdup("ls");
		myargs[1] = NULL;
		execv(myargs[0],myargs);
	} else {
		int wc = wait(NULL);
	}
	return 0;
}
