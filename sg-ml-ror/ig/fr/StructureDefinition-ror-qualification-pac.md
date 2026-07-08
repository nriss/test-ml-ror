# ROR - Qualification PAC - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Modèle logique: ROR - Qualification PAC 

 
Spécialisation ROR de la QualificationPAC du MOS. Qualification de praticien adjoint contractuel autorisant à exercer en établissement sans qualification ordinale. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-qualification-pac)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [QualificationPAC](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-QualificationPAC.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [QualificationPAC](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-QualificationPAC.html) 

** Résumé **

 **Vue différentielle** 

Cette structure est dérivée de [QualificationPAC](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-QualificationPAC.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [QualificationPAC](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-QualificationPAC.html) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-qualification-pac.csv), [Excel](../StructureDefinition-ror-qualification-pac.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-qualification-pac",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-qualification-pac",
  "version" : "0.1.0",
  "name" : "RORQualificationPAC",
  "title" : "ROR - Qualification PAC",
  "status" : "draft",
  "date" : "2026-07-08T16:50:32+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Spécialisation ROR de la QualificationPAC du MOS. Qualification de praticien adjoint contractuel autorisant à exercer en établissement sans qualification ordinale.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-qualification-pac",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/QualificationPAC|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-qualification-pac",
      "path" : "ror-qualification-pac",
      "short" : "Qualification PAC dans le contexte ROR",
      "definition" : "Spécialisation ROR de la QualificationPAC du MOS."
    },
    {
      "id" : "ror-qualification-pac.qualificationPAC",
      "path" : "ror-qualification-pac.qualificationPAC",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-qualification-pac|0.1.0"
      }
    }]
  }
}

```
