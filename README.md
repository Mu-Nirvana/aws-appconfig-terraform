# Requirements:
For this I used visual studio code with the extensions for terraform and AWS installed.

I installed the terraform and AWS Cli's as well. These can be found at their respective links:

Terraform CLI: https://developer.hashicorp.com/terraform/downloads

AWS CLI (install guide): https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

AWS CLI (download): https://awscli.amazonaws.com/AWSCLIV2.msi

# Process

After installing these CLI's use the terminal in VSC and do 

```
aws configure
```

Doing this allows one to place their IAM role access key and secret ID key.To get these open the IAM console at https://console.aws.amazon.com/iam/.

1) On the navigation menu, choose Users.

2) Choose your IAM user name (not the check box).

3) Open the Security credentials tab, and then choose Create access key.

4) To see the new access key, choose Show. Your credentials resemble the following:

Access key ID: AKIAIOSFODNN7EXAMPLE

Secret access key: wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY

At this menu one can set up their desired region. Leave output format blank.

On the main.tf file, in the VSC terminal if your current AWS version is wrong do 
```
terraform init -upgrade
```

In order do: 
```
terraform fmt
```
```
terraform init
```
```
terraform plan
```
```
terraform apply
```
