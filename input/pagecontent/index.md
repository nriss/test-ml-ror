<div style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>IG de démonstration</b><br>
Cet IG illustre comment définir des modèles logiques ROR en dérivant des modèles du MOS (Modèle des Objets de Santé).
</div>

{% if site.data.info.releaselabel == 'ci-build' %}
<div style="width: 65%">
    <blockquote class="stu-note">
    <p>Cet Implementation Guide est en cours de construction (ci-build). Il est susceptible d'évoluer fréquemment.</p>
    </blockquote>
</div>
{% endif %}

### Le Répertoire Opérationnel des Ressources (ROR)

Le **Répertoire Opérationnel des Ressources (ROR)** est le référentiel national de description de l'offre de santé. Il constitue le gisement de données de référence pour les échanges entre systèmes d'information de santé.

Ce modèle d'exposition (version 3.0.1) répond aux besoins suivants :
- **Recherche inter-ROR** en sanitaire et médico-social
- **Orientation en aval de l'hospitalisation**
- **Orientation d'une personne âgée** en perte d'autonomie ou en situation de handicap
- **Orientation en soins non programmés**

Les données sont modélisées en cohérence avec le [Modèle des Objets de Santé (MOS)](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/) et les nomenclatures associées (NOS) gérés par l'ANS.

---

### Description de l'offre de santé

Les acteurs de santé ont convergé sur une vision commune de l'offre de santé autour de quatre composantes :

- L'**organisation opérationnelle** au sein d'une structure,
- Qui **mobilise des professionnels**,
- Et dispose d'**équipements spécifiques**,
- Pour réaliser des **activités opérationnelles**.

Les données de description de l'offre de santé, échangées avec les ROR, sont structurées en **5 sous-ensembles** :

| # | Sous-ensemble | Description | Pages |
|---|---|---|---|
| 1 | **Structure** | Entité Juridique et Entité Géographique, auxquelles sont rattachés les tarifs | [Structure](structure.html), [Tarif](tarif.html) |
| 2 | **Organisation** | Organisation interne d'un établissement (pôles, services, unités fonctionnelles) | [Organisation](organisation.html) |
| 3 | **Offre Opérationnelle** | Prestations que peut réaliser une structure pour répondre au besoin de santé | [Offre Opérationnelle](offre-operationnelle.html) |
| 4 | **Ressources Opérationnelles** | Moyens mis en œuvre pour réaliser la prestation | [Ressources Opérationnelles](ressources-operationnelles.html) |
| 5 | **Professionnel** | Personnes physiques, professionnels, exercice professionnel et savoir-faire | [Professionnel Ressource](professionnel.html) |

{% include svg-interactive-styles.html %}

<div class="figure svg-wrap" style="width:100%;">
  <div class="btn-group-vertical position-absolute top-0 end-0 p-2 svg-controls">
    <button class="btn btn-light btn-sm svg-zoom-in" title="Zoom avant">🔍+</button>
    <button class="btn btn-light btn-sm svg-zoom-out" title="Zoom arrière">🔍−</button>
    <button class="btn btn-light btn-sm svg-zoom-reset" title="Réinitialiser">↻</button>
    <button class="btn btn-light btn-sm svg-fullscreen" title="Plein écran">⛶</button>
  </div>
  <p style="margin: 0; padding: 0;">
    {%include VueEnsemble.svg%}
  </p>
</div>

{% include svg-interactive-script.html %}

---

### Relation avec le MOS

Ce modèle ROR dérive du MOS. La stratégie appliquée est :

- **Ne pas redéfinir** ce qui existe déjà dans le MOS
- **Créer des LogicalModels ROR** qui héritent des LogicalModels MOS correspondants
- **N'ajouter en FSH que les différences** : attributs supplémentaires, contraintes spécifiques au contexte ROR, cardinalités resserrées

Différences notables par rapport au MOS :
- Les attributs MOS ne répondant pas aux besoins métiers ROR ne sont pas repris.
- Certaines cardinalités sont contraintes (ex. `idNatStruct 1..1`, `champActivite 1..1`).
- De nouveaux concepts propres au ROR ont été ajoutés (ex. `RORMetadonnee`, `RORCapaciteAccueilOperationnelle`, hiérarchie `RORTarif`).
- Les héritages UML sont traduits par des compositions conformément au [Guide UML-XML de l'État](https://references.modernisation.gouv.fr/sites/default/files/RGI-MDC%20Guide%20UML-XML.pdf).

---

### Dépendances

{% include dependency-table.xhtml %}

### Analyse cross-version

{% include cross-version-analysis.xhtml %}

### Profils globaux

{% include globals-table.xhtml %}

### Paramètres d'expansion

{% include expansion-params.xhtml %}

### Propriété intellectuelle

{% include ip-statements.xhtml %}
