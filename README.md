# Azure Platform Lab

Built an end-to-end Azure Infrastructure-as-Code platform using Terraform, Azure Blob Remote State, Ansible, GitHub, and Azure DevOps. Implemented CI/CD pipelines with Terraform validation, planning, manual approval gates, and automated deployments into Azure.

## Overview

This project demonstrates:

- Infrastructure as Code with Terraform
- Azure networking and security
- Linux virtual machine deployment
- Remote Terraform state in Azure Blob Storage
- Configuration management with Ansible
- NGINX deployment automation

## Architecture

Terraform provisions:

- Resource Group
- Virtual Network
- Subnet
- Network Security Group
- Public IP
- Ubuntu VM

Ansible configures:

- NGINX
- Linux package management

## Technologies

- Azure
- Terraform
- Ansible
- Git
- WSL2 Ubuntu

##Architecture Diagram

Git Repository
        │
        ▼
Terraform
        │
        ▼
Azure Blob Storage
(Remote State)
        │
        ▼
Resource Group
        │
        ▼
Virtual Network
        │
        ▼
Subnet
        │
        ▼
Network Security Group
        │
        ▼
Ubuntu VM
      ┌─┴─┐
      │   │
      ▼   ▼
 Ansible  Browser
      │
      ▼
    NGINX
