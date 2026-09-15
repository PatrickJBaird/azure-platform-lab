# Lessons Learned

## Major Lessons

### Build Automation Incrementally
The most successful approach was validating one component at a time.

Order used:
1. Pipeline execution
2. Terraform installation
3. Terraform validation
4. Azure authentication
5. Terraform planning
6. Terraform deployment
7. Ansible connectivity
8. Configuration management
9. Service validation

### Treat Failures as Validation
Many of the errors encountered were not setbacks. They confirmed assumptions and helped isolate issues.

### Portable Infrastructure Matters
Removing workstation file dependencies significantly improved automation reliability.

### Git Fundamentals Matter
Branching, tagging, merging and repository recovery were just as important as the infrastructure itself.

### State Management Is Critical
Terraform state proved to be one of the most important parts of the solution.

## Professional Development Outcomes

This project provided practical experience in:
- Terraform
- Azure
- Azure DevOps
- Git Workflows
- Ansible
- CI/CD
- Deployment Governance
- Secure Credential Handling
- Troubleshooting Methodology
