# A template chart to deploy a R Shiny app on the SSP Cloud

## Ajouter les secrets pour docker hub

Pour déployer l'image docker sur docker hub il faut ajouter les secrets suivant sur github :

- DOCKERHUB_USERNAME
- DOCKERHUB_TOKEN

Voir [ici](https://github.com/InseeFrLab/sspcloud-tutorials/blob/0aefa133cb4ed105a43f5fd807dba5d188547a3a/deployment/shiny-app.md#int%C3%A9gration-continue-ci) pour créer les secrets Github et les tokens Dockerhub

## values.yaml

Ce fichier vous permet de définir le nom de l'image sur Dockerhub et l'url de votre app

## Ajouter une shiny app

- ajouter le dossier de l'app dans app/shiny (elle sera disponible dans l'url définie dans values.yaml => https://exposition-inserjeunes.lab.sspcloud.fr/app/MON_APP)
- un fichier `DESCRIPTION` est nécessaire, il faut définir les dépendances de l'app à l'intérieur

## Deployer sur le SSP cloud

- Sur Github dans Actions => Deploy shiny App
- Cliqué sur "Run workflow", entrez votre username et votre "refresh-token" k8s (Voir [https://datalab.sspcloud.fr/account/k8sCodeSnippets])
