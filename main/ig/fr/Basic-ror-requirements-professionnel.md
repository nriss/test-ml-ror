# Règles de gestion - Professionnel Ressource - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Basic: Règles de gestion - Professionnel Ressource

Profil: [Cross-version Profile for R5.Requirements for use in FHIR R4](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-profile-Requirements.html)

**R5: Canonical identifier for this Requirements, represented as a URI (globally unique) (new)**: [https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/professionnel](https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/professionnel)

**R5: Name for this Requirements (computer friendly) (new)**: RORRequirementsProfessionnel

**R5: Name for this Requirements (human friendly) (new)**: Règles de gestion - Professionnel Ressource

**R5: Natural language description of the requirements (new)**: 

Règles de gestion du modèle d'exposition ROR relatives aux classes Professionnel Ressource.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-030
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Professionnel](StructureDefinition-ror-professionnel.md)

**RG_EXP_030** : En cas de coexistence d'un identifiant RPPS et ADELI pour un même professionnel, l'identifiant RPPS est prioritaire.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-031
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Professionnel](StructureDefinition-ror-professionnel.md)

**RG_EXP_031** : Les données issues du RPPS (profession, civilité d'exercice, etc.) ne sont pas modifiables dans le ROR.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-049
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Situation Opérationnelle](StructureDefinition-ror-situation-operationnelle.md)

**RG_EXP_049** : Uniquement les valeurs de `Horaire/typeHoraire` suivantes sont applicables pour les professionnels : `03` (Horaire de garde), `06` (Horaire de consultation sans RDV), `07` (Horaire de consultation sur RDV).

**code**: Requirements



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "ror-requirements-professionnel",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/profile-Requirements"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.url",
    "valueUri" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/professionnel"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.name",
    "valueString" : "RORRequirementsProfessionnel"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.title",
    "valueString" : "Règles de gestion - Professionnel Ressource"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.description",
    "valueMarkdown" : "Règles de gestion du modèle d'exposition ROR relatives aux classes Professionnel Ressource."
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-030"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_030** : En cas de coexistence d'un identifiant RPPS et ADELI pour un même professionnel, l'identifiant RPPS est prioritaire."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-professionnel"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-031"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_031** : Les données issues du RPPS (profession, civilité d'exercice, etc.) ne sont pas modifiables dans le ROR."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-professionnel"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-049"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_049** : Uniquement les valeurs de `Horaire/typeHoraire` suivantes sont applicables pour les professionnels : `03` (Horaire de garde), `06` (Horaire de consultation sans RDV), `07` (Horaire de consultation sur RDV)."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-situation-operationnelle"
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
