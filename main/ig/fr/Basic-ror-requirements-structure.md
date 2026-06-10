# Règles de gestion - Structure - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Basic: Règles de gestion - Structure

Profil: [Cross-version Profile for R5.Requirements for use in FHIR R4](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-profile-Requirements.html)

**R5: Canonical identifier for this Requirements, represented as a URI (globally unique) (new)**: [https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/structure](https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/structure)

**R5: Name for this Requirements (computer friendly) (new)**: RORRequirementsStructure

**R5: Name for this Requirements (human friendly) (new)**: Règles de gestion - Structure

**R5: Natural language description of the requirements (new)**: 

Règles de gestion du modèle d'exposition ROR relatives aux classes Structure (EntiteJuridique, EntiteGeographique).

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-002
* requirement: 
* conformance: SHALL

**RG_EXP_002** : Si un élément obligatoire dans la structure du flux d'échange n'est pas renseigné dans le ROR interrogé, alors l'instance de l'entité à laquelle appartient cet élément NE DOIT PAS être transmise. Les instances des entités hiérarchiquement inférieures NE DOIVENT PAS être transmises non plus.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-003
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Entité Géographique](StructureDefinition-ror-entite-geographique.md)

**RG_EXP_003** : Si la date de fermeture transmise est la date de fermeture définitive, alors `typeFermeture` DOIT être renseigné avec l'OID correspondant au code DEF issu du référentiel FINESS.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-004
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Entité Juridique](StructureDefinition-ror-entite-juridique.md)

**RG_EXP_004** : L'`idNat_Struct` DOIT être renseigné en priorité avec le numéro FINESS si l'établissement est immatriculé dans FINESS.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-005
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Entité Géographique](StructureDefinition-ror-entite-geographique.md)

**RG_EXP_005** : L'`idNat_Struct` de l'EG DOIT être renseigné en priorité avec le numéro FINESS si l'établissement est immatriculé dans FINESS.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-006
* requirement: 
* conformance: MAY
* satisfiedBy: [ROR - Entité Géographique](StructureDefinition-ror-entite-geographique.md)

**RG_EXP_006** : Les contacts d'une EG PEUVENT contenir les contacts du directeur et de la cellule d'alerte.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-030-eg
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Entité Géographique](StructureDefinition-ror-entite-geographique.md)

**RG_EXP_030** : L'attribut `territoireSante` est obligatoirement une division territoriale de type « Territoire de Santé ».

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-037
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Entité Juridique](StructureDefinition-ror-entite-juridique.md)

**RG_EXP_037** : Lorsque `numEJ_RPPS_ADELI_Rang` est renseigné, il doit être utilisé pour la construction de l'`idNat_Struct`.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-038
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Entité Géographique](StructureDefinition-ror-entite-geographique.md)

**RG_EXP_038** : Lorsque `numEG_RPPS_ADELI_Rang` est renseigné, il doit être utilisé pour la construction de l'`idNat_Struct`.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-043
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Entité Juridique](StructureDefinition-ror-entite-juridique.md)
* satisfiedBy: [ROR - Entité Géographique](StructureDefinition-ror-entite-geographique.md)

**RG_EXP_043** : La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné, sinon elle n'est jamais renseignée.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-044
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Entité Juridique](StructureDefinition-ror-entite-juridique.md)
* satisfiedBy: [ROR - Entité Géographique](StructureDefinition-ror-entite-geographique.md)

**RG_EXP_044** : Lorsqu'un niveau de structure ou d'organisation est fermé, tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermés avec le même type, la même date de fermeture et, le cas échéant, la même date de réouverture prévisionnelle.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-045
* requirement: 
* conformance: MAY
* satisfiedBy: [ROR - Entité Juridique](StructureDefinition-ror-entite-juridique.md)
* satisfiedBy: [ROR - Entité Géographique](StructureDefinition-ror-entite-geographique.md)

**RG_EXP_045** : La date de réouverture peut être renseignée lorsque le type de fermeture est « Fermeture temporaire », sinon elle n'est jamais renseignée.

**code**: Requirements



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "ror-requirements-structure",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/profile-Requirements"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.url",
    "valueUri" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/structure"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.name",
    "valueString" : "RORRequirementsStructure"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.title",
    "valueString" : "Règles de gestion - Structure"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.description",
    "valueMarkdown" : "Règles de gestion du modèle d'exposition ROR relatives aux classes Structure (EntiteJuridique, EntiteGeographique)."
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-002"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_002** : Si un élément obligatoire dans la structure du flux d'échange n'est pas renseigné dans le ROR interrogé, alors l'instance de l'entité à laquelle appartient cet élément NE DOIT PAS être transmise. Les instances des entités hiérarchiquement inférieures NE DOIVENT PAS être transmises non plus."
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
      "valueId" : "RG-EXP-003"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_003** : Si la date de fermeture transmise est la date de fermeture définitive, alors `typeFermeture` DOIT être renseigné avec l'OID correspondant au code DEF issu du référentiel FINESS."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-geographique"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-004"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_004** : L'`idNat_Struct` DOIT être renseigné en priorité avec le numéro FINESS si l'établissement est immatriculé dans FINESS."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-juridique"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-005"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_005** : L'`idNat_Struct` de l'EG DOIT être renseigné en priorité avec le numéro FINESS si l'établissement est immatriculé dans FINESS."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-geographique"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-006"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_006** : Les contacts d'une EG PEUVENT contenir les contacts du directeur et de la cellule d'alerte."
    },
    {
      "url" : "conformance",
      "valueCode" : "MAY"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-geographique"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-030-eg"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_030** : L'attribut `territoireSante` est obligatoirement une division territoriale de type « Territoire de Santé »."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-geographique"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-037"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_037** : Lorsque `numEJ_RPPS_ADELI_Rang` est renseigné, il doit être utilisé pour la construction de l'`idNat_Struct`."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-juridique"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-038"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_038** : Lorsque `numEG_RPPS_ADELI_Rang` est renseigné, il doit être utilisé pour la construction de l'`idNat_Struct`."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-geographique"
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
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-juridique"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-geographique"
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
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-juridique"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-geographique"
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
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-juridique"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-geographique"
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
