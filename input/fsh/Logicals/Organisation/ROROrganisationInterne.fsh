Logical: ROROrganisationInterne
Parent: $MOS-OrganisationInterne
Id: ror-organisation-interne
Title: "ROR - Organisation Interne"
Description: "Spécialisation ROR de l'OrganisationInterne du MOS. Classe abstraite décrivant l'organisation opérationnelle interne d'une EG (pôles, services, unités fonctionnelles)."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Organisation interne d'un établissement dans le contexte ROR"
* . ^definition = "Spécialisation ROR de l'OrganisationInterne du MOS. Classe abstraite décrivant l'organisation opérationnelle interne d'une EG."

// Contraintes ROR sur éléments hérités du MOS
* identifiantOI 1..1
  * ^short = "Identifiant de l'organisation interne (obligatoire dans le ROR, format : codeINSEE/identifiant)"
* nomOI 1..1
  * ^short = "Nom de l'organisation interne (obligatoire dans le ROR)"
* typeOI 1..1
  * ^short = "Type d'organisation interne (obligatoire dans le ROR)"
* typeOI from $TRE-R207-TypeOrganisationInterne (required)
* typeFermeture from $JDV-J185-typeFermeture-ROR (required)

// Élément additionnel propre au ROR
* metadonnee 1..1 https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee "Informations relatives à la gestion des données de l'organisation interne dans le ROR." "Informations relatives à la gestion des données de l'organisation interne dans le ROR."
