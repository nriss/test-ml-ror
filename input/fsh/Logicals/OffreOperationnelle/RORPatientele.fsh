Logical: RORPatientele
Parent: $MOS-Patientele
Id: ror-patientele
Title: "ROR - Patientèle"
Description: "Spécialisation ROR de la Patientele du MOS. Ensemble de personnes répondant à des critères leur permettant de bénéficier de la prestation décrite."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Patientèle dans le contexte ROR"
* . ^definition = "Spécialisation ROR de la Patientele du MOS. Ensemble de personnes pouvant bénéficier de la prestation."

// Contraintes ROR sur éléments hérités du MOS
* ageMin 1..1
  * ^short = "Age minimum (inclus) pour bénéficier de la prestation (obligatoire dans le ROR)"
* ageMax 1..1
  * ^short = "Age maximum (inclus) pour bénéficier de la prestation (obligatoire dans le ROR)"
* publicPrisEnCharge from $TRE-R239-PublicPrisEnCharge (required)

// Élément additionnel propre au ROR
* metadonnee 1..1 https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee "Informations relatives à la gestion des données de la patientèle dans le ROR." "Informations relatives à la gestion des données de la patientèle dans le ROR."
