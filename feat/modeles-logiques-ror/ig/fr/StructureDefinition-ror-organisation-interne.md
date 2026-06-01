# ROR - Organisation Interne - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Modèle logique: ROR - Organisation Interne ( Expérimental ) 

 
Modèle logique ROR représentant une organisation interne d'une structure de santé (pôle, service, unité fonctionnelle). Cette entité n'existe pas dans le MOS et est propre au ROR. 

**Utilisations:**

* Référence ce Modèle logique: [ROR - Entité Géographique](StructureDefinition-ror-entite-geographique.md) and [ROR - Offre Opérationnelle](StructureDefinition-ror-offre-operationnelle.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-organisation-interne)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(5 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [ROR - Entité Géographique (https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-geographique|0.1.0)](StructureDefinition-ror-entite-geographique.md)
* [ROR - Offre Opérationnelle (https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle|0.1.0)](StructureDefinition-ror-offre-operationnelle.md)

 **Vue différentielle** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(5 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [ROR - Entité Géographique (https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-geographique|0.1.0)](StructureDefinition-ror-entite-geographique.md)
* [ROR - Offre Opérationnelle (https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle|0.1.0)](StructureDefinition-ror-offre-operationnelle.md)

 

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
  "name" : "RorOrganisationInterne",
  "title" : "ROR - Organisation Interne",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-01T10:10:25+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Modèle logique ROR représentant une organisation interne d'une structure de santé (pôle, service, unité fonctionnelle). Cette entité n'existe pas dans le MOS et est propre au ROR.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-organisation-interne",
      "path" : "ror-organisation-interne",
      "short" : "ROR - Organisation Interne",
      "definition" : "Modèle logique ROR représentant une organisation interne d'une structure de santé (pôle, service, unité fonctionnelle). Cette entité n'existe pas dans le MOS et est propre au ROR."
    },
    {
      "id" : "ror-organisation-interne.identifiant",
      "path" : "ror-organisation-interne.identifiant",
      "short" : "Identifiant unique dans le ROR",
      "definition" : "Identifiant de l'organisation interne",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "ror-organisation-interne.nom",
      "path" : "ror-organisation-interne.nom",
      "short" : "Libellé du pôle, service ou unité",
      "definition" : "Nom de l'organisation interne",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ror-organisation-interne.type",
      "path" : "ror-organisation-interne.type",
      "short" : "Pôle | Service | Unité fonctionnelle | Unité de soins",
      "definition" : "Type d'organisation interne",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "extensible",
        "description" : "Type d'organisation interne ROR"
      }
    },
    {
      "id" : "ror-organisation-interne.entiteGeographiqueRattachement",
      "path" : "ror-organisation-interne.entiteGeographiqueRattachement",
      "short" : "Entité géographique à laquelle appartient cette organisation",
      "definition" : "Entité géographique de rattachement",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-geographique|0.1.0"]
      }]
    },
    {
      "id" : "ror-organisation-interne.responsable",
      "path" : "ror-organisation-interne.responsable",
      "short" : "Professionnel responsable du pôle ou service",
      "definition" : "Responsable de l'organisation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ror-organisation-interne.responsable.nom",
      "path" : "ror-organisation-interne.responsable.nom",
      "short" : "Nom du responsable",
      "definition" : "Nom du responsable",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ror-organisation-interne.responsable.prenom",
      "path" : "ror-organisation-interne.responsable.prenom",
      "short" : "Prénom du responsable",
      "definition" : "Prénom du responsable",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ror-organisation-interne.responsable.rpps",
      "path" : "ror-organisation-interne.responsable.rpps",
      "short" : "Numéro RPPS du responsable",
      "definition" : "Numéro RPPS du responsable",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ror-organisation-interne.offres",
      "path" : "ror-organisation-interne.offres",
      "short" : "Offres opérationnelles rattachées à cette organisation interne",
      "definition" : "Offres portées par cette organisation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle|0.1.0"]
      }]
    },
    {
      "id" : "ror-organisation-interne.dateMiseAJour",
      "path" : "ror-organisation-interne.dateMiseAJour",
      "short" : "Horodatage de la dernière modification dans le ROR",
      "definition" : "Date de mise à jour de la fiche",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
