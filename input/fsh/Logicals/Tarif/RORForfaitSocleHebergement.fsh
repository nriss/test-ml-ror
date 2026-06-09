Logical: RORForfaitSocleHebergement
Parent: https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif
Id: ror-forfait-socle-hebergement
Title: "ROR - Forfait Socle Hébergement"
Description: "Tarif journalier et par personne (majoritairement appliqué par l'établissement) pour un type d'hébergement donné. Inclut obligatoirement les prestations définies dans le décret n°2015-1868. Ce tarif peut être modulable pour les personnes bénéficiaires de l'aide sociale."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Forfait socle hébergement"
* . ^definition = "Tarif journalier et par personne pour un type d'hébergement donné, incluant les prestations minimales réglementaires."

* prestationsNonObligatoiresIncluses 0..* Coding "Service(s) non obligatoires inclus dans les prestations." "Service(s) non obligatoires inclus dans les prestations."
* prestationsNonObligatoiresIncluses from $TRE-R264-PrestationNonObligatoireIncluse (required)
* autresPrestationsNonObligatoiresIncluses 0..* string "Autres prestations incluses dans le tarif socle hébergement, non proposées dans la nomenclature." "Autres prestations incluses dans le tarif socle hébergement, non proposées dans la nomenclature."
* tarifMoins60Ans 1..1 boolean "Indicateur précisant que le tarif hébergement est spécifiquement appliqué aux personnes de moins de 60 ans. false = 60 ans et plus ; true = moins de 60 ans." "Indicateur précisant que le tarif hébergement est spécifiquement appliqué aux personnes de moins de 60 ans."
* typeHabitation 1..1 Coding "Précise les caractéristiques de l'hébergement." "Précise les caractéristiques de l'hébergement."
* typeHabitation from $TRE-R242-TypeHabitation (required)
* conditionTarifaire 0..1 Coding "Condition tarifaire précisant les conditions d'accès à un tarif, modulées en fonction des critères relatifs à la personne." "Condition tarifaire précisant les conditions d'accès à un tarif, modulées en fonction des critères relatifs à la personne."
* conditionTarifaire from $TRE-R250-ConditionTarifaire (required)
* temporaliteAccueil 1..1 Coding "Le tarif peut s'appliquer à un hébergement permanent ou à un hébergement temporaire (90 jours maximum par an)." "Le tarif peut s'appliquer à un hébergement permanent ou à un hébergement temporaire (90 jours maximum par an)."
* temporaliteAccueil from $TRE-R240-TemporaliteAccueil (required)
