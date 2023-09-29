#!/bin/bash
# Aller dans le dossier infra
cd infra

# Détruire la configuration Terraform
terraform destroy -auto-approve
9