# ROR - Capacité (Savoir-Faire) - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Modèle logique: ROR - Capacité (Savoir-Faire) 

 
Spécialisation ROR de la CapaciteSavoirfaire du MOS. Reconnaissance par l'ordre d'un diplôme de capacité, complétant les savoir-faire principaux. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-capacite-savoir-faire)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [CapaciteSavoirfaire](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-CapaciteSavoirfaire.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [CapaciteSavoirfaire](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-CapaciteSavoirfaire.html) 

** Résumé **

 **Vue différentielle** 

Cette structure est dérivée de [CapaciteSavoirfaire](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-CapaciteSavoirfaire.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [CapaciteSavoirfaire](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-CapaciteSavoirfaire.html) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-capacite-savoir-faire.csv), [Excel](../StructureDefinition-ror-capacite-savoir-faire.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-capacite-savoir-faire",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-capacite-savoir-faire",
  "version" : "0.1.0",
  "name" : "RORCapacite",
  "title" : "ROR - Capacité (Savoir-Faire)",
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
  "description" : "Spécialisation ROR de la CapaciteSavoirfaire du MOS. Reconnaissance par l'ordre d'un diplôme de capacité, complétant les savoir-faire principaux.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-capacite-savoir-faire",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapaciteSavoirfaire|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-capacite-savoir-faire",
      "path" : "ror-capacite-savoir-faire",
      "short" : "Capacité médicale dans le contexte ROR",
      "definition" : "Spécialisation ROR de la CapaciteSavoirfaire du MOS."
    },
    {
      "id" : "ror-capacite-savoir-faire.capaciteSavoirFaire",
      "path" : "ror-capacite-savoir-faire.capaciteSavoirFaire",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-capacite-savoir-faire|0.1.0"
      }
    }]
  }
}

```
