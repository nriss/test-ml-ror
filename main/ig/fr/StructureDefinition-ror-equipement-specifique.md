# ROR - Équipement Spécifique - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Modèle logique: ROR - Équipement Spécifique 

 
Spécialisation ROR de l'EquipementSpecifique du MOS. Ressource matérielle discriminante pour la réalisation d'une prestation, propre à la structure ou mise à disposition via convention (sur site). 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-equipement-specifique)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [EquipementSpecifique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-EquipementSpecifique.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [EquipementSpecifique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-EquipementSpecifique.html) 

** Résumé **

Obligatoire : 1 élément(1 élément obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [EquipementSpecifique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-EquipementSpecifique.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [EquipementSpecifique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-EquipementSpecifique.html) 

** Résumé **

Obligatoire : 1 élément(1 élément obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-equipement-specifique.csv), [Excel](../StructureDefinition-ror-equipement-specifique.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-equipement-specifique",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-equipement-specifique",
  "version" : "0.1.0",
  "name" : "ROREquipementSpecifique",
  "title" : "ROR - Équipement Spécifique",
  "status" : "draft",
  "date" : "2026-06-09T19:07:13+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Spécialisation ROR de l'EquipementSpecifique du MOS. Ressource matérielle discriminante pour la réalisation d'une prestation, propre à la structure ou mise à disposition via convention (sur site).",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-equipement-specifique",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EquipementSpecifique|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-equipement-specifique",
      "path" : "ror-equipement-specifique",
      "short" : "Équipement spécifique dans le contexte ROR",
      "definition" : "Spécialisation ROR de l'EquipementSpecifique du MOS."
    },
    {
      "id" : "ror-equipement-specifique.typeEquipement",
      "path" : "ror-equipement-specifique.typeEquipement",
      "short" : "Type d'équipement (obligatoire dans le ROR)",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-equipement|0.1.0"
      }
    },
    {
      "id" : "ror-equipement-specifique.metadonnee",
      "path" : "ror-equipement-specifique.metadonnee",
      "short" : "Informations relatives à la gestion des données de l'équipement dans le ROR.",
      "definition" : "Informations relatives à la gestion des données de l'équipement dans le ROR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee"
      }]
    }]
  }
}

```
