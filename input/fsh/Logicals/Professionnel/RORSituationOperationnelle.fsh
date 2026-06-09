Logical: RORSituationOperationnelle
Parent: $MOS-SituationOperationnelle
Id: ror-situation-operationnelle
Title: "ROR - Situation Opérationnelle"
Description: "Spécialisation ROR de la SituationOperationnelle du MOS. Caractérise les conditions d'exercice du professionnel dans le cadre de l'offre décrite."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Situation opérationnelle d'un professionnel dans le contexte ROR"
* . ^definition = "Spécialisation ROR de la SituationOperationnelle du MOS."

// Contraintes ROR sur éléments hérités du MOS
* modeExerciceOffre 1..1
  * ^short = "Mode d'exercice du professionnel dans le cadre de l'offre (obligatoire dans le ROR)"
* modeExerciceOffre from $TRE-R23-ModeExercice (required)
* competenceSpecifique from $TRE-R243-CompetenceSpecifique (required)
* secteurConventionnement from $TRE-R282-CNAMAmeliSecteurConventionnement (required)

// Élément additionnel propre au ROR
* metadonnee 1..1 https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee "Informations relatives à la gestion des données de la situation opérationnelle dans le ROR." "Informations relatives à la gestion des données de la situation opérationnelle dans le ROR."
