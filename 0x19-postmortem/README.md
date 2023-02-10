# Postmortem
Post-Mortem Report: ALX’s System Engineering & DevOps project 0x19 experienced an outage at approximately 09:00 EAT in Kenya. The issue was related to an isolated Ubuntu 14.04 container running an Apache web server that returned “500 Internal Server Error” for GET requests instead of serving an HTML file for a Holberton WordPress site
## Debugging Process
Debugging Process: Debugger Brennan (BDB) was assigned to address the issue at 19:20 PST. The following steps were taken to resolve the problem:

Verified the running processes using “ps aux”, which showed two Apache processes — “root” and “www-data” — were running properly.
Checked the “sites-available” folder in the “/etc/apache2/” directory and confirmed that the web server was serving content from “/var/www/html/”.
Used “strace” on the PID of the “root” Apache process while performing a “curl” on the server, but “strace” didn’t provide any useful information.
Repeated step 3 using the PID of the “www-data” process and this time, “strace” revealed an error of “-1 ENOENT (No such file or directory)” when trying to access the file “/var/www/html/wp-includes/class-wp-locale.phpp”.
Searched for the erroneous “.phpp” file extension in the “/var/www/html/” directory using Vim pattern matching and found it in the “wp-settings.php” file (line 137).
Corrected the typo by removing the trailing “p” from the line.
Verified the fix by performing another “curl” on the server and received a 200 A-ok response.
Wrote a Puppet manifest to automate the error correction.
 
## Summation
Summation: The outage was caused by a simple typo in the “wp-settings.php” file, where the WordPress app was encountering a critical error while trying to load “class-wp-locale.phpp”. The correct file name, located in the “wp-content” directory of the application folder, was “class-wp-locale.php”

# Prevention

This outage was not a web server error, but an application error. To prevent such outages
moving forward, please keep the following in mind.

* Test! Test test test. Test the application before deploying. This error would have arisen
and could have been addressed earlier had the app been tested.

* Status monitoring. Enable some uptime-monitoring service such as
[UptimeRobot](./https://uptimerobot.com/) to alert instantly upon outage of the website.

Note that in response to this error, I wrote a Puppet manifest
[0-strace_is_your_friend.pp](https://github.com/bdbaraban/holberton-system_engineering-devops/blob/master/0x17-web_stack_debugging_3/0-strace_is_your_friend.pp)
to automate fixing of any such identitical errors should they occur in the future. The manifest
replaces any `phpp` extensions in the file `/var/www/html/wp-settings.php` with `php`.

But of course, it will never occur again, because we're programmers, and we never make
errors! :wink:
