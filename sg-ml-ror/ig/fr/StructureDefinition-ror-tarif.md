# ROR - Tarif - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Modèle logique: ROR - Tarif 

 
Classe abstraite contenant les attributs communs aux classes décrivant les prix des prestations et services fournis par l'établissement dans le contexte ROR. Un type de tarif s'applique à une catégorie de services pour lesquels l'entité géographique a fixé un prix. 

**Utilisations:**

* Dérivé de ce Modèle logique: [ROR - Forfait Socle Hébergement](StructureDefinition-ror-forfait-socle-hebergement.md), [ROR - Supplément Tarif Hébergement](StructureDefinition-ror-supplement-tarif-hebergement.md), [ROR - Tarif Accueil de Jour](StructureDefinition-ror-tarif-accueil-de-jour.md), [ROR - Tarif Aides Humaines](StructureDefinition-ror-tarif-aides-humaines.md)... Show 3 more, [ROR - Tarif Dépendance](StructureDefinition-ror-tarif-dependance.md), [ROR - Tarif Portage Repas](StructureDefinition-ror-tarif-portage-repas.md) and [ROR - Tarif Prestation Supplémentaire](StructureDefinition-ror-tarif-prestation-supplementaire.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-tarif)

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

Obligatoire : 0 élément(4 éléments obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(4 éléments obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-tarif.csv), [Excel](../StructureDefinition-ror-tarif.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-tarif",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif",
  "version" : "0.1.0",
  "name" : "RORTarif",
  "title" : "ROR - Tarif",
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
  "description" : "Classe abstraite contenant les attributs communs aux classes décrivant les prix des prestations et services fournis par l'établissement dans le contexte ROR. Un type de tarif s'applique à une catégorie de services pour lesquels l'entité géographique a fixé un prix.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-tarif",
      "path" : "ror-tarif",
      "short" : "Tarif d'une prestation ou d'un service (classe abstraite ROR)",
      "definition" : "Classe abstraite contenant les attributs communs aux classes décrivant les prix des prestations et services dans le contexte ROR."
    },
    {
      "id" : "ror-tarif.typeTarif",
      "path" : "ror-tarif.typeTarif",
      "short" : "Type de tarif (ex : Forfait socle hébergement). Catégorie de services pour lesquels l'entité géographique a fixé un prix.",
      "definition" : "Type de tarif (ex : Forfait socle hébergement). Catégorie de services pour lesquels l'entité géographique a fixé un prix.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-type-tarif|0.1.0"
      }
    },
    {
      "id" : "ror-tarif.montantTarif",
      "path" : "ror-tarif.montantTarif",
      "short" : "Montant du tarif des prestations et services. Prix en euros, majoritairement appliqué par l'établissement pour un service.",
      "definition" : "Montant du tarif des prestations et services. Prix en euros, majoritairement appliqué par l'établissement pour un service.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "ror-tarif.unitePrix",
      "path" : "ror-tarif.unitePrix",
      "short" : "Unité de référence pour évaluer le prix des prestations et services.",
      "definition" : "Unité de référence pour évaluer le prix des prestations et services.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-unite-prix|0.1.0"
      }
    },
    {
      "id" : "ror-tarif.dateDebutValiditeTarif",
      "path" : "ror-tarif.dateDebutValiditeTarif",
      "short" : "Dernière date de début de validité du tarif indiqué.",
      "definition" : "Dernière date de début de validité du tarif indiqué.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "ror-tarif.metadonnee",
      "path" : "ror-tarif.metadonnee",
      "short" : "Informations relatives à la gestion des données du tarif dans le ROR.",
      "definition" : "Informations relatives à la gestion des données du tarif dans le ROR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee"
      }]
    }]
  }
}

```
