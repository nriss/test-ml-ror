// Backport R5 Requirements → R4 via hl7.fhir.uv.xver-r5.r4
// Base : Basic + meta.profile = profile-Requirements
// Sub-slices de statement référencés par nom (key, requirement, conformance, satisfiedBy)

Alias: $req-url  = http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.url
Alias: $req-name = http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.name
Alias: $req-title = http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.title
Alias: $req-desc = http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.description
Alias: $req-stmt = http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement
Alias: $res-types = http://hl7.org/fhir/resource-types

// ============================================================
// Structure
// ============================================================

Instance: ror-requirements-structure
InstanceOf: Basic
Usage: #definition
Title: "Règles de gestion - Structure"
Description: "Règles de gestion relatives aux classes EntiteJuridique et EntiteGeographique"
* meta.profile = "http://hl7.org/fhir/5.0/StructureDefinition/profile-Requirements"
* code = $res-types#Requirements
* extension[$req-url].valueUri = "https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/structure"
* extension[$req-name].valueString = "RORRequirementsStructure"
* extension[$req-title].valueString = "Règles de gestion - Structure"
* extension[$req-desc].valueMarkdown = "Règles de gestion du modèle d'exposition ROR relatives aux classes Structure (EntiteJuridique, EntiteGeographique)."

// RG_EXP_002
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-002"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_002** : Si un élément obligatoire dans la structure du flux d'échange n'est pas renseigné dans le ROR interrogé, alors l'instance de l'entité à laquelle appartient cet élément NE DOIT PAS être transmise. Les instances des entités hiérarchiquement inférieures NE DOIVENT PAS être transmises non plus."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL

// RG_EXP_003
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-003"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_003** : Si la date de fermeture transmise est la date de fermeture définitive, alors `typeFermeture` DOIT être renseigné avec l'OID correspondant au code DEF issu du référentiel FINESS."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-geographique"

// RG_EXP_004
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-004"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_004** : L'`idNat_Struct` DOIT être renseigné en priorité avec le numéro FINESS si l'établissement est immatriculé dans FINESS."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-juridique"

// RG_EXP_005
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-005"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_005** : L'`idNat_Struct` de l'EG DOIT être renseigné en priorité avec le numéro FINESS si l'établissement est immatriculé dans FINESS."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-geographique"

// RG_EXP_006
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-006"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_006** : Les contacts d'une EG PEUVENT contenir les contacts du directeur et de la cellule d'alerte."
* extension[$req-stmt][=].extension[conformance].valueCode = #MAY
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-geographique"

// RG_EXP_030 (EG - territoire santé)
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-030-eg"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_030** : L'attribut `territoireSante` est obligatoirement une division territoriale de type « Territoire de Santé »."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-geographique"

// RG_EXP_037
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-037"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_037** : Lorsque `numEJ_RPPS_ADELI_Rang` est renseigné, il doit être utilisé pour la construction de l'`idNat_Struct`."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-juridique"

// RG_EXP_038
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-038"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_038** : Lorsque `numEG_RPPS_ADELI_Rang` est renseigné, il doit être utilisé pour la construction de l'`idNat_Struct`."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-geographique"

// RG_EXP_043
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-043"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_043** : La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné, sinon elle n'est jamais renseignée."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy][+].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-juridique"
* extension[$req-stmt][=].extension[satisfiedBy][+].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-geographique"

// RG_EXP_044
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-044"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_044** : Lorsqu'un niveau de structure ou d'organisation est fermé, tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermés avec le même type, la même date de fermeture et, le cas échéant, la même date de réouverture prévisionnelle."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy][+].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-juridique"
* extension[$req-stmt][=].extension[satisfiedBy][+].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-geographique"

// RG_EXP_045
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-045"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_045** : La date de réouverture peut être renseignée lorsque le type de fermeture est « Fermeture temporaire », sinon elle n'est jamais renseignée."
* extension[$req-stmt][=].extension[conformance].valueCode = #MAY
* extension[$req-stmt][=].extension[satisfiedBy][+].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-juridique"
* extension[$req-stmt][=].extension[satisfiedBy][+].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-geographique"


// ============================================================
// Organisation
// ============================================================

