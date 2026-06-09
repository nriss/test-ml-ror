Logical: RORCapaciteHabitation
Parent: $MOS-CapaciteHabitation
Id: ror-capacite-habitation
Title: "ROR - Capacité d'Habitation"
Description: "Spécialisation ROR de la CapaciteHabitation du MOS. Décrit un type d'habitation adapté à la réalisation d'une offre et le nombre d'habitations associées."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Capacité d'habitation dans le contexte ROR"
* . ^definition = "Spécialisation ROR de la CapaciteHabitation du MOS."

// Contraintes ROR sur éléments hérités du MOS
* typeHabitation 1..1
  * ^short = "Type d'habitation (obligatoire dans le ROR)"
* typeHabitation from $TRE-R242-TypeHabitation (required)

// Élément additionnel propre au ROR
* metadonnee 1..1 https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee "Informations relatives à la gestion des données de la capacité d'habitation dans le ROR." "Informations relatives à la gestion des données de la capacité d'habitation dans le ROR."
