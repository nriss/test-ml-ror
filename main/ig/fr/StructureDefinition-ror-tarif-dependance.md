# ROR - Tarif Dépendance - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Modèle logique: ROR - Tarif Dépendance 

 
Tarif correspondant au niveau de dépendance de la personne âgée accueillie. Il y a 3 niveaux de tarifs selon le GIR. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-tarif-dependance)

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

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [RORTarif](StructureDefinition-ror-tarif.md) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [RORTarif](StructureDefinition-ror-tarif.md) 

** Résumé **

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-tarif-dependance.csv), [Excel](../StructureDefinition-ror-tarif-dependance.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-tarif-dependance",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif-dependance",
  "version" : "0.1.0",
  "name" : "RORTarifDependance",
  "title" : "ROR - Tarif Dépendance",
  "status" : "draft",
  "date" : "2026-06-09T15:47:14+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Tarif correspondant au niveau de dépendance de la personne âgée accueillie. Il y a 3 niveaux de tarifs selon le GIR.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif-dependance",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-tarif-dependance",
      "path" : "ror-tarif-dependance",
      "short" : "Tarif dépendance selon le niveau GIR",
      "definition" : "Tarif correspondant au niveau de dépendance de la personne âgée accueillie."
    },
    {
      "id" : "ror-tarif-dependance.groupeTarifaireDependance",
      "path" : "ror-tarif-dependance.groupeTarifaireDependance",
      "short" : "Niveau de dépendance de la personne âgée accueillie associé à un tarif (3 niveaux selon le GIR).",
      "definition" : "Niveau de dépendance de la personne âgée accueillie associé à un tarif (3 niveaux selon le GIR).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-niveau-dependance|0.1.0"
      }
    },
    {
      "id" : "ror-tarif-dependance.temporaliteAccueil",
      "path" : "ror-tarif-dependance.temporaliteAccueil",
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
