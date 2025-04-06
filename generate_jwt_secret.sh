#!/bin/bash

# Nom du secret Kubernetes
SECRET_NAME="jwt-secret"

# Génération de la clé secrète
SECRET_KEY=$(openssl rand -base64 32)

# Création du secret Kubernetes avec la clé générée
kubectl create secret generic $SECRET_NAME \
  --from-literal=jwt-secret-key=$SECRET_KEY 

echo "Secret $SECRET_NAME successfully created !"
