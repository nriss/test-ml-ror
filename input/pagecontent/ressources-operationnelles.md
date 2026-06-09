### Ressources Opérationnelles

<div style="background-color: #fff9e6; border-left: 4px solid #ff9800; padding: 12px 16px; margin-bottom: 16px;">
Cette section est transversale : elle décrit les moyens mis en œuvre pour réaliser les prestations de soins.
</div>

La section **Ressources Opérationnelles** décrit les moyens matériels et capacitaires qui peuvent être mis en œuvre pour réaliser une offre opérationnelle. Elle comprend les équipements spécifiques, les capacités d'accueil et le lieu de réalisation de l'offre.

#### Donnée pivot

L'identifiant du lieu de réalisation de l'offre est la donnée pivot de cette section. Lorsqu'il est généré par une instance régionale, il est de la forme `code INSEE régional / code interne ROR`.

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
    {%include RessourcesOperationnelles.svg%}
  </p>
</div>

{% include svg-interactive-script.html %}

---

#### Modèles logiques

| Modèle ROR | Héritage MOS | Description |
|---|---|---|
| [RORLieuRealisationOffre](StructureDefinition-ror-lieu-realisation-offre.html) | LieuRealisationOffre | Lieu où se réalise l'offre opérationnelle |
| [ROREquipementSpecifique](StructureDefinition-ror-equipement-specifique.html) | EquipementSpecifique | Équipement spécialisé disponible dans la structure |
| [RORCapacitePriseCharge](StructureDefinition-ror-capacite-prise-charge.html) | CapacitePriseCharge | Capacité de prise en charge par l'offre |
| [RORCapaciteAccueilOperationnelle](StructureDefinition-ror-capacite-accueil-operationnelle.html) | Base | Capacité d'accueil disponible en temps réel |
| [RORCapaciteHabitation](StructureDefinition-ror-capacite-habitation.html) | CapaciteHabitation | Capacité d'hébergement de l'établissement |

---

#### RORLieuRealisationOffre

Le **Lieu de Réalisation de l'Offre** indique le lieu précis où se déroule la prestation. Il hérite de la classe MOS `Lieu` (adresse, coordonnées géographiques, etc.) et ajoute les attributs spécifiques au contexte ROR.

{% include StructureDefinition-ror-lieu-realisation-offre-dict.xhtml %}

---

#### ROREquipementSpecifique

L'**Équipement Spécifique** décrit les équipements matériels et installations spécialisés disponibles dans un établissement, susceptibles d'influencer l'orientation d'un patient.

{% include StructureDefinition-ror-equipement-specifique-dict.xhtml %}

---

#### RORCapacitePriseCharge

La **Capacité de Prise en Charge** décrit les capacités d'accueil en termes de places autorisées ou installées pour une offre donnée.

{% include StructureDefinition-ror-capacite-prise-charge-dict.xhtml %}

---

#### RORCapaciteAccueilOperationnelle

La **Capacité d'Accueil Opérationnelle** représente les disponibilités de prise en charge en temps réel ou à court terme. Elle permet aux outils d'orientation d'accéder aux disponibilités d'un établissement.

**Règles de gestion :**
- `RG_EXP_047` : Lorsque le `statutCapacite` est à « disponible » avec une valeur à 0, cela indique que l'offre est actuellement saturée mais reste ouverte.

{% include StructureDefinition-ror-capacite-accueil-operationnelle-dict.xhtml %}

---

#### RORCapaciteHabitation

La **Capacité Habitation** décrit le nombre de places ou de logements disponibles selon le type d'hébergement.

{% include StructureDefinition-ror-capacite-habitation-dict.xhtml %}
