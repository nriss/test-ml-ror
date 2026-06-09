Logical: RORCompetenceExclusive
Parent: $MOS-CompetenceExclusive
Id: ror-competence-exclusive
Title: "ROR - Compétence Exclusive"
Description: "Spécialisation ROR de la CompetenceExclusive du MOS. Compétence exercée à titre exclusif, incompatible avec l'exercice d'une spécialité."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Compétence exclusive dans le contexte ROR"
* . ^definition = "Spécialisation ROR de la CompetenceExclusive du MOS."

* competenceExclusive from $TRE-R40-CompetenceExclusive (required)
