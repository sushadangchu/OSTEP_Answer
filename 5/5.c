//
// Created by ldl on 2020/4/28.
//
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    int rc = fork();
    if(rc == 0){
        int wc = wait(NULL);
        printf("(pid:%d) child, wc:%d\n",(int)getpid(), wc);
    } else {
        printf("(pid:%d) parent, wc\n",(int)getpid());
    }
    return 0;
}
