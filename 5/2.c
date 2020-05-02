#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<fcntl.h>
#include<sys/wait.h>

int main()
{
	int fd;
	char c[] = "child proess\n";
	char p[] = "parent proess\n";
	fd = open("./test", O_CREAT | O_RDWR);
	int rc = fork();
	if( rc == 0){
		write(fd,c,sizeof(c));
	}else{
		write(fd,p,sizeof(p));
	}
	return 0;
}
