//
// Created by ldl on 2020/4/28.
//
#include <stdio.h>
#include <unistd.h>

int main() {
    int rc = fork();
    if(rc == 0){
        close(STDOUT_FILENO);
        //关闭输出之后，printf语句无效！
        printf("(pid:%d) child\n",(int)getpid());
    } else {
        printf("(pid:%d) parent\n",(int)getpid());
    }
    return 0;
}
