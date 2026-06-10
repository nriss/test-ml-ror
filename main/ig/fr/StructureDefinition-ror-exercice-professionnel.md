# ROR - Exercice Professionnel - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Modèle logique: ROR - Exercice Professionnel 

 
Spécialisation ROR de l'ExerciceProfessionnel du MOS. Informations décrivant la profession exercée et l'identité d'exercice d'un professionnel. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-exercice-professionnel)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [ExerciceProfessionnel](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-ExerciceProfessionnel.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [ExerciceProfessionnel](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-ExerciceProfessionnel.html) 

** Résumé **

Obligatoire : 2 éléments(1 élément obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [ExerciceProfessionnel](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-ExerciceProfessionnel.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [ExerciceProfessionnel](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-ExerciceProfessionnel.html) 

** Résumé **

Obligatoire : 2 éléments(1 élément obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-exercice-professionnel.csv), [Excel](../StructureDefinition-ror-exercice-professionnel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-exercice-professionnel",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-exercice-professionnel",
  "version" : "0.1.0",
  "name" : "RORExerciceProfessionnel",
  "title" : "ROR - Exercice Professionnel",
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
  "description" : "Spécialisation ROR de l'ExerciceProfessionnel du MOS. Informations décrivant la profession exercée et l'identité d'exercice d'un professionnel.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-exercice-professionnel",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ExerciceProfessionnel|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-exercice-professionnel",
      "path" : "ror-exercice-professionnel",
      "short" : "Exercice professionnel dans le contexte ROR",
      "definition" : "Spécialisation ROR de l'ExerciceProfessionnel du MOS."
    },
    {
      "id" : "ror-exercice-professionnel.civiliteExercice",
      "path" : "ror-exercice-professionnel.civiliteExercice",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-civilite-exercice|0.1.0"
      }
    },
    {
      "id" : "ror-exercice-professionnel.nomExercice",
      "path" : "ror-exercice-professionnel.nomExercice",
      "short" : "Nom sous lequel exerce le professionnel (obligatoire dans le ROR)",
      "min" : 1
    },
    {
      "id" : "ror-exercice-professionnel.profession",
      "path" : "ror-exercice-professionnel.profession",
      "short" : "Profession exercée (obligatoire dans le ROR)",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-profession-sante|0.1.0"
      }
    },
    {
      "id" : "ror-exercice-professionnel.metadonnee",
      "path" : "ror-exercice-professionnel.metadonnee",
      "short" : "Informations relatives à la gestion des données d'exercice professionnel dans le ROR.",
      "definition" : "Informations relatives à la gestion des données d'exercice professionnel dans le ROR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee"
      }]
    }]
  }
}

```
