# Tarif - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Tarif

### Tarif

Cette section est transversale : les tarifs intéressent les patients et les professionnels de santé pour l'orientation, et les développeurs pour l'implémentation.

La section **Tarif** décrit les prix des prestations et services fournis par un établissement. Les tarifs sont rattachés à l'Entité Géographique. Seuls les tarifs déterminants pour l'orientation d'un patient sont décrits dans le ROR.

La classe `RORTarif` est une **classe abstraite** dont héritent les différents types de tarifs spécialisés.

-------

#### Modèles logiques

| | | |
| :--- | :--- | :--- |
| [RORTarif](StructureDefinition-ror-tarif.md) | Base (abstrait) | Classe abstraite commune à tous les tarifs |
| [RORForfaitSocleHebergement](StructureDefinition-ror-forfait-socle-hebergement.md) | RORTarif | Tarif journalier d'hébergement (décret n°2015-1868) |
| [RORTarifAccueilDeJour](StructureDefinition-ror-tarif-accueil-de-jour.md) | RORTarif | Tarif journalier pour l'accueil de jour |
| [RORTarifDependance](StructureDefinition-ror-tarif-dependance.md) | RORTarif | Tarif correspondant au groupe de dépendance GIR |
| [RORTarifAidesHumaines](StructureDefinition-ror-tarif-aides-humaines.md) | RORTarif | Tarif de la section soins/dépendance pour les aides humaines |
| [RORTarifPrestationSupplementaire](StructureDefinition-ror-tarif-prestation-supplementaire.md) | RORTarif | Tarif d'une prestation supplémentaire facultative |
| [RORSupplementTarifHebergement](StructureDefinition-ror-supplement-tarif-hebergement.md) | RORTarif | Supplément tarifaire pour hébergement |
| [RORTarifPortageRepas](StructureDefinition-ror-tarif-portage-repas.md) | RORTarif | Tarif du portage de repas |

-------

#### RORTarif (classe abstraite)

Attributs communs à tous les types de tarifs :

| | | | |
| :--- | :--- | :--- | :--- |
| typeTarif | 1..1 | Coding | TRE_R246-TypeTarif |
| montantTarif | 1..1 | Money | — |
| unitePrix | 1..1 | Coding | TRE_R228-UnitePrix |
| dateDebutValiditeTarif | 0..1 | date | — |
| metadonnee | 1..1 | [RORMetadonnee](StructureDefinition-ror-metadonnee.md) | — |

**Règles de gestion :**

* `RG_EXP_026` : Un seul tarif de type « Forfait socle hébergement » PEUT être instancié pour chaque combinaison de `tarifMoins60Ans`, `typeHabitation`, `temporaliteAccueil`, `conditionTarifaire` pour une même EG.
* `RG_EXP_027` : Pour les autres types de tarifs, un seul montant PEUT être exposé pour chaque combinaison des valeurs des attributs (hors montant) pour une même EG.

-------

#### RORForfaitSocleHebergement

Tarif journalier et par personne pour un type d'hébergement donné. Inclut obligatoirement les prestations définies dans le décret n°2015-1868.

| | | | |
| :--- | :--- | :--- | :--- |
| prestationsNonObligatoiresIncluses | 0..* | Coding | TRE_R264-PrestationNonObligatoireIncluse |
| autresPrestationsNonObligatoiresIncluses | 0..* | string | — |
| tarifMoins60Ans | 1..1 | boolean | — |
| typeHabitation | 1..1 | Coding | TRE_R242-TypeHabitation |
| conditionTarifaire | 0..1 | Coding | TRE_R250-ConditionTarifaire |
| temporaliteAccueil | 1..1 | Coding | TRE_R240-TemporaliteAccueil |

-------

#### Autres tarifs spécialisés

| | |
| :--- | :--- |
| **TarifAccueilDeJour** | `conditionTarifaire`(TRE_R250) |
| **TarifDependance** | `groupeTarifaireDependance`(TRE_R237-NiveauDependance),`temporaliteAccueil`(TRE_R240) |
| **TarifAidesHumaines** | `conditionTarifaire`(TRE_R250),`modeGestion`(TRE_R236) |
| **TarifPrestationSupplementaire** | `nomPrestationSupp`(TRE_R264) |
| **SupplementTarifHebergement** | `typeHabitation`(TRE_R242) |
| **TarifPortageRepas** | `conditionTarifaire`(TRE_R250) |

