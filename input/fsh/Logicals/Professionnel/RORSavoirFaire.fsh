Logical: RORSavoirFaire
Parent: $MOS-SavoirFaire
Id: ror-savoir-faire
Title: "ROR - Savoir-Faire"
Description: "Spécialisation ROR du SavoirFaire du MOS. Prérogatives d'exercice d'un professionnel reconnues par une autorité d'enregistrement (spécialités, compétences, etc.)."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Savoir-faire d'un professionnel dans le contexte ROR"
* . ^definition = "Spécialisation ROR du SavoirFaire du MOS."

// Contraintes ROR sur éléments hérités du MOS
* typeSavoirFaire 1..1
  * ^short = "Type de savoir-faire (obligatoire dans le ROR)"
* typeSavoirFaire from $TRE-R04-TypeSavoirFaire (required)

// Élément additionnel propre au ROR
* metadonnee 1..1 https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee "Informations relatives à la gestion des données du savoir-faire dans le ROR." "Informations relatives à la gestion des données du savoir-faire dans le ROR."
