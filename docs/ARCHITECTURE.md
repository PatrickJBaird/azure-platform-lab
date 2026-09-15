# Architecture

## Executive Summary

This project demonstrates a complete Azure Platform Engineering workflow using Terraform, Ansible, GitHub, and Azure DevOps. Infrastructure is provisioned through Infrastructure as Code, validated through CI/CD pipelines, protected by manual approval gates, configured through Ansible, and verified through automated testing.

## End-to-End Deployment Flow

```text
Developer
    ↓
GitHub
    ↓
Azure DevOps
    ↓
Terraform Format Check
    ↓
Terraform Validate
    ↓
Terraform Plan
    ↓
Manual Approval Gate
    ↓
Terraform Apply
    ↓
Terraform Outputs
    ↓
Dynamic Inventory Generation
    ↓
Secure SSH Key Retrieval
    ↓
Ansible Automation
    ↓
NGINX Deployment
    ↓
HTTP Validation
```

## Architecture Decisions

### Remote State
Terraform state is stored in Azure Blob Storage to enable:
- Centralised state management
- State locking
- Team collaboration
- Disaster recovery capability

### Approval Gates
Manual approval was implemented before Terraform Apply to:
- Reduce deployment risk
- Improve governance
- Demonstrate enterprise deployment practices

### Dynamic Inventory
Terraform outputs generate Ansible inventory automatically.
This removes hardcoded infrastructure dependencies.

### Secure File Storage
SSH private keys are stored in Azure DevOps Secure Files rather than source control.
