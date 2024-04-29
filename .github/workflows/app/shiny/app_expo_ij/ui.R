library(shiny)
library(shinygouv)
navbarPage_dsfr(
  title = "",
  id = "nav",
  header = header_dsfr(
    intitule = c("République","Française"),
    nom_site_service = "Exposition des données InserJeunes - Couvertures des catalogues",
    baseline = "https://documentation.exposition.inserjeunes.beta.gouv.fr/"
  ),
  # First tab
  navbarPanel_dsfr(
    title = "InserJeunes",
    fluidRow_dsfr(
      column_dsfr(
        0,
        fileInput_dsfr(inputId = "file1", label = "Ajouter des fichiers", message = "")
      )
    )
  )
  ,
  
  # Second tab
  navbarPanel_dsfr(
    title = "Les catalogues couverts",
    fluidRow_dsfr(
      column_dsfr(
        6,
        radioButtons_dsfr(
          inputId = "espece",
          label = "Especes",
          choices = c("Setosa" = "setosa", "Versicolor" = "versicolor"),
          class = NULL
        )
      ),
      column_dsfr(
        6,
        verbatimTextOutput(
          "output2"
        )
      )
    )
  )
)