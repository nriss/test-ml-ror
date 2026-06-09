# ROR - Tarif Accueil de Jour - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Modèle logique: ROR - Tarif Accueil de Jour 

 
Tarif journalier et par personne appliqué par l'établissement pour un accueil de jour. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-tarif-accueil-de-jour)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [RORTarif](StructureDefinition-ror-tarif.md) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [RORTarif](StructureDefinition-ror-tarif.md) 

** Résumé **

 **Vue différentielle** 

Cette structure est dérivée de [RORTarif](StructureDefinition-ror-tarif.md) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [RORTarif](StructureDefinition-ror-tarif.md) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-tarif-accueil-de-jour.csv), [Excel](../StructureDefinition-ror-tarif-accueil-de-jour.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-tarif-accueil-de-jour",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif-accueil-de-jour",
  "version" : "0.1.0",
  "name" : "RORTarifAccueilDeJour",
  "title" : "ROR - Tarif Accueil de Jour",
  "status" : "draft",
  "date" : "2026-06-09T15:32:43+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Tarif journalier et par personne appliqué par l'établissement pour un accueil de jour.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif-accueil-de-jour",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-tarif-accueil-de-jour",
      "path" : "ror-tarif-accueil-de-jour",
      "short" : "Tarif accueil de jour",
      "definition" : "Tarif journalier et par personne appliqué par l'établissement pour un accueil de jour."
    },
    {
      "id" : "ror-tarif-accueil-de-jour.conditionTarifaire",
      "path" : "ror-tarif-accueil-de-jour.conditionTarifaire",
      "short" : "Condition tarifaire précisant les conditions d'accès à un tarif, modulées en fonction des critères relatifs à la personne.",
      "definition" : "Condition tarifaire précisant les conditions d'accès à un tarif, modulées en fonction des critères relatifs à la personne.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-condition-tarifaire|0.1.0"
      }
    }]
  }
}

```
