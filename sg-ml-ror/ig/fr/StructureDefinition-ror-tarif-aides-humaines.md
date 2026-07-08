# ROR - Tarif Aides Humaines - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Modèle logique: ROR - Tarif Aides Humaines 

 
Tarif horaire ou forfaitaire (avec charges) des intervenants à domicile. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-tarif-aides-humaines)

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

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [RORTarif](StructureDefinition-ror-tarif.md) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [RORTarif](StructureDefinition-ror-tarif.md) 

** Résumé **

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-tarif-aides-humaines.csv), [Excel](../StructureDefinition-ror-tarif-aides-humaines.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-tarif-aides-humaines",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif-aides-humaines",
  "version" : "0.1.0",
  "name" : "RORTarifAidesHumaines",
  "title" : "ROR - Tarif Aides Humaines",
  "status" : "draft",
  "date" : "2026-07-08T16:54:17+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Tarif horaire ou forfaitaire (avec charges) des intervenants à domicile.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif-aides-humaines",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-tarif-aides-humaines",
      "path" : "ror-tarif-aides-humaines",
      "short" : "Tarif aides humaines à domicile",
      "definition" : "Tarif horaire ou forfaitaire (avec charges) des intervenants à domicile."
    },
    {
      "id" : "ror-tarif-aides-humaines.nomTarifAidesHumaines",
      "path" : "ror-tarif-aides-humaines.nomTarifAidesHumaines",
      "short" : "Nom du tarif aides humaines.",
      "definition" : "Nom du tarif aides humaines.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ror-tarif-aides-humaines.conditionTarifaire",
      "path" : "ror-tarif-aides-humaines.conditionTarifaire",
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
      "id" : "ror-tarif-aides-humaines.modeGestion",
      "path" : "ror-tarif-aides-humaines.modeGestion",
      "short" : "Mode de gestion indiquant le mode d'intervention des aides à domicile en fonction de la nature de la relation contractuelle (prestataire, mandataire).",
      "definition" : "Mode de gestion indiquant le mode d'intervention des aides à domicile en fonction de la nature de la relation contractuelle (prestataire, mandataire).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-mode-gestion|0.1.0"
      }
    }]
  }
}

```
