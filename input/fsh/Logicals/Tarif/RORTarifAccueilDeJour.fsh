Logical: RORTarifAccueilDeJour
Parent: https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif
Id: ror-tarif-accueil-de-jour
Title: "ROR - Tarif Accueil de Jour"
Description: "Tarif journalier et par personne appliqué par l'établissement pour un accueil de jour."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Tarif accueil de jour"
* . ^definition = "Tarif journalier et par personne appliqué par l'établissement pour un accueil de jour."

* conditionTarifaire 0..1 Coding "Condition tarifaire précisant les conditions d'accès à un tarif, modulées en fonction des critères relatifs à la personne." "Condition tarifaire précisant les conditions d'accès à un tarif, modulées en fonction des critères relatifs à la personne."
* conditionTarifaire from $TRE-R250-ConditionTarifaire (required)
