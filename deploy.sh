#!/bin/bash
# Aller dans le dossier infra
cd infra

# Initialiser Terraform
terraform init

# Appliquer la configuration Terraform
terraform apply -auto-approve
