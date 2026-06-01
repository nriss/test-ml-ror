# ROR - Entité Géographique - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Modèle logique: ROR - Entité Géographique ( Expérimental ) 

 
Spécialisation ROR du modèle MOS EntiteGeographique. Ajoute des éléments de géolocalisation et de contact opérationnel propres au ROR. 

**Utilisations:**

* Référence ce Modèle logique: [ROR - Offre Opérationnelle](StructureDefinition-ror-offre-operationnelle.md) and [ROR - Organisation Interne](StructureDefinition-ror-organisation-interne.md)

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

#### Contraintes

Cette structure est dérivée de [EntiteGeographique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-EntiteGeographique.html) 

** Résumé **

Obligatoire : 3 éléments(2 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [ROR - Organisation Interne (https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-organisation-interne|0.1.0)](StructureDefinition-ror-organisation-interne.md)

 **Vue différentielle** 

Cette structure est dérivée de [EntiteGeographique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-EntiteGeographique.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [EntiteGeographique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-EntiteGeographique.html) 

** Résumé **

Obligatoire : 3 éléments(2 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [ROR - Organisation Interne (https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-organisation-interne|0.1.0)](StructureDefinition-ror-organisation-interne.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-entite-geographique.csv), [Excel](../StructureDefinition-ror-entite-geographique.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-entite-geographique",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-geographique",
  "version" : "0.1.0",
  "name" : "RorEntiteGeographique",
  "title" : "ROR - Entité Géographique",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-01T10:04:08+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Spécialisation ROR du modèle MOS EntiteGeographique. Ajoute des éléments de géolocalisation et de contact opérationnel propres au ROR.",
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
      "short" : "ROR - Entité Géographique",
      "definition" : "Spécialisation ROR du modèle MOS EntiteGeographique. Ajoute des éléments de géolocalisation et de contact opérationnel propres au ROR."
    },
    {
      "id" : "ror-entite-geographique.identifiantEG",
      "path" : "ror-entite-geographique.identifiantEG",
      "short" : "Identifiant national de l'entité géographique dans le ROR",
      "min" : 1
    },
    {
      "id" : "ror-entite-geographique.nomOperationnel",
      "path" : "ror-entite-geographique.nomOperationnel",
      "short" : "Nom opérationnel affiché dans le ROR",
      "min" : 1
    },
    {
      "id" : "ror-entite-geographique.secteurActivite",
      "path" : "ror-entite-geographique.secteurActivite",
      "short" : "Secteur d'activité principal de l'entité (restreint aux secteurs couverts par le ROR)",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/vs-ror-secteur-activite|0.1.0"
      }
    },
    {
      "id" : "ror-entite-geographique.categorieEtablissement",
      "path" : "ror-entite-geographique.categorieEtablissement",
      "short" : "Catégorie d'établissement (MCO, SSR, PSY, etc.)"
    },
    {
      "id" : "ror-entite-geographique.coordonneesGeographiques",
      "path" : "ror-entite-geographique.coordonneesGeographiques",
      "short" : "Géolocalisation pour l'affichage cartographique",
      "definition" : "Coordonnées GPS de l'entité",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "ror-entite-geographique.coordonneesGeographiques.latitude",
      "path" : "ror-entite-geographique.coordonneesGeographiques.latitude",
      "short" : "Latitude",
      "definition" : "Latitude",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "ror-entite-geographique.coordonneesGeographiques.longitude",
      "path" : "ror-entite-geographique.coordonneesGeographiques.longitude",
      "short" : "Longitude",
      "definition" : "Longitude",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "ror-entite-geographique.accessibilitePMR",
      "path" : "ror-entite-geographique.accessibilitePMR",
      "short" : "Indique si l'entité est accessible aux PMR",
      "definition" : "Accessibilité pour les personnes à mobilité réduite",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "ror-entite-geographique.horairesAccueil",
      "path" : "ror-entite-geographique.horairesAccueil",
      "short" : "Horaires d'ouverture du secrétariat / accueil (texte libre)",
      "definition" : "Horaires d'accueil administratif",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ror-entite-geographique.telephoneContact",
      "path" : "ror-entite-geographique.telephoneContact",
      "short" : "Téléphone de contact pour les usagers",
      "definition" : "Numéro de téléphone principal",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ror-entite-geographique.organisationsInternes",
      "path" : "ror-entite-geographique.organisationsInternes",
      "short" : "Liste des pôles, services et unités rattachés à cette entité",
      "definition" : "Organisations internes de cette entité",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-organisation-interne|0.1.0"]
      }]
    }]
  }
}

```
