### Structure

<div style="background-color: #fff9e6; border-left: 4px solid #ff9800; padding: 12px 16px; margin-bottom: 16px;">
Cette section est transversale : elle intéresse les professionnels de santé (compréhension de la structure des établissements) et les développeurs (implémentation des modèles logiques).
</div>

La section **Structure** décrit les organismes du domaine sanitaire, médico-social et social. Elle regroupe les deux classes fondamentales qui caractérisent l'identité d'un établissement dans le ROR.

Les structures peuvent être immatriculées dans :
- **FINESS** (établissements sanitaires, sociaux et médico-sociaux),
- **RPPS / ADELI** (professionnels de santé exerçant en cabinet libéral),
- **SIRENE** (autres types de structures).

#### Données pivots

Les données pivots de la section Structure permettent aux systèmes externes de se synchroniser avec le ROR :
- L'**idNat_Struct** (numéro FINESS juridique, numéro SIREN, etc.) identifie l'Entité Juridique.
- L'**idNat_Struct** (numéro FINESS géographique, numéro SIRET, etc.) identifie l'Entité Géographique.

Ces données pivots ne sont pas modifiables après création.

---

#### Diagramme

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

#### Modèles logiques

| Modèle ROR | Héritage MOS | Description |
|---|---|---|
| [ROREntiteJuridique](StructureDefinition-ror-entite-juridique.html) | EntiteJuridique | Personne morale détentrice de droits (autorisations, agréments, conventions) |
| [ROREntiteGeographique](StructureDefinition-ror-entite-geographique.html) | EntiteGeographique | Implantation géographique d'une entité juridique (établissement) |

---

#### ROREntiteJuridique

L'**Entité Juridique** (EJ) correspond à la notion de personne morale :
- Pour les établissements FINESS : une EJ détient des droits lui permettant d'exercer ses activités dans des entités géographiques.
- Pour les structures dans RPPS/ADELI hors FINESS : l'EJ représente la personne morale qui porte la responsabilité d'exercice.
- Pour les autres structures : une EJ est une personne morale inscrite dans le SIRENE.

**Règles de gestion :**
- `RG_EXP_004` : L'`idNat_Struct` DOIT être renseigné en priorité avec le numéro FINESS si l'établissement est immatriculé dans FINESS.
- `RG_EXP_043` : La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné.
- `RG_EXP_044` : Lorsqu'une structure est fermée, tous les niveaux inférieurs et les offres opérationnelles rattachées sont également fermés avec le même type et la même date de fermeture.

{% include StructureDefinition-ror-entite-juridique-dict.xhtml %}

---

#### ROREntiteGeographique

L'**Entité Géographique** (EG) correspond à la notion d'établissement d'une entité juridique :
- Pour les entités FINESS : l'EG correspond à une implantation géographique caractérisée par une catégorie d'établissement.
- Pour les entités RPPS/ADELI hors FINESS : l'EG correspond à l'implantation géographique où le professionnel exerce.

{% include StructureDefinition-ror-entite-geographique-dict.xhtml %}
