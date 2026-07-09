# ROR - Tarif Portage Repas - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Modèle logique: ROR - Tarif Portage Repas 

 
Tarif unitaire ou forfaitaire (avec charges) d'un service de livraison de repas à domicile. Les conditions tarifaires précisent s'il s'agit d'un tarif aide sociale. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-tarif-portage-repas)

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

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-tarif-portage-repas.csv), [Excel](../StructureDefinition-ror-tarif-portage-repas.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-tarif-portage-repas",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif-portage-repas",
  "version" : "0.1.0",
  "name" : "RORTarifPortageRepas",
  "title" : "ROR - Tarif Portage Repas",
  "status" : "draft",
  "date" : "2026-07-09T12:48:10+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Tarif unitaire ou forfaitaire (avec charges) d'un service de livraison de repas à domicile. Les conditions tarifaires précisent s'il s'agit d'un tarif aide sociale.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif-portage-repas",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-tarif-portage-repas",
      "path" : "ror-tarif-portage-repas",
      "short" : "Tarif de portage de repas à domicile",
      "definition" : "Tarif unitaire ou forfaitaire d'un service de livraison de repas à domicile."
    },
    {
      "id" : "ror-tarif-portage-repas.conditionTarifaire",
      "path" : "ror-tarif-portage-repas.conditionTarifaire",
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
    },
    {
      "id" : "ror-tarif-portage-repas.nomTarifPortageRepas",
      "path" : "ror-tarif-portage-repas.nomTarifPortageRepas",
      "short" : "Nom du tarif de portage de repas.",
      "definition" : "Nom du tarif de portage de repas.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
