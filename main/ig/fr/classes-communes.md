# Classes Communes - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Classes Communes

### Classes Communes

Cette section est destinée aux développeurs et intégrateurs. Elle décrit les classes transverses utilisées dans tous les modèles logiques ROR.

Les **Classes Communes** regroupent les éléments partagés par l'ensemble des modèles logiques ROR. Ces classes ne correspondent pas à un concept métier autonome mais apportent un support technique transversal.

-------

#### Modèles logiques

| | | |
| :--- | :--- | :--- |
| [RORMetadonnee](StructureDefinition-ror-metadonnee.md) | Base | Informations de gestion des données dans le ROR |

-------

#### RORMetadonnee

La **Métadonnée** est présente dans toutes les classes du modèle ROR (`metadonnee 1..1`). Elle permet de tracer les informations de gestion des données : date de création, date de mise à jour, identifiant de la donnée, commentaire, région source et modèle de saisie.

| | | | |
| :--- | :--- | :--- | :--- |
| dateCreation | 1..1 | dateTime | Date et heure de création de la donnée dans le ROR |
| dateMiseJour | 1..1 | dateTime | Date et heure de dernière mise à jour de la donnée |
| identifiant | 0..1 | Identifier | Identifiant technique de la donnée |
| commentaire | 0..1 | string | Commentaire libre sur la donnée |
| regionSource | 0..1 | Coding | Région ayant généré ou créé la donnée (JDV_J237-RegionOM-ROR) |
| modeleSaisie | 0..1 | Identifier | Identifiant du modèle de saisie utilisé |

**Règle :** La métadonnée est obligatoire (`1..1`) sur toutes les classes du modèle ROR. Elle permet notamment d'identifier la région source de la donnée et de gérer les mises à jour dans le contexte d'un système fédéré.

