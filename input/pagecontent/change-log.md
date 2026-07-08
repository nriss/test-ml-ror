### Historique des versions

### version 0.1.0 (ci-build)

Première version de l'IG de démonstration ROR.

**Modèles logiques (37 LogicalModels)**

* Création de l'ensemble des LogicalModels ROR couvrant les 5 sections du modèle d'exposition v3.0.1 : Structure, Organisation, Offre Opérationnelle, Tarif, Ressources Opérationnelles, Professionnel Ressource, Classes Communes
* Héritage des LogicalModels MOS 0.1.0-ballot : chaque classe ROR dérive de sa contrepartie MOS et n'ajoute que les différences (attributs supplémentaires, cardinalités resserrées)
* Création de 36 ValueSets JDV provisoires (enveloppes des TRE NOS) pour satisfaire les contraintes de binding FHIR ; redirection des alias vers les JDV officiels existants quand disponibles (ex. JDV_J185-typeFermeture-ROR)
* Correction du chemin de binding `capaciteSavoirFaire` dans `RORCapacite` (alignement avec le nom réel dans le StructureDefinition MOS)

**Pages narratives**

* Création de 7 pages de section : `structure`, `organisation`, `offre-operationnelle`, `tarif`, `ressources-operationnelles`, `professionnel`, `classes-communes`
* Mise à jour de `index.md` : description du ROR, 4 cas d'usage, tableau des 5 sous-ensembles, vue d'ensemble du modèle, relation avec le MOS
* Documentation de l'ensemble des 49 règles de gestion `RG_EXP_*` du modèle d'exposition, distribuées dans leur page de contexte
* Remplacement des tableaux d'attributs codés en dur par les includes auto-générés `StructureDefinition-[id]-class-table.xhtml` (évite la duplication avec les FSH)
* Suppression des titres `###` en tête de page (le publisher génère le titre automatiquement depuis le menu)

**Diagrammes Mermaid**

* Création de 8 diagrammes de classes Mermaid (intégrés directement dans les pages `pagecontent`) : VueEnsemble, Structure, Organisation, OffreOperationnelle, Tarif, RessourcesOperationnelles, Professionnel, ClassesCommunes
* Liens cliquables vers les StructureDefinition, héritage MOS mis en évidence par un style grisé
* Remplacement des diagrammes PlantUML (`input/images-source/`) par des diagrammes Mermaid, rendus côté client sans étape de compilation à la publication
* Suppression du composant interactif de zoom/plein écran (`svg-interactive-styles.html`, `svg-interactive-script.html`), devenu obsolète : le SVG généré par Mermaid s'adapte déjà à la largeur de la page

**Configuration**

* Ajout des 7 pages au menu `sushi-config.yaml` sous la section « Modèle d'exposition »
* Initialisation du projet à partir du template ANS
* Configuration de la dépendance vers le MOS 0.1.0-ballot