Instance: ror-requirements-organisation
InstanceOf: Basic
Usage: #definition
Title: "Règles de gestion - Organisation"
Description: "Règles de gestion relatives aux classes Organisation (OrganisationInterne, Pole, StructureInterne, UniteFonctionnelle)"
* meta.profile = "http://hl7.org/fhir/5.0/StructureDefinition/profile-Requirements"
* code = $res-types#Requirements
* extension[$req-url].valueUri = "https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/organisation"
* extension[$req-name].valueString = "RORRequirementsOrganisation"
* extension[$req-title].valueString = "Règles de gestion - Organisation"
* extension[$req-desc].valueMarkdown = "Règles de gestion du modèle d'exposition ROR relatives aux classes Organisation interne."

// RG_EXP_013
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-013"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_013** : En fonction du type d'OI, les contacts PEUVENT inclure le contact du responsable du pôle, le contact du responsable du service, le contact du responsable de l'unité, le contact du secrétariat, le contact du secrétariat de permanence."
* extension[$req-stmt][=].extension[conformance].valueCode = #MAY
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-organisation-interne"

// RG_EXP_043
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-043"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_043** : La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné, sinon elle n'est jamais renseignée."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-organisation-interne"

// RG_EXP_044
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-044"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_044** : Lorsqu'un niveau de structure ou d'organisation est fermé, tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermés avec le même type, la même date de fermeture et, le cas échéant, la même date de réouverture prévisionnelle."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-organisation-interne"

// RG_EXP_045
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-045"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_045** : La date de réouverture peut être renseignée lorsque le type de fermeture est « Fermeture temporaire », sinon elle n'est jamais renseignée."
* extension[$req-stmt][=].extension[conformance].valueCode = #MAY
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-organisation-interne"


// ============================================================
// Offre Opérationnelle
// ============================================================

Instance: ror-requirements-offre-operationnelle
InstanceOf: Basic
Usage: #definition
Title: "Règles de gestion - Offre Opérationnelle"
Description: "Règles de gestion relatives aux classes OffreOperationnelle, ActiviteOperationnelle et Patientele"
* meta.profile = "http://hl7.org/fhir/5.0/StructureDefinition/profile-Requirements"
* code = $res-types#Requirements
* extension[$req-url].valueUri = "https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/offre-operationnelle"
* extension[$req-name].valueString = "RORRequirementsOffreOperationnelle"
* extension[$req-title].valueString = "Règles de gestion - Offre Opérationnelle"
* extension[$req-desc].valueMarkdown = "Règles de gestion du modèle d'exposition ROR relatives aux classes OffreOperationnelle, ActiviteOperationnelle et Patientele."

// RG_EXP_007
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-007"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_007** : La `familleActiviteOperationnelle` DOIT être renseignée pour toute instance de la classe Activité Opérationnelle liée à une offre dont le `champActivite` est « médico-social »."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-activite-operationnelle"

// RG_EXP_008
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-008"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_008** : Si le `champActivite` de l'offre est « médico-social », le public pris en charge (`publicPrisEnCharge`) DOIT être renseigné dans l'instance de la classe Patientèle."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-patientele"

// RG_EXP_009
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-009"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_009** : Chaque instance de la zone d'intervention DOIT être composée par des instances de `DivisionTerritoriale` de type Commune."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-patientele"

// RG_EXP_010
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-010"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_010** : Une offre DOIT être renseignée avec un et un seul `champActivite`, qui est invariable."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"

// RG_EXP_011
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-011"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_011** : Une offre opérationnelle DOIT être renseignée avec un seul `modePriseEnCharge`, qui est invariable. Le changement de mode de prise en charge implique la création d'une nouvelle offre."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"

// RG_EXP_014
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-014"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_014** : Les horaires transmis DOIVENT inclure au minimum une période (date début, date fin) ou un jour de semaine."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"

// RG_EXP_015
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-015"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_015** : Si les horaires sont transmis sans période, ils s'appliquent aux jours de la semaine à partir du jour de la semaine de lecture de l'information dans le ROR (semaine glissante)."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"

// RG_EXP_016
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-016"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_016** : Les horaires de jours de semaine RESTENT les horaires de référence semaine après semaine TANT QU'aucun nouvel horaire n'est récupéré d'un ROR."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"

// RG_EXP_017
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-017"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_017** : Les horaires portant sur une période (date début, date fin) DOIVENT être transmis si la période est en cours ou à venir lors de la lecture de l'information dans le ROR."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"

