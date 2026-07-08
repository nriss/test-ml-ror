# ROR - Professionnel - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Modèle logique: ROR - Professionnel 

 
Spécialisation ROR du Professionnel du MOS. Données d'identification pérennes d'une personne physique travaillant dans les domaines sanitaire, médico-social et social. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-professionnel)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Professionnel](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Professionnel.html) 

#### Bindings terminologiques

Cette structure est dérivée de [Professionnel](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Professionnel.html) 

** Résumé **

Obligatoire : 1 élément(1 élément obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [Professionnel](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Professionnel.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [Professionnel](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Professionnel.html) 

** Résumé **

Obligatoire : 1 élément(1 élément obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-professionnel.csv), [Excel](../StructureDefinition-ror-professionnel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-professionnel",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-professionnel",
  "version" : "0.1.0",
  "name" : "RORProfessionnel",
  "title" : "ROR - Professionnel",
  "status" : "draft",
  "date" : "2026-07-08T17:09:23+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Spécialisation ROR du Professionnel du MOS. Données d'identification pérennes d'une personne physique travaillant dans les domaines sanitaire, médico-social et social.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-professionnel",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Professionnel|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-professionnel",
      "path" : "ror-professionnel",
      "short" : "Professionnel de santé dans le contexte ROR",
      "definition" : "Spécialisation ROR du Professionnel du MOS."
    },
    {
      "id" : "ror-professionnel.idNatPS",
      "path" : "ror-professionnel.idNatPS",
      "short" : "Identification nationale du professionnel (obligatoire dans le ROR)",
      "min" : 1
    },
    {
      "id" : "ror-professionnel.metadonnee",
      "path" : "ror-professionnel.metadonnee",
      "short" : "Informations relatives à la gestion des données du professionnel dans le ROR.",
      "definition" : "Informations relatives à la gestion des données du professionnel dans le ROR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee"
      }]
    }]
  }
}

```
