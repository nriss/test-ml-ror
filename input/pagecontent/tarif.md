### Tarif

<div style="background-color: #fff9e6; border-left: 4px solid #ff9800; padding: 12px 16px; margin-bottom: 16px;">
Cette section est transversale : les tarifs intéressent les patients et les professionnels de santé pour l'orientation, et les développeurs pour l'implémentation.
</div>

La section **Tarif** décrit les prix des prestations et services fournis par un établissement. Les tarifs sont rattachés à l'Entité Géographique. Seuls les tarifs déterminants pour l'orientation d'un patient sont décrits dans le ROR.

La classe `RORTarif` est une **classe abstraite** dont héritent les différents types de tarifs spécialisés.

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
    {%include Tarif.svg%}
  </p>
</div>

{% include svg-interactive-script.html %}

---

#### Modèles logiques

| Modèle ROR | Héritage | Description |
|---|---|---|
| [RORTarif](StructureDefinition-ror-tarif.html) | Base (abstrait) | Classe abstraite commune à tous les tarifs |
| [RORForfaitSocleHebergement](StructureDefinition-ror-forfait-socle-hebergement.html) | RORTarif | Tarif journalier d'hébergement (décret n°2015-1868) |
| [RORTarifAccueilDeJour](StructureDefinition-ror-tarif-accueil-de-jour.html) | RORTarif | Tarif journalier pour l'accueil de jour |
| [RORTarifDependance](StructureDefinition-ror-tarif-dependance.html) | RORTarif | Tarif correspondant au groupe de dépendance GIR |
| [RORTarifAidesHumaines](StructureDefinition-ror-tarif-aides-humaines.html) | RORTarif | Tarif de la section soins/dépendance pour les aides humaines |
| [RORTarifPrestationSupplementaire](StructureDefinition-ror-tarif-prestation-supplementaire.html) | RORTarif | Tarif d'une prestation supplémentaire facultative |
| [RORSupplementTarifHebergement](StructureDefinition-ror-supplement-tarif-hebergement.html) | RORTarif | Supplément tarifaire pour hébergement |
| [RORTarifPortageRepas](StructureDefinition-ror-tarif-portage-repas.html) | RORTarif | Tarif du portage de repas |

---

#### RORTarif (classe abstraite)

Attributs communs à tous les types de tarifs. Cette classe n'est pas instanciée directement : seules ses sous-classes spécialisées sont utilisées.

**Règles de gestion :**
- `RG_EXP_026` : Un seul tarif de type « Forfait socle hébergement » PEUT être instancié pour chaque combinaison de `tarifMoins60Ans`, `typeHabitation`, `temporaliteAccueil`, `conditionTarifaire` pour une même EG.
- `RG_EXP_027` : Pour les autres types de tarifs, un seul montant PEUT être exposé pour chaque combinaison des valeurs des attributs (hors montant) pour une même EG.

{% include StructureDefinition-ror-tarif-dict.xhtml %}

---

#### RORForfaitSocleHebergement

Tarif journalier et par personne pour un type d'hébergement donné. Inclut obligatoirement les prestations définies dans le décret n°2015-1868.

{% include StructureDefinition-ror-forfait-socle-hebergement-dict.xhtml %}

---

#### RORTarifAccueilDeJour

{% include StructureDefinition-ror-tarif-accueil-de-jour-dict.xhtml %}

---

#### RORTarifDependance

{% include StructureDefinition-ror-tarif-dependance-dict.xhtml %}

---

#### RORTarifAidesHumaines

{% include StructureDefinition-ror-tarif-aides-humaines-dict.xhtml %}

---

#### RORTarifPrestationSupplementaire

**Règles de gestion :**
- `RG_EXP_036` : Les attributs de la classe `TarifPrestationSupplementaire` DOIVENT être mutuellement exclusifs : soit `nomPrestationSupp` (code d'une prestation connue), soit `nomAutrePrestationSupp` (libellé libre), mais pas les deux simultanément.

{% include StructureDefinition-ror-tarif-prestation-supplementaire-dict.xhtml %}

---

#### RORSupplementTarifHebergement

**Règles de gestion :**
- `RG_EXP_029` : L'attribut `typeHabitation` d'un tarif de type « supplément tarif hébergement » DOIT prendre la valeur « chambre simple ».

{% include StructureDefinition-ror-supplement-tarif-hebergement-dict.xhtml %}

---

#### RORTarifPortageRepas

{% include StructureDefinition-ror-tarif-portage-repas-dict.xhtml %}
