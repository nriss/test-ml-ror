# ROR - Compétence - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Modèle logique: ROR - Compétence 

 
Spécialisation ROR de la Competence du MOS. Titre délivré par l'ordre national des médecins aux praticiens ayant débuté leurs études médicales avant la réforme de 1982. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-competence)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Competence](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Competence.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [Competence](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Competence.html) 

** Résumé **

 **Vue différentielle** 

Cette structure est dérivée de [Competence](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Competence.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [Competence](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Competence.html) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-competence.csv), [Excel](../StructureDefinition-ror-competence.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-competence",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-competence",
  "version" : "0.1.0",
  "name" : "RORCompetence",
  "title" : "ROR - Compétence",
  "status" : "draft",
  "date" : "2026-06-10T12:22:45+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Spécialisation ROR de la Competence du MOS. Titre délivré par l'ordre national des médecins aux praticiens ayant débuté leurs études médicales avant la réforme de 1982.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-competence",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Competence|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-competence",
      "path" : "ror-competence",
      "short" : "Compétence dans le contexte ROR",
      "definition" : "Spécialisation ROR de la Competence du MOS."
    },
    {
      "id" : "ror-competence.competence",
      "path" : "ror-competence.competence",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-competence|0.1.0"
      }
    }]
  }
}

```
