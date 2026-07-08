# ROR - Entité Géographique - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Modèle logique: ROR - Entité Géographique 

 
Spécialisation ROR de l'EntiteGeographique du MOS. Correspond à un établissement ou lieu d'exercice dans le contexte du Répertoire Opérationnel des Ressources. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-entite-geographique)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [EntiteGeographique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-EntiteGeographique.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [EntiteGeographique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-EntiteGeographique.html) 

** Résumé **

Obligatoire : 3 éléments(1 élément obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [EntiteGeographique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-EntiteGeographique.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [EntiteGeographique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-EntiteGeographique.html) 

** Résumé **

Obligatoire : 3 éléments(1 élément obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-entite-geographique.csv), [Excel](../StructureDefinition-ror-entite-geographique.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-entite-geographique",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-geographique",
  "version" : "0.1.0",
  "name" : "ROREntiteGeographique",
  "title" : "ROR - Entité Géographique",
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
  "description" : "Spécialisation ROR de l'EntiteGeographique du MOS. Correspond à un établissement ou lieu d'exercice dans le contexte du Répertoire Opérationnel des Ressources.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-geographique",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteGeographique|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-entite-geographique",
      "path" : "ror-entite-geographique",
      "short" : "Entité géographique dans le contexte ROR",
      "definition" : "Spécialisation ROR de l'EntiteGeographique du MOS. Correspond à un établissement ou lieu d'exercice dans le contexte du Répertoire Opérationnel des Ressources."
    },
    {
      "id" : "ror-entite-geographique.idNatStruct",
      "path" : "ror-entite-geographique.idNatStruct",
      "short" : "Identification nationale de l'EG (obligatoire dans le ROR)",
      "min" : 1
    },
    {
      "id" : "ror-entite-geographique.denominationEG",
      "path" : "ror-entite-geographique.denominationEG",
      "short" : "Dénomination de l'entité géographique (obligatoire dans le ROR)",
      "min" : 1
    },
    {
      "id" : "ror-entite-geographique.categorieEtablissement",
      "path" : "ror-entite-geographique.categorieEtablissement",
      "short" : "Catégorie d'établissement (categorieEG dans le modèle ROR)",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J55-CategorieEG-ROR/FHIR/JDV-J55-CategorieEG-ROR|20250425120000"
      }
    },
    {
      "id" : "ror-entite-geographique.modaliteParticipationSPH",
      "path" : "ror-entite-geographique.modaliteParticipationSPH",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-espic|0.1.0"
      }
    },
    {
      "id" : "ror-entite-geographique.aideFinanciere",
      "path" : "ror-entite-geographique.aideFinanciere",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-aide-financiere|0.1.0"
      }
    },
    {
      "id" : "ror-entite-geographique.typeFermeture",
      "path" : "ror-entite-geographique.typeFermeture",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J185-typeFermeture-ROR/FHIR/JDV-J185-typeFermeture-ROR"
      }
    },
    {
      "id" : "ror-entite-geographique.accessibiliteLieu",
      "path" : "ror-entite-geographique.accessibiliteLieu",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-accessibilite-lieu|0.1.0"
      }
    },
    {
      "id" : "ror-entite-geographique.niveauRecoursORSAN",
      "path" : "ror-entite-geographique.niveauRecoursORSAN",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-niveau-recours-orsan|0.1.0"
      }
    },
    {
      "id" : "ror-entite-geographique.territoireSante",
      "path" : "ror-entite-geographique.territoireSante",
      "short" : "Territoire(s) de santé où est située l'entité géographique. Doit être une division territoriale de type Territoire de Santé.",
      "definition" : "Territoire(s) de santé où est située l'entité géographique. Doit être une division territoriale de type Territoire de Santé.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DivisionTerritoriale"
      }]
    },
    {
      "id" : "ror-entite-geographique.metadonnee",
      "path" : "ror-entite-geographique.metadonnee",
      "short" : "Informations relatives à la gestion des données de l'entité géographique dans le ROR.",
      "definition" : "Informations relatives à la gestion des données de l'entité géographique dans le ROR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee"
      }]
    }]
  }
}

```
