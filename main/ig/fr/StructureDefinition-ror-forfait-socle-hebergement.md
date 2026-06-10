# ROR - Forfait Socle Hébergement - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Modèle logique: ROR - Forfait Socle Hébergement 

 
Tarif journalier et par personne (majoritairement appliqué par l'établissement) pour un type d'hébergement donné. Inclut obligatoirement les prestations définies dans le décret n°2015-1868. Ce tarif peut être modulable pour les personnes bénéficiaires de l'aide sociale. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-forfait-socle-hebergement)

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

Obligatoire : 0 élément(3 éléments obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [RORTarif](StructureDefinition-ror-tarif.md) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [RORTarif](StructureDefinition-ror-tarif.md) 

** Résumé **

Obligatoire : 0 élément(3 éléments obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-forfait-socle-hebergement.csv), [Excel](../StructureDefinition-ror-forfait-socle-hebergement.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-forfait-socle-hebergement",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-forfait-socle-hebergement",
  "version" : "0.1.0",
  "name" : "RORForfaitSocleHebergement",
  "title" : "ROR - Forfait Socle Hébergement",
  "status" : "draft",
  "date" : "2026-06-10T10:08:12+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Tarif journalier et par personne (majoritairement appliqué par l'établissement) pour un type d'hébergement donné. Inclut obligatoirement les prestations définies dans le décret n°2015-1868. Ce tarif peut être modulable pour les personnes bénéficiaires de l'aide sociale.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-forfait-socle-hebergement",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-forfait-socle-hebergement",
      "path" : "ror-forfait-socle-hebergement",
      "short" : "Forfait socle hébergement",
      "definition" : "Tarif journalier et par personne pour un type d'hébergement donné, incluant les prestations minimales réglementaires."
    },
    {
      "id" : "ror-forfait-socle-hebergement.prestationsNonObligatoiresIncluses",
      "path" : "ror-forfait-socle-hebergement.prestationsNonObligatoiresIncluses",
      "short" : "Service(s) non obligatoires inclus dans les prestations.",
      "definition" : "Service(s) non obligatoires inclus dans les prestations.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-prestation-non-obligatoire|0.1.0"
      }
    },
    {
      "id" : "ror-forfait-socle-hebergement.autresPrestationsNonObligatoiresIncluses",
      "path" : "ror-forfait-socle-hebergement.autresPrestationsNonObligatoiresIncluses",
      "short" : "Autres prestations incluses dans le tarif socle hébergement, non proposées dans la nomenclature.",
      "definition" : "Autres prestations incluses dans le tarif socle hébergement, non proposées dans la nomenclature.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ror-forfait-socle-hebergement.tarifMoins60Ans",
      "path" : "ror-forfait-socle-hebergement.tarifMoins60Ans",
      "short" : "Indicateur précisant que le tarif hébergement est spécifiquement appliqué aux personnes de moins de 60 ans. false = 60 ans et plus ; true = moins de 60 ans.",
      "definition" : "Indicateur précisant que le tarif hébergement est spécifiquement appliqué aux personnes de moins de 60 ans.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "ror-forfait-socle-hebergement.typeHabitation",
      "path" : "ror-forfait-socle-hebergement.typeHabitation",
      "short" : "Précise les caractéristiques de l'hébergement.",
      "definition" : "Précise les caractéristiques de l'hébergement.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-type-habitation|0.1.0"
      }
    },
    {
      "id" : "ror-forfait-socle-hebergement.conditionTarifaire",
      "path" : "ror-forfait-socle-hebergement.conditionTarifaire",
      "short" : "Condition tarifaire précisant les conditions d'accès à un tarif, modulées en fonction des critères relatifs à la personne.",
      "definition" : "Condition tarifaire précisant les conditions d'accès à un tarif, modulées en fonction des critères relatifs à la personne.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-condition-tarifaire|0.1.0"
      }
    },
    {
      "id" : "ror-forfait-socle-hebergement.temporaliteAccueil",
      "path" : "ror-forfait-socle-hebergement.temporaliteAccueil",
      "short" : "Le tarif peut s'appliquer à un hébergement permanent ou à un hébergement temporaire (90 jours maximum par an).",
      "definition" : "Le tarif peut s'appliquer à un hébergement permanent ou à un hébergement temporaire (90 jours maximum par an).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-temporalite-accueil|0.1.0"
      }
    }]
  }
}

```
