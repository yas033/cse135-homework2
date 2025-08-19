#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    char *cookie = getenv("HTTP_COOKIE");
    char name[256] = "";

    if (cookie && strstr(cookie, "session_name=")) {
        sscanf(strstr(cookie, "session_name="), "session_name=%255s", name);
    }

    printf("Content-type: text/html\r\n\r\n");
    printf("<!DOCTYPE html><html><head><title>C Sessions Page 2</title></head><body>");
    printf("<h1>C Sessions Page 2</h1>");
    printf("<p>Name: %s</p>", name);
    printf("<p><a href='/cgi-bin/c-sessions-1.cgi'>Session Page 1</a></p>");
    printf("<p><a href='/c-cgiform.html'>C CGI Form</a></p>");
    printf("<form method='POST' action='/cgi-bin/c-destroy-session.cgi'><input type='submit' value='Destroy Session'></form>");
    printf("</body></html>");
    return 0;
}

