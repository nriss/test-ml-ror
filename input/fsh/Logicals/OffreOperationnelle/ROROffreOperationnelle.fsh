Logical: ROROffreOperationnelle
Parent: $MOS-OffreOperationnelle
Id: ror-offre-operationnelle
Title: "ROR - Offre Opérationnelle"
Description: "Spécialisation ROR de l'OffreOperationnelle du MOS. Correspond aux prestations que peut réaliser une structure pour répondre au besoin de santé d'une personne dans le contexte ROR."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Offre opérationnelle dans le contexte ROR"
* . ^definition = "Spécialisation ROR de l'OffreOperationnelle du MOS."

// Contraintes ROR sur éléments hérités du MOS
* identifiantOffre 1..1
  * ^short = "Identifiant de l'offre (obligatoire dans le ROR, format : codeINSEE/identifiant)"
* champActivite 1..1
  * ^short = "Champ d'activité principal de l'offre (obligatoire dans le ROR)"
* champActivite from $TRE-R227-ChampActivite (required)
* modePriseEnCharge 1..1
  * ^short = "Mode de prise en charge (obligatoire dans le ROR)"
* modePriseEnCharge from $TRE-R213-ModePriseEnCharge (required)
* uniteSensible 1..1
  * ^short = "Indicateur de confidentialité de l'offre (obligatoire dans le ROR)"
* typeOffre from $JDV-J238-TypeOffre-ROR (required)
* temporaliteAccueil from $TRE-R240-TemporaliteAccueil (required)
* modaliteAccueil from $TRE-R338-ModaliteAccueil (required)
* modeGestion from $TRE-R236-ModeGestion (required)
* acteSpecifique from $TRE-R210-ActeSpecifique (required)
* acteRealiseHorsCabinet from $TRE-R210-ActeSpecifique (required)
* specialisationPriseEnCharge from $TRE-R245-SpecialisationDePriseEnCharge (required)
* ouvertureAnnuelle from $TRE-R238-OuvertureAnnuelle (required)
* professionRessource from $JDV-J186-ProfessionRessource-ROR (required)
* competenceSpecifique from $TRE-R243-CompetenceSpecifique (required)
* niveauExpertise from $JDV-J227-NiveauExpertise-ROR (required)
* typeFermeture from $JDV-J185-typeFermeture-ROR (required)

// Élément additionnel propre au ROR
* metadonnee 1..1 https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee "Informations relatives à la gestion des données de l'offre opérationnelle dans le ROR." "Informations relatives à la gestion des données de l'offre opérationnelle dans le ROR."
