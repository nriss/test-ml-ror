# ROR - Droit d'Exercice Complémentaire - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Modèle logique: ROR - Droit d'Exercice Complémentaire 

 
Spécialisation ROR du DroitExerciceComplementaire du MOS. Droit d'exercice dans une spécialité définie par un DESC de médecine du groupe I. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-droit-exercice-complementaire)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [DroitExerciceComplementaire](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-DroitExerciceComplementaire.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [DroitExerciceComplementaire](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-DroitExerciceComplementaire.html) 

** Résumé **

 **Vue différentielle** 

Cette structure est dérivée de [DroitExerciceComplementaire](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-DroitExerciceComplementaire.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [DroitExerciceComplementaire](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-DroitExerciceComplementaire.html) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-droit-exercice-complementaire.csv), [Excel](../StructureDefinition-ror-droit-exercice-complementaire.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-droit-exercice-complementaire",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-droit-exercice-complementaire",
  "version" : "0.1.0",
  "name" : "RORDroitExerciceComplementaire",
  "title" : "ROR - Droit d'Exercice Complémentaire",
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
  "description" : "Spécialisation ROR du DroitExerciceComplementaire du MOS. Droit d'exercice dans une spécialité définie par un DESC de médecine du groupe I.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-droit-exercice-complementaire",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DroitExerciceComplementaire|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-droit-exercice-complementaire",
      "path" : "ror-droit-exercice-complementaire",
      "short" : "Droit d'exercice complémentaire dans le contexte ROR",
      "definition" : "Spécialisation ROR du DroitExerciceComplementaire du MOS."
    },
    {
      "id" : "ror-droit-exercice-complementaire.droitExerciceComplementaire",
      "path" : "ror-droit-exercice-complementaire.droitExerciceComplementaire",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-droit-exercice-complementaire|0.1.0"
      }
    }]
  }
}

```
