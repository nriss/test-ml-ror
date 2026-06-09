# ROR - Capacité d'Accueil Opérationnelle - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Modèle logique: ROR - Capacité d'Accueil Opérationnelle 

 
Précise la CapacitePriseCharge par une série d'enregistrements indiquant la quantité de lits (ou places) pour un statut et une temporalité donnée. Le cumul des enregistrements donne une vision complète de la capacité d'un lieu. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-capacite-accueil-operationnelle)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(7 éléments obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(7 éléments obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-capacite-accueil-operationnelle.csv), [Excel](../StructureDefinition-ror-capacite-accueil-operationnelle.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-capacite-accueil-operationnelle",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-capacite-accueil-operationnelle",
  "version" : "0.1.0",
  "name" : "RORCapaciteAccueilOperationnelle",
  "title" : "ROR - Capacité d'Accueil Opérationnelle",
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
  "description" : "Précise la CapacitePriseCharge par une série d'enregistrements indiquant la quantité de lits (ou places) pour un statut et une temporalité donnée. Le cumul des enregistrements donne une vision complète de la capacité d'un lieu.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-capacite-accueil-operationnelle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-capacite-accueil-operationnelle",
      "path" : "ror-capacite-accueil-operationnelle",
      "short" : "Capacité d'accueil opérationnelle (lits/places) dans le contexte ROR",
      "definition" : "Précise la CapacitePriseCharge par des enregistrements quantitatifs de lits ou places pour un statut et une temporalité donnée."
    },
    {
      "id" : "ror-capacite-accueil-operationnelle.natureCapacite",
      "path" : "ror-capacite-accueil-operationnelle.natureCapacite",
      "short" : "Indique si la capacité est exprimée en lits ou en places.",
      "definition" : "Indique si la capacité est exprimée en lits ou en places.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-nature-capacite|0.1.0"
      }
    },
    {
      "id" : "ror-capacite-accueil-operationnelle.statutCapacite",
      "path" : "ror-capacite-accueil-operationnelle.statutCapacite",
      "short" : "Caractérise la capacité d'accueil et précise le statut des lits décrits.",
      "definition" : "Caractérise la capacité d'accueil et précise le statut des lits décrits.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-statut-capacite|0.1.0"
      }
    },
    {
      "id" : "ror-capacite-accueil-operationnelle.temporaliteCapacite",
      "path" : "ror-capacite-accueil-operationnelle.temporaliteCapacite",
      "short" : "Indique le moment où cette capacité sera effective (situation immédiate ou prospective).",
      "definition" : "Indique le moment où cette capacité sera effective.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-temporalite|0.1.0"
      }
    },
    {
      "id" : "ror-capacite-accueil-operationnelle.nombreCapacite",
      "path" : "ror-capacite-accueil-operationnelle.nombreCapacite",
      "short" : "Quantité de lits ou places de la capacité exprimée.",
      "definition" : "Quantité de lits ou places de la capacité exprimée.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "ror-capacite-accueil-operationnelle.typeSourceCapacite",
      "path" : "ror-capacite-accueil-operationnelle.typeSourceCapacite",
      "short" : "Indique quel type de source est à l'origine de l'information de capacité.",
      "definition" : "Indique quel type de source est à l'origine de l'information de capacité.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-type-source|0.1.0"
      }
    },
    {
      "id" : "ror-capacite-accueil-operationnelle.dateMAJCapacite",
      "path" : "ror-capacite-accueil-operationnelle.dateMAJCapacite",
      "short" : "Date à laquelle la capacité d'accueil a été mise à jour dans la source.",
      "definition" : "Date à laquelle la capacité d'accueil a été mise à jour dans la source.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "ror-capacite-accueil-operationnelle.genreCapaciteDispo",
      "path" : "ror-capacite-accueil-operationnelle.genreCapaciteDispo",
      "short" : "Genre des patients pouvant être installés dans des lits disponibles.",
      "definition" : "Genre des patients pouvant être installés dans des lits disponibles.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-genre-capacite|0.1.0"
      }
    },
    {
      "id" : "ror-capacite-accueil-operationnelle.typeFermetureCapacite",
      "path" : "ror-capacite-accueil-operationnelle.typeFermetureCapacite",
      "short" : "Statut des lits fermés permettant d'identifier lesquels peuvent être réactivés.",
      "definition" : "Statut des lits fermés.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-type-fermeture-capacite|0.1.0"
      }
    },
    {
      "id" : "ror-capacite-accueil-operationnelle.typeLitSupplementaire",
      "path" : "ror-capacite-accueil-operationnelle.typeLitSupplementaire",
      "short" : "Statut des lits supplémentaires identifiant lesquels sont déjà mobilisés.",
      "definition" : "Statut des lits supplémentaires.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-type-lit-supplementaire|0.1.0"
      }
    },
    {
      "id" : "ror-capacite-accueil-operationnelle.typeCrise",
      "path" : "ror-capacite-accueil-operationnelle.typeCrise",
      "short" : "Type de crise permettant de mobiliser le nombre de lits supplémentaires décrits.",
      "definition" : "Type de crise permettant de mobiliser les lits supplémentaires.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-type-crise|0.1.0"
      }
    },
    {
      "id" : "ror-capacite-accueil-operationnelle.metadonnee",
      "path" : "ror-capacite-accueil-operationnelle.metadonnee",
      "short" : "Informations relatives à la gestion des données de capacité dans le ROR.",
      "definition" : "Informations relatives à la gestion des données de capacité dans le ROR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee"
      }]
    }]
  }
}

```
