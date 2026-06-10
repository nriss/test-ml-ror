# Règles de gestion - Organisation - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Basic: Règles de gestion - Organisation

Profil: [Cross-version Profile for R5.Requirements for use in FHIR R4](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-profile-Requirements.html)

**R5: Canonical identifier for this Requirements, represented as a URI (globally unique) (new)**: [https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/organisation](https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/organisation)

**R5: Name for this Requirements (computer friendly) (new)**: RORRequirementsOrganisation

**R5: Name for this Requirements (human friendly) (new)**: Règles de gestion - Organisation

**R5: Natural language description of the requirements (new)**: 

Règles de gestion du modèle d'exposition ROR relatives aux classes Organisation interne.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-013
* requirement: 
* conformance: MAY
* satisfiedBy: [ROR - Organisation Interne](StructureDefinition-ror-organisation-interne.md)

**RG_EXP_013** : En fonction du type d'OI, les contacts PEUVENT inclure le contact du responsable du pôle, le contact du responsable du service, le contact du responsable de l'unité, le contact du secrétariat, le contact du secrétariat de permanence.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-043
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Organisation Interne](StructureDefinition-ror-organisation-interne.md)

**RG_EXP_043** : La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné, sinon elle n'est jamais renseignée.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-044
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Organisation Interne](StructureDefinition-ror-organisation-interne.md)

**RG_EXP_044** : Lorsqu'un niveau de structure ou d'organisation est fermé, tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermés avec le même type, la même date de fermeture et, le cas échéant, la même date de réouverture prévisionnelle.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-045
* requirement: 
* conformance: MAY
* satisfiedBy: [ROR - Organisation Interne](StructureDefinition-ror-organisation-interne.md)

**RG_EXP_045** : La date de réouverture peut être renseignée lorsque le type de fermeture est « Fermeture temporaire », sinon elle n'est jamais renseignée.

**code**: Requirements



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "ror-requirements-organisation",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/profile-Requirements"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.url",
    "valueUri" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/organisation"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.name",
    "valueString" : "RORRequirementsOrganisation"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.title",
    "valueString" : "Règles de gestion - Organisation"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.description",
    "valueMarkdown" : "Règles de gestion du modèle d'exposition ROR relatives aux classes Organisation interne."
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-013"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_013** : En fonction du type d'OI, les contacts PEUVENT inclure le contact du responsable du pôle, le contact du responsable du service, le contact du responsable de l'unité, le contact du secrétariat, le contact du secrétariat de permanence."
    },
    {
      "url" : "conformance",
      "valueCode" : "MAY"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-organisation-interne"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-043"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_043** : La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné, sinon elle n'est jamais renseignée."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-organisation-interne"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-044"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_044** : Lorsqu'un niveau de structure ou d'organisation est fermé, tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermés avec le même type, la même date de fermeture et, le cas échéant, la même date de réouverture prévisionnelle."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-organisation-interne"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-045"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_045** : La date de réouverture peut être renseignée lorsque le type de fermeture est « Fermeture temporaire », sinon elle n'est jamais renseignée."
    },
    {
      "url" : "conformance",
      "valueCode" : "MAY"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-organisation-interne"
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
