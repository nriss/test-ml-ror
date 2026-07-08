# ROR - Organisation Interne - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Modèle logique: ROR - Organisation Interne 

 
Spécialisation ROR de l'OrganisationInterne du MOS. Classe abstraite décrivant l'organisation opérationnelle interne d'une EG (pôles, services, unités fonctionnelles). 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-organisation-interne)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [OrganisationInterne](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-OrganisationInterne.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [OrganisationInterne](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-OrganisationInterne.html) 

** Résumé **

Obligatoire : 3 éléments(1 élément obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [OrganisationInterne](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-OrganisationInterne.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [OrganisationInterne](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-OrganisationInterne.html) 

** Résumé **

Obligatoire : 3 éléments(1 élément obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-organisation-interne.csv), [Excel](../StructureDefinition-ror-organisation-interne.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-organisation-interne",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-organisation-interne",
  "version" : "0.1.0",
  "name" : "ROROrganisationInterne",
  "title" : "ROR - Organisation Interne",
  "status" : "draft",
  "date" : "2026-07-08T15:14:17+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Spécialisation ROR de l'OrganisationInterne du MOS. Classe abstraite décrivant l'organisation opérationnelle interne d'une EG (pôles, services, unités fonctionnelles).",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-organisation-interne",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/OrganisationInterne|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-organisation-interne",
      "path" : "ror-organisation-interne",
      "short" : "Organisation interne d'un établissement dans le contexte ROR",
      "definition" : "Spécialisation ROR de l'OrganisationInterne du MOS. Classe abstraite décrivant l'organisation opérationnelle interne d'une EG."
    },
    {
      "id" : "ror-organisation-interne.identifiantOI",
      "path" : "ror-organisation-interne.identifiantOI",
      "short" : "Identifiant de l'organisation interne (obligatoire dans le ROR, format : codeINSEE/identifiant)",
      "min" : 1
    },
    {
      "id" : "ror-organisation-interne.nomOI",
      "path" : "ror-organisation-interne.nomOI",
      "short" : "Nom de l'organisation interne (obligatoire dans le ROR)",
      "min" : 1
    },
    {
      "id" : "ror-organisation-interne.typeOI",
      "path" : "ror-organisation-interne.typeOI",
      "short" : "Type d'organisation interne (obligatoire dans le ROR)",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-type-organisation-interne|0.1.0"
      }
    },
    {
      "id" : "ror-organisation-interne.typeFermeture",
      "path" : "ror-organisation-interne.typeFermeture",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J185-typeFermeture-ROR/FHIR/JDV-J185-typeFermeture-ROR"
      }
    },
    {
      "id" : "ror-organisation-interne.metadonnee",
      "path" : "ror-organisation-interne.metadonnee",
      "short" : "Informations relatives à la gestion des données de l'organisation interne dans le ROR.",
      "definition" : "Informations relatives à la gestion des données de l'organisation interne dans le ROR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee"
      }]
    }]
  }
}

```
