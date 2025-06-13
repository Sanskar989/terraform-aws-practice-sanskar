

# Terraform Assignment – Provisioning Your First AWS S3 Bucket


## Architecture Diagram

![ChatGPT Image Jun 13, 2025, 06_42_30 PM](https://github.com/user-attachments/assets/ee342b23-cd77-4ae1-b8de-fd980dd5639a)


---

## Part 1: The Basics – Provisioning Your First Resource

### Step 1: Setting Up Your Workspace





---

### Step 2: Configuring the AWS Provider


**How:**
Open `main.tf` in your code editor and add:

```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
```

---

### Step 3: Defining Your First Resource (An S3 Bucket)


---

### Step 4: The Core Terraform Workflow (Init, Plan, Apply)



1. **Initialize:**

   ```bash
   terraform init
   ```


2. **Plan:**

   ```bash
   terraform plan
   ```

   

3. **Apply:**

   ```bash
   terraform apply
   ```



---

## Screenshots


![Screenshot 2025-06-12 141705](https://github.com/user-attachments/assets/689ef9a3-6509-4bf4-856f-cfde46d2c88e)



  ```bash
  terraform destroy
  ```


# Terraform: Deploying a Web Server in a Custom AWS VPC (ON-CLASS ASSINGMENT)

---

## Architecture Diagram
![ChatGPT Image Jun 13, 2025, 07_05_36 PM](https://github.com/user-attachments/assets/a130dc96-c2a2-4c97-82d7-eabdcb19225e)

---

## What This Does

This setup will **automatically create a new VPC, public subnet, internet gateway, and deploy an EC2 instance running a web server**—all from code using Terraform.

---

## Quick Steps

| Step | What You'll Execute (One Liner)                        |
| ---- | ------------------------------------------------------ |
| 1    | Initialize Terraform and download AWS plugins          |
| 2    | Review the plan for infrastructure changes             |
| 3    | Apply and provision all AWS resources                  |
| 4    | Grab the public IP output to access your web server    |
| 5    | Test your deployment in a browser and with screenshots |
| 6    | (Optional) Destroy everything to avoid AWS charges     |

---

## Step-by-Step

### 1. Initialize Terraform

`terraform init`

> *Sets up Terraform for your project directory*
> ![init screenshot](images/init.png)

---

### 2. Preview the Plan

`terraform plan`

> *Shows what will be created/changed before making any changes*

---

### 3. Apply and Build

`terraform apply`

> *Creates all defined AWS resources. Type `yes` when prompted.*


---

### 4. Check the Output

`terraform output instance_public_ip`



---
![Screenshot 2025-06-13 012253](https://github.com/user-attachments/assets/a0193997-92c8-4104-a377-f80c9fb40fcc)

![Screenshot 2025-06-13 012302](https://github.com/user-attachments/assets/c0b30703-3296-4e00-b68c-7dcc2d33a4ad)

![Screenshot 2025-06-13 012311](https://github.com/user-attachments/assets/bdd53989-63c9-4bcc-9766-4f5de2f9854e)

![Screenshot 2025-06-13 012354](https://github.com/user-attachments/assets/cda62349-b578-456c-a4f7-d99fc26c1756)

![Screenshot 2025-06-13 012228](https://github.com/user-attachments/assets/3c7bd7f0-7228-4e57-86af-2e8fd74e8e66)

![Screenshot 2025-06-13 012157](https://github.com/user-attachments/assets/ecbf7309-ec13-41bc-a878-06abb76f62b6)

![Screenshot 2025-06-13 012148](https://github.com/user-attachments/assets/112fded5-7be4-46d9-9c28-703dde53f9f7)

![Screenshot 2025-06-13 012113](https://github.com/user-attachments/assets/3bbb154e-0ddf-444f-99f9-744b17f9a29b)


### 5. Verify Deployment



> **Hello World from Terraform!**

![Screenshot 2025-06-13 012113](https://github.com/user-attachments/assets/98614d07-81b7-42d2-916e-4f2a92fc5170)

---

### 6. Cleanup (Destroy Resources)

`terraform destroy`

![Screenshot 2025-06-13 013128](https://github.com/user-attachments/assets/e32acb3f-89fd-4392-b519-0f237d1325d6)


---

## What You Should See

* **Architecture diagram** matching your AWS resources
* **Terraform outputs** with the EC2 public IP
* **Browser screenshot** with "Hello World from Terraform!"
* **AWS Console screenshots** showing your new VPC, subnet, EC2 instance, and security group

---

## Notes

* **Always clean up** with `terraform destroy` to avoid AWS charges.
* Make sure your AWS credentials are set up (`aws configure`) before running Terraform.

---

# Assignment 1: Deploy a Static Website on AWS S3 with Terraform (TAKE HOME ASSINGMENTS)

---

## 📝 **Overview**

In this assignment, you’ll provision everything needed to deploy a **static HTML website** on AWS S3 using Terraform.
You’ll learn about S3, bucket policies, public access, and website hosting—all managed with code!

---

## 📦 **Directory Structure**

```
assignment-01-s3-static-website/
├── index.html
├── main.tf
├── variables.tf
├── outputs.tf
└── (add screenshots in an /images folder)
```

---

## 🚀 **Quick Steps**

| Step | Command/Action                       | What Happens                           |
| ---- | ------------------------------------ | -------------------------------------- |
| 1    | `terraform init`                     | Set up Terraform and provider plugins  |
| 2    | `terraform plan`                     | Preview what will be created           |
| 3    | `terraform apply`                    | Deploy S3 bucket and upload HTML       |
| 4    | *Copy website endpoint from output*  | Get your website URL                   |
| 5    | *Visit the endpoint in your browser* | See your live static website!          |
| 6    | `terraform destroy` (when done)      | Remove everything to avoid AWS charges |

---

## ⚙️ **Expected Output**

* **Terraform Output:**
  The public S3 website URL (endpoint).
  
* **Browser:**
  You should see your HTML page:
  *“This website was deployed using Terraform! Assignment 1 is a success.”*

---

## 🖼️ **Screenshots**

> Replace these with your own images for submission:

1. **Terraform Apply Output**
 ![Screenshot 2025-06-13 101746](https://github.com/user-attachments/assets/c4511fd1-8922-4ff3-8843-5995aa9b5057)


2. **Terraform Output Website Endpoint**
![Screenshot 2025-06-13 101850](https://github.com/user-attachments/assets/10c2ddf7-cf38-4976-9014-717353bde354)


3. **Static Website in Browser**
![Screenshot 2025-06-13 101826](https://github.com/user-attachments/assets/2ccaf554-2eee-4fdf-b9cd-95337cb486c4)




---

## 🛑 **Cleanup**

Don’t forget to run:

```bash
terraform destroy
```
![Screenshot 2025-06-13 102009](https://github.com/user-attachments/assets/f22e17ee-b1d9-4282-a80b-2a211f7d9c10)

![Screenshot 2025-06-13 102223](https://github.com/user-attachments/assets/9a6b50a9-d002-4f15-9e66-174630d30653)

This deletes your S3 bucket and all associated resources to avoid AWS costs.


---

# Assignment 2: Refactor the Web Server into a Reusable Terraform Module (TAKE HOME ASSINGMENTS)

---

## 📝 Overview

In this assignment, you’ll **modularize** your web server Terraform code!
By using a custom local module, you’ll keep your infrastructure code organized, DRY, and ready for reuse in any project.

---

## 📦 Directory Structure

```
assignment-02-reusable-webserver/
├── main.tf
├── variables.tf
├── outputs.tf
├── modules/
│   └── ec2_instance/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
└── images/
```

---

## 🚀 Quick Steps

| Step | What You'll Execute (One Liner)         |                                                 |
| ---- | --------------------------------------- | ----------------------------------------------- |
| 1    | `terraform init`                        | *Prepare Terraform and local module system*     |
| 2    | `terraform plan`                        | *Preview infrastructure & module instantiation* |
| 3    | `terraform apply`                       | *Deploy VPC, subnet, and EC2 via your module*   |
| 4    | `terraform output web_server_public_ip` | *Get the public IP for your new EC2 web server* |
| 5    | *Open browser to IP*                    | *See your running web server (Hello World!)*    |
| 6    | `terraform destroy`                     | *Clean up all resources and avoid charges*      |

---

## ⚙️ Expected Output

* **Terraform Output:**
  The EC2 instance’s public IP from the module.
* **Browser:**
  Open the public IP and see your web server’s “Hello World from Terraform!” page.

---

## 🖼️ Screenshots

> Upload your own screenshots here:

1. **Terraform Apply Output**
![Screenshot 2025-06-13 110000](https://github.com/user-attachments/assets/4b436c12-d90e-4fda-bd69-539f795254c7)
![Screenshot 2025-06-13 110019](https://github.com/user-attachments/assets/61fca07c-96f8-41e6-9516-a7cf47afbb51)
![Screenshot 2025-06-13 110028](https://github.com/user-attachments/assets/515eeb3f-16ab-414b-b3e2-67528049ed91)
![Screenshot 2025-06-13 110035](https://github.com/user-attachments/assets/ea8c81e5-40ec-4e4d-8563-502081daa928)
![Screenshot 2025-06-13 110041](https://github.com/user-attachments/assets/26331106-078b-46e1-8a47-ba750b6ed3c9)
![Screenshot 2025-06-13 110520](https://github.com/user-attachments/assets/dce8eef2-33fe-4c58-be4c-6b8a64087c4b)



2. **Terraform Output (Public IP)**
 ![Screenshot 2025-06-13 110115](https://github.com/user-attachments/assets/58afc097-eabd-40a4-ac3a-922e95c4625a)


3. **Web Server in Browser**
  ![Screenshot 2025-06-13 105921](https://github.com/user-attachments/assets/1f39a085-0992-47d0-af27-a4f6572619fa)


---

## 📂 What’s Inside

* **Root Configuration:**

  * `main.tf` – Networking (VPC, subnet, SG), and module call
  * `variables.tf` – Region, AMI, instance type, etc.
  * `outputs.tf` – Prints public IP from module

* **Module: `modules/ec2_instance/`**

  * `main.tf` – EC2 resource
  * `variables.tf` – Inputs: instance type, AMI, subnet, SGs, tags
  * `outputs.tf` – Outputs: instance ID, public IP

---

## 🛑 Cleanup

After verifying your server works, **run:**

```bash
terraform destroy
```
![Screenshot 2025-06-13 110520](https://github.com/user-attachments/assets/ad76c1f8-a6eb-405b-b95c-4523d97d6c9d)

This removes all resources created during the assignment.


---

**You’ve built reusable cloud infrastructure using Terraform—great job! 🚀**




---

> **Disclaimer:**
> The Terraform code for Assignment 3 is present and can be fully verified within the provided folder. However, due to **access permission issues (Access Denied errors on AWS)**, we were unable to complete the end-to-end deployment and verification steps for this assignment. All required configuration files and code logic are included for review, and the assignment can be completed if appropriate AWS access is provided.





