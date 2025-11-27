CI/CD full stack production level setup for Reactapp:

Source: GitHub
Build: AWS CodeBuild 
Deploy: AWS CodeDeploy 
Enviroment : EKS (as pod)



Level 1:

Build docker image and setup in local
write a docker file 
Start the docker engine in local 
--> docker run -d -p 3000:80 brain-task:latest
http://localhost:3000

successfull 

Level 2:

Codebuil-ECR

create ECR repo 
create Github repo 
structure 
-dist/
-buildspec.yaml
-dockerfile 
create code build give required permission role attach for push to ECR repo
-->start the build 

successfull

level 3:

create EKS cluster up and running 
provide deployment.yaml & service.yaml

-dist/
-buildspec.yaml
-dockerfile 
-deployment.yaml
-service.yaml
-appspec.yaml

create Codedeploy application map the deployment group as EKS cluster
now codedeploy will apply the manifistfile to the EKS cluster and service file will create loadbalance to access the application 

Stich all together with AWS pipeline to automate the CI/CD pipeline 
Git-->CodeBuild-->build docker image--> push to ECR-->codedeploy-->EKS cluster.


current status
deploy using codebuild
kubectl cmd is not executing in logs 
[Container] 2025/11/15 10:47:56.787377 Running command kubectl get nodes
error: You must be logged in to the server (Unauthorized)
RBAC issues



