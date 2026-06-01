Logical: RorOffreOperationnelle
Parent: https://interop.esante.gouv.fr/ig/mos/StructureDefinition/OffreOperationnelle
Id: ror-offre-operationnelle
Title: "ROR - Offre Opérationnelle"
Description: "Spécialisation ROR du modèle MOS OffreOperationnelle. Ajoute des éléments propres au Répertoire de l'Offre de soins et des Ressources."

* ^status = #draft
* ^experimental = true

// Éléments hérités du MOS contraints pour le ROR
* identifiantOffre 1..1
  * ^short = "Identifiant unique de l'offre dans le ROR"
* nomOffre 1..1
  * ^short = "Nom de l'offre tel qu'affiché dans le ROR"
* typeOffre 1..1
  * ^short = "Type d'offre (ex : soins, médico-social)"
* champActivite 1..1
  * ^short = "Champ d'activité principal de l'offre"
* modePriseEnCharge 1..*
  * ^short = "Mode(s) de prise en charge proposé(s)"

// Éléments additionnels propres au ROR
* dateOuverture 0..1 date "Date d'ouverture de l'offre"
  * ^short = "Date à partir de laquelle l'offre est active dans le ROR"
* dateFermeture 0..1 date "Date de fermeture de l'offre"
  * ^short = "Date à partir de laquelle l'offre n'est plus active"
* entiteGeographique 1..1 Reference(RorEntiteGeographique) "Entité géographique où l'offre est réalisée"
  * ^short = "Lieu de réalisation de l'offre"
* organisationInterne 0..1 Reference(RorOrganisationInterne) "Organisation interne porteuse de l'offre"
  * ^short = "Pôle, service ou unité qui porte l'offre"
* tarifInformation 0..1 string "Information tarifaire"
  * ^short = "Information sur les tarifs pratiqués (texte libre)"
