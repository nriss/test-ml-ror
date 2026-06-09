Logical: RORCapacitePriseCharge
Parent: $MOS-CapacitePriseCharge
Id: ror-capacite-prise-charge
Title: "ROR - Capacité de Prise en Charge"
Description: "Spécialisation ROR de la CapacitePriseCharge du MOS. Indique l'affectation des lits d'une zone d'hébergement, notamment dans le cadre d'une gestion de crise."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Capacité de prise en charge dans le contexte ROR"
* . ^definition = "Spécialisation ROR de la CapacitePriseCharge du MOS."

// Contraintes ROR sur éléments hérités du MOS
* affectationTemporaire 1..1
  * ^short = "Affectation temporaire des lits (obligatoire dans le ROR)"
* affectationTemporaire from $TRE-R337-AffectationTemporaire (required)

// Élément additionnel propre au ROR
* commentaire 0..1 string "Commentaire permettant de donner des indications complémentaires sur les informations capacitaires." "Commentaire permettant de donner des indications complémentaires sur les informations capacitaires."
* metadonnee 1..1 https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee "Informations relatives à la gestion des données de la capacité dans le ROR." "Informations relatives à la gestion des données de la capacité dans le ROR."