// RG_EXP_018
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-018"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_018** : Les horaires portant sur une période échue (date de fin antérieure à la date du jour) NE DOIVENT PAS être transmis."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"

// RG_EXP_028
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-028"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_028** : Une offre opérationnelle ne peut pas avoir plusieurs types d'offre relevant de champs d'activité différents."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"

// RG_EXP_035
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-035"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_035** : Lors de la diffusion d'une unité élémentaire, l'indicateur `uniteSensible` a la valeur par défaut `false`."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"

// RG_EXP_039
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-039"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_039** : Dans une unité sensible, le niveau de confidentialité des contacts doit être positionné à la valeur « très restreint »."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"

// RG_EXP_042
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-042"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_042** : Pour un transfert d'une offre d'un établissement vers un autre, l'identifiant de l'offre transférée NE DOIT PAS changer."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"

// RG_EXP_043
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-043"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_043** : La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné, sinon elle n'est jamais renseignée."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"

// RG_EXP_044
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-044"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_044** : Lorsqu'un niveau de structure ou d'organisation est fermé, tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermés avec le même type, la même date de fermeture et, le cas échéant, la même date de réouverture prévisionnelle."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"

// RG_EXP_045
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-045"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_045** : La date de réouverture peut être renseignée lorsque le type de fermeture est « Fermeture temporaire », sinon elle n'est jamais renseignée."
* extension[$req-stmt][=].extension[conformance].valueCode = #MAY
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"

// RG_EXP_046
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-046"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_046** : La date de réouverture est remise à nulle lorsque l'offre est ouverte de nouveau."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"

// RG_EXP_047 (offre fermée → capacité disponible = 0)
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-047-offre"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_047** : Lorsqu'une offre opérationnelle est fermée, les ressources de type `statutCapacite` « disponible » doivent être à 0."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle"

// RG_EXP_048
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-048"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_048** : L'unité de mesure des attributs `ageMin` et `ageMax` accepte uniquement les valeurs : `a` (année), `mo` (mois), `wk` (semaine), `d` (jour)."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-patientele"


// ============================================================
// Tarif
// ============================================================

Instance: ror-requirements-tarif
InstanceOf: Basic
Usage: #definition
Title: "Règles de gestion - Tarif"
Description: "Règles de gestion relatives aux classes Tarif du modèle d'exposition ROR"
* meta.profile = "http://hl7.org/fhir/5.0/StructureDefinition/profile-Requirements"
* code = $res-types#Requirements
* extension[$req-url].valueUri = "https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/tarif"
* extension[$req-name].valueString = "RORRequirementsTarif"
* extension[$req-title].valueString = "Règles de gestion - Tarif"
* extension[$req-desc].valueMarkdown = "Règles de gestion du modèle d'exposition ROR relatives aux classes Tarif."

// RG_EXP_026
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-026"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_026** : Un seul tarif de type « Forfait socle hébergement » PEUT être instancié pour chaque combinaison de `tarifMoins60Ans`, `typeHabitation`, `temporaliteAccueil`, `conditionTarifaire` pour une même EG."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-forfait-socle-hebergement"

// RG_EXP_027
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-027"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_027** : Pour les autres types de tarifs, un seul montant PEUT être exposé pour chaque combinaison des valeurs des attributs (hors montant) pour une même EG."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif"

// RG_EXP_029
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-029"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_029** : L'attribut `typeHabitation` d'un tarif de type « supplément tarif hébergement » DOIT prendre la valeur « chambre simple »."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-supplement-tarif-hebergement"

// RG_EXP_036
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-036"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_036** : Les attributs `nomPrestationSupp` et `nomAutrePrestationSupp` de la classe `TarifPrestationSupplementaire` sont mutuellement exclusifs."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif-prestation-supplementaire"


// ============================================================
// Ressources Opérationnelles
// ============================================================

Instance: ror-requirements-ressources-operationnelles
InstanceOf: Basic
Usage: #definition
Title: "Règles de gestion - Ressources Opérationnelles"
Description: "Règles de gestion relatives aux classes Ressources Opérationnelles du modèle d'exposition ROR"
* meta.profile = "http://hl7.org/fhir/5.0/StructureDefinition/profile-Requirements"
* code = $res-types#Requirements
* extension[$req-url].valueUri = "https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/ressources-operationnelles"
* extension[$req-name].valueString = "RORRequirementsRessourcesOperationnelles"
* extension[$req-title].valueString = "Règles de gestion - Ressources Opérationnelles"
* extension[$req-desc].valueMarkdown = "Règles de gestion du modèle d'exposition ROR relatives aux classes CapaciteAccueilOperationnelle, LieuRealisationOffre, EquipementSpecifique."

