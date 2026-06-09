Logical: RORExerciceProfessionnel
Parent: $MOS-ExerciceProfessionnel
Id: ror-exercice-professionnel
Title: "ROR - Exercice Professionnel"
Description: "Spécialisation ROR de l'ExerciceProfessionnel du MOS. Informations décrivant la profession exercée et l'identité d'exercice d'un professionnel."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Exercice professionnel dans le contexte ROR"
* . ^definition = "Spécialisation ROR de l'ExerciceProfessionnel du MOS."

// Contraintes ROR sur éléments hérités du MOS
* nomExercice 1..1
  * ^short = "Nom sous lequel exerce le professionnel (obligatoire dans le ROR)"
* profession 1..1
  * ^short = "Profession exercée (obligatoire dans le ROR)"
* profession from $TRE-G15-ProfessionSante (required)
* civiliteExercice from $TRE-R11-CiviliteExercice (required)

// Élément additionnel propre au ROR
* metadonnee 1..1 https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee "Informations relatives à la gestion des données d'exercice professionnel dans le ROR." "Informations relatives à la gestion des données d'exercice professionnel dans le ROR."
