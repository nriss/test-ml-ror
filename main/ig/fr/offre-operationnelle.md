# Offre Opérationnelle - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Offre Opérationnelle

### Offre Opérationnelle

Cette section est transversale : elle décrit les prestations de soins qu'une structure peut réaliser, intéressant aussi bien les professionnels de santé que les développeurs.

La section **Offre Opérationnelle** décrit les prestations qu'une structure peut réaliser pour répondre au besoin de santé d'une personne. C'est le cœur fonctionnel du ROR : l'offre opérationnelle permet d'orienter les patients vers les établissements adaptés à leurs besoins.

#### Donnée pivot

L'**identifiantOffre** est l'identifiant de l'offre opérationnelle, unique et persistant au niveau national, généré par une instance régionale du ROR ou par le ROR national. Lorsqu'il est généré par une instance régionale, il est de la forme `code INSEE régional / code interne ROR`.

-------

#### Diagramme

🔍+
🔍−
↻
⛶

  

-------

#### Modèles logiques

| | | |
| :--- | :--- | :--- |
| [ROROffreOperationnelle](StructureDefinition-ror-offre-operationnelle.md) | OffreOperationnelle | Prestation de soins réalisable par une structure |
| [RORActiviteOperationnelle](StructureDefinition-ror-activite-operationnelle.md) | Base | Activité opérationnelle exercée dans le cadre de l'offre |
| [RORPatientele](StructureDefinition-ror-patientele.md) | Patientele | Description de la patientèle cible de l'offre |

-------

#### ROROffreOperationnelle

L'**Offre Opérationnelle** décrit les prestations que peut réaliser une structure. Elle est rattachée à une Organisation Interne et peut être réalisée par un ou plusieurs professionnels de santé.

**Règles de gestion :**

* `RG_EXP_028` : Une offre opérationnelle ne peut pas avoir plusieurs types d'offre relevant de champs d'activité différents.

Des conseils sur l'interprétation du contenu de ce tableau peuvent être trouvés[ici](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#data-dictionaries)

-------

#### RORActiviteOperationnelle

L'**Activité Opérationnelle** caractérise l'activité exercée dans le cadre d'une offre opérationnelle.

Des conseils sur l'interprétation du contenu de ce tableau peuvent être trouvés[ici](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#data-dictionaries)

-------

#### RORPatientele

La **Patientèle** décrit les caractéristiques de la population cible de l'offre opérationnelle.

Des conseils sur l'interprétation du contenu de ce tableau peuvent être trouvés[ici](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#data-dictionaries)

