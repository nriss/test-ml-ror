# Règles de gestion - Offre Opérationnelle - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Basic: Règles de gestion - Offre Opérationnelle

Profil: [Cross-version Profile for R5.Requirements for use in FHIR R4](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-profile-Requirements.html)

**R5: Canonical identifier for this Requirements, represented as a URI (globally unique) (new)**: [https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/offre-operationnelle](https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/offre-operationnelle)

**R5: Name for this Requirements (computer friendly) (new)**: RORRequirementsOffreOperationnelle

**R5: Name for this Requirements (human friendly) (new)**: Règles de gestion - Offre Opérationnelle

**R5: Natural language description of the requirements (new)**: 

Règles de gestion du modèle d'exposition ROR relatives aux classes OffreOperationnelle, ActiviteOperationnelle et Patientele.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-007
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Activité Opérationnelle](StructureDefinition-ror-activite-operationnelle.md)

**RG_EXP_007** : La `familleActiviteOperationnelle` DOIT être renseignée pour toute instance de la classe Activité Opérationnelle liée à une offre dont le `champActivite` est « médico-social ».

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-008
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Patientèle](StructureDefinition-ror-patientele.md)

**RG_EXP_008** : Si le `champActivite` de l'offre est « médico-social », le public pris en charge (`publicPrisEnCharge`) DOIT être renseigné dans l'instance de la classe Patientèle.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-009
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Patientèle](StructureDefinition-ror-patientele.md)

**RG_EXP_009** : Chaque instance de la zone d'intervention DOIT être composée par des instances de `DivisionTerritoriale` de type Commune.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-010
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Offre Opérationnelle](StructureDefinition-ror-offre-operationnelle.md)

**RG_EXP_010** : Une offre DOIT être renseignée avec un et un seul `champActivite`, qui est invariable.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-011
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Offre Opérationnelle](StructureDefinition-ror-offre-operationnelle.md)

**RG_EXP_011** : Une offre opérationnelle DOIT être renseignée avec un seul `modePriseEnCharge`, qui est invariable. Le changement de mode de prise en charge implique la création d'une nouvelle offre.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-014
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Offre Opérationnelle](StructureDefinition-ror-offre-operationnelle.md)

**RG_EXP_014** : Les horaires transmis DOIVENT inclure au minimum une période (date début, date fin) ou un jour de semaine.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-015
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Offre Opérationnelle](StructureDefinition-ror-offre-operationnelle.md)

**RG_EXP_015** : Si les horaires sont transmis sans période, ils s'appliquent aux jours de la semaine à partir du jour de la semaine de lecture de l'information dans le ROR (semaine glissante).

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-016
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Offre Opérationnelle](StructureDefinition-ror-offre-operationnelle.md)

**RG_EXP_016** : Les horaires de jours de semaine RESTENT les horaires de référence semaine après semaine TANT QU'aucun nouvel horaire n'est récupéré d'un ROR.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-017
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Offre Opérationnelle](StructureDefinition-ror-offre-operationnelle.md)

**RG_EXP_017** : Les horaires portant sur une période (date début, date fin) DOIVENT être transmis si la période est en cours ou à venir lors de la lecture de l'information dans le ROR.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-018
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Offre Opérationnelle](StructureDefinition-ror-offre-operationnelle.md)

**RG_EXP_018** : Les horaires portant sur une période échue (date de fin antérieure à la date du jour) NE DOIVENT PAS être transmis.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-028
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Offre Opérationnelle](StructureDefinition-ror-offre-operationnelle.md)

**RG_EXP_028** : Une offre opérationnelle ne peut pas avoir plusieurs types d'offre relevant de champs d'activité différents.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-035
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Offre Opérationnelle](StructureDefinition-ror-offre-operationnelle.md)

**RG_EXP_035** : Lors de la diffusion d'une unité élémentaire, l'indicateur `uniteSensible` a la valeur par défaut `false`.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-039
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Offre Opérationnelle](StructureDefinition-ror-offre-operationnelle.md)

**RG_EXP_039** : Dans une unité sensible, le niveau de confidentialité des contacts doit être positionné à la valeur « très restreint ».

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-042
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Offre Opérationnelle](StructureDefinition-ror-offre-operationnelle.md)

**RG_EXP_042** : Pour un transfert d'une offre d'un établissement vers un autre, l'identifiant de l'offre transférée NE DOIT PAS changer.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-043
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Offre Opérationnelle](StructureDefinition-ror-offre-operationnelle.md)

**RG_EXP_043** : La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné, sinon elle n'est jamais renseignée.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-044
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Offre Opérationnelle](StructureDefinition-ror-offre-operationnelle.md)

