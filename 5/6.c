//
// Created by ldl on 2020/4/28.
//
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    int status;
    int rc = fork();
    if(rc == 0){
        int wc = waitpid(-1,NULL,WUNTRACED | WCONTINUED);
        printf("(pid:%d) child, wc:%d\n",(int)getpid(), wc);
    } else {
        printf("(pid:%d) parent, status:%d\n",(int)getpid(), WIFEXITED(status));
    }
    return 0;
}
