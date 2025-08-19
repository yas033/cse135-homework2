#include <stdio.h>

int main(void) {
    
    printf("Set-Cookie: session_name=; Expires=Thu, 01 Jan 1970 00:00:00 GMT; Path=/\r\n");
    printf("Content-type: text/html\r\n\r\n");

    printf("<!DOCTYPE html><html><head><title>Session Destroyed</title></head><body>");
    printf("<h1>Session Destroyed</h1>");
    printf("<p><a href='/c-cgiform.html'>Back to C CGI Form</a></p>");
    printf("<p><a href='/cgi-bin/c-sessions-1.cgi'>Back to Page 1</a></p>");
    printf("<p><a href='/cgi-bin/c-sessions-2.cgi'>Back to Page 2</a></p>");
    printf("</body></html>");
    return 0;
}
