#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(void) {
    printf("Content-type: text/html\n\n");
    printf("<html><head><title>Hello, C!</title></head><body>\n");
    printf("<h1>Hello, C! Team: Nicole & Yanhua </h1>\n");
    printf("<p>This page was generated with C language</p>\n");

    time_t now = time(NULL);
    printf("<p>Current Time: %s</p>\n", ctime(&now));

    char *addr = getenv("REMOTE_ADDR");
    if (addr) printf("<p>Your IP Address: %s</p>\n", addr);

    printf("</body></html>\n");
    return 0;
}

