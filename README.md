# Terraform-Jenkins-CICD-Pipeline

This is Terraform module for creating AWS EC2 instance.It contains

 1] Jenkins Configuration
 
 2] AWS Credential Configuration
 
 3] Terraform Code Integration
 
 4] Jenkins file

 Pre-requistes:

    Jenkins is up and running

    Terraform is installed in Jenkins
 
    Terraform files already created in your SCM
 
    Jenkins file already created in your SCM
 
    AWS account is needed. Go to Jenins Dashboard-> Manage Jenkins-> Manage Credential->System-> Add your Access key and Secret Access key


If your Jenkins is installed on Windows use bat command and for Linux use sh command


Create Jenkins Pipeline

   1. Click New Item

   2. Give name to Pipeline 

   3. Add description 

   4. select Pipeline Script From SCM

    This will take script from Github Jenkinsfile
 
   5. Add SCM as Git 

   6. Give yourRepositor url

   7. Select credentials as None because this is public Repository

   8. Specify Branch as main

   9. Apply 
   

Pipeline is created. Lets Buid pipeline.

After Successful build EC2 instance is deployed. Check AWS Manahement Console.




