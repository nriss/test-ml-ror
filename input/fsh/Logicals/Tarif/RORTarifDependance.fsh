Logical: RORTarifDependance
Parent: https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif
Id: ror-tarif-dependance
Title: "ROR - Tarif Dépendance"
Description: "Tarif correspondant au niveau de dépendance de la personne âgée accueillie. Il y a 3 niveaux de tarifs selon le GIR."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Tarif dépendance selon le niveau GIR"
* . ^definition = "Tarif correspondant au niveau de dépendance de la personne âgée accueillie."

* groupeTarifaireDependance 1..1 Coding "Niveau de dépendance de la personne âgée accueillie associé à un tarif (3 niveaux selon le GIR)." "Niveau de dépendance de la personne âgée accueillie associé à un tarif (3 niveaux selon le GIR)."
* groupeTarifaireDependance from $TRE-R237-NiveauDependance (required)
* temporaliteAccueil 1..1 Coding "Le tarif peut s'appliquer à un hébergement permanent ou à un hébergement temporaire (90 jours maximum par an)." "Le tarif peut s'appliquer à un hébergement permanent ou à un hébergement temporaire (90 jours maximum par an)."
* temporaliteAccueil from $TRE-R240-TemporaliteAccueil (required)
