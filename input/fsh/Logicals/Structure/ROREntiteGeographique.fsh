Logical: ROREntiteGeographique
Parent: $MOS-EntiteGeographique
Id: ror-entite-geographique
Title: "ROR - Entité Géographique"
Description: "Spécialisation ROR de l'EntiteGeographique du MOS. Correspond à un établissement ou lieu d'exercice dans le contexte du Répertoire Opérationnel des Ressources."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Entité géographique dans le contexte ROR"
* . ^definition = "Spécialisation ROR de l'EntiteGeographique du MOS. Correspond à un établissement ou lieu d'exercice dans le contexte du Répertoire Opérationnel des Ressources."

// Contraintes ROR sur éléments hérités du MOS
* idNatStruct 1..1
  * ^short = "Identification nationale de l'EG (obligatoire dans le ROR)"
* denominationEG 1..1
  * ^short = "Dénomination de l'entité géographique (obligatoire dans le ROR)"
* categorieEtablissement 1..1
  * ^short = "Catégorie d'établissement (categorieEG dans le modèle ROR)"
* categorieEtablissement from $JDV-J55-CategorieEG-ROR (required)
* modaliteParticipationSPH from $TRE-R73-ESPIC (required)
* accessibiliteLieu from $TRE-R202-AccessibiliteLieu (required)
* niveauRecoursORSAN from $TRE-R284-NiveauRecoursORSAN (required)
* aideFinanciere from $TRE-R241-AideFinanciere (required)
* typeFermeture from $TRE-R286-TypeFermeture (required)

// Éléments additionnels propres au ROR
* territoireSante 0..* $MOS-DivisionTerritoriale "Territoire(s) de santé où est située l'entité géographique. Doit être une division territoriale de type Territoire de Santé." "Territoire(s) de santé où est située l'entité géographique. Doit être une division territoriale de type Territoire de Santé."
* metadonnee 1..1 https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee "Informations relatives à la gestion des données de l'entité géographique dans le ROR." "Informations relatives à la gestion des données de l'entité géographique dans le ROR."