**RG_EXP_044** : Lorsqu'un niveau de structure ou d'organisation est fermé, tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermés avec le même type, la même date de fermeture et, le cas échéant, la même date de réouverture prévisionnelle.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-045
* requirement: 
* conformance: MAY
* satisfiedBy: [ROR - Offre Opérationnelle](StructureDefinition-ror-offre-operationnelle.md)

**RG_EXP_045** : La date de réouverture peut être renseignée lorsque le type de fermeture est « Fermeture temporaire », sinon elle n'est jamais renseignée.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-046
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Offre Opérationnelle](StructureDefinition-ror-offre-operationnelle.md)

**RG_EXP_046** : La date de réouverture est remise à nulle lorsque l'offre est ouverte de nouveau.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-047-offre
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Offre Opérationnelle](StructureDefinition-ror-offre-operationnelle.md)

**RG_EXP_047** : Lorsqu'une offre opérationnelle est fermée, les ressources de type `statutCapacite` « disponible » doivent être à 0.

> **R5: Actual statement as markdown (new)**
* key: RG-EXP-048
* requirement: 
* conformance: SHALL
* satisfiedBy: [ROR - Patientèle](StructureDefinition-ror-patientele.md)

**RG_EXP_048** : L'unité de mesure des attributs `ageMin` et `ageMax` accepte uniquement les valeurs : `a` (année), `mo` (mois), `wk` (semaine), `d` (jour).

**code**: Requirements



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "ror-requirements-offre-operationnelle",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/profile-Requirements"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.url",
    "valueUri" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/offre-operationnelle"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.name",
    "valueString" : "RORRequirementsOffreOperationnelle"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.title",
    "valueString" : "Règles de gestion - Offre Opérationnelle"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.description",
    "valueMarkdown" : "Règles de gestion du modèle d'exposition ROR relatives aux classes OffreOperationnelle, ActiviteOperationnelle et Patientele."
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-007"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_007** : La `familleActiviteOperationnelle` DOIT être renseignée pour toute instance de la classe Activité Opérationnelle liée à une offre dont le `champActivite` est « médico-social »."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-activite-operationnelle"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-008"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_008** : Si le `champActivite` de l'offre est « médico-social », le public pris en charge (`publicPrisEnCharge`) DOIT être renseigné dans l'instance de la classe Patientèle."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-patientele"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-009"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_009** : Chaque instance de la zone d'intervention DOIT être composée par des instances de `DivisionTerritoriale` de type Commune."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-patientele"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-010"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_010** : Une offre DOIT être renseignée avec un et un seul `champActivite`, qui est invariable."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-011"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_011** : Une offre opérationnelle DOIT être renseignée avec un seul `modePriseEnCharge`, qui est invariable. Le changement de mode de prise en charge implique la création d'une nouvelle offre."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-014"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_014** : Les horaires transmis DOIVENT inclure au minimum une période (date début, date fin) ou un jour de semaine."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-015"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_015** : Si les horaires sont transmis sans période, ils s'appliquent aux jours de la semaine à partir du jour de la semaine de lecture de l'information dans le ROR (semaine glissante)."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-016"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_016** : Les horaires de jours de semaine RESTENT les horaires de référence semaine après semaine TANT QU'aucun nouvel horaire n'est récupéré d'un ROR."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-017"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_017** : Les horaires portant sur une période (date début, date fin) DOIVENT être transmis si la période est en cours ou à venir lors de la lecture de l'information dans le ROR."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-018"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_018** : Les horaires portant sur une période échue (date de fin antérieure à la date du jour) NE DOIVENT PAS être transmis."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-028"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_028** : Une offre opérationnelle ne peut pas avoir plusieurs types d'offre relevant de champs d'activité différents."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-035"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_035** : Lors de la diffusion d'une unité élémentaire, l'indicateur `uniteSensible` a la valeur par défaut `false`."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"
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
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-042"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_042** : Pour un transfert d'une offre d'un établissement vers un autre, l'identifiant de l'offre transférée NE DOIT PAS changer."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"
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
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"
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
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"
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
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-046"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_046** : La date de réouverture est remise à nulle lorsque l'offre est ouverte de nouveau."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-047-offre"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_047** : Lorsqu'une offre opérationnelle est fermée, les ressources de type `statutCapacite` « disponible » doivent être à 0."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "key",
      "valueId" : "RG-EXP-048"
    },
    {
      "url" : "requirement",
      "valueMarkdown" : "**RG_EXP_048** : L'unité de mesure des attributs `ageMin` et `ageMax` accepte uniquement les valeurs : `a` (année), `mo` (mois), `wk` (semaine), `d` (jour)."
    },
    {
      "url" : "conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "satisfiedBy",
      "valueUrl" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-patientele"
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
