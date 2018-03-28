#include <stdlib.h>
#include <stdio.h>
#include <spawn.h>


void aptGet() {
    pid_t pid;
    int status;
    const char *argv[] = {"apt-get", "update", NULL, NULL};
    posix_spawn(&pid, "/usr/bin/apt-get", NULL, NULL, (char* const*)argv, NULL);
    waitpid(pid, &status, WEXITED);
}


int main(int argc, char *argv[])
{
    aptGet();
    return 0;
}

