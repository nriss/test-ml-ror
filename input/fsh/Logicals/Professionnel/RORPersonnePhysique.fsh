Logical: RORPersonnePhysique
Parent: $MOS-PersonnePhysique
Id: ror-personne-physique
Title: "ROR - Personne Physique"
Description: "Spécialisation ROR de la PersonnePhysique du MOS. Individu titulaire de droits et d'obligations caractérisé par une identité civile, dans le contexte ROR."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Personne physique dans le contexte ROR"
* . ^definition = "Spécialisation ROR de la PersonnePhysique du MOS."

// Contraintes ROR sur éléments hérités du MOS
* civilite from $TRE-R81-Civilite (required)

// Élément additionnel propre au ROR
* metadonnee 1..1 https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee "Informations relatives à la gestion des données de la personne physique dans le ROR." "Informations relatives à la gestion des données de la personne physique dans le ROR."
