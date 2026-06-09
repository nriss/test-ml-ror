# ROR - Métadonnée - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Modèle logique: ROR - Métadonnée 

 
Informations relatives à la gestion des classes et des données du ROR. Permet aux applications consommatrices de se synchroniser en identifiant les créations, modifications et suppressions d'objets. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [ROR - Activité Opérationnelle](StructureDefinition-ror-activite-operationnelle.md), [ROR - Capacité d'Accueil Opérationnelle](StructureDefinition-ror-capacite-accueil-operationnelle.md), [ROR - Capacité d'Habitation](StructureDefinition-ror-capacite-habitation.md), [ROR - Capacité de Prise en Charge](StructureDefinition-ror-capacite-prise-charge.md)... Show 13 more, [ROR - Entité Géographique](StructureDefinition-ror-entite-geographique.md), [ROR - Entité Juridique](StructureDefinition-ror-entite-juridique.md), [ROR - Équipement Spécifique](StructureDefinition-ror-equipement-specifique.md), [ROR - Exercice Professionnel](StructureDefinition-ror-exercice-professionnel.md), [ROR - Lieu de Réalisation de l'Offre](StructureDefinition-ror-lieu-realisation-offre.md), [ROR - Offre Opérationnelle](StructureDefinition-ror-offre-operationnelle.md), [ROR - Organisation Interne](StructureDefinition-ror-organisation-interne.md), [ROR - Patientèle](StructureDefinition-ror-patientele.md), [ROR - Personne Physique](StructureDefinition-ror-personne-physique.md), [ROR - Professionnel](StructureDefinition-ror-professionnel.md), [ROR - Savoir-Faire](StructureDefinition-ror-savoir-faire.md), [ROR - Situation Opérationnelle](StructureDefinition-ror-situation-operationnelle.md) and [ROR - Tarif](StructureDefinition-ror-tarif.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-metadonnee)

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

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-metadonnee.csv), [Excel](../StructureDefinition-ror-metadonnee.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-metadonnee",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee",
  "version" : "0.1.0",
  "name" : "RORMetadonnee",
  "title" : "ROR - Métadonnée",
  "status" : "draft",
  "date" : "2026-06-09T15:42:49+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Informations relatives à la gestion des classes et des données du ROR. Permet aux applications consommatrices de se synchroniser en identifiant les créations, modifications et suppressions d'objets.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-metadonnee",
      "path" : "ror-metadonnee",
      "short" : "Métadonnées de gestion et de synchronisation ROR",
      "definition" : "Informations relatives à la gestion des classes et des données du ROR. Permet aux applications consommatrices de se synchroniser en identifiant les créations, modifications et suppressions d'objets."
    },
    {
      "id" : "ror-metadonnee.dateCreation",
      "path" : "ror-metadonnee.dateCreation",
      "short" : "Date de création de la plus ancienne donnée de l'objet.",
      "definition" : "Date de création de la plus ancienne donnée de l'objet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "ror-metadonnee.dateMiseJour",
      "path" : "ror-metadonnee.dateMiseJour",
      "short" : "Date de mise à jour de la dernière donnée mise à jour de l'objet.",
      "definition" : "Date de mise à jour de la dernière donnée mise à jour de l'objet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "ror-metadonnee.identifiant",
      "path" : "ror-metadonnee.identifiant",
      "short" : "Identifiant technique permettant à un consommateur de réconcilier les données dans un contexte spécifique d'échange.",
      "definition" : "Identifiant technique permettant à un consommateur de réconcilier les données dans un contexte spécifique d'échange.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "ror-metadonnee.commentaire",
      "path" : "ror-metadonnee.commentaire",
      "short" : "Commentaire associé à l'objet.",
      "definition" : "Commentaire associé à l'objet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ror-metadonnee.regionSource",
      "path" : "ror-metadonnee.regionSource",
      "short" : "Code région de la source de la donnée.",
      "definition" : "Code région de la source de la donnée.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J237-RegionOM-ROR/FHIR/JDV-J237-RegionOM-ROR|20240126120000"
      }
    },
    {
      "id" : "ror-metadonnee.modeleSaisie",
      "path" : "ror-metadonnee.modeleSaisie",
      "short" : "Identifiant du modèle de saisie de l'objet ainsi que la version de ce modèle (format : identifiant modèle | version).",
      "definition" : "Identifiant du modèle de saisie de l'objet ainsi que la version de ce modèle (format : identifiant modèle | version).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
