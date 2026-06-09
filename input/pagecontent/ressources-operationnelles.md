### Ressources Opérationnelles

<div style="background-color: #fff9e6; border-left: 4px solid #ff9800; padding: 12px 16px; margin-bottom: 16px;">
Cette section est transversale : elle décrit les moyens mis en œuvre pour réaliser les prestations de soins.
</div>

La section **Ressources Opérationnelles** décrit les moyens matériels et capacitaires qui peuvent être mis en œuvre pour réaliser une offre opérationnelle. Elle comprend les équipements spécifiques, les capacités d'accueil et le lieu de réalisation de l'offre.

#### Donnée pivot

L'identifiant du lieu de réalisation de l'offre est la donnée pivot de cette section.

---

#### Modèles logiques

| Modèle ROR | Héritage MOS | Description |
|---|---|---|
| [ROREquipementSpecifique](StructureDefinition-ror-equipement-specifique.html) | EquipementSpecifique | Équipement spécialisé disponible dans la structure |
| [RORCapaciteAccueilOperationnelle](StructureDefinition-ror-capacite-accueil-operationnelle.html) | Base | Capacité d'accueil disponible en temps réel |
| [RORCapaciteHabitation](StructureDefinition-ror-capacite-habitation.html) | CapaciteHabitation | Capacité d'hébergement de l'établissement |
| [RORCapacitePriseCharge](StructureDefinition-ror-capacite-prise-charge.html) | CapacitePriseCharge | Capacité de prise en charge par l'offre |
| [RORLieuRealisationOffre](StructureDefinition-ror-lieu-realisation-offre.html) | LieuRealisationOffre | Lieu où se réalise l'offre opérationnelle |

---

#### ROREquipementSpecifique

L'**Équipement Spécifique** décrit les équipements matériels et installations spécialisés disponibles dans un établissement, susceptibles d'influencer l'orientation d'un patient.

| Attribut | Card. | Type | Terminologie |
|---|---|---|---|
| typeEquipement | 1..1 | Coding | TRE_R212-Equipement |
| nombreEquipement | 0..1 | integer | — |
| metadonnee | 1..1 | [RORMetadonnee](StructureDefinition-ror-metadonnee.html) | — |

---

#### RORCapaciteAccueilOperationnelle

La **Capacité d'Accueil Opérationnelle** représente les disponibilités de prise en charge en temps réel ou à court terme. Elle permet aux outils d'orientation d'accéder aux disponibilités d'un établissement.

| Attribut | Card. | Type | Terminologie |
|---|---|---|---|
| natureCapacite | 1..1 | Coding | TRE_R329-NatureCapacite |
| nombreCapacite | 0..1 | integer | — |
| statutCapacite | 1..1 | Coding | TRE_R330-StatutCapacite |
| dateMAJ | 0..1 | dateTime | — |
| temporaliteCapacite | 1..1 | Coding | TRE_R331-Temporalite |
| horaireOuverture | 0..1 | string | — |
| typeSourceCapacite | 0..1 | Coding | TRE_R335-TypeSource |
| commentaire | 0..1 | string | — |
| genreCapaciteDispo | 0..1 | Coding | TRE_R332-GenreCapacite |
| capaciteJour | 0..1 | integer | — |
| typeFermetureCapacite | 0..1 | Coding | TRE_R333-TypeFermetureCapacite |
| typeLitSupplementaire | 0..* | Coding | TRE_R334-TypeLitSupplementaire |
| typeCrise | 0..* | Coding | TRE_R336-TypeCrise |

---

#### RORCapaciteHabitation

La **Capacité Habitation** décrit le nombre de places ou de logements disponibles selon le type d'hébergement.

| Attribut | Card. | Type | Terminologie |
|---|---|---|---|
| nombrePlaces | 1..1 | integer | — |
| typeHabitation | 1..1 | Coding | TRE_R242-TypeHabitation |
| temporaliteAccueil | 0..1 | Coding | TRE_R240-TemporaliteAccueil |
| metadonnee | 1..1 | [RORMetadonnee](StructureDefinition-ror-metadonnee.html) | — |

---

#### RORCapacitePriseCharge

La **Capacité de Prise en Charge** décrit les capacités d'accueil en termes de places autorisées ou installées pour une offre donnée.

| Attribut | Card. | Type | Terminologie |
|---|---|---|---|
| nombrePlaces | 0..1 | integer | — |
| affectationTemporaire | 0..1 | Coding | TRE_R337-AffectationTemporaire |
| metadonnee | 1..1 | [RORMetadonnee](StructureDefinition-ror-metadonnee.html) | — |
