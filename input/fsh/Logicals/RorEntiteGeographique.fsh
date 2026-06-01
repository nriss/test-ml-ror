Logical: RorEntiteGeographique
Parent: https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteGeographique
Id: ror-entite-geographique
Title: "ROR - Entité Géographique"
Description: "Spécialisation ROR du modèle MOS EntiteGeographique. Ajoute des éléments de géolocalisation et de contact opérationnel propres au ROR."

* ^status = #draft
* ^experimental = true

// Éléments hérités du MOS contraints pour le ROR
* identifiantEG 1..1
  * ^short = "Identifiant national de l'entité géographique dans le ROR"
* nomOperationnel 1..1
  * ^short = "Nom opérationnel affiché dans le ROR"
* secteurActivite 1..1
  * ^short = "Secteur d'activité principal de l'entité"
* categorieEtablissement 0..1
  * ^short = "Catégorie d'établissement (MCO, SSR, PSY, etc.)"

// Éléments additionnels propres au ROR
* coordonneesGeographiques 0..1 BackboneElement "Coordonnées GPS de l'entité"
  * ^short = "Géolocalisation pour l'affichage cartographique"
  * latitude 1..1 decimal "Latitude"
  * longitude 1..1 decimal "Longitude"
* accessibilitePMR 0..1 boolean "Accessibilité pour les personnes à mobilité réduite"
  * ^short = "Indique si l'entité est accessible aux PMR"
* horairesAccueil 0..1 string "Horaires d'accueil administratif"
  * ^short = "Horaires d'ouverture du secrétariat / accueil (texte libre)"
* telephoneContact 0..1 string "Numéro de téléphone principal"
  * ^short = "Téléphone de contact pour les usagers"
* organisationsInternes 0..* Reference(RorOrganisationInterne) "Organisations internes de cette entité"
  * ^short = "Liste des pôles, services et unités rattachés à cette entité"
