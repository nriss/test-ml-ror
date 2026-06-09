Logical: RORMetadonnee
Parent: $Base
Id: ror-metadonnee
Title: "ROR - Métadonnée"
Description: "Informations relatives à la gestion des classes et des données du ROR. Permet aux applications consommatrices de se synchroniser en identifiant les créations, modifications et suppressions d'objets."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Métadonnées de gestion et de synchronisation ROR"
* . ^definition = "Informations relatives à la gestion des classes et des données du ROR. Permet aux applications consommatrices de se synchroniser en identifiant les créations, modifications et suppressions d'objets."

* dateCreation 1..1 dateTime "Date de création de la plus ancienne donnée de l'objet." "Date de création de la plus ancienne donnée de l'objet."
* dateMiseJour 1..1 dateTime "Date de mise à jour de la dernière donnée mise à jour de l'objet." "Date de mise à jour de la dernière donnée mise à jour de l'objet."
* identifiant 0..1 Identifier "Identifiant technique permettant à un consommateur de réconcilier les données dans un contexte spécifique d'échange." "Identifiant technique permettant à un consommateur de réconcilier les données dans un contexte spécifique d'échange."
* commentaire 0..1 string "Commentaire associé à l'objet." "Commentaire associé à l'objet."
* regionSource 0..1 Coding "Code région de la source de la donnée." "Code région de la source de la donnée."
* regionSource from $JDV-J237-RegionOM-ROR (required)
* modeleSaisie 0..1 Identifier "Identifiant du modèle de saisie de l'objet ainsi que la version de ce modèle (format : identifiant modèle | version)." "Identifiant du modèle de saisie de l'objet ainsi que la version de ce modèle (format : identifiant modèle | version)."
