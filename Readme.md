# DevOps Project

## Introduction
	The aim of this project is to apply DevOps practices starting from the application devlopment
	till the monitoring of the application

## DevOps Practices
	-Configuration Management System
	-Continous Integration
	-Continous Deployment 
	-Continous Delivery
	-Infrastrucutre Automation
	-Continous Testing
	-Continous Monitoring

## Steps to imlpement the project
	1-Create a nodejs application
	2-Upload the application code on Github
	3-Build a continous Integration pipline using Jenkins
	4-Build a Continous Deplyoment using Jenkins on AWS instance
	5-Automate the Infrastructure As a Code using Terraform and Ansible
	6-Dockerize the Application
	7-Automate the deployment using the Container
	8-Automate the testing of the application using Jenkins
	9-Deploy an ELK into the Environement using Container
	10-Deploy a monitroing Solution
	11-Deploy image on AWS using Packer
	12-Orchestrate the container using Kubernetes
	13-Use Counsl for Service Dicovery of Microservice
	
## 1-Create the nodejs application 
		-Download the code from the https://github.com/mahmoudrasmy/Devops_Project/tree/master/nodejs_application
		
## 2-Upload the code on Github using the Following Steps :
		-git init
		-git add README.md
		-git commit -m "first commit"
		-git remote add origin URL_of_Repo
		-git push -u origin master
		
## 3-Prepare the infrastrucutre as a code :
		-Download the Code of the infrastructure as a code
		-Create a file 'terraform.tf' and fill it with your AWS Credentials
			```
			variable "region" {
				default = ""
			}

			variable "access_key" {
			default = ""
			}
			
			variable "secret_key" {
			default = ""
			}
			```
		-Copy the private_key.pem into the machine
		-To Launch Terraform $terraform apply


