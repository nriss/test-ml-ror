
<div style="background-color: #fff9e6; border-left: 4px solid #ff9800; padding: 12px 16px; margin-bottom: 16px;">
Cette section est transversale : elle décrit les professionnels de santé participant à l'offre opérationnelle.
</div>

La section **Professionnel Ressource** décrit les professionnels de santé qui réalisent les prestations dans le cadre d'une offre opérationnelle. La situation opérationnelle d'un professionnel est rattachée aux offres opérationnelles : le professionnel réalise une prestation dans un lieu de réalisation.

### Donnée pivot

L'**idNat_PS** (numéro RPPS ou ADELI) est l'identifiant national du professionnel dans le cadre de l'interopérabilité.

**Règles de gestion :**
- `RG_EXP_030` : En cas de coexistence d'un identifiant RPPS et ADELI pour un même professionnel, l'identifiant RPPS est prioritaire.
- `RG_EXP_031` : Les données issues du RPPS (profession, civilité d'exercice, etc.) ne sont pas modifiables dans le ROR.

---

### Diagramme

<div class="mermaid">
classDiagram
    class PP["RORPersonnePhysique"] {
        civilite : Coding [0..1]
        nomFamille : string [1..1]
        prenom : string [1..1]
        metadonnee : RORMetadonnee [1..1]
    }

    class Pro["RORProfessionnel"] {
        idNatPS : Identifier [1..1]
        metadonnee : RORMetadonnee [1..1]
    }

    class EP["RORExerciceProfessionnel"] {
        profession : Coding [1..1]
        civiliteExercice : Coding [0..1]
        metadonnee : RORMetadonnee [1..1]
    }

    class SF["RORSavoirFaire"] {
        &lt;&lt;abstract&gt;&gt;
        typeSavoirFaire : Coding [1..1]
        metadonnee : RORMetadonnee [1..1]
    }

    class Spec["RORSpecialite"] {
        specialite : Coding [1..1]
    }
    class Comp["RORCompetence"] {
        competence : Coding [1..1]
    }
    class CompExcl["RORCompetenceExclusive"] {
        competenceExclusive : Coding [1..1]
    }
    class OrPart["ROROrientationParticuliere"] {
        orientationParticuliere : Coding [1..1]
    }
    class Cap["RORCapacite"] {
        capaciteSavoirFaire : Coding [1..1]
    }
    class QPAC["RORQualificationPAC"] {
        qualificationPAC : Coding [1..1]
    }
    class DEC["RORDroitExerciceComplementaire"] {
        droitExerciceComplementaire : Coding [1..1]
    }
    class SST["RORSurspecialiteTransversale"] {
        surspecialiteTransversale : Coding [1..1]
    }
    class DESC["RORDESCNonQualifiant"] {
        DESCNonQualifiant : Coding [1..1]
    }

    class SitOp["RORSituationOperationnelle"] {
        modeExerciceOffre : Coding [1..1]
        competenceSpecifique : Coding [0..*]
        secteurConventionnement : Coding [0..1]
        metadonnee : RORMetadonnee [1..1]
    }

    PP "1" --> "1" Pro
    Pro "1" --> "0..*" EP
    EP "1" --> "0..*" SF
    SF <|-- Spec
    SF <|-- Comp
    SF <|-- CompExcl
    SF <|-- OrPart
    SF <|-- Cap
    SF <|-- QPAC
    SF <|-- DEC
    SF <|-- SST
    SF <|-- DESC

    EP "1" --> "0..*" SitOp : situation dans une offre

    click PP href "StructureDefinition-ror-personne-physique.html" "RORPersonnePhysique"
    click Pro href "StructureDefinition-ror-professionnel.html" "RORProfessionnel"
    click EP href "StructureDefinition-ror-exercice-professionnel.html" "RORExerciceProfessionnel"
    click SF href "StructureDefinition-ror-savoir-faire.html" "RORSavoirFaire"
    click Spec href "StructureDefinition-ror-specialite.html" "RORSpecialite"
    click Comp href "StructureDefinition-ror-competence.html" "RORCompetence"
    click CompExcl href "StructureDefinition-ror-competence-exclusive.html" "RORCompetenceExclusive"
    click OrPart href "StructureDefinition-ror-orientation-particuliere.html" "ROROrientationParticuliere"
    click Cap href "StructureDefinition-ror-capacite-savoir-faire.html" "RORCapacite"
    click QPAC href "StructureDefinition-ror-qualification-pac.html" "RORQualificationPAC"
    click DEC href "StructureDefinition-ror-droit-exercice-complementaire.html" "RORDroitExerciceComplementaire"
    click SST href "StructureDefinition-ror-surspecialite-transversale.html" "RORSurspecialiteTransversale"
    click DESC href "StructureDefinition-ror-desc-non-qualifiant.html" "RORDESCNonQualifiant"
    click SitOp href "StructureDefinition-ror-situation-operationnelle.html" "RORSituationOperationnelle"
</div>

---

### Modèles logiques

| Modèle ROR | Héritage MOS | Description |
|---|---|---|
| [RORPersonnePhysique](StructureDefinition-ror-personne-physique.html) | PersonnePhysique | Données d'identité de la personne physique |
| [RORProfessionnel](StructureDefinition-ror-professionnel.html) | Professionnel | Professionnel enregistré dans un répertoire national |
| [RORExerciceProfessionnel](StructureDefinition-ror-exercice-professionnel.html) | ExerciceProfessionnel | Exercice d'une profession par un professionnel |
| [RORSavoirFaire](StructureDefinition-ror-savoir-faire.html) | SavoirFaire | Savoir-faire principal du professionnel (classe abstraite) |
| [RORSpecialite](StructureDefinition-ror-specialite.html) | Specialite | Spécialité ordinale du professionnel |
| [RORCompetence](StructureDefinition-ror-competence.html) | Competence | Compétence reconnue |
| [RORCompetenceExclusive](StructureDefinition-ror-competence-exclusive.html) | CompetenceExclusive | Compétence exclusive |
| [ROROrientationParticuliere](StructureDefinition-ror-orientation-particuliere.html) | OrientationParticuliere | Orientation particulière de prise en charge |
| [RORCapacite](StructureDefinition-ror-capacite-savoir-faire.html) | CapaciteSavoirfaire | Capacité médicale complémentaire |
| [RORQualificationPAC](StructureDefinition-ror-qualification-pac.html) | QualificationPAC | Qualification de praticien adjoint contractuel |
| [RORDroitExerciceComplementaire](StructureDefinition-ror-droit-exercice-complementaire.html) | DroitExerciceComplementaire | Droit d'exercice dans une spécialité DESC de groupe I |
| [RORSurspecialiteTransversale](StructureDefinition-ror-surspecialite-transversale.html) | SurspecialiteTransversale | Surspécialité issue d'une FST |
| [RORDESCNonQualifiant](StructureDefinition-ror-desc-non-qualifiant.html) | DESCNonQualifiant | DESC de médecine de groupe I |
| [RORSituationOperationnelle](StructureDefinition-ror-situation-operationnelle.html) | SituationOperationnelle | Conditions d'exercice du professionnel dans l'offre |

---

### RORPersonnePhysique
La **Personne Physique** porte les données d'identité du professionnel.

{% include StructureDefinition-ror-personne-physique-class-table.xhtml %}

---

### RORProfessionnel
Le **Professionnel** représente le professionnel enregistré dans le RPPS ou ADELI.

{% include StructureDefinition-ror-professionnel-class-table.xhtml %}

---

### RORExerciceProfessionnel
L'**Exercice Professionnel** caractérise l'exercice d'une profession par un professionnel.

{% include StructureDefinition-ror-exercice-professionnel-class-table.xhtml %}

---

### RORSavoirFaire
Le **Savoir-Faire** est une classe abstraite décrivant la spécialité ou la compétence principale du professionnel. Elle est spécialisée en 9 sous-classes.

{% include StructureDefinition-ror-savoir-faire-class-table.xhtml %}

---

### Sous-classes de RORSavoirFaire
{% include StructureDefinition-ror-specialite-class-table.xhtml %}

{% include StructureDefinition-ror-competence-class-table.xhtml %}

{% include StructureDefinition-ror-competence-exclusive-class-table.xhtml %}

{% include StructureDefinition-ror-orientation-particuliere-class-table.xhtml %}

{% include StructureDefinition-ror-capacite-savoir-faire-class-table.xhtml %}

{% include StructureDefinition-ror-qualification-pac-class-table.xhtml %}

{% include StructureDefinition-ror-droit-exercice-complementaire-class-table.xhtml %}

{% include StructureDefinition-ror-surspecialite-transversale-class-table.xhtml %}

{% include StructureDefinition-ror-desc-non-qualifiant-class-table.xhtml %}

---

### RORSituationOperationnelle
La **Situation Opérationnelle** caractérise les conditions d'exercice du professionnel dans le cadre d'une offre opérationnelle précise.

**Règles de gestion :**
- `RG_EXP_049` : Uniquement les valeurs de `Horaire/typeHoraire` suivantes sont applicables pour les professionnels : `03` (Horaire de garde), `06` (Horaire de consultation sans RDV), `07` (Horaire de consultation sur RDV).

{% include StructureDefinition-ror-situation-operationnelle-class-table.xhtml %}
