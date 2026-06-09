### Offre Opérationnelle

<div style="background-color: #fff9e6; border-left: 4px solid #ff9800; padding: 12px 16px; margin-bottom: 16px;">
Cette section est transversale : elle décrit les prestations de soins qu'une structure peut réaliser, intéressant aussi bien les professionnels de santé que les développeurs.
</div>

La section **Offre Opérationnelle** décrit les prestations qu'une structure peut réaliser pour répondre au besoin de santé d'une personne. C'est le cœur fonctionnel du ROR : l'offre opérationnelle permet d'orienter les patients vers les établissements adaptés à leurs besoins.

#### Donnée pivot

L'**identifiantOffre** est l'identifiant de l'offre opérationnelle, unique et persistant au niveau national, généré par une instance régionale du ROR ou par le ROR national. Lorsqu'il est généré par une instance régionale, il est de la forme `code INSEE régional / code interne ROR`.

---

#### Diagramme

{% include OffreOperationnelle.svg %}

---

#### Modèles logiques

| Modèle ROR | Héritage MOS | Description |
|---|---|---|
| [ROROffreOperationnelle](StructureDefinition-ror-offre-operationnelle.html) | OffreOperationnelle | Prestation de soins réalisable par une structure |
| [RORActiviteOperationnelle](StructureDefinition-ror-activite-operationnelle.html) | Base | Activité opérationnelle exercée dans le cadre de l'offre |
| [RORPatientele](StructureDefinition-ror-patientele.html) | Patientele | Description de la patientèle cible de l'offre |

---

#### ROROffreOperationnelle

L'**Offre Opérationnelle** décrit les prestations que peut réaliser une structure. Elle est rattachée à une Organisation Interne et peut être réalisée par un ou plusieurs professionnels de santé.

**Règles de gestion :**
- `RG_EXP_028` : Une offre opérationnelle ne peut pas avoir plusieurs types d'offre relevant de champs d'activité différents.

{% include StructureDefinition-ror-offre-operationnelle-dict.xhtml %}

---

#### RORActiviteOperationnelle

L'**Activité Opérationnelle** caractérise l'activité exercée dans le cadre d'une offre opérationnelle.

{% include StructureDefinition-ror-activite-operationnelle-dict.xhtml %}

---

#### RORPatientele

La **Patientèle** décrit les caractéristiques de la population cible de l'offre opérationnelle.

{% include StructureDefinition-ror-patientele-dict.xhtml %}
