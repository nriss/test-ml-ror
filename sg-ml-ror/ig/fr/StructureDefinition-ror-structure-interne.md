# ROR - Structure Interne - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Modèle logique: ROR - Structure Interne 

 
Spécialisation ROR de la StructureInterne du MOS. Service, unité, centre ou département au sein d'un pôle. Synonymes : service, unité, centre, institut, département. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-structure-interne)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [StructureInterne](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-StructureInterne.html) 

Cette structure est dérivée de [StructureInterne](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-StructureInterne.html) 

** Résumé **

 **Vue différentielle** 

Cette structure est dérivée de [StructureInterne](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-StructureInterne.html) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [StructureInterne](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-StructureInterne.html) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-structure-interne.csv), [Excel](../StructureDefinition-ror-structure-interne.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-structure-interne",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-structure-interne",
  "version" : "0.1.0",
  "name" : "RORStructureInterne",
  "title" : "ROR - Structure Interne",
  "status" : "draft",
  "date" : "2026-07-09T15:33:10+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Spécialisation ROR de la StructureInterne du MOS. Service, unité, centre ou département au sein d'un pôle. Synonymes : service, unité, centre, institut, département.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-structure-interne",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/StructureInterne|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-structure-interne",
      "path" : "ror-structure-interne",
      "short" : "Structure interne (service) dans le contexte ROR",
      "definition" : "Spécialisation ROR de la StructureInterne du MOS. Service, unité ou département au sein d'un pôle."
    }]
  }
}

```
