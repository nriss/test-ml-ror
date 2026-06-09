Logical: RORTarifPortageRepas
Parent: https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif
Id: ror-tarif-portage-repas
Title: "ROR - Tarif Portage Repas"
Description: "Tarif unitaire ou forfaitaire (avec charges) d'un service de livraison de repas à domicile. Les conditions tarifaires précisent s'il s'agit d'un tarif aide sociale."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Tarif de portage de repas à domicile"
* . ^definition = "Tarif unitaire ou forfaitaire d'un service de livraison de repas à domicile."

* conditionTarifaire 0..1 Coding "Condition tarifaire précisant les conditions d'accès à un tarif, modulées en fonction des critères relatifs à la personne." "Condition tarifaire précisant les conditions d'accès à un tarif, modulées en fonction des critères relatifs à la personne."
* conditionTarifaire from $TRE-R250-ConditionTarifaire (required)
* nomTarifPortageRepas 0..1 string "Nom du tarif de portage de repas." "Nom du tarif de portage de repas."
