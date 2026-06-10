# Règles de gestion - Classes Communes - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Basic: Règles de gestion - Classes Communes

Profil: [Cross-version Profile for R5.Requirements for use in FHIR R4](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-profile-Requirements.html)

**R5: Canonical identifier for this Requirements, represented as a URI (globally unique) (new)**: [https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/classes-communes](https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/classes-communes)

**R5: Name for this Requirements (computer friendly) (new)**: RORRequirementsClassesCommunes

**R5: Name for this Requirements (human friendly) (new)**: Règles de gestion - Classes Communes

**R5: Natural language description of the requirements (new)**: 

Règles de gestion du modèle d'exposition ROR relatives aux classes transverses Contact, Telecommunication et Metadonnee.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-032
* requirement: 
* conformance: SHALL

**RG_EXP_032** : Lors de la création d'un objet Contact, le niveau de confidentialité a la valeur par défaut « restreint ».

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-034
* requirement: 
* conformance: SHALL

**RG_EXP_034** : Le niveau de confidentialité de l'objet Télécommunication doit être plus restrictif ou égal au niveau de confidentialité de l'objet Contact auquel il est rattaché.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-039
* requirement: 
* conformance: SHALL

**RG_EXP_039** : Dans une unité sensible, le niveau de confidentialité des contacts doit être positionné à la valeur « très restreint ».

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-040
* requirement: 
* conformance: SHALL

**RG_EXP_040** : Si l'attribut `natureContact` est renseigné dans l'objet Contact, alors il ne doit pas y avoir de `nom` de contact ni de `fonctionContact`.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-041
* requirement: 
* conformance: SHALL

**RG_EXP_041** : Si l'attribut `fonctionContact` est renseigné dans l'objet Contact, alors il doit y avoir un `nom` de contact et il ne doit pas y avoir de `natureContact`.

**code**: Requirements



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "ror-requirements-classes-communes",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/profile-Requirements"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.url",
    "valueUri" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/classes-communes"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.name",
    "valueString" : "RORRequirementsClassesCommunes"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.title",
    "valueString" : "Règles de gestion - Classes Communes"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.description",
    "valueMarkdown" : "Règles de gestion du modèle d'exposition ROR relatives aux classes transverses Contact, Telecommunication et Metadonnee."
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-032"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_032** : Lors de la création d'un objet Contact, le niveau de confidentialité a la valeur par défaut « restreint »."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-034"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_034** : Le niveau de confidentialité de l'objet Télécommunication doit être plus restrictif ou égal au niveau de confidentialité de l'objet Contact auquel il est rattaché."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-039"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_039** : Dans une unité sensible, le niveau de confidentialité des contacts doit être positionné à la valeur « très restreint »."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-040"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_040** : Si l'attribut `natureContact` est renseigné dans l'objet Contact, alors il ne doit pas y avoir de `nom` de contact ni de `fonctionContact`."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-041"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_041** : Si l'attribut `fonctionContact` est renseigné dans l'objet Contact, alors il doit y avoir un `nom` de contact et il ne doit pas y avoir de `natureContact`."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
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
