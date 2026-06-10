# ROR - Capacité de Prise en Charge - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Modèle logique: ROR - Capacité de Prise en Charge 

 
Spécialisation ROR de la CapacitePriseCharge du MOS. Indique l'affectation des lits d'une zone d'hébergement, notamment dans le cadre d'une gestion de crise. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-capacite-prise-charge)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [CapacitePriseCharge](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-CapacitePriseCharge.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [CapacitePriseCharge](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-CapacitePriseCharge.html) 

** Résumé **

Obligatoire : 1 élément(1 élément obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [CapacitePriseCharge](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-CapacitePriseCharge.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [CapacitePriseCharge](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-CapacitePriseCharge.html) 

** Résumé **

Obligatoire : 1 élément(1 élément obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-capacite-prise-charge.csv), [Excel](../StructureDefinition-ror-capacite-prise-charge.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-capacite-prise-charge",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-capacite-prise-charge",
  "version" : "0.1.0",
  "name" : "RORCapacitePriseCharge",
  "title" : "ROR - Capacité de Prise en Charge",
  "status" : "draft",
  "date" : "2026-06-10T12:26:33+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Spécialisation ROR de la CapacitePriseCharge du MOS. Indique l'affectation des lits d'une zone d'hébergement, notamment dans le cadre d'une gestion de crise.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-capacite-prise-charge",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapacitePriseCharge|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-capacite-prise-charge",
      "path" : "ror-capacite-prise-charge",
      "short" : "Capacité de prise en charge dans le contexte ROR",
      "definition" : "Spécialisation ROR de la CapacitePriseCharge du MOS."
    },
    {
      "id" : "ror-capacite-prise-charge.affectationTemporaire",
      "path" : "ror-capacite-prise-charge.affectationTemporaire",
      "short" : "Affectation temporaire des lits (obligatoire dans le ROR)",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-affectation-temporaire|0.1.0"
      }
    },
    {
      "id" : "ror-capacite-prise-charge.commentaire",
      "path" : "ror-capacite-prise-charge.commentaire",
      "short" : "Commentaire permettant de donner des indications complémentaires sur les informations capacitaires.",
      "definition" : "Commentaire permettant de donner des indications complémentaires sur les informations capacitaires.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ror-capacite-prise-charge.metadonnee",
      "path" : "ror-capacite-prise-charge.metadonnee",
      "short" : "Informations relatives à la gestion des données de la capacité dans le ROR.",
      "definition" : "Informations relatives à la gestion des données de la capacité dans le ROR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee"
      }]
    }]
  }
}

```
