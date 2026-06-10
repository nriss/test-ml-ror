# ROR - Unité Fonctionnelle - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Modèle logique: ROR - Unité Fonctionnelle 

 
Spécialisation ROR de l'UniteFonctionnelle du MOS. Plus petite unité compatible avec les contraintes de gestion présentant une activité médicale homogène. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-unite-fonctionnelle)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [UniteFonctionnelle](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-UniteFonctionnelle.html) 

Cette structure est dérivée de [UniteFonctionnelle](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-UniteFonctionnelle.html) 

** Résumé **

 **Vue différentielle** 

Cette structure est dérivée de [UniteFonctionnelle](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-UniteFonctionnelle.html) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [UniteFonctionnelle](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-UniteFonctionnelle.html) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-unite-fonctionnelle.csv), [Excel](../StructureDefinition-ror-unite-fonctionnelle.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-unite-fonctionnelle",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-unite-fonctionnelle",
  "version" : "0.1.0",
  "name" : "RORUniteFonctionnelle",
  "title" : "ROR - Unité Fonctionnelle",
  "status" : "draft",
  "date" : "2026-06-10T12:45:37+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Spécialisation ROR de l'UniteFonctionnelle du MOS. Plus petite unité compatible avec les contraintes de gestion présentant une activité médicale homogène.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-unite-fonctionnelle",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/UniteFonctionnelle|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-unite-fonctionnelle",
      "path" : "ror-unite-fonctionnelle",
      "short" : "Unité fonctionnelle dans le contexte ROR",
      "definition" : "Spécialisation ROR de l'UniteFonctionnelle du MOS. Plus petite unité compatible avec les contraintes de gestion présentant une activité médicale homogène."
    }]
  }
}

```
