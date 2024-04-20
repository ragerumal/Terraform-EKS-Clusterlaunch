# Terrform EKS Cluster launch Handson.

<img width="542" alt="image" src="https://github.com/ragerumal/Terraform-EKS-Clusterlaunch/assets/126337647/58755f82-726a-4503-a370-0f02ca2ade11">


Launching an Amazon Elastic Kubernetes Service (EKS) cluster using Terraform and AWS CLI is a streamlined process that combines the power of infrastructure as code (IaC) with the flexibility of command-line tools. This method allows for repeatable and consistent deployments of Kubernetes clusters on AWS infrastructure.

## Prerequisites:
1. **AWS Account**: Ensure you have an AWS account with appropriate permissions to create EKS clusters.
2. **AWS CLI**: Install the AWS CLI and configure it with your AWS credentials.
3. **Terraform**: Install Terraform on your local machine.
4. **GITHUB repo** : Setup with all *.tf files required.

# Step 1: Perform Git clone repo
git clone https://github.com/ragerumal/Terraform-EKS-Clusterlaunch
<img width="615" alt="image" src="https://github.com/ragerumal/Terraform-EKS-Clusterlaunch/assets/126337647/2e25f055-83db-4056-b878-57b30168ab44">

# Step 2: Install Terraform 
https://developer.hashicorp.com/terraform/install

# Step 3: Install AWS CLI and perform "aws configure" to link your aws account on your machine running below steps
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
<img width="952" alt="image" src="https://github.com/ragerumal/Terraform-EKS-Clusterlaunch/assets/126337647/4b7a5108-6da6-463d-ae24-d2456f83b912">

#Note: After resource creation, below terraform.tfstate file is created to keep tab on resourses created. Since this needed for to check for resource Drift or needed for terraform Destroy command

<img width="536" alt="image" src="https://github.com/ragerumal/Terraform-EKS-Clusterlaunch/assets/126337647/78937d60-1546-401b-917f-e4dd00fb4c8d">


# Step 7 : Login to AWS console and check for EKS cluster creation status  or check in AWS CLI using "eksctl get clusters"

<img width="918" alt="image" src="https://github.com/ragerumal/Terraform-EKS-Clusterlaunch/assets/126337647/00369672-866f-4570-95e8-89f0bb4b37ef">


How to Install EKSCTL : https://eksctl.io/installation/

<img width="452" alt="image" src="https://github.com/ragerumal/Terraform-EKS-Clusterlaunch/assets/126337647/9d0303c9-3270-4686-a58e-2ed8682af9d1">

# Step 8 : Configuring kubectl & Verifying the Cluster:
Once the EKS cluster is created, configure kubectl to communicate with it.

aws eks --region your_aws_region update-kubeconfig --name my-cluster

Check the status of your EKS cluster using kubectl. You should see information about the deployed services and nodes in your cluster.

kubectl get svc
kubectl get nodes

# Step 9: Now Clean up the resources by using "Terraform Destroy"

C:\Git\Terraform-EKS-Clusterlaunch>terraform destroy


<img width="643" alt="image" src="https://github.com/ragerumal/Terraform-EKS-Clusterlaunch/assets/126337647/4642403a-e564-4291-9cb9-13d4cf574025">

<img width="907" alt="image" src="https://github.com/ragerumal/Terraform-EKS-Clusterlaunch/assets/126337647/60a2f754-f762-4bf9-8bbb-e1a5d8106f28">

<img width="745" alt="image" src="https://github.com/ragerumal/Terraform-EKS-Clusterlaunch/assets/126337647/d3012605-aab0-42d8-b44d-d18416322006">


# Conclusion:
Combining Terraform and AWS CLI provides a robust and efficient way to provision and manage EKS clusters on AWS. This approach ensures consistency, repeatability, and scalability in deploying Kubernetes infrastructure, making it easier to manage and maintain complex containerized applications.



# Reference:
https://www.eksworkshop.com/docs/introduction/setup/your-account/using-terraform 
