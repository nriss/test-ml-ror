<div style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>Page à titre informatif — POC uniquement</b><br>
Cette page illustre la valeur ajoutée du Modèle Logique HL7 pour un projet comme le ROR. Elle ne devra pas figurer dans la publication officielle de l'IG ROR.
</div>

Le ROR publie son modèle d'exposition depuis des années sous forme de **PDF et d'exports Excel** générés depuis Modelio. Ce POC montre ce que change concrètement le passage à un **Modèle Logique HL7** — pour le projet ROR, pour ses implémenteurs, et pour son écosystème.

### Un modèle versionné et traçable

Avec Modelio, le modèle d'exposition existe sous forme de fichier binaire dont les évolutions ne sont pas facilement traçables. Avec un IG en FSH hébergé sur GitHub :

- Chaque modification est **enregistrée avec son auteur, sa date et son contexte** — on sait pourquoi un attribut a changé, pas seulement qu'il a changé.
- Deux versions peuvent être **comparées ligne à ligne** (`git diff`).
- La **liste des évolutions entre versions** est générée automatiquement depuis l'historique des commits et des pull requests.

### Une documentation toujours synchronisée avec le modèle

Dans le workflow Modelio→PDF, la documentation peut diverger du modèle réel : un attribut renommé dans le fichier source n'est pas forcément mis à jour dans tous les documents narratifs. Dans un IG :

- Les **tableaux d'attributs** sont générés automatiquement depuis les définitions FSH — ils ne peuvent pas diverger.
- Les **diagrammes** sont regénérés à chaque build depuis les sources PlantUML.
- Une **preview CI** est disponible à chaque branche, permettant de relire avant toute publication.

### L'héritage automatique depuis le MOS

Le ROR dérive ses classes du MOS (Modèle des Objets de Santé). Avec le Modèle Logique HL7 :

- Quand le MOS fait évoluer `EntiteGeographique`, toutes les classes ROR qui en héritent (`ROREntiteGeographique`) **bénéficient automatiquement** de ces évolutions à la prochaine mise à jour de la dépendance — sans retravail manuel.
- Le ROR n'expose dans son IG que ce qu'il **ajoute ou restreint** par rapport au MOS, ce qui réduit la surface de maintenance.

### Des règles de gestion formalisées comme artefacts FHIR

Aujourd'hui les `RG_EXP_*` ne vivent que dans un PDF. Dans cet IG, elles sont représentées en tant que ressources FHIR `Requirements`, ce qui permet de :

- Lier chaque règle au modèle logique qu'elle concerne (`satisfiedBy`).
- Les versionner et les faire évoluer en même temps que le modèle.
- Les rendre interrogeables par des outils (validateurs, générateurs de tests).

### Des publications versionnées et pérennes

Avec le workflow PDF, chaque version du modèle d'exposition est un document figé, distribué par e-mail ou déposé sur un serveur. Les implémenteurs doivent gérer eux-mêmes quelle version ils ont intégrée. Avec un IG publié sur un serveur canonique :

- Chaque version publiée est **accessible de façon permanente** à une URL stable (ex. `https://interop.esante.gouv.fr/ig/fhir/ror/1.0.0/`) — les liens dans les spécifications ou les contrats ne deviennent jamais obsolètes.
- Le **package NPM** (`ans.fhir.fr.ror`) peut être déclaré comme dépendance dans les outils de validation : les implémenteurs savent exactement quelle version ils valident contre.
- Un **historique des versions** est maintenu sur le serveur de publication, permettant de consulter n'importe quelle version antérieure et de comprendre l'évolution du modèle dans le temps.
- Les **breaking changes** sont identifiables automatiquement entre deux versions via des outils de comparaison FHIR (`fhir-diff`), ce qui facilite la gestion des migrations côté éditeurs.

### Une collaboration ouverte

Le passage sur GitHub transforme la manière de collaborer autour du modèle d'exposition :

- Les acteurs de l'écosystème (éditeurs, régions, ANS) peuvent **proposer des modifications** via pull request ou **signaler des incohérences** via issue — sans attendre une réunion de concertation.
- Les discussions sont **publiques et indexées**, ce qui évite de rejouer les mêmes débats à chaque mise à jour.
- La **validation structurelle est automatique** : une erreur de modélisation est détectée avant la publication, pas après.
