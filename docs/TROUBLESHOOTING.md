# Troubleshooting Reference

## Git Issues

### Incorrect Remote
Symptom:
GitHub not receiving commits.

Validation:
```bash
git remote -v
```

Resolution:
Correct the origin remote.

---

### Locked Git Objects
Symptom:
Deletion of .git object failed.

Resolution:
Retry operation and close processes holding locks.

---

## Terraform Issues

### Missing Variable
Symptom:
No value for required variable.

Resolution:
Pass variables through TF_VAR_* variables.

### State Lock
Symptom:
State blob is already locked.

Resolution:
Verify no active operation exists then use:

```bash
terraform force-unlock <lockid>
```

---

## Azure DevOps Issues

### Missing TerraformInstaller
Resolution:
Download Terraform during pipeline runtime.

### Unexpected Property Stage
Resolution:
Convert pipeline to full multi-stage YAML.

---

## Ansible Issues

### Missing SSH Key
Resolution:
Store private keys in Azure DevOps Secure Files.

### Inventory Management
Resolution:
Generate inventory dynamically using Terraform outputs.
