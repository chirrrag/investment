Steps to run this Application
1. git clone <investment-repo>
2. terraform init
3. terraform plan
4. terraform apply
> apply will ask for prompt will list the resources to apply/update.
5. you can access this application by getting your public ip and accessing it on port8081, with GET request /api/v1

EG:- 
> http://<your-instance-public-ip>:8081/api/v1



#####
1. Investment Application is stored in app folder, along with its Dockerfile
2. Docker image is build and stored in public docker hub
3. link to docker image is 
> https://hub.docker.com/r/sapraji/investment
4. use below command  to run this app on your local
> docker pull sapraji/investment

