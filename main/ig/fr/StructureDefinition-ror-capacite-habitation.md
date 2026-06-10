# ROR - Capacité d'Habitation - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Modèle logique: ROR - Capacité d'Habitation 

 
Spécialisation ROR de la CapaciteHabitation du MOS. Décrit un type d'habitation adapté à la réalisation d'une offre et le nombre d'habitations associées. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-capacite-habitation)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [CapaciteHabitation](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-CapaciteHabitation.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [CapaciteHabitation](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-CapaciteHabitation.html) 

** Résumé **

Obligatoire : 1 élément(1 élément obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [CapaciteHabitation](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-CapaciteHabitation.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [CapaciteHabitation](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-CapaciteHabitation.html) 

** Résumé **

Obligatoire : 1 élément(1 élément obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-capacite-habitation.csv), [Excel](../StructureDefinition-ror-capacite-habitation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-capacite-habitation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-capacite-habitation",
  "version" : "0.1.0",
  "name" : "RORCapaciteHabitation",
  "title" : "ROR - Capacité d'Habitation",
  "status" : "draft",
  "date" : "2026-06-10T10:05:44+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Spécialisation ROR de la CapaciteHabitation du MOS. Décrit un type d'habitation adapté à la réalisation d'une offre et le nombre d'habitations associées.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-capacite-habitation",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapaciteHabitation|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-capacite-habitation",
      "path" : "ror-capacite-habitation",
      "short" : "Capacité d'habitation dans le contexte ROR",
      "definition" : "Spécialisation ROR de la CapaciteHabitation du MOS."
    },
    {
      "id" : "ror-capacite-habitation.typeHabitation",
      "path" : "ror-capacite-habitation.typeHabitation",
      "short" : "Type d'habitation (obligatoire dans le ROR)",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-type-habitation|0.1.0"
      }
    },
    {
      "id" : "ror-capacite-habitation.metadonnee",
      "path" : "ror-capacite-habitation.metadonnee",
      "short" : "Informations relatives à la gestion des données de la capacité d'habitation dans le ROR.",
      "definition" : "Informations relatives à la gestion des données de la capacité d'habitation dans le ROR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee"
      }]
    }]
  }
}

```
