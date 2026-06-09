Logical: RORSupplementTarifHebergement
Parent: https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif
Id: ror-supplement-tarif-hebergement
Title: "ROR - Supplément Tarif Hébergement"
Description: "Caractéristiques des lieux d'hébergement en SSR qui entraînent le paiement d'un complément au tarif de base de l'hébergement."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Supplément au tarif d'hébergement (SSR)"
* . ^definition = "Caractéristiques des lieux d'hébergement en SSR qui entraînent le paiement d'un complément au tarif de base de l'hébergement."

* typeHabitation 1..1 Coding "Précise les caractéristiques de l'hébergement. Doit prendre la valeur chambre simple." "Précise les caractéristiques de l'hébergement. Doit prendre la valeur chambre simple."
* typeHabitation from $TRE-R242-TypeHabitation (required)
