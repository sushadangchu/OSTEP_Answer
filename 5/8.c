//
// Created by ldl on 2020/4/28.
//
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>
#include <string.h>

int main() {
    int pipeFd[2];
    int rc1, rc2;
    pipe(pipeFd);
    rc1 = fork();
    if(rc1 == 0){
        close(pipeFd[0]);
        printf("(pid:%d) child1\n",(int)getpid());
        char strWrite[] = "hello, bro!\n";
        write(pipeFd[1], strWrite, sizeof(strWrite));
        close(pipeFd[1]);
    } else {
        waitpid(rc1, NULL, 0);
        rc2 = fork();
        if(rc2 == 0){
            close(pipeFd[1]);
            char strRead;
            printf("(pid:%d) child2\n",(int)getpid());
            while(read(pipeFd[0], &strRead, 1) > 0){
                write(STDOUT_FILENO, &strRead, 1);
            }
            write(STDOUT_FILENO, '\n', sizeof(strRead));
            close(pipeFd[0]);
        }
    }
    return 0;
}
