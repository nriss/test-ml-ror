# ROR - Situation Opérationnelle - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Modèle logique: ROR - Situation Opérationnelle 

 
Spécialisation ROR de la SituationOperationnelle du MOS. Caractérise les conditions d'exercice du professionnel dans le cadre de l'offre décrite. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-situation-operationnelle)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [SituationOperationnelle](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-SituationOperationnelle.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [SituationOperationnelle](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-SituationOperationnelle.html) 

** Résumé **

Obligatoire : 1 élément(1 élément obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [SituationOperationnelle](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-SituationOperationnelle.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [SituationOperationnelle](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-SituationOperationnelle.html) 

** Résumé **

Obligatoire : 1 élément(1 élément obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-situation-operationnelle.csv), [Excel](../StructureDefinition-ror-situation-operationnelle.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-situation-operationnelle",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-situation-operationnelle",
  "version" : "0.1.0",
  "name" : "RORSituationOperationnelle",
  "title" : "ROR - Situation Opérationnelle",
  "status" : "draft",
  "date" : "2026-07-07T16:28:25+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Spécialisation ROR de la SituationOperationnelle du MOS. Caractérise les conditions d'exercice du professionnel dans le cadre de l'offre décrite.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-situation-operationnelle",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SituationOperationnelle|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-situation-operationnelle",
      "path" : "ror-situation-operationnelle",
      "short" : "Situation opérationnelle d'un professionnel dans le contexte ROR",
      "definition" : "Spécialisation ROR de la SituationOperationnelle du MOS."
    },
    {
      "id" : "ror-situation-operationnelle.modeExerciceOffre",
      "path" : "ror-situation-operationnelle.modeExerciceOffre",
      "short" : "Mode d'exercice du professionnel dans le cadre de l'offre (obligatoire dans le ROR)",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-mode-exercice|0.1.0"
      }
    },
    {
      "id" : "ror-situation-operationnelle.competenceSpecifique",
      "path" : "ror-situation-operationnelle.competenceSpecifique",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-competence-specifique|0.1.0"
      }
    },
    {
      "id" : "ror-situation-operationnelle.secteurConventionnement",
      "path" : "ror-situation-operationnelle.secteurConventionnement",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-secteur-conventionnement|0.1.0"
      }
    },
    {
      "id" : "ror-situation-operationnelle.metadonnee",
      "path" : "ror-situation-operationnelle.metadonnee",
      "short" : "Informations relatives à la gestion des données de la situation opérationnelle dans le ROR.",
      "definition" : "Informations relatives à la gestion des données de la situation opérationnelle dans le ROR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee"
      }]
    }]
  }
}

```
