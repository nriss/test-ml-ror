# Fonctionnalités disponibles pour le ROR - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Fonctionnalités disponibles pour le ROR

Le passage du MOS en Modèle Logique HL7 ouvre quatre capacités concrètes pour une équipe projet comme le ROR. Chacune est illustrée par un exemple dans cet IG.

### Dériver depuis un objet MOS

Un projet peut **partir d'un objet MOS existant** et le spécialiser pour son contexte, sans tout réécrire. La dérivation permet de :

* **renforcer des contraintes** : rendre obligatoire un champ qui était optionnel dans le MOS (par exemple, `identifiantEG` devient `1..1` dans le ROR alors qu'il pouvait être absent dans le modèle national)
* **ajouter des éléments supplémentaires** : des champs propres au projet sont ajoutés au-dessus du socle MOS (coordonnées GPS, accessibilité PMR, etc.)
* **hériter automatiquement** de toutes les évolutions du MOS : si un objet MOS évolue, les objets ROR dérivés bénéficient de ces évolutions sans modification manuelle

**Exemples dans cet IG :** `ROROffreOperationnelle` (dérive de `OffreOperationnelle`) et `ROREntiteGeographique` (dérive de `EntiteGeographique`).

### Créer un nouvel objet

Quand le MOS ne couvre pas un concept métier, un projet peut **définir un Modèle Logique entièrement nouveau**. Ce nouvel objet peut :

* référencer d'autres objets MOS ou objets projet via des types `Reference`
* être documenté et publié avec le même outillage que les objets dérivés
* être proposé ultérieurement au MOS s'il s'avère pertinent pour d'autres projets

**Exemple dans cet IG :** `ROROrganisationInterne` (pôle, service, unité fonctionnelle) — concept propre au ROR, absent du MOS national.

### Restreindre un jeu de valeurs

Le MOS référence des terminologies nationales larges (TRE du SMT). Un projet peut créer un **ValueSet restreint** qui ne retient que les codes pertinents pour son périmètre, et le lier à un champ avec une force de binding `required`.

Cela garantit que les implémenteurs n'utilisent que les codes effectivement traités par le système, sans ambiguïté.

**Exemple dans cet IG :** `VS_RorSecteurActivite` restreint `TRE_R02-SecteurActivite` aux seuls secteurs couverts par le ROR (établissements de santé publics, ESPIC, privés lucratifs, LBM, ESMS, maisons de santé) — en excluant par exemple les transports sanitaires ou la médecine du travail.

### Modifier les cardinalités

Un projet peut **resserrer les cardinalités** définies dans le MOS pour exprimer ses propres exigences de complétude. Un champ `0..1` dans le MOS peut devenir `1..1` dans le modèle ROR pour indiquer qu'il est obligatoire dans ce contexte.

À l'inverse, un champ `0..1` peut rester `0..1` si le ROR ne l'utilise pas — il n'est pas nécessaire de tous les reprendre.

**Exemples dans cet IG :** `identifiantOffre`, `nomOffre`, `typeOffre` et `modePriseEnCharge` sont rendus obligatoires (`1..1` ou `1..*`) dans `RorOffreOperationnelle`.

-------

**Note pour les développeurs**

Ces quatre mécanismes sont implémentés en FSH (FHIR Shorthand). Les fichiers sources sont dans
`input/fsh/Logicals/`et
`input/fsh/ValueSets/`. Le build est automatique via GitHub Actions à chaque push.

