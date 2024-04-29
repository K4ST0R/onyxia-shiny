# A template chart to deploy a R Shiny app on the SSP Cloud

## Ajouter les secrets pour docker hub

Pour déployer l'image docker sur docker hub il faut ajouter les secrets suivant sur github :

- DOCKERHUB_USERNAME
- DOCKERHUB_TOKEN

Voir [ici](https://github.com/InseeFrLab/sspcloud-tutorials/blob/0aefa133cb4ed105a43f5fd807dba5d188547a3a/deployment/shiny-app.md#int%C3%A9gration-continue-ci)

## Ajouter une shiny app

- ajouter le dossier de l'app dans app/shiny (elle sera disponible dans l'url définie dans values.yaml => https://exposition-inserjeunes.lab.sspcloud.fr/app/MON_APP)
- un fichier DESCRIPTION est nécessaire, il faut définir les dépendances à l'intérieur

## Deployer sur le cloud

- Sur Github dans Actions => Deploy shiny App
- Cliqué sur "Run workflow", entrez votre username et votre "refresh-token" k8s (Voir [https://datalab.sspcloud.fr/account/k8sCodeSnippets])
