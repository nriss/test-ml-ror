# Règles de gestion - Ressources Opérationnelles - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Basic: Règles de gestion - Ressources Opérationnelles

Profil: [Cross-version Profile for R5.Requirements for use in FHIR R4](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-profile-Requirements.html)

**R5: Canonical identifier for this Requirements, represented as a URI (globally unique) (new)**: [https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/ressources-operationnelles](https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/ressources-operationnelles)

**R5: Name for this Requirements (computer friendly) (new)**: RORRequirementsRessourcesOperationnelles

**R5: Name for this Requirements (human friendly) (new)**: Règles de gestion - Ressources Opérationnelles

**R5: Natural language description of the requirements (new)**: 

Règles de gestion du modèle d'exposition ROR relatives aux classes CapaciteAccueilOperationnelle, LieuRealisationOffre, EquipementSpecifique.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-047
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Capacité d'Accueil Opérationnelle](StructureDefinition-ror-capacite-accueil-operationnelle.md)

**RG_EXP_047** : Lorsque le `statutCapacite` est à « disponible » avec une valeur à 0, cela indique que l'offre est actuellement saturée mais reste ouverte.

**code**: Requirements



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "ror-requirements-ressources-operationnelles",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/profile-Requirements"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.url",
    "valueUri" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/ressources-operationnelles"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.name",
    "valueString" : "RORRequirementsRessourcesOperationnelles"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.title",
    "valueString" : "Règles de gestion - Ressources Opérationnelles"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.description",
    "valueMarkdown" : "Règles de gestion du modèle d'exposition ROR relatives aux classes CapaciteAccueilOperationnelle, LieuRealisationOffre, EquipementSpecifique."
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-047"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_047** : Lorsque le `statutCapacite` est à « disponible » avec une valeur à 0, cela indique que l'offre est actuellement saturée mais reste ouverte."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-capacite-accueil-operationnelle"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  }],
  "code" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/resource-types",
      "code" : "Requirements"
    }]
  }
}

```
