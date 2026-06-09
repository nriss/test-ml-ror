Logical: RORTarif
Parent: $Base
Id: ror-tarif
Title: "ROR - Tarif"
Description: "Classe abstraite contenant les attributs communs aux classes décrivant les prix des prestations et services fournis par l'établissement dans le contexte ROR. Un type de tarif s'applique à une catégorie de services pour lesquels l'entité géographique a fixé un prix."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Tarif d'une prestation ou d'un service (classe abstraite ROR)"
* . ^definition = "Classe abstraite contenant les attributs communs aux classes décrivant les prix des prestations et services dans le contexte ROR."

* typeTarif 1..1 Coding "Type de tarif (ex : Forfait socle hébergement). Catégorie de services pour lesquels l'entité géographique a fixé un prix." "Type de tarif (ex : Forfait socle hébergement). Catégorie de services pour lesquels l'entité géographique a fixé un prix."
* typeTarif from $TRE-R246-TypeTarif (required)
* montantTarif 1..1 Quantity "Montant du tarif des prestations et services. Prix en euros, majoritairement appliqué par l'établissement pour un service." "Montant du tarif des prestations et services. Prix en euros, majoritairement appliqué par l'établissement pour un service."
* unitePrix 1..1 Coding "Unité de référence pour évaluer le prix des prestations et services." "Unité de référence pour évaluer le prix des prestations et services."
* unitePrix from $TRE-R228-UnitePrix (required)
* dateDebutValiditeTarif 0..1 date "Dernière date de début de validité du tarif indiqué." "Dernière date de début de validité du tarif indiqué."
* metadonnee 1..1 https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee "Informations relatives à la gestion des données du tarif dans le ROR." "Informations relatives à la gestion des données du tarif dans le ROR."
