# nginx-tuning

## Pre-requisites

Install the following on your local machine
 - docker
 - docker-compose
 - jmeter
 - java
 - jdk



## Steps to run

### Setting up the containers
 - Run run.sh file, this should create two containers - nginx and tomcat

### Accessing endpoint
 - Hit http://localhost/hello 
 - Check the logs in nginx, it should look similar to this one
```2024-04-04 22:31:49 31 7 - 192.168.65.1 - - [05/Apr/2024:05:31:49 +0000] "GET /hello HTTP/1.1" 200 0 "-" "Apache-HttpClient/4.5.14 (Java/21.0.2)" "-"rt=0.285 uct="0.001" uht="0.285" urt="0.285"```
 - Check the logs in tomcat, it should look similar to this one
```2024-04-04 22:31:52 Hello! from server 45```

### Using jmeter
- Bring up jmeter console and import TestNginx.jmx into jmeter
- Click on start to generate a load of requests to the springboot http endpoint 
- Monitor nginx and tomcat logs

### Tuning Nginx
 - Update the nginx.conf file
 - Run run.sh file to update the containers 
 - Monitor logs

### Tuning tomcat max threads
 - Update `server.tomcat.threads.max` in application.yml
 - Run run.sh file to update the containers
 - Monitor logs