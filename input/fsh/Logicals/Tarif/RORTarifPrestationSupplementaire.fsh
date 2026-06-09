Logical: RORTarifPrestationSupplementaire
Parent: https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif
Id: ror-tarif-prestation-supplementaire
Title: "ROR - Tarif Prestation Supplémentaire"
Description: "Tarifs des principales prestations supplémentaires qui ne sont pas comprises dans le tarif hébergement de l'établissement et qui peuvent avoir un impact sur l'orientation. Les attributs DOIVENT être mutuellement exclusifs."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Tarif d'une prestation supplémentaire hors tarif hébergement"
* . ^definition = "Tarifs des principales prestations supplémentaires qui ne sont pas comprises dans le tarif hébergement."

* nomAutrePrestationSupp 1..1 string "Nom du tarif d'une prestation supplémentaire." "Nom du tarif d'une prestation supplémentaire."
* nomPrestationSupp 0..1 Coding "Nom codé de la prestation supplémentaire. Mutuellement exclusif avec nomAutrePrestationSupp." "Nom codé de la prestation supplémentaire. Mutuellement exclusif avec nomAutrePrestationSupp."
* nomPrestationSupp from $TRE-R264-PrestationNonObligatoireIncluse (required)
