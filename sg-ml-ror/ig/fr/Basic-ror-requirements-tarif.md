# Règles de gestion - Tarif - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Basic: Règles de gestion - Tarif

Profil: [Cross-version Profile for R5.Requirements for use in FHIR R4](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-profile-Requirements.html)

**R5: Canonical identifier for this Requirements, represented as a URI (globally unique) (new)**: [https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/tarif](https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/tarif)

**R5: Name for this Requirements (computer friendly) (new)**: RORRequirementsTarif

**R5: Name for this Requirements (human friendly) (new)**: Règles de gestion - Tarif

**R5: Natural language description of the requirements (new)**: 

Règles de gestion du modèle d'exposition ROR relatives aux classes Tarif.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-026
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Forfait Socle Hébergement](StructureDefinition-ror-forfait-socle-hebergement.md)

**RG_EXP_026** : Un seul tarif de type « Forfait socle hébergement » PEUT être instancié pour chaque combinaison de `tarifMoins60Ans`, `typeHabitation`, `temporaliteAccueil`, `conditionTarifaire` pour une même EG.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-027
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Tarif](StructureDefinition-ror-tarif.md)

**RG_EXP_027** : Pour les autres types de tarifs, un seul montant PEUT être exposé pour chaque combinaison des valeurs des attributs (hors montant) pour une même EG.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-029
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Supplément Tarif Hébergement](StructureDefinition-ror-supplement-tarif-hebergement.md)

**RG_EXP_029** : L'attribut `typeHabitation` d'un tarif de type « supplément tarif hébergement » DOIT prendre la valeur « chambre simple ».

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-036
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Tarif Prestation Supplémentaire](StructureDefinition-ror-tarif-prestation-supplementaire.md)

**RG_EXP_036** : Les attributs `nomPrestationSupp` et `nomAutrePrestationSupp` de la classe `TarifPrestationSupplementaire` sont mutuellement exclusifs.

**code**: Requirements



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "ror-requirements-tarif",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/profile-Requirements"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.url",
    "valueUri" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/tarif"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.name",
    "valueString" : "RORRequirementsTarif"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.title",
    "valueString" : "Règles de gestion - Tarif"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.description",
    "valueMarkdown" : "Règles de gestion du modèle d'exposition ROR relatives aux classes Tarif."
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-026"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_026** : Un seul tarif de type « Forfait socle hébergement » PEUT être instancié pour chaque combinaison de `tarifMoins60Ans`, `typeHabitation`, `temporaliteAccueil`, `conditionTarifaire` pour une même EG."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-forfait-socle-hebergement"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-027"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_027** : Pour les autres types de tarifs, un seul montant PEUT être exposé pour chaque combinaison des valeurs des attributs (hors montant) pour une même EG."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-029"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_029** : L'attribut `typeHabitation` d'un tarif de type « supplément tarif hébergement » DOIT prendre la valeur « chambre simple »."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-supplement-tarif-hebergement"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-036"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_036** : Les attributs `nomPrestationSupp` et `nomAutrePrestationSupp` de la classe `TarifPrestationSupplementaire` sont mutuellement exclusifs."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif-prestation-supplementaire"
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
