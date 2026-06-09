# Règles de gestion - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Règles de gestion

Page transversale listant l'ensemble des règles de gestion
`RG_EXP_*`du modèle d'exposition ROR. Chaque section correspond à une ressource FHIR
`Requirements`(backport R5→R4 via
[hl7.fhir.uv.xver-r5.r4](https://hl7.org/fhir/uv/xver-r5.r4/0.1.0/)).

Les **règles de gestion** (`RG_EXP_*`) définissent les contraintes applicables aux données du modèle d'exposition ROR. Elles sont formalisées en tant que ressources FHIR `Requirements` et distribuées par section du modèle.

-------

#### Structure

[→ Ressource Requirements : Structure](Basic-ror-requirements-structure.md)

Ce Requirements regroupe les règles de gestion applicables aux classes **EntiteJuridique** et **EntiteGeographique**.

| | | | |
| :--- | :--- | :--- | :--- |
| `RG_EXP_002` | SHALL | Si un élément obligatoire n'est pas renseigné dans le ROR interrogé, l'instance de l'entité NE DOIT PAS être transmise. Les entités hiérarchiquement inférieures NE DOIVENT PAS l'être non plus. | — |
| `RG_EXP_003` | SHALL | Si la date de fermeture transmise est la date de fermeture définitive,`typeFermeture`DOIT être renseigné avec le code DEF issu du référentiel FINESS. | [ROREntiteGeographique](StructureDefinition-ror-entite-geographique.md) |
| `RG_EXP_004` | SHALL | L'`idNat_Struct`DOIT être renseigné en priorité avec le numéro FINESS si l'établissement est immatriculé dans FINESS. | [ROREntiteJuridique](StructureDefinition-ror-entite-juridique.md) |
| `RG_EXP_005` | SHALL | L'`idNat_Struct`de l'EG DOIT être renseigné en priorité avec le numéro FINESS si l'établissement est immatriculé dans FINESS. | [ROREntiteGeographique](StructureDefinition-ror-entite-geographique.md) |
| `RG_EXP_006` | MAY | Les contacts d'une EG PEUVENT contenir les contacts du directeur et de la cellule d'alerte. | [ROREntiteGeographique](StructureDefinition-ror-entite-geographique.md) |
| `RG_EXP_030` | SHALL | L'attribut`territoireSante`est obligatoirement une division territoriale de type « Territoire de Santé ». | [ROREntiteGeographique](StructureDefinition-ror-entite-geographique.md) |
| `RG_EXP_037` | SHALL | Lorsque`numEJ_RPPS_ADELI_Rang`est renseigné, il doit être utilisé pour la construction de l'`idNat_Struct`. | [ROREntiteJuridique](StructureDefinition-ror-entite-juridique.md) |
| `RG_EXP_038` | SHALL | Lorsque`numEG_RPPS_ADELI_Rang`est renseigné, il doit être utilisé pour la construction de l'`idNat_Struct`. | [ROREntiteGeographique](StructureDefinition-ror-entite-geographique.md) |
| `RG_EXP_043` | SHALL | La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné, sinon elle n'est jamais renseignée. | [ROREntiteJuridique](StructureDefinition-ror-entite-juridique.md),[ROREntiteGeographique](StructureDefinition-ror-entite-geographique.md) |
| `RG_EXP_044` | SHALL | Lorsqu'un niveau de structure est fermé, tous les niveaux inférieurs et toutes les offres opérationnelles rattachées sont également fermés avec le même type et la même date de fermeture. | [ROREntiteJuridique](StructureDefinition-ror-entite-juridique.md),[ROREntiteGeographique](StructureDefinition-ror-entite-geographique.md) |
| `RG_EXP_045` | MAY | La date de réouverture peut être renseignée lorsque le type de fermeture est « Fermeture temporaire », sinon elle n'est jamais renseignée. | [ROREntiteJuridique](StructureDefinition-ror-entite-juridique.md),[ROREntiteGeographique](StructureDefinition-ror-entite-geographique.md) |

-------

#### Organisation

[→ Ressource Requirements : Organisation](Basic-ror-requirements-organisation.md)

Ce Requirements regroupe les règles de gestion applicables aux classes **OrganisationInterne**, **Pole**, **StructureInterne** et **UniteFonctionnelle**.

| | | | |
| :--- | :--- | :--- | :--- |
| `RG_EXP_013` | MAY | En fonction du type d'OI, les contacts PEUVENT inclure le contact du responsable du pôle, du service, de l'unité, du secrétariat ou du secrétariat de permanence. | [ROROrganisationInterne](StructureDefinition-ror-organisation-interne.md) |
| `RG_EXP_043` | SHALL | La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné, sinon elle n'est jamais renseignée. | [ROROrganisationInterne](StructureDefinition-ror-organisation-interne.md) |
| `RG_EXP_044` | SHALL | Lorsqu'un niveau d'organisation est fermé, tous les niveaux inférieurs et toutes les offres opérationnelles rattachées sont également fermés avec le même type et la même date de fermeture. | [ROROrganisationInterne](StructureDefinition-ror-organisation-interne.md) |
| `RG_EXP_045` | MAY | La date de réouverture peut être renseignée lorsque le type de fermeture est « Fermeture temporaire », sinon elle n'est jamais renseignée. | [ROROrganisationInterne](StructureDefinition-ror-organisation-interne.md) |

-------

#### Offre Opérationnelle

[→ Ressource Requirements : Offre Opérationnelle](Basic-ror-requirements-offre-operationnelle.md)

Ce Requirements regroupe les règles de gestion applicables aux classes **OffreOperationnelle**, **ActiviteOperationnelle** et **Patientele**.

| | | | |
| :--- | :--- | :--- | :--- |
| `RG_EXP_007` | SHALL | La`familleActiviteOperationnelle`DOIT être renseignée pour toute Activité Opérationnelle liée à une offre dont le`champActivite`est « médico-social ». | [RORActiviteOperationnelle](StructureDefinition-ror-activite-operationnelle.md) |
| `RG_EXP_008` | SHALL | Si le`champActivite`est « médico-social », le`publicPrisEnCharge`DOIT être renseigné dans la Patientèle. | [RORPatientele](StructureDefinition-ror-patientele.md) |
| `RG_EXP_009` | SHALL | Chaque instance de la zone d'intervention DOIT être composée par des instances de`DivisionTerritoriale`de type Commune. | [RORPatientele](StructureDefinition-ror-patientele.md) |
| `RG_EXP_010` | SHALL | Une offre DOIT être renseignée avec un et un seul`champActivite`, qui est invariable. | [ROROffreOperationnelle](StructureDefinition-ror-offre-operationnelle.md) |
| `RG_EXP_011` | SHALL | Une offre DOIT être renseignée avec un seul`modePriseEnCharge`, invariable. Un changement implique la création d'une nouvelle offre. | [ROROffreOperationnelle](StructureDefinition-ror-offre-operationnelle.md) |
| `RG_EXP_014` | SHALL | Les horaires transmis DOIVENT inclure au minimum une période (date début, date fin) ou un jour de semaine. | [ROROffreOperationnelle](StructureDefinition-ror-offre-operationnelle.md) |
| `RG_EXP_015` | SHALL | Les horaires sans période s'appliquent à partir du jour de lecture dans le ROR (semaine glissante). | [ROROffreOperationnelle](StructureDefinition-ror-offre-operationnelle.md) |
| `RG_EXP_016` | SHALL | Les horaires de jours de semaine RESTENT les horaires de référence semaine après semaine TANT QU'aucun nouvel horaire n'est récupéré d'un ROR. | [ROROffreOperationnelle](StructureDefinition-ror-offre-operationnelle.md) |
| `RG_EXP_017` | SHALL | Les horaires portant sur une période DOIVENT être transmis si la période est en cours ou à venir. | [ROROffreOperationnelle](StructureDefinition-ror-offre-operationnelle.md) |
| `RG_EXP_018` | SHALL | Les horaires portant sur une période échue NE DOIVENT PAS être transmis. | [ROROffreOperationnelle](StructureDefinition-ror-offre-operationnelle.md) |
| `RG_EXP_028` | SHALL | Une offre ne peut pas avoir plusieurs types d'offre relevant de champs d'activité différents. | [ROROffreOperationnelle](StructureDefinition-ror-offre-operationnelle.md) |
| `RG_EXP_035` | SHALL | L'indicateur`uniteSensible`a la valeur par défaut`false`lors de la diffusion d'une unité élémentaire. | [ROROffreOperationnelle](StructureDefinition-ror-offre-operationnelle.md) |
| `RG_EXP_039` | SHALL | Dans une unité sensible, le niveau de confidentialité des contacts doit être « très restreint ». | [ROROffreOperationnelle](StructureDefinition-ror-offre-operationnelle.md) |
| `RG_EXP_042` | SHALL | L'identifiant d'une offre transférée d'un établissement vers un autre NE DOIT PAS changer. | [ROROffreOperationnelle](StructureDefinition-ror-offre-operationnelle.md) |
| `RG_EXP_043` | SHALL | La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné, sinon elle n'est jamais renseignée. | [ROROffreOperationnelle](StructureDefinition-ror-offre-operationnelle.md) |
| `RG_EXP_044` | SHALL | Lorsqu'un niveau est fermé, tous les niveaux inférieurs et toutes les offres rattachées sont également fermés avec le même type et la même date de fermeture. | [ROROffreOperationnelle](StructureDefinition-ror-offre-operationnelle.md) |
| `RG_EXP_045` | MAY | La date de réouverture peut être renseignée lorsque le type de fermeture est « Fermeture temporaire ». | [ROROffreOperationnelle](StructureDefinition-ror-offre-operationnelle.md) |
| `RG_EXP_046` | SHALL | La date de réouverture est remise à nulle lorsque l'offre est ouverte de nouveau. | [ROROffreOperationnelle](StructureDefinition-ror-offre-operationnelle.md) |
| `RG_EXP_047` | SHALL | Lorsqu'une offre est fermée, les ressources de type`statutCapacite`« disponible » doivent être à 0. | [ROROffreOperationnelle](StructureDefinition-ror-offre-operationnelle.md) |
| `RG_EXP_048` | SHALL | L'unité de mesure des attributs`ageMin`et`ageMax`accepte uniquement :`a`(année),`mo`(mois),`wk`(semaine),`d`(jour). | [RORPatientele](StructureDefinition-ror-patientele.md) |

-------

#### Tarif

[→ Ressource Requirements : Tarif](Basic-ror-requirements-tarif.md)

Ce Requirements regroupe les règles de gestion applicables aux classes **Tarif** du modèle d'exposition ROR.

| | | | |
| :--- | :--- | :--- | :--- |
| `RG_EXP_026` | SHALL | Un seul tarif de type « Forfait socle hébergement » PEUT être instancié pour chaque combinaison de`tarifMoins60Ans`,`typeHabitation`,`temporaliteAccueil`,`conditionTarifaire`pour une même EG. | [RORForfaitSocleHebergement](StructureDefinition-ror-forfait-socle-hebergement.md) |
| `RG_EXP_027` | SHALL | Pour les autres types de tarifs, un seul montant PEUT être exposé pour chaque combinaison des valeurs des attributs (hors montant) pour une même EG. | [RORTarif](StructureDefinition-ror-tarif.md) |
| `RG_EXP_029` | SHALL | L'attribut`typeHabitation`d'un tarif de type « supplément tarif hébergement » DOIT prendre la valeur « chambre simple ». | [RORSupplementTarifHebergement](StructureDefinition-ror-supplement-tarif-hebergement.md) |
| `RG_EXP_036` | SHALL | Les attributs`nomPrestationSupp`et`nomAutrePrestationSupp`sont mutuellement exclusifs (l'un ou l'autre, pas les deux). | [RORTarifPrestationSupplementaire](StructureDefinition-ror-tarif-prestation-supplementaire.md) |

-------

#### Ressources Opérationnelles

[→ Ressource Requirements : Ressources Opérationnelles](Basic-ror-requirements-ressources-operationnelles.md)

Ce Requirements regroupe les règles de gestion applicables aux classes **CapaciteAccueilOperationnelle**, **LieuRealisationOffre** et **EquipementSpecifique**.

| | | | |
| :--- | :--- | :--- | :--- |
| `RG_EXP_047` | SHALL | Lorsque le`statutCapacite`est à « disponible » avec une valeur à 0, cela indique que l'offre est actuellement saturée mais reste ouverte. | [RORCapaciteAccueilOperationnelle](StructureDefinition-ror-capacite-accueil-operationnelle.md) |

-------

#### Professionnel Ressource

[→ Ressource Requirements : Professionnel Ressource](Basic-ror-requirements-professionnel.md)

Ce Requirements regroupe les règles de gestion applicables aux classes **Professionnel** et **SituationOperationnelle**.

| | | | |
| :--- | :--- | :--- | :--- |
| `RG_EXP_030` | SHALL | En cas de coexistence d'un identifiant RPPS et ADELI pour un même professionnel, l'identifiant RPPS est prioritaire. | [RORProfessionnel](StructureDefinition-ror-professionnel.md) |
| `RG_EXP_031` | SHALL | Les données issues du RPPS (profession, civilité d'exercice, etc.) ne sont pas modifiables dans le ROR. | [RORProfessionnel](StructureDefinition-ror-professionnel.md) |
| `RG_EXP_049` | SHALL | Uniquement les valeurs de`Horaire/typeHoraire`suivantes sont applicables pour les professionnels :`03`(garde),`06`(consultation sans RDV),`07`(consultation sur RDV). | [RORSituationOperationnelle](StructureDefinition-ror-situation-operationnelle.md) |

-------

#### Classes Communes

[→ Ressource Requirements : Classes Communes](Basic-ror-requirements-classes-communes.md)

Ce Requirements regroupe les règles de gestion applicables aux classes transverses **Contact**, **Telecommunication** et **Metadonnee**.

| | | | |
| :--- | :--- | :--- | :--- |
| `RG_EXP_032` | SHALL | Lors de la création d'un objet Contact, le niveau de confidentialité a la valeur par défaut « restreint ». | Contact (MOS) |
| `RG_EXP_034` | SHALL | Le niveau de confidentialité de l'objet Télécommunication doit être plus restrictif ou égal au niveau de confidentialité de l'objet Contact auquel il est rattaché. | Contact / Telecommunication (MOS) |
| `RG_EXP_039` | SHALL | Dans une unité sensible, le niveau de confidentialité des contacts doit être positionné à la valeur « très restreint ». | Contact (MOS) |
| `RG_EXP_040` | SHALL | Si`natureContact`est renseigné, il ne doit pas y avoir de`nom`ni de`fonctionContact`. | Contact (MOS) |
| `RG_EXP_041` | SHALL | Si`fonctionContact`est renseigné, il doit y avoir un`nom`et il ne doit pas y avoir de`natureContact`. | Contact (MOS) |

