Logical: ROREntiteJuridique
Parent: $MOS-EntiteJuridique
Id: ror-entite-juridique
Title: "ROR - Entité Juridique"
Description: "Spécialisation ROR de l'EntiteJuridique du MOS. Correspond à la notion de personne morale dans le contexte du Répertoire Opérationnel des Ressources."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Entité juridique dans le contexte ROR"
* . ^definition = "Spécialisation ROR de l'EntiteJuridique du MOS. Correspond à la notion de personne morale dans le contexte du Répertoire Opérationnel des Ressources."

// Contraintes ROR sur éléments hérités du MOS
* idNatStruct 1..1
  * ^short = "Identification nationale de l'EJ (obligatoire dans le ROR)"
* raisonSociale 1..1
  * ^short = "Raison sociale complète de l'entité juridique (obligatoire dans le ROR)"
* statutJuridique 1..1
  * ^short = "Statut juridique de l'entité juridique (obligatoire dans le ROR)"
* statutJuridique from $TRE-R72-FinessStatutJuridique (required)
* agregatStatutJuridiqueNiv2 0..1
  * ^short = "Sous-ensemble d'agrégat de statut juridique (sousEnsembleAgregatStatutJuridique)"
* agregatStatutJuridiqueNiv2 from $TRE-R69-FinessAgregatStatutJuridiqueNiv2 (required)
* typeFermeture from $TRE-R286-TypeFermeture (required)

// Élément additionnel propre au ROR
* metadonnee 1..1 https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee "Informations relatives à la gestion des données de l'entité juridique dans le ROR." "Informations relatives à la gestion des données de l'entité juridique dans le ROR."
