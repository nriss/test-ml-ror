# ROR - Spécialité - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Modèle logique: ROR - Spécialité 

 
Spécialisation ROR de la Specialite du MOS. Spécialité médicale ou odontologique reconnue par une autorité d'enregistrement. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-specialite)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Specialite](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Specialite.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [Specialite](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Specialite.html) 

** Résumé **

 **Vue différentielle** 

Cette structure est dérivée de [Specialite](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Specialite.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [Specialite](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Specialite.html) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-specialite.csv), [Excel](../StructureDefinition-ror-specialite.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-specialite",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-specialite",
  "version" : "0.1.0",
  "name" : "RORSpecialite",
  "title" : "ROR - Spécialité",
  "status" : "draft",
  "date" : "2026-06-09T15:10:34+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Spécialisation ROR de la Specialite du MOS. Spécialité médicale ou odontologique reconnue par une autorité d'enregistrement.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-specialite",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Specialite|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-specialite",
      "path" : "ror-specialite",
      "short" : "Spécialité ordinale dans le contexte ROR",
      "definition" : "Spécialisation ROR de la Specialite du MOS."
    },
    {
      "id" : "ror-specialite.specialite",
      "path" : "ror-specialite.specialite",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-specialite-ordinale|0.1.0"
      }
    }]
  }
}

```
