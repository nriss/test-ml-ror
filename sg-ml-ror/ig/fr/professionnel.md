# Professionnel Ressource - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Professionnel Ressource

Cette section est transversale : elle décrit les professionnels de santé participant à l'offre opérationnelle.

La section **Professionnel Ressource** décrit les professionnels de santé qui réalisent les prestations dans le cadre d'une offre opérationnelle. La situation opérationnelle d'un professionnel est rattachée aux offres opérationnelles : le professionnel réalise une prestation dans un lieu de réalisation.

### Donnée pivot

L'**idNat_PS** (numéro RPPS ou ADELI) est l'identifiant national du professionnel dans le cadre de l'interopérabilité.

**Règles de gestion :**

* `RG_EXP_030` : En cas de coexistence d'un identifiant RPPS et ADELI pour un même professionnel, l'identifiant RPPS est prioritaire.
* `RG_EXP_031` : Les données issues du RPPS (profession, civilité d'exercice, etc.) ne sont pas modifiables dans le ROR.

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
| [RORPersonnePhysique](StructureDefinition-ror-personne-physique.md) | PersonnePhysique | Données d'identité de la personne physique |
| [RORProfessionnel](StructureDefinition-ror-professionnel.md) | Professionnel | Professionnel enregistré dans un répertoire national |
| [RORExerciceProfessionnel](StructureDefinition-ror-exercice-professionnel.md) | ExerciceProfessionnel | Exercice d'une profession par un professionnel |
| [RORSavoirFaire](StructureDefinition-ror-savoir-faire.md) | SavoirFaire | Savoir-faire principal du professionnel (classe abstraite) |
| [RORSpecialite](StructureDefinition-ror-specialite.md) | Specialite | Spécialité ordinale du professionnel |
| [RORCompetence](StructureDefinition-ror-competence.md) | Competence | Compétence reconnue |
| [RORCompetenceExclusive](StructureDefinition-ror-competence-exclusive.md) | CompetenceExclusive | Compétence exclusive |
| [ROROrientationParticuliere](StructureDefinition-ror-orientation-particuliere.md) | OrientationParticuliere | Orientation particulière de prise en charge |
| [RORCapacite](StructureDefinition-ror-capacite-savoir-faire.md) | CapaciteSavoirfaire | Capacité médicale complémentaire |
| [RORQualificationPAC](StructureDefinition-ror-qualification-pac.md) | QualificationPAC | Qualification de praticien adjoint contractuel |
| [RORDroitExerciceComplementaire](StructureDefinition-ror-droit-exercice-complementaire.md) | DroitExerciceComplementaire | Droit d'exercice dans une spécialité DESC de groupe I |
| [RORSurspecialiteTransversale](StructureDefinition-ror-surspecialite-transversale.md) | SurspecialiteTransversale | Surspécialité issue d'une FST |
| [RORDESCNonQualifiant](StructureDefinition-ror-desc-non-qualifiant.md) | DESCNonQualifiant | DESC de médecine de groupe I |
| [RORSituationOperationnelle](StructureDefinition-ror-situation-operationnelle.md) | SituationOperationnelle | Conditions d'exercice du professionnel dans l'offre |

-------

### RORPersonnePhysique

La **Personne Physique** porte les données d'identité du professionnel.

-------

### RORProfessionnel

Le **Professionnel** représente le professionnel enregistré dans le RPPS ou ADELI.

-------

### RORExerciceProfessionnel

L'**Exercice Professionnel** caractérise l'exercice d'une profession par un professionnel.

-------

### RORSavoirFaire

Le **Savoir-Faire** est une classe abstraite décrivant la spécialité ou la compétence principale du professionnel. Elle est spécialisée en 9 sous-classes.

-------

### Sous-classes de RORSavoirFaire

-------

### RORSituationOperationnelle

La **Situation Opérationnelle** caractérise les conditions d'exercice du professionnel dans le cadre d'une offre opérationnelle précise.

**Règles de gestion :**

* `RG_EXP_049` : Uniquement les valeurs de `Horaire/typeHoraire` suivantes sont applicables pour les professionnels : `03` (Horaire de garde), `06` (Horaire de consultation sans RDV), `07` (Horaire de consultation sur RDV).

