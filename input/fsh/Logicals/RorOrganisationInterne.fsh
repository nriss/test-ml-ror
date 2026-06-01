Logical: RorOrganisationInterne
Parent: Base
Id: ror-organisation-interne
Title: "ROR - Organisation Interne"
Description: "Modèle logique ROR représentant une organisation interne d'une structure de santé (pôle, service, unité fonctionnelle). Cette entité n'existe pas dans le MOS et est propre au ROR."

* ^status = #draft
* ^experimental = true

* identifiant 1..1 Identifier "Identifiant de l'organisation interne"
  * ^short = "Identifiant unique dans le ROR"
* nom 1..1 string "Nom de l'organisation interne"
  * ^short = "Libellé du pôle, service ou unité"
* type 1..1 Coding "Type d'organisation interne"
  * ^short = "Pôle | Service | Unité fonctionnelle | Unité de soins"
  * ^binding.description = "Type d'organisation interne ROR"
  * ^binding.strength = #extensible
* entiteGeographiqueRattachement 1..1 Reference(RorEntiteGeographique) "Entité géographique de rattachement"
  * ^short = "Entité géographique à laquelle appartient cette organisation"
* responsable 0..1 BackboneElement "Responsable de l'organisation"
  * ^short = "Professionnel responsable du pôle ou service"
  * nom 1..1 string "Nom du responsable"
  * prenom 0..1 string "Prénom du responsable"
  * rpps 0..1 string "Numéro RPPS du responsable"
* offres 0..* Reference(RorOffreOperationnelle) "Offres portées par cette organisation"
  * ^short = "Offres opérationnelles rattachées à cette organisation interne"
* dateMiseAJour 0..1 dateTime "Date de mise à jour de la fiche"
  * ^short = "Horodatage de la dernière modification dans le ROR"
