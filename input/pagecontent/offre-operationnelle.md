### Offre Opérationnelle

<div style="background-color: #fff9e6; border-left: 4px solid #ff9800; padding: 12px 16px; margin-bottom: 16px;">
Cette section est transversale : elle décrit les prestations de soins qu'une structure peut réaliser, intéressant aussi bien les professionnels de santé que les développeurs.
</div>

La section **Offre Opérationnelle** décrit les prestations qu'une structure peut réaliser pour répondre au besoin de santé d'une personne. C'est le cœur fonctionnel du ROR : l'offre opérationnelle permet d'orienter les patients vers les établissements adaptés à leurs besoins.

#### Donnée pivot

L'**identifiantOffre** est l'identifiant de l'offre opérationnelle, unique et persistant au niveau national, généré par une instance régionale du ROR ou par le ROR national. Lorsqu'il est généré par une instance régionale, il est de la forme `code INSEE régional / code interne ROR`.

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

Attributs spécifiques ROR :

| Attribut | Card. | Type | Terminologie |
|---|---|---|---|
| identifiantOffre | 1..1 | Identifier | — |
| typeOffre | 0..* | Coding | JDV_J238-TypeOffre-ROR |
| champActivite | 1..1 | Coding | TRE_R227-ChampActivite |
| modePriseEnCharge | 1..1 | Coding | TRE_R213-ModePriseEnCharge |
| uniteSensible | 1..1 | boolean | — |
| temporaliteAccueil | 0..* | Coding | TRE_R240-TemporaliteAccueil |
| modaliteAccueil | 0..* | Coding | TRE_R338-ModaliteAccueil |
| modeGestion | 0..1 | Coding | TRE_R236-ModeGestion |
| acteSpecifique | 0..* | Coding | TRE_R210-ActeSpecifique |
| acteRealiseHorsCabinet | 0..* | Coding | TRE_R210-ActeSpecifique |
| specialisationPriseEnCharge | 0..* | Coding | TRE_R245-SpecialisationDePriseEnCharge |
| ouvertureAnnuelle | 0..* | Coding | TRE_R238-OuvertureAnnuelle |
| professionRessource | 0..* | Coding | JDV_J186-ProfessionRessource-ROR |
| competenceSpecifique | 0..* | Coding | TRE_R243-CompetenceSpecifique |
| niveauExpertise | 0..* | Coding | JDV_J227-NiveauExpertise-ROR |
| typeFermeture | 0..1 | Coding | JDV_J185-typeFermeture-ROR |
| metadonnee | 1..1 | [RORMetadonnee](StructureDefinition-ror-metadonnee.html) | — |

**Règles de gestion :**
- `RG_EXP_028` : Une offre opérationnelle ne peut pas avoir plusieurs types d'offre relevant de champs d'activité différents.

---

#### RORActiviteOperationnelle

L'**Activité Opérationnelle** caractérise l'activité exercée dans le cadre d'une offre opérationnelle.

| Attribut | Card. | Type | Terminologie |
|---|---|---|---|
| activiteOperationnelle | 1..1 | Coding | TRE_R211-ActiviteOperationnelle |
| familleActiviteOperationnelle | 0..1 | Coding | JDV_J51-FamilleActiviteOperationnelle-ROR |
| metadonnee | 1..1 | [RORMetadonnee](StructureDefinition-ror-metadonnee.html) | — |

---

#### RORPatientele

La **Patientèle** décrit les caractéristiques de la population cible de l'offre opérationnelle.

| Attribut | Card. | Type | Terminologie |
|---|---|---|---|
| ageMin | 1..1 | Quantity | — |
| ageMax | 1..1 | Quantity | — |
| publicPrisEnCharge | 0..* | Coding | TRE_R239-PublicPrisEnCharge |
