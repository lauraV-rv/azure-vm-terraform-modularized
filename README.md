# Modularized Azure VM with Terraform

This repository contains the infrastructure as code required to deploy a Linux virtual machine in Azure using Terraform, following a modularized structure.

## Objective

The objective of this project is to create a virtual machine in Azure with Terraform, separating the configuration into modules to make the code easier to organize, reuse, and maintain.

Additionally, the virtual machine meets the following requirements:

- Deployment in Azure
- Remote access through SSH
- Authentication using username and password
- Infrastructure organized in modules

## Project Structure

```text
azure-vm-terraform-modularized/
├── .gitignore
├── main.tf
├── outputs.tf
├── variables.tf
└── modules/
    ├── resource_group/
    │   ├── main.tf
    │   ├── outputs.tf
    │   └── variables.tf
    ├── network/
    │   ├── main.tf
    │   ├── outputs.tf
    │   └── variables.tf
    └── vm/
        ├── main.tf
        ├── outputs.tf
        └── variables.tf

```
## Module Description
1. resource_group: This module creates the Azure Resource Group where all other resources are deployed.

2. network: This module creates the network infrastructure required for the virtual machine, including:

3. vm: This module creates the Linux virtual machine in Azure with the following characteristics:

- Ubuntu image
- Configurable VM size
- Administrator username
- Password-based authentication
- Association with the network interface created in the network module

## Prerequisites

Before running this project, the following tools must be installed:

- Terraform
- Azure CLI

You must also log in to Azure using:
```text
az login
```
## Main Variables

The main variables used in this project are:

- prefix: prefix used to name the resources
- location: Azure region
- vm_size: virtual machine size
- admin_username: VM administrator username
- admin_password: VM administrator password

## Project Execution

1. Initialize Terraform
```text
terraform init
```
3. Validate the configuration
```text
terraform validate
```
5. Generate the execution plan
```text
terraform plan -out main.tfplan
```
7. Apply the infrastructure
```text
terraform apply "main.tfplan"
```

## Expected Outputs

After running the project, Terraform displays outputs such as:

- resource_group_name
- public_ip
- ssh_command
- vm_name

These outputs allow you to identify the resource group, the assigned public IP address, and the SSH command needed to connect to the virtual machine.

## Connecting to the Virtual Machine

Once the infrastructure has been deployed, the connection can be established with:
```text
ssh username@PUBLIC_IP
```

