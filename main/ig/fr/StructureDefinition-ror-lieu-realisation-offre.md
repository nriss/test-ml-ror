# ROR - Lieu de Réalisation de l'Offre - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Modèle logique: ROR - Lieu de Réalisation de l'Offre 

 
Spécialisation ROR du LieuRealisationOffre du MOS. Espace disposant d'un ensemble de ressources pour réaliser une offre. Lorsque les ressources sont mobiles, le lieu correspond au lieu administratif où est organisée la prise en charge. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-lieu-realisation-offre)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [LieuRealisationOffre](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-LieuRealisationOffre.html) 

Cette structure est dérivée de [LieuRealisationOffre](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-LieuRealisationOffre.html) 

** Résumé **

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [LieuRealisationOffre](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-LieuRealisationOffre.html) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [LieuRealisationOffre](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-LieuRealisationOffre.html) 

** Résumé **

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-lieu-realisation-offre.csv), [Excel](../StructureDefinition-ror-lieu-realisation-offre.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-lieu-realisation-offre",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-lieu-realisation-offre",
  "version" : "0.1.0",
  "name" : "RORLieuRealisationOffre",
  "title" : "ROR - Lieu de Réalisation de l'Offre",
  "status" : "draft",
  "date" : "2026-06-09T15:32:43+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Spécialisation ROR du LieuRealisationOffre du MOS. Espace disposant d'un ensemble de ressources pour réaliser une offre. Lorsque les ressources sont mobiles, le lieu correspond au lieu administratif où est organisée la prise en charge.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-lieu-realisation-offre",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/LieuRealisationOffre|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-lieu-realisation-offre",
      "path" : "ror-lieu-realisation-offre",
      "short" : "Lieu de réalisation de l'offre dans le contexte ROR",
      "definition" : "Spécialisation ROR du LieuRealisationOffre du MOS."
    },
    {
      "id" : "ror-lieu-realisation-offre.commentaire",
      "path" : "ror-lieu-realisation-offre.commentaire",
      "short" : "Commentaire permettant de donner des informations complémentaires sur le lieu.",
      "definition" : "Commentaire permettant de donner des informations complémentaires sur le lieu.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ror-lieu-realisation-offre.metadonnee",
      "path" : "ror-lieu-realisation-offre.metadonnee",
      "short" : "Informations relatives à la gestion des données du lieu de réalisation dans le ROR.",
      "definition" : "Informations relatives à la gestion des données du lieu de réalisation dans le ROR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee"
      }]
    }]
  }
}

```
