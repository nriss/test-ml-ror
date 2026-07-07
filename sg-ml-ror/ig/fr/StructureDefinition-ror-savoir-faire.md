# ROR - Savoir-Faire - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Modèle logique: ROR - Savoir-Faire 

 
Spécialisation ROR du SavoirFaire du MOS. Prérogatives d'exercice d'un professionnel reconnues par une autorité d'enregistrement (spécialités, compétences, etc.). 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-savoir-faire)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [SavoirFaire](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-SavoirFaire.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [SavoirFaire](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-SavoirFaire.html) 

** Résumé **

Obligatoire : 1 élément(1 élément obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [SavoirFaire](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-SavoirFaire.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [SavoirFaire](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-SavoirFaire.html) 

** Résumé **

Obligatoire : 1 élément(1 élément obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-savoir-faire.csv), [Excel](../StructureDefinition-ror-savoir-faire.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-savoir-faire",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-savoir-faire",
  "version" : "0.1.0",
  "name" : "RORSavoirFaire",
  "title" : "ROR - Savoir-Faire",
  "status" : "draft",
  "date" : "2026-07-07T16:30:55+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Spécialisation ROR du SavoirFaire du MOS. Prérogatives d'exercice d'un professionnel reconnues par une autorité d'enregistrement (spécialités, compétences, etc.).",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-savoir-faire",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SavoirFaire|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-savoir-faire",
      "path" : "ror-savoir-faire",
      "short" : "Savoir-faire d'un professionnel dans le contexte ROR",
      "definition" : "Spécialisation ROR du SavoirFaire du MOS."
    },
    {
      "id" : "ror-savoir-faire.typeSavoirFaire",
      "path" : "ror-savoir-faire.typeSavoirFaire",
      "short" : "Type de savoir-faire (obligatoire dans le ROR)",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-type-savoir-faire|0.1.0"
      }
    },
    {
      "id" : "ror-savoir-faire.metadonnee",
      "path" : "ror-savoir-faire.metadonnee",
      "short" : "Informations relatives à la gestion des données du savoir-faire dans le ROR.",
      "definition" : "Informations relatives à la gestion des données du savoir-faire dans le ROR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee"
      }]
    }]
  }
}

```
