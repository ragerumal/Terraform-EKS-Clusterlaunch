# Terrform EKS Cluster launch Handson.

<img width="488" alt="image" src="https://github.com/ragerumal/Terraform-EKS-Clusterlaunch/assets/126337647/b6f0c119-f6cd-4451-84ec-766a986f9531">

#Reference:https://www.eksworkshop.com/docs/introduction/setup/your-account/using-terraform 

Launching an Amazon Elastic Kubernetes Service (EKS) cluster using Terraform and AWS CLI is a streamlined process that combines the power of infrastructure as code (IaC) with the flexibility of command-line tools. This method allows for repeatable and consistent deployments of Kubernetes clusters on AWS infrastructure.

## Prerequisites:
1. **AWS Account**: Ensure you have an AWS account with appropriate permissions to create EKS clusters.
2. **AWS CLI**: Install the AWS CLI and configure it with your AWS credentials.
3. **Terraform**: Install Terraform on your local machine.
4. **GIT repo** : Setup with all *.tf files required.

# Step 1: Perform Git clone repo
<img width="615" alt="image" src="https://github.com/ragerumal/Terraform-EKS-Clusterlaunch/assets/126337647/2e25f055-83db-4056-b878-57b30168ab44">

# Step 2: Install Terraform 
https://developer.hashicorp.com/terraform/install

#Step 3: Install AWS CLI and perform "aws configure" to link your aws account on your machine running below steps
https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html
<img width="426" alt="image" src="https://github.com/ragerumal/Terraform-EKS-Clusterlaunch/assets/126337647/89decbe3-f964-4b82-9d78-ddc069c02dac">

# Step 4: Run "terraform init"

<img width="713" alt="image" src="https://github.com/ragerumal/Terraform-EKS-Clusterlaunch/assets/126337647/66381fb2-c52b-451e-9978-d1bc9ba91176">
<img width="635" alt="image" src="https://github.com/ragerumal/Terraform-EKS-Clusterlaunch/assets/126337647/4a24cd96-e938-4eeb-a708-4b52083f6007">


# Step 5 : Now run "terraform plan" to check sanity of the resource creation

C:\Git\Terraform-EKS-Clusterlaunch>terraform plan

<img width="910" alt="image" src="https://github.com/ragerumal/Terraform-EKS-Clusterlaunch/assets/126337647/945f8384-f14d-405a-a23f-c406f7b34289">

# Step 6: Now finally run "terraform apply --auto-approve

C:\Git\Terraform-EKS-Clusterlaunch>terraform apply -auto-approve
Note: this take around 20-25 minutes 

<img width="940" alt="image" src="https://github.com/ragerumal/Terraform-EKS-Clusterlaunch/assets/126337647/1249a3a7-797f-487e-95e1-9b814dad1c52">

# Step 7 : Login to AWS console and check for EKS cluster creation status  or check in AWS CLI using "eksctl get clusters"

<img width="931" alt="image" src="https://github.com/ragerumal/Terraform-EKS-Clusterlaunch/assets/126337647/7276eb52-99aa-4df7-8bea-abb267e78cdb">

How to Install EKSCTL : https://eksctl.io/installation/

<img width="452" alt="image" src="https://github.com/ragerumal/Terraform-EKS-Clusterlaunch/assets/126337647/9d0303c9-3270-4686-a58e-2ed8682af9d1">


# Step 8: Now Clean up the resources by using "Terraform Destroy"

C:\Git\Terraform-EKS-Clusterlaunch>terraform destroy




