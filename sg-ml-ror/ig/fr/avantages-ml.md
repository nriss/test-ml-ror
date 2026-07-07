# Pourquoi le Modèle Logique HL7 ? - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Pourquoi le Modèle Logique HL7 ?

**Page à titre informatif — POC uniquement**

Cette page illustre la valeur ajoutée du Modèle Logique HL7 pour un projet comme le ROR. Elle ne devra pas figurer dans la publication officielle de l'IG ROR.

Le ROR publie son modèle d'exposition depuis des années sous forme de **PDF et d'exports Excel** générés depuis Modelio. Ce POC montre ce que change concrètement le passage à un **Modèle Logique HL7** — pour le projet ROR, pour ses implémenteurs, et pour son écosystème.

### Un modèle versionné, traçable et pérenne

Avec Modelio, le modèle d'exposition existe sous forme de fichier binaire dont les évolutions ne sont pas facilement traçables, et chaque version publiée est un PDF figé distribué par e-mail. Avec un IG en FSH hébergé sur GitHub et publié sur un serveur canonique :

* Chaque modification est **enregistrée avec son auteur, sa date et son contexte** — on sait pourquoi un attribut a changé, pas seulement qu'il a changé.
* Deux versions peuvent être **comparées ligne à ligne** (`git diff`) ; les **breaking changes** sont identifiables automatiquement via `fhir-diff`.
* Chaque version publiée est **accessible de façon permanente** à une URL stable (ex. `https://interop.esante.gouv.fr/ig/fhir/ror-modelexpo/1.0.0/`) — les liens dans les spécifications ou les contrats ne deviennent jamais obsolètes.
* Un **historique des versions** est maintenu sur le serveur de publication, permettant de consulter n'importe quelle version antérieure.

### Une documentation toujours synchronisée avec le modèle

Dans le workflow Modelio→PDF, la documentation peut diverger du modèle réel : un attribut renommé dans le fichier source n'est pas forcément mis à jour dans tous les documents narratifs. Dans un IG :

* Les **tableaux d'attributs** sont générés automatiquement depuis les définitions FSH — ils ne peuvent pas diverger.
* Les **diagrammes** sont regénérés à chaque build depuis les sources PlantUML.
* Une **preview CI** est disponible à chaque branche, permettant de relire avant toute publication.

### L'héritage automatique depuis le MOS

Le ROR dérive ses classes du MOS (Modèle des Objets de Santé). Avec le Modèle Logique HL7 :

* Quand le MOS fait évoluer `EntiteGeographique`, toutes les classes ROR qui en héritent (`ROREntiteGeographique`) **bénéficient automatiquement** de ces évolutions à la prochaine mise à jour de la dépendance — sans retravail manuel.
* Le ROR n'expose dans son IG que ce qu'il **ajoute ou restreint** par rapport au MOS, ce qui réduit la surface de maintenance.

### Des règles de gestion formalisées comme artefacts FHIR

Aujourd'hui les `RG_EXP_*` ne vivent que dans un PDF. Dans cet IG, elles sont représentées en tant que ressources FHIR `Requirements`, ce qui permet de :

* Lier chaque règle au modèle logique qu'elle concerne (`satisfiedBy`).
* Les versionner et les faire évoluer en même temps que le modèle.
* Les rendre interrogeables par des outils (validateurs, générateurs de tests).

### Une collaboration ouverte

Le passage sur GitHub transforme la manière de collaborer autour du modèle d'exposition :

* Les acteurs de l'écosystème (éditeurs, régions, ANS) peuvent **proposer des modifications** via pull request ou **signaler des incohérences** via issue — sans attendre une réunion de concertation.
* Les discussions sont **publiques et indexées**, ce qui évite de rejouer les mêmes débats à chaque mise à jour.
* La **validation structurelle est automatique** : une erreur de modélisation est détectée avant la publication, pas après.

-------

### Ce que le Modèle Logique permet concrètement

Le passage au Modèle Logique HL7 ouvre quatre capacités concrètes pour une équipe projet comme le ROR. Chacune est illustrée par un exemple dans cet IG.

#### Dériver depuis un objet MOS

Un projet peut **partir d'un objet MOS existant** et le spécialiser pour son contexte, sans tout réécrire. La dérivation permet de :

* **renforcer des contraintes** : rendre obligatoire un champ qui était optionnel dans le MOS (par exemple, `identifiantEG` devient `1..1` dans le ROR alors qu'il pouvait être absent dans le modèle national)
* **ajouter des éléments supplémentaires** : des champs propres au projet sont ajoutés au-dessus du socle MOS (coordonnées GPS, accessibilité PMR, etc.)
* **hériter automatiquement** de toutes les évolutions du MOS : si un objet MOS évolue, les objets ROR dérivés bénéficient de ces évolutions sans modification manuelle

**Exemples dans cet IG :** `ROROffreOperationnelle` (dérive de `OffreOperationnelle`) et `ROREntiteGeographique` (dérive de `EntiteGeographique`).

#### Créer un nouvel objet

Quand le MOS ne couvre pas un concept métier, un projet peut **définir un Modèle Logique entièrement nouveau**. Ce nouvel objet peut :

* référencer d'autres objets MOS ou objets projet via des types `Reference`
* être documenté et publié avec le même outillage que les objets dérivés
* être proposé ultérieurement au MOS s'il s'avère pertinent pour d'autres projets

**Exemple dans cet IG :** `ROROrganisationInterne` (pôle, service, unité fonctionnelle) — concept propre au ROR, absent du MOS national.

#### Restreindre un jeu de valeurs

Le MOS référence des terminologies nationales larges (TRE du SMT). Un projet peut créer un **ValueSet restreint** qui ne retient que les codes pertinents pour son périmètre, et le lier à un champ avec une force de binding `required`.

Cela garantit que les implémenteurs n'utilisent que les codes effectivement traités par le système, sans ambiguïté.

**Exemple dans cet IG :** `VS_RorSecteurActivite` restreint `TRE_R02-SecteurActivite` aux seuls secteurs couverts par le ROR (établissements de santé publics, ESPIC, privés lucratifs, LBM, ESMS, maisons de santé) — en excluant par exemple les transports sanitaires ou la médecine du travail.

#### Modifier les cardinalités

Un projet peut **resserrer les cardinalités** définies dans le MOS pour exprimer ses propres exigences de complétude. Un champ `0..1` dans le MOS peut devenir `1..1` dans le modèle ROR pour indiquer qu'il est obligatoire dans ce contexte.

À l'inverse, un champ `0..1` peut rester `0..1` si le ROR ne l'utilise pas — il n'est pas nécessaire de tous les reprendre.

**Exemples dans cet IG :** `identifiantOffre`, `nomOffre`, `typeOffre` et `modePriseEnCharge` sont rendus obligatoires (`1..1` ou `1..*`) dans `ROROffreOperationnelle`.

-------

**Note pour les développeurs**

Ces mécanismes sont implémentés en FSH (FHIR Shorthand). Les fichiers sources sont dans
`input/fsh/Logicals/`et
`input/fsh/ValueSets/`. Le build est automatique via GitHub Actions à chaque push.

