Logical: RORProfessionnel
Parent: $MOS-Professionnel
Id: ror-professionnel
Title: "ROR - Professionnel"
Description: "Spécialisation ROR du Professionnel du MOS. Données d'identification pérennes d'une personne physique travaillant dans les domaines sanitaire, médico-social et social."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Professionnel de santé dans le contexte ROR"
* . ^definition = "Spécialisation ROR du Professionnel du MOS."

// Contraintes ROR sur éléments hérités du MOS
* idNatPS 1..1
  * ^short = "Identification nationale du professionnel (obligatoire dans le ROR)"

// Élément additionnel propre au ROR
* metadonnee 1..1 https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee "Informations relatives à la gestion des données du professionnel dans le ROR." "Informations relatives à la gestion des données du professionnel dans le ROR."
