### Professionnel Ressource

<div style="background-color: #fff9e6; border-left: 4px solid #ff9800; padding: 12px 16px; margin-bottom: 16px;">
Cette section est transversale : elle décrit les professionnels de santé participant à l'offre opérationnelle.
</div>

La section **Professionnel Ressource** décrit les professionnels de santé qui réalisent les prestations dans le cadre d'une offre opérationnelle. La situation opérationnelle d'un professionnel est rattachée aux offres opérationnelles : le professionnel réalise une prestation dans un lieu de réalisation.

#### Donnée pivot

L'**idNat_PS** (numéro RPPS ou ADELI) est l'identifiant national du professionnel dans le cadre de l'interopérabilité.

**Règles de gestion :**
- `RG_EXP_030` : En cas de coexistence d'un identifiant RPPS et ADELI pour un même professionnel, l'identifiant RPPS est prioritaire.
- `RG_EXP_031` : Les données issues du RPPS (profession, civilité d'exercice, etc.) ne sont pas modifiables dans le ROR.

---

#### Diagramme

{% include Professionnel.svg %}

---

#### Modèles logiques

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

#### RORPersonnePhysique

La **Personne Physique** porte les données d'identité du professionnel.

{% include StructureDefinition-ror-personne-physique-dict.xhtml %}

---

#### RORProfessionnel

Le **Professionnel** représente le professionnel enregistré dans le RPPS ou ADELI.

{% include StructureDefinition-ror-professionnel-dict.xhtml %}

---

#### RORExerciceProfessionnel

L'**Exercice Professionnel** caractérise l'exercice d'une profession par un professionnel.

{% include StructureDefinition-ror-exercice-professionnel-dict.xhtml %}

---

#### RORSavoirFaire

Le **Savoir-Faire** est une classe abstraite décrivant la spécialité ou la compétence principale du professionnel. Elle est spécialisée en 9 sous-classes.

{% include StructureDefinition-ror-savoir-faire-dict.xhtml %}

---

#### Sous-classes de RORSavoirFaire

{% include StructureDefinition-ror-specialite-dict.xhtml %}

{% include StructureDefinition-ror-competence-dict.xhtml %}

{% include StructureDefinition-ror-competence-exclusive-dict.xhtml %}

{% include StructureDefinition-ror-orientation-particuliere-dict.xhtml %}

{% include StructureDefinition-ror-capacite-savoir-faire-dict.xhtml %}

{% include StructureDefinition-ror-qualification-pac-dict.xhtml %}

{% include StructureDefinition-ror-droit-exercice-complementaire-dict.xhtml %}

{% include StructureDefinition-ror-surspecialite-transversale-dict.xhtml %}

{% include StructureDefinition-ror-desc-non-qualifiant-dict.xhtml %}

---

#### RORSituationOperationnelle

La **Situation Opérationnelle** caractérise les conditions d'exercice du professionnel dans le cadre d'une offre opérationnelle précise.

{% include StructureDefinition-ror-situation-operationnelle-dict.xhtml %}
