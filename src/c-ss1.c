#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    char *method = getenv("REQUEST_METHOD");
    char *cookie = getenv("HTTP_COOKIE");
    char name[128] = "";

    if (cookie && strstr(cookie, "session_name=")) {
        sscanf(strstr(cookie, "session_name="), "session_name=%127s", name);
    }

    if (method && strcmp(method, "POST") == 0) {
        char input[256];
        fgets(input, sizeof(input), stdin);
        char *p = strstr(input, "name=");
        if (p) {
            strcpy(name, p+5);
        }
        printf("Set-Cookie: session_name=%s; Path=/\r\n", name);
    }

    printf("Content-type: text/html\r\n\r\n");
    printf("<!DOCTYPE html><html><head><title>C Sessions Page 1</title></head><body>");
    printf("<h1>C Sessions Page 1</h1>");
    printf("<p>Name: %s</p>", name);
    printf("<p><a href='/cgi-bin/c-sessions-2.cgi'>Session Page 2</a></p>");
    printf("<p><a href='/c-cgiform.html'>C CGI Form</a></p>");
    printf("<form method='POST' action='/cgi-bin/c-destroy-session.cgi'><input type='submit' value='Destroy Session'></form>");
    printf("</body></html>");
    return 0;
}