// RG_EXP_047
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-047"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_047** : Lorsque le `statutCapacite` est à « disponible » avec une valeur à 0, cela indique que l'offre est actuellement saturée mais reste ouverte."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-capacite-accueil-operationnelle"


// ============================================================
// Professionnel Ressource
// ============================================================

Instance: ror-requirements-professionnel
InstanceOf: Basic
Usage: #definition
Title: "Règles de gestion - Professionnel Ressource"
Description: "Règles de gestion relatives aux classes Professionnel et SituationOperationnelle"
* meta.profile = "http://hl7.org/fhir/5.0/StructureDefinition/profile-Requirements"
* code = $res-types#Requirements
* extension[$req-url].valueUri = "https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/professionnel"
* extension[$req-name].valueString = "RORRequirementsProfessionnel"
* extension[$req-title].valueString = "Règles de gestion - Professionnel Ressource"
* extension[$req-desc].valueMarkdown = "Règles de gestion du modèle d'exposition ROR relatives aux classes Professionnel Ressource."

// RG_EXP_030 (professionnel - RPPS vs ADELI)
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-030"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_030** : En cas de coexistence d'un identifiant RPPS et ADELI pour un même professionnel, l'identifiant RPPS est prioritaire."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-professionnel"

// RG_EXP_031
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-031"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_031** : Les données issues du RPPS (profession, civilité d'exercice, etc.) ne sont pas modifiables dans le ROR."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-professionnel"

// RG_EXP_049
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-049"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_049** : Uniquement les valeurs de `Horaire/typeHoraire` suivantes sont applicables pour les professionnels : `03` (Horaire de garde), `06` (Horaire de consultation sans RDV), `07` (Horaire de consultation sur RDV)."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
* extension[$req-stmt][=].extension[satisfiedBy].valueUrl = "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-situation-operationnelle"


// ============================================================
// Classes Communes
// ============================================================

Instance: ror-requirements-classes-communes
InstanceOf: Basic
Usage: #definition
Title: "Règles de gestion - Classes Communes"
Description: "Règles de gestion relatives aux classes communes (Contact, Telecommunication, Metadonnee)"
* meta.profile = "http://hl7.org/fhir/5.0/StructureDefinition/profile-Requirements"
* code = $res-types#Requirements
* extension[$req-url].valueUri = "https://interop.esante.gouv.fr/ig/fhir/test-ror/Requirements/classes-communes"
* extension[$req-name].valueString = "RORRequirementsClassesCommunes"
* extension[$req-title].valueString = "Règles de gestion - Classes Communes"
* extension[$req-desc].valueMarkdown = "Règles de gestion du modèle d'exposition ROR relatives aux classes transverses Contact, Telecommunication et Metadonnee."

// RG_EXP_032
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-032"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_032** : Lors de la création d'un objet Contact, le niveau de confidentialité a la valeur par défaut « restreint »."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL

// RG_EXP_034
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-034"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_034** : Le niveau de confidentialité de l'objet Télécommunication doit être plus restrictif ou égal au niveau de confidentialité de l'objet Contact auquel il est rattaché."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL

// RG_EXP_039
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-039"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_039** : Dans une unité sensible, le niveau de confidentialité des contacts doit être positionné à la valeur « très restreint »."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL

// RG_EXP_040
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-040"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_040** : Si l'attribut `natureContact` est renseigné dans l'objet Contact, alors il ne doit pas y avoir de `nom` de contact ni de `fonctionContact`."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL

// RG_EXP_041
* extension[$req-stmt][+].extension[key].valueId = "RG-EXP-041"
* extension[$req-stmt][=].extension[requirement].valueMarkdown = "**RG_EXP_041** : Si l'attribut `fonctionContact` est renseigné dans l'objet Contact, alors il doit y avoir un `nom` de contact et il ne doit pas y avoir de `natureContact`."
* extension[$req-stmt][=].extension[conformance].valueCode = #SHALL
