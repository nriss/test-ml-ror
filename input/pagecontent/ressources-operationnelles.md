
<div style="background-color: #fff9e6; border-left: 4px solid #ff9800; padding: 12px 16px; margin-bottom: 16px;">
Cette section est transversale : elle décrit les moyens mis en œuvre pour réaliser les prestations de soins.
</div>

La section **Ressources Opérationnelles** décrit les moyens matériels et capacitaires qui peuvent être mis en œuvre pour réaliser une offre opérationnelle. Elle comprend les équipements spécifiques, les capacités d'accueil et le lieu de réalisation de l'offre.

### Donnée pivot

L'identifiant du lieu de réalisation de l'offre est la donnée pivot de cette section. Lorsqu'il est généré par une instance régionale, il est de la forme `code INSEE régional / code interne ROR`.

---

### Diagramme

<div class="mermaid" markdown="0">
classDiagram
    class Offre["ROROffreOperationnelle"]

    class Lieu["RORLieuRealisationOffre"] {
        idExterneSynchro : Identifier [0..1]
        nomExterneSynchro : string [0..1]
        commentaire : string [0..1]
        metadonnee : RORMetadonnee [1..1]
    }

    class Equip["ROREquipementSpecifique"] {
        typeEquipement : Coding [1..1]
        nbEquipementEnService : integer [0..1]
        metadonnee : RORMetadonnee [1..1]
    }

    class CPC["RORCapacitePriseCharge"] {
        affectationTemporaire : Coding [1..1]
        commentaire : string [0..1]
        metadonnee : RORMetadonnee [1..1]
    }

    class CAO["RORCapaciteAccueilOperationnelle"] {
        natureCapacite : Coding [1..1]
        nombreCapacite : integer [0..1]
        statutCapacite : Coding [1..1]
        temporaliteCapacite : Coding [1..1]
        typeSourceCapacite : Coding [0..1]
        genreCapaciteDispo : Coding [0..1]
        typeFermetureCapacite : Coding [0..1]
        typeLitSupplementaire : Coding [0..*]
        typeCrise : Coding [0..*]
    }

    class CH["RORCapaciteHabitation"] {
        typeHabitation : Coding [1..1]
        nbHabitation : integer [0..1]
        metadonnee : RORMetadonnee [1..1]
    }

    Offre "1" --> "1" Lieu : réalisée dans
    Lieu "1" --> "0..*" Equip : dispose de
    Lieu "1" --> "0..*" CPC : capacité de
    CPC "1" --> "0..*" CAO : détaillée par
    Offre "1" --> "0..*" CH : hébergement

    click Offre href "StructureDefinition-ror-offre-operationnelle.html" "ROROffreOperationnelle"
    click Lieu href "StructureDefinition-ror-lieu-realisation-offre.html" "RORLieuRealisationOffre"
    click Equip href "StructureDefinition-ror-equipement-specifique.html" "ROREquipementSpecifique"
    click CPC href "StructureDefinition-ror-capacite-prise-charge.html" "RORCapacitePriseCharge"
    click CAO href "StructureDefinition-ror-capacite-accueil-operationnelle.html" "RORCapaciteAccueilOperationnelle"
    click CH href "StructureDefinition-ror-capacite-habitation.html" "RORCapaciteHabitation"

    classDef externalRef fill:#E3F2FD
    classDef externalRef stroke:#1976D2
    classDef externalRef color:#333
    cssClass "Offre" externalRef
</div>

---

### Modèles logiques

| Modèle ROR | Héritage MOS | Description |
|---|---|---|
| [RORLieuRealisationOffre](StructureDefinition-ror-lieu-realisation-offre.html) | LieuRealisationOffre | Lieu où se réalise l'offre opérationnelle |
| [ROREquipementSpecifique](StructureDefinition-ror-equipement-specifique.html) | EquipementSpecifique | Équipement spécialisé disponible dans la structure |
| [RORCapacitePriseCharge](StructureDefinition-ror-capacite-prise-charge.html) | CapacitePriseCharge | Capacité de prise en charge par l'offre |
| [RORCapaciteAccueilOperationnelle](StructureDefinition-ror-capacite-accueil-operationnelle.html) | Base | Capacité d'accueil disponible en temps réel |
| [RORCapaciteHabitation](StructureDefinition-ror-capacite-habitation.html) | CapaciteHabitation | Capacité d'hébergement de l'établissement |
| [RORLimiteCaracteristiqueEquipement](StructureDefinition-ror-limite-caracteristique-equipement.html) | *(nouveau)* | Valeur limite d'une caractéristique pour les équipements d'un même type |

---

### RORLieuRealisationOffre
Le **Lieu de Réalisation de l'Offre** indique le lieu précis où se déroule la prestation. Il hérite de la classe MOS `Lieu` (adresse, coordonnées géographiques, etc.) et ajoute les attributs spécifiques au contexte ROR.

{% include StructureDefinition-ror-lieu-realisation-offre-class-table.xhtml %}

---

### ROREquipementSpecifique
L'**Équipement Spécifique** décrit les équipements matériels et installations spécialisés disponibles dans un établissement, susceptibles d'influencer l'orientation d'un patient.

{% include StructureDefinition-ror-equipement-specifique-class-table.xhtml %}

---

### RORCapacitePriseCharge
La **Capacité de Prise en Charge** décrit les capacités d'accueil en termes de places autorisées ou installées pour une offre donnée.

{% include StructureDefinition-ror-capacite-prise-charge-class-table.xhtml %}

---

### RORCapaciteAccueilOperationnelle
La **Capacité d'Accueil Opérationnelle** représente les disponibilités de prise en charge en temps réel ou à court terme. Elle permet aux outils d'orientation d'accéder aux disponibilités d'un établissement.

**Règles de gestion :**
- `RG_EXP_047` : Lorsque le `statutCapacite` est à « disponible » avec une valeur à 0, cela indique que l'offre est actuellement saturée mais reste ouverte.

{% include StructureDefinition-ror-capacite-accueil-operationnelle-class-table.xhtml %}

---

### RORCapaciteHabitation
La **Capacité Habitation** décrit le nombre de places ou de logements disponibles selon le type d'hébergement.

{% include StructureDefinition-ror-capacite-habitation-class-table.xhtml %}

---

### RORLimiteCaracteristiqueEquipement
La **Limite de Caractéristique d'Équipement** précise les limites que peut supporter l'équipement le plus tolérant parmi les équipements spécifiques de même type dans une organisation. Par exemple, si une organisation possède trois tables de bloc opératoire supportant respectivement 180 kg, 190 kg et 200 kg, seule la valeur de 200 kg est retenue.

{% include StructureDefinition-ror-limite-caracteristique-equipement-class-table.xhtml %}
