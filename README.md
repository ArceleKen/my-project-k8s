# Deploiement d'application via Kubernetes

## Se rassurer que les images des app sont dispos sur le repo

Notre cas c'est l'image de notre application back-admin

## Deploiement de la BD en Statefulset, en utilisant HELM (Gestionnaire de package pour K8S)

Notre SGBD c'est Postgresql 17

### Se rassurer que HELM est installé

### Ajouter un repo Helm (comme bitnami)

helm repo add bitnami https://charts.bitnami.com/bitnami

### Obtenir les valeurs configurables du Chart Helm dans un fichier YAML

helm show values bitnami/postgresql > postgresql.yaml

### Modifier ce fichier YAML à notre guise

### Installer en suite le chart

helm install -f postgresql.yaml postgresql bitnami/postgresql

### Suivre la creation du ReplicaSet

kubectl logs pod/postgresql-0 -f

### Ecrire le script bash de generation de secret

### Implémenter le fichier yaml de deploiement de l'application

Avant de lancer la config, créer le secret pour se connecter au container registry existe
kubectl create secret docker-registry docker-hub-secret \
 --docker-username=myusername \
 --docker-password=mypassword \
 --docker-email=myemail@example.com

### Créer le service de type ClusterIP pour ce pod

### Config l'objet Ingress de type nginx
