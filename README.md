# cse135-2025-ss2-HW2

## a link to yourdomain.site

https://cse135.online/


## where under Homework 2, there are links to all of your CGI programs (the programs you/your group wrote, and the C and Perl code we provided to you)

https://cse135.online/cgi.html


## any additional notes for the graders


## Team member names
Nicole Liu , Yanhua Shi


## IP address of server, ssh key, grader log in information to the site and server
159.89.158.29 10.46.0.5 10.120.0.2 
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAaWL8m+PENtRRtufurFvsQYdO2DLJM2N0BitvjU4udn yas033@ucsd.edu

https://cse135.online/members/

Login information:

username:grader password:8888

username:nicole password:8888

username:yanhua password:8888

username:yanhua
password:8888


## Step 5: Compression Verification

Enabled mod_deflate in Apache to compress HTML, CSS, and JS

Verified using Chrome DevTools:

content-encoding: gzip present in Response Headers

HTML reduced in transfer size, confirming that compression is active.

After enable the compression, the HTML file sent from the server became much smaller in size when transferred, but the actual page content stayed the same. The browser still showed the full HTML after it was uncompressed. This made the page load faster and used less data.


## Step 6: Obscure server identity

Hiding server- information or server version can help prevent attackers from accessing your server. This improves security, as clear version information gives hackers a better understanding of where to begin looking for vulnerabilities. I spent a long time working on this part, and we didn't successfully to create a 'server: CSE135 Server'.But I removed the specific Apache version information to minimize risk within my capabilities.

