# ROR - Supplément Tarif Hébergement - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Modèle logique: ROR - Supplément Tarif Hébergement 

 
Caractéristiques des lieux d'hébergement en SSR qui entraînent le paiement d'un complément au tarif de base de l'hébergement. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-supplement-tarif-hebergement)

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

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [RORTarif](StructureDefinition-ror-tarif.md) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [RORTarif](StructureDefinition-ror-tarif.md) 

** Résumé **

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-supplement-tarif-hebergement.csv), [Excel](../StructureDefinition-ror-supplement-tarif-hebergement.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-supplement-tarif-hebergement",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-supplement-tarif-hebergement",
  "version" : "0.1.0",
  "name" : "RORSupplementTarifHebergement",
  "title" : "ROR - Supplément Tarif Hébergement",
  "status" : "draft",
  "date" : "2026-07-08T16:19:56+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Caractéristiques des lieux d'hébergement en SSR qui entraînent le paiement d'un complément au tarif de base de l'hébergement.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-supplement-tarif-hebergement",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-supplement-tarif-hebergement",
      "path" : "ror-supplement-tarif-hebergement",
      "short" : "Supplément au tarif d'hébergement (SSR)",
      "definition" : "Caractéristiques des lieux d'hébergement en SSR qui entraînent le paiement d'un complément au tarif de base de l'hébergement."
    },
    {
      "id" : "ror-supplement-tarif-hebergement.typeHabitation",
      "path" : "ror-supplement-tarif-hebergement.typeHabitation",
      "short" : "Précise les caractéristiques de l'hébergement. Doit prendre la valeur chambre simple.",
      "definition" : "Précise les caractéristiques de l'hébergement. Doit prendre la valeur chambre simple.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-type-habitation|0.1.0"
      }
    }]
  }
}

```
