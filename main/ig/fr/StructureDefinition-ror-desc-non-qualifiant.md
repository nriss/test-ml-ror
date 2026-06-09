# ROR - DESC Non Qualifiant - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Modèle logique: ROR - DESC Non Qualifiant 

 
Spécialisation ROR du DESCNonQualifiant du MOS. Diplôme d'études spécialisées complémentaires de groupe I, valable en complément de la spécialité. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-desc-non-qualifiant)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [DESCNonQualifiant](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-DESCNonQualifiant.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [DESCNonQualifiant](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-DESCNonQualifiant.html) 

** Résumé **

 **Vue différentielle** 

Cette structure est dérivée de [DESCNonQualifiant](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-DESCNonQualifiant.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [DESCNonQualifiant](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-DESCNonQualifiant.html) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-desc-non-qualifiant.csv), [Excel](../StructureDefinition-ror-desc-non-qualifiant.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-desc-non-qualifiant",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-desc-non-qualifiant",
  "version" : "0.1.0",
  "name" : "RORDESCNonQualifiant",
  "title" : "ROR - DESC Non Qualifiant",
  "status" : "draft",
  "date" : "2026-06-09T15:42:49+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Spécialisation ROR du DESCNonQualifiant du MOS. Diplôme d'études spécialisées complémentaires de groupe I, valable en complément de la spécialité.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-desc-non-qualifiant",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DESCNonQualifiant|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-desc-non-qualifiant",
      "path" : "ror-desc-non-qualifiant",
      "short" : "DESC non qualifiant dans le contexte ROR",
      "definition" : "Spécialisation ROR du DESCNonQualifiant du MOS."
    },
    {
      "id" : "ror-desc-non-qualifiant.DESCNonQualifiant",
      "path" : "ror-desc-non-qualifiant.DESCNonQualifiant",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-desc-non-qualifiant|0.1.0"
      }
    }]
  }
}

```
