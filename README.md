# personal-server

# New Hetzner Online Bare Metal machine steps:
- installimage to CentOS Stream 10 image with RAID turned off
```bash
dnf update -y;
dnf install system-reinstall-bootc -y;
system-reinstall-bootc ghcr.io/saikatdas0790/hetzner-sia-experiment:latest;
```