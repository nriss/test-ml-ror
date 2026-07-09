# ROR - Personne Physique - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Modèle logique: ROR - Personne Physique 

 
Spécialisation ROR de la PersonnePhysique du MOS. Individu titulaire de droits et d'obligations caractérisé par une identité civile, dans le contexte ROR. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-personne-physique)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [PersonnePhysique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-PersonnePhysique.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [PersonnePhysique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-PersonnePhysique.html) 

** Résumé **

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [PersonnePhysique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-PersonnePhysique.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [PersonnePhysique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-PersonnePhysique.html) 

** Résumé **

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-personne-physique.csv), [Excel](../StructureDefinition-ror-personne-physique.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-personne-physique",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-personne-physique",
  "version" : "0.1.0",
  "name" : "RORPersonnePhysique",
  "title" : "ROR - Personne Physique",
  "status" : "draft",
  "date" : "2026-07-09T15:33:10+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Spécialisation ROR de la PersonnePhysique du MOS. Individu titulaire de droits et d'obligations caractérisé par une identité civile, dans le contexte ROR.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-personne-physique",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePhysique|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-personne-physique",
      "path" : "ror-personne-physique",
      "short" : "Personne physique dans le contexte ROR",
      "definition" : "Spécialisation ROR de la PersonnePhysique du MOS."
    },
    {
      "id" : "ror-personne-physique.civilite",
      "path" : "ror-personne-physique.civilite",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-civilite|0.1.0"
      }
    },
    {
      "id" : "ror-personne-physique.metadonnee",
      "path" : "ror-personne-physique.metadonnee",
      "short" : "Informations relatives à la gestion des données de la personne physique dans le ROR.",
      "definition" : "Informations relatives à la gestion des données de la personne physique dans le ROR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee"
      }]
    }]
  }
}

```
