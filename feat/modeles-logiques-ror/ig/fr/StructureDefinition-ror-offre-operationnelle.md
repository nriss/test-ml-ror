# ROR - Offre Opérationnelle - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Modèle logique: ROR - Offre Opérationnelle ( Expérimental ) 

 
Spécialisation ROR du modèle MOS OffreOperationnelle. Ajoute des éléments propres au Répertoire de l'Offre de soins et des Ressources. 

**Utilisations:**

* Référence ce Modèle logique: [ROR - Organisation Interne](StructureDefinition-ror-organisation-interne.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-offre-operationnelle)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [OffreOperationnelle](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-OffreOperationnelle.html) 

#### Bindings terminologiques

Cette structure est dérivée de [OffreOperationnelle](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-OffreOperationnelle.html) 

** Résumé **

Obligatoire : 5 éléments(1 élément obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [ROR - Entité Géographique (https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-geographique|0.1.0)](StructureDefinition-ror-entite-geographique.md)
* [ROR - Organisation Interne (https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-organisation-interne|0.1.0)](StructureDefinition-ror-organisation-interne.md)

 **Vue différentielle** 

Cette structure est dérivée de [OffreOperationnelle](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-OffreOperationnelle.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [OffreOperationnelle](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-OffreOperationnelle.html) 

** Résumé **

Obligatoire : 5 éléments(1 élément obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [ROR - Entité Géographique (https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-geographique|0.1.0)](StructureDefinition-ror-entite-geographique.md)
* [ROR - Organisation Interne (https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-organisation-interne|0.1.0)](StructureDefinition-ror-organisation-interne.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-offre-operationnelle.csv), [Excel](../StructureDefinition-ror-offre-operationnelle.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-offre-operationnelle",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle",
  "version" : "0.1.0",
  "name" : "RorOffreOperationnelle",
  "title" : "ROR - Offre Opérationnelle",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-01T10:07:23+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Spécialisation ROR du modèle MOS OffreOperationnelle. Ajoute des éléments propres au Répertoire de l'Offre de soins et des Ressources.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/OffreOperationnelle|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-offre-operationnelle",
      "path" : "ror-offre-operationnelle",
      "short" : "ROR - Offre Opérationnelle",
      "definition" : "Spécialisation ROR du modèle MOS OffreOperationnelle. Ajoute des éléments propres au Répertoire de l'Offre de soins et des Ressources."
    },
    {
      "id" : "ror-offre-operationnelle.identifiantOffre",
      "path" : "ror-offre-operationnelle.identifiantOffre",
      "short" : "Identifiant unique de l'offre dans le ROR",
      "min" : 1
    },
    {
      "id" : "ror-offre-operationnelle.nomOffre",
      "path" : "ror-offre-operationnelle.nomOffre",
      "short" : "Nom de l'offre tel qu'affiché dans le ROR",
      "min" : 1
    },
    {
      "id" : "ror-offre-operationnelle.typeOffre",
      "path" : "ror-offre-operationnelle.typeOffre",
      "short" : "Type d'offre (ex : soins, médico-social)",
      "min" : 1
    },
    {
      "id" : "ror-offre-operationnelle.champActivite",
      "path" : "ror-offre-operationnelle.champActivite",
      "short" : "Champ d'activité principal de l'offre",
      "min" : 1
    },
    {
      "id" : "ror-offre-operationnelle.modePriseEnCharge",
      "path" : "ror-offre-operationnelle.modePriseEnCharge",
      "short" : "Mode de prise en charge proposé",
      "min" : 1
    },
    {
      "id" : "ror-offre-operationnelle.dateFermeture",
      "path" : "ror-offre-operationnelle.dateFermeture",
      "short" : "Date à partir de laquelle l'offre n'est plus active dans le ROR"
    },
    {
      "id" : "ror-offre-operationnelle.dateOuverture",
      "path" : "ror-offre-operationnelle.dateOuverture",
      "short" : "Date à partir de laquelle l'offre est active dans le ROR",
      "definition" : "Date d'ouverture de l'offre",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "ror-offre-operationnelle.entiteGeographique",
      "path" : "ror-offre-operationnelle.entiteGeographique",
      "short" : "Lieu de réalisation de l'offre",
      "definition" : "Entité géographique où l'offre est réalisée",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-geographique|0.1.0"]
      }]
    },
    {
      "id" : "ror-offre-operationnelle.organisationInterne",
      "path" : "ror-offre-operationnelle.organisationInterne",
      "short" : "Pôle, service ou unité qui porte l'offre",
      "definition" : "Organisation interne porteuse de l'offre",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-organisation-interne|0.1.0"]
      }]
    },
    {
      "id" : "ror-offre-operationnelle.tarifInformation",
      "path" : "ror-offre-operationnelle.tarifInformation",
      "short" : "Information sur les tarifs pratiqués (texte libre)",
      "definition" : "Information tarifaire",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
