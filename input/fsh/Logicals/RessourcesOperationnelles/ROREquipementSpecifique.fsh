Logical: ROREquipementSpecifique
Parent: $MOS-EquipementSpecifique
Id: ror-equipement-specifique
Title: "ROR - Équipement Spécifique"
Description: "Spécialisation ROR de l'EquipementSpecifique du MOS. Ressource matérielle discriminante pour la réalisation d'une prestation, propre à la structure ou mise à disposition via convention (sur site)."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Équipement spécifique dans le contexte ROR"
* . ^definition = "Spécialisation ROR de l'EquipementSpecifique du MOS."

// Contraintes ROR sur éléments hérités du MOS
* typeEquipement 1..1
  * ^short = "Type d'équipement (obligatoire dans le ROR)"
* typeEquipement from $TRE-R212-Equipement (required)

// Élément additionnel propre au ROR
* metadonnee 1..1 https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee "Informations relatives à la gestion des données de l'équipement dans le ROR." "Informations relatives à la gestion des données de l'équipement dans le ROR."
