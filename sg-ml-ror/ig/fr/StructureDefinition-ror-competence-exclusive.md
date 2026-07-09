# ROR - Compétence Exclusive - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Modèle logique: ROR - Compétence Exclusive 

 
Spécialisation ROR de la CompetenceExclusive du MOS. Compétence exercée à titre exclusif, incompatible avec l'exercice d'une spécialité. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-competence-exclusive)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [CompetenceExclusive](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-CompetenceExclusive.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [CompetenceExclusive](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-CompetenceExclusive.html) 

** Résumé **

 **Vue différentielle** 

Cette structure est dérivée de [CompetenceExclusive](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-CompetenceExclusive.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [CompetenceExclusive](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-CompetenceExclusive.html) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-competence-exclusive.csv), [Excel](../StructureDefinition-ror-competence-exclusive.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-competence-exclusive",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-competence-exclusive",
  "version" : "0.1.0",
  "name" : "RORCompetenceExclusive",
  "title" : "ROR - Compétence Exclusive",
  "status" : "draft",
  "date" : "2026-07-09T08:06:43+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Spécialisation ROR de la CompetenceExclusive du MOS. Compétence exercée à titre exclusif, incompatible avec l'exercice d'une spécialité.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-competence-exclusive",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CompetenceExclusive|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-competence-exclusive",
      "path" : "ror-competence-exclusive",
      "short" : "Compétence exclusive dans le contexte ROR",
      "definition" : "Spécialisation ROR de la CompetenceExclusive du MOS."
    },
    {
      "id" : "ror-competence-exclusive.competenceExclusive",
      "path" : "ror-competence-exclusive.competenceExclusive",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-competence-exclusive|0.1.0"
      }
    }]
  }
}

```
