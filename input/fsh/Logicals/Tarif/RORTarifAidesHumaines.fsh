Logical: RORTarifAidesHumaines
Parent: https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif
Id: ror-tarif-aides-humaines
Title: "ROR - Tarif Aides Humaines"
Description: "Tarif horaire ou forfaitaire (avec charges) des intervenants à domicile."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Tarif aides humaines à domicile"
* . ^definition = "Tarif horaire ou forfaitaire (avec charges) des intervenants à domicile."

* nomTarifAidesHumaines 0..1 string "Nom du tarif aides humaines." "Nom du tarif aides humaines."
* conditionTarifaire 0..1 Coding "Condition tarifaire précisant les conditions d'accès à un tarif, modulées en fonction des critères relatifs à la personne." "Condition tarifaire précisant les conditions d'accès à un tarif, modulées en fonction des critères relatifs à la personne."
* conditionTarifaire from $TRE-R250-ConditionTarifaire (required)
* modeGestion 1..1 Coding "Mode de gestion indiquant le mode d'intervention des aides à domicile en fonction de la nature de la relation contractuelle (prestataire, mandataire)." "Mode de gestion indiquant le mode d'intervention des aides à domicile en fonction de la nature de la relation contractuelle (prestataire, mandataire)."
* modeGestion from $TRE-R236-ModeGestion (required)
