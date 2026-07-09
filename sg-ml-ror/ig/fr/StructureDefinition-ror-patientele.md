# ROR - Patientèle - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Modèle logique: ROR - Patientèle 

 
Spécialisation ROR de la Patientele du MOS. Ensemble de personnes répondant à des critères leur permettant de bénéficier de la prestation décrite. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-patientele)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Patientele](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Patientele.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [Patientele](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Patientele.html) 

** Résumé **

Obligatoire : 2 éléments(1 élément obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [Patientele](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Patientele.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [Patientele](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Patientele.html) 

** Résumé **

Obligatoire : 2 éléments(1 élément obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-patientele.csv), [Excel](../StructureDefinition-ror-patientele.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-patientele",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-patientele",
  "version" : "0.1.0",
  "name" : "RORPatientele",
  "title" : "ROR - Patientèle",
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
  "description" : "Spécialisation ROR de la Patientele du MOS. Ensemble de personnes répondant à des critères leur permettant de bénéficier de la prestation décrite.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-patientele",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Patientele|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-patientele",
      "path" : "ror-patientele",
      "short" : "Patientèle dans le contexte ROR",
      "definition" : "Spécialisation ROR de la Patientele du MOS. Ensemble de personnes pouvant bénéficier de la prestation."
    },
    {
      "id" : "ror-patientele.ageMin",
      "path" : "ror-patientele.ageMin",
      "short" : "Age minimum (inclus) pour bénéficier de la prestation (obligatoire dans le ROR)",
      "min" : 1
    },
    {
      "id" : "ror-patientele.ageMax",
      "path" : "ror-patientele.ageMax",
      "short" : "Age maximum (inclus) pour bénéficier de la prestation (obligatoire dans le ROR)",
      "min" : 1
    },
    {
      "id" : "ror-patientele.publicPrisEnCharge",
      "path" : "ror-patientele.publicPrisEnCharge",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-public-pris-en-charge|0.1.0"
      }
    },
    {
      "id" : "ror-patientele.metadonnee",
      "path" : "ror-patientele.metadonnee",
      "short" : "Informations relatives à la gestion des données de la patientèle dans le ROR.",
      "definition" : "Informations relatives à la gestion des données de la patientèle dans le ROR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee"
      }]
    }]
  }
}

```
