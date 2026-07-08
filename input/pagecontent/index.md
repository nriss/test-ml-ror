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

<div class="mermaid">
classDiagram
    class EJ["ROREntiteJuridique"]
    class EG["ROREntiteGeographique"]
    class OI["ROROrganisationInterne"]
    class Tarif["RORTarif"] {
        &lt;&lt;abstract&gt;&gt;
    }
    class Offre["ROROffreOperationnelle"]
    class Lieu["RORLieuRealisationOffre"]
    class SitOp["RORSituationOperationnelle"]
    class EP["RORExerciceProfessionnel"]

    EJ "1" --> "1..*" EG
    EG "1" --> "0..*" OI
    EG "1" --> "0..*" Tarif
    OI "0..1" --> "1..*" Offre
    OI "*" --> "*" OI : contient
    Offre "1" --> "1" Lieu
    Offre "1" --> "0..*" SitOp
    SitOp "0..*" --> "1" EP : réalisée par

    click EJ href "StructureDefinition-ror-entite-juridique.html" "ROREntiteJuridique"
    click EG href "StructureDefinition-ror-entite-geographique.html" "ROREntiteGeographique"
    click OI href "StructureDefinition-ror-organisation-interne.html" "ROROrganisationInterne"
    click Tarif href "StructureDefinition-ror-tarif.html" "RORTarif"
    click Offre href "StructureDefinition-ror-offre-operationnelle.html" "ROROffreOperationnelle"
    click Lieu href "StructureDefinition-ror-lieu-realisation-offre.html" "RORLieuRealisationOffre"
    click SitOp href "StructureDefinition-ror-situation-operationnelle.html" "RORSituationOperationnelle"
    click EP href "StructureDefinition-ror-exercice-professionnel.html" "RORExerciceProfessionnel"
</div>

### Données pivots

Chaque sous-ensemble possède des **données pivots** — identifiants uniques et persistants au niveau national — permettant aux applications externes de se synchroniser avec le ROR. Ces données ne sont pas modifiables après création.

| Sous-ensemble | Donnée pivot |
|---|---|
| **Structure** | `idNat_Struct` — n° FINESS juridique/géographique, SIREN ou SIRET selon le type de structure |
| **Organisation** | Identifiant généré par le ROR, de la forme `code INSEE régional / code interne ROR` |
| **Offre Opérationnelle** | `identifiantOffre` — unique au niveau national, généré par une instance régionale ou le ROR national |
| **Ressources Opérationnelles** | Identifiant du lieu de réalisation de l'offre |
| **Professionnel** | `idNat_PS` — n° RPPS ou ADELI du professionnel |

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

<!--
### Analyse inter-version FHIR

{% include cross-version-analysis.xhtml %}
-->

<!--
### Profils globaux

{% include globals-table.xhtml %}
-->

<!-- 
### Paramètres d'expansion

{% include expansion-params.xhtml %} 
-->

### Propriété intellectuelle

{% include ip-statements.xhtml %}
