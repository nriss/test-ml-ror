# Ressources Opérationnelles - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Ressources Opérationnelles

Cette section est transversale : elle décrit les moyens mis en œuvre pour réaliser les prestations de soins.

La section **Ressources Opérationnelles** décrit les moyens matériels et capacitaires qui peuvent être mis en œuvre pour réaliser une offre opérationnelle. Elle comprend les équipements spécifiques, les capacités d'accueil et le lieu de réalisation de l'offre.

### Donnée pivot

L'identifiant du lieu de réalisation de l'offre est la donnée pivot de cette section. Lorsqu'il est généré par une instance régionale, il est de la forme `code INSEE régional / code interne ROR`.

-------

### Diagramme

🔍+
🔍−
↻
⛶

  

-------

### Modèles logiques

| | | |
| :--- | :--- | :--- |
| [RORLieuRealisationOffre](StructureDefinition-ror-lieu-realisation-offre.md) | LieuRealisationOffre | Lieu où se réalise l'offre opérationnelle |
| [ROREquipementSpecifique](StructureDefinition-ror-equipement-specifique.md) | EquipementSpecifique | Équipement spécialisé disponible dans la structure |
| [RORCapacitePriseCharge](StructureDefinition-ror-capacite-prise-charge.md) | CapacitePriseCharge | Capacité de prise en charge par l'offre |
| [RORCapaciteAccueilOperationnelle](StructureDefinition-ror-capacite-accueil-operationnelle.md) | Base | Capacité d'accueil disponible en temps réel |
| [RORCapaciteHabitation](StructureDefinition-ror-capacite-habitation.md) | CapaciteHabitation | Capacité d'hébergement de l'établissement |

-------

### RORLieuRealisationOffre

Le **Lieu de Réalisation de l'Offre** indique le lieu précis où se déroule la prestation. Il hérite de la classe MOS `Lieu` (adresse, coordonnées géographiques, etc.) et ajoute les attributs spécifiques au contexte ROR.

-------

### ROREquipementSpecifique

L'**Équipement Spécifique** décrit les équipements matériels et installations spécialisés disponibles dans un établissement, susceptibles d'influencer l'orientation d'un patient.

-------

### RORCapacitePriseCharge

La **Capacité de Prise en Charge** décrit les capacités d'accueil en termes de places autorisées ou installées pour une offre donnée.

-------

### RORCapaciteAccueilOperationnelle

La **Capacité d'Accueil Opérationnelle** représente les disponibilités de prise en charge en temps réel ou à court terme. Elle permet aux outils d'orientation d'accéder aux disponibilités d'un établissement.

**Règles de gestion :**

* `RG_EXP_047` : Lorsque le `statutCapacite` est à « disponible » avec une valeur à 0, cela indique que l'offre est actuellement saturée mais reste ouverte.

-------

### RORCapaciteHabitation

La **Capacité Habitation** décrit le nombre de places ou de logements disponibles selon le type d'hébergement.

