# Pourquoi le Modèle Logique HL7 ? - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Pourquoi le Modèle Logique HL7 ?

### Pourquoi passer de Modelio au Modèle Logique HL7 ?

Le MOS était jusqu'à présent publié via le site [mos.esante.gouv.fr](https://mos.esante.gouv.fr), accompagné d'exports Excel et PDF générés depuis Modelio. Ce passage vers un guide d'implémentation en Modèle Logique HL7 (écrit en FSH et hébergé sur GitHub) s'inscrit dans une démarche d'alignement sur les pratiques internationales, tout en ouvrant de nouvelles possibilités pour l'écosystème.

**Ce qui ne change pas**

La gouvernance et le processus d'évolution du MOS restent inchangés. Le MOS conserve sa neutralité technologique : le Modèle Logique HL7 n'est pas FHIR. C'est un formalisme de modélisation indépendant de toute implémentation, qui peut servir de socle pour différents standards (FHIR, CDA, HL7 V2/V3, etc.).

### Collaboration ouverte avec l'écosystème

L'hébergement sur **GitHub** transforme la manière de collaborer autour du MOS.

Avec Modelio, les échanges se faisaient hors ligne, par email ou lors de réunions. Avec GitHub :

* Chaque acteur peut **proposer une modification** via une pull request, **signaler un problème** via une issue, ou **commenter** une proposition en cours — sans attendre une réunion de concertation.
* L'**historique complet** des évolutions est traçable : qui a proposé quoi, pourquoi, quand, et quelle décision a été prise.
* Les discussions sont **publiques et indexées**, ce qui facilite la réutilisation des décisions passées et évite de rejouer les mêmes débats.
* La contribution externe est possible : une première proposition avait d'ailleurs déjà été soumise par un contributeur externe avant même la migration officielle.

### Compétences et autonomie à l'agence

Travailler en FSH sur un dépôt Git place le MOS dans le même outillage que tous les autres IGs de l'ANS. Concrètement, cela signifie que :

* Les équipes de l'ANS peuvent **modifier, valider et publier le MOS** avec les mêmes outils et les mêmes compétences que pour n'importe quel autre guide d'implémentation.
* La **validation structurelle est automatique** à chaque modification : les erreurs sont détectées avant la publication, pas après.
* Les **diagrammes sont générés automatiquement** à partir du modèle source — ils sont toujours synchronisés avec le contenu réel, sans export manuel.
* L'**intégration continue** permet une preview instantanée de chaque branche, ce qui facilite la revue des contributions avant merge.

### Alignement international et extensibilité

De nombreux pays et organisations utilisent déjà les Modèles Logiques HL7 pour leurs modélisations nationales : le projet européen XT-EHR, la Belgique, la Suisse (CH-ELM), l'OMS (Smart Guidelines). Ce passage aligne la France sur ces pratiques.

Le format ouvre également de nouvelles possibilités techniques :

* Les projets peuvent **hériter des Modèles Logiques du MOS** (qui lui même peut dériver des objets européens) pour y ajouter leurs propres spécificités, en garantissant la cohérence avec le référentiel national (voir la [page des fonctionnalités disponibles](fonctionnalites-ror.md)).
* Les nomenclatures nationales (TRE du SMT) sont **référencées directement** dans le modèle via leurs packages FHIR, sans gestion manuelle.
* Le format permet d'exploiter les datatypes FHIR et l'héritage depuis des modèles européens.

