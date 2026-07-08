
<div style="background-color: #fff9e6; border-left: 4px solid #ff9800; padding: 12px 16px; margin-bottom: 16px;">
Cette section est transversale : elle intéresse les professionnels de santé (compréhension de la structure des établissements) et les développeurs (implémentation des modèles logiques).
</div>

La section **Structure** décrit les organismes du domaine sanitaire, médico-social et social. Elle regroupe les deux classes fondamentales qui caractérisent l'identité d'un établissement dans le ROR.

Les structures peuvent être immatriculées dans :
- **FINESS** (établissements sanitaires, sociaux et médico-sociaux),
- **RPPS / ADELI** (professionnels de santé exerçant en cabinet libéral),
- **SIRENE** (autres types de structures).

### Données pivots

Les données pivots de la section Structure permettent aux systèmes externes de se synchroniser avec le ROR :
- L'**idNat_Struct** (numéro FINESS juridique, numéro SIREN, etc.) identifie l'Entité Juridique.
- L'**idNat_Struct** (numéro FINESS géographique, numéro SIRET, etc.) identifie l'Entité Géographique.

Ces données pivots ne sont pas modifiables après création.

---

### Diagramme

{% include svg-interactive-styles.html %}

<div class="figure svg-wrap" style="width:100%;">
  <div class="btn-group-vertical position-absolute top-0 end-0 p-2 svg-controls">
    <button class="btn btn-light btn-sm svg-zoom-in" title="Zoom avant">🔍+</button>
    <button class="btn btn-light btn-sm svg-zoom-out" title="Zoom arrière">🔍−</button>
    <button class="btn btn-light btn-sm svg-zoom-reset" title="Réinitialiser">↻</button>
    <button class="btn btn-light btn-sm svg-fullscreen" title="Plein écran">⛶</button>
  </div>
  <p style="margin: 0; padding: 0;">
    {%include Structure.svg%}
  </p>
</div>

{% include svg-interactive-script.html %}

---

### Modèles logiques

| Modèle ROR | Héritage MOS | Description |
|---|---|---|
| [ROREntiteJuridique](StructureDefinition-ror-entite-juridique.html) | EntiteJuridique | Personne morale détentrice de droits (autorisations, agréments, conventions) |
| [ROREntiteGeographique](StructureDefinition-ror-entite-geographique.html) | EntiteGeographique | Implantation géographique d'une entité juridique (établissement) |

---

### Règles générales de transmission

- `RG_EXP_002` : Si un élément obligatoire dans la structure du flux d'échange n'est pas renseigné dans le ROR interrogé, alors l'instance de l'entité à laquelle appartient cet élément NE DOIT PAS être transmise. Les instances des entités hiérarchiquement inférieures NE DOIVENT PAS être transmises non plus. Les instances des entités hiérarchiquement supérieures DOIVENT être transmises en respectant la condition ci-dessus.

---

### ROREntiteJuridique
L'**Entité Juridique** (EJ) correspond à la notion de personne morale :
- Pour les établissements FINESS : une EJ détient des droits lui permettant d'exercer ses activités dans des entités géographiques.
- Pour les structures dans RPPS/ADELI hors FINESS : l'EJ représente la personne morale qui porte la responsabilité d'exercice.
- Pour les autres structures : une EJ est une personne morale inscrite dans le SIRENE.

**Règles de gestion :**
- `RG_EXP_004` : L'`idNat_Struct` DOIT être renseigné en priorité avec le numéro FINESS si l'établissement est immatriculé dans FINESS.
- `RG_EXP_037` : Lorsque `numEJ_RPPS_ADELI_Rang` (RPPSrang ou ADELIrang pour les cabinets libéraux hors société d'exercice) est renseigné, il doit être utilisé pour la construction de l'`idNat_Struct`.
- `RG_EXP_043` : La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné, sinon elle n'est jamais renseignée.
- `RG_EXP_044` : Lorsqu'un niveau de structure ou d'organisation est fermé, tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermés avec le même type, la même date de fermeture et, le cas échéant, la même date de réouverture prévisionnelle.
- `RG_EXP_045` : La date de réouverture peut être renseignée lorsque le type de fermeture est « Fermeture temporaire », sinon elle n'est jamais renseignée.

{% include StructureDefinition-ror-entite-juridique-class-table.xhtml %}

---

### ROREntiteGeographique
L'**Entité Géographique** (EG) correspond à la notion d'établissement d'une entité juridique :
- Pour les entités FINESS : l'EG correspond à une implantation géographique caractérisée par une catégorie d'établissement.
- Pour les entités RPPS/ADELI hors FINESS : l'EG correspond à l'implantation géographique où le professionnel exerce.

**Règles de gestion :**
- `RG_EXP_005` : L'`idNat_Struct` de l'EG DOIT être renseigné en priorité avec le numéro FINESS si l'établissement est immatriculé dans FINESS.
- `RG_EXP_006` : Les contacts d'une EG PEUVENT contenir les contacts du directeur et de la cellule d'alerte.
- `RG_EXP_030` : L'attribut `territoireSante` est obligatoirement une division territoriale de type « Territoire de Santé ».
- `RG_EXP_038` : Lorsque `numEG_RPPS_ADELI_Rang` est renseigné, il doit être utilisé pour la construction de l'`idNat_Struct`.
- `RG_EXP_003` : Si la date de fermeture transmise est la date de fermeture définitive, alors `typeFermeture` DOIT être renseigné avec l'OID correspondant au code DEF issu du référentiel FINESS.
- `RG_EXP_043` : La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné, sinon elle n'est jamais renseignée.
- `RG_EXP_044` : Lorsqu'un niveau de structure ou d'organisation est fermé, tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermés avec le même type, la même date de fermeture et, le cas échéant, la même date de réouverture prévisionnelle.
- `RG_EXP_045` : La date de réouverture peut être renseignée lorsque le type de fermeture est « Fermeture temporaire », sinon elle n'est jamais renseignée.

{% include StructureDefinition-ror-entite-geographique-class-table.xhtml %}
