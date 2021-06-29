# SpringBoot

This is a sample SpringBoot application to be used for Technical Health Check

Docker
--------------

 ### To Build
 docker build -t springboot-hc .

 ### To run
 docker run -dit --name springboot-app -p 8888:8080 springboot-hc

 ### Check
 docker ps

 ### To Destroy
 docker stop springboot-app
 docker rm springboot-app
 docker rmi springboot-hc


 Author Information
 ------------------

 Jan Souza
