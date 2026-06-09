# Professionnel Ressource - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Professionnel Ressource

### Professionnel Ressource

Cette section est transversale : elle décrit les professionnels de santé participant à l'offre opérationnelle.

La section **Professionnel Ressource** décrit les professionnels de santé qui réalisent les prestations dans le cadre d'une offre opérationnelle. La situation opérationnelle d'un professionnel est rattachée aux offres opérationnelles : le professionnel réalise une prestation dans un lieu de réalisation.

#### Donnée pivot

L'**idNat_PS** (numéro RPPS ou ADELI) est l'identifiant national du professionnel dans le cadre de l'interopérabilité.

-------

#### Modèles logiques

| | | |
| :--- | :--- | :--- |
| [RORPersonnePhysique](StructureDefinition-ror-personne-physique.md) | PersonnePhysique | Données d'identité de la personne physique |
| [RORProfessionnel](StructureDefinition-ror-professionnel.md) | Professionnel | Professionnel enregistré dans un répertoire national |
| [RORExerciceProfessionnel](StructureDefinition-ror-exercice-professionnel.md) | ExerciceProfessionnel | Exercice d'une profession par un professionnel |
| [RORSavoirFaire](StructureDefinition-ror-savoir-faire.md) | SavoirFaire | Savoir-faire principal du professionnel |
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

#### RORPersonnePhysique

La **Personne Physique** porte les données d'identité du professionnel.

| | | | |
| :--- | :--- | :--- | :--- |
| civilite | 0..1 | Coding | TRE_R81-Civilite |
| nomFamille | 1..1 | string | — |
| prenom | 1..1 | string | — |
| metadonnee | 1..1 | [RORMetadonnee](StructureDefinition-ror-metadonnee.md) | — |

-------

#### RORProfessionnel

Le **Professionnel** représente le professionnel enregistré dans le RPPS ou ADELI.

| | | | |
| :--- | :--- | :--- | :--- |
| idNatPS | 1..1 | Identifier | TRE_G08-TypeIdentifiantPersonne |
| metadonnee | 1..1 | [RORMetadonnee](StructureDefinition-ror-metadonnee.md) | — |

-------

#### RORExerciceProfessionnel

L'**Exercice Professionnel** caractérise l'exercice d'une profession par un professionnel.

| | | | |
| :--- | :--- | :--- | :--- |
| profession | 1..1 | Coding | TRE_G15-ProfessionSante |
| civiliteExercice | 0..1 | Coding | TRE_R11-CiviliteExercice |
| metadonnee | 1..1 | [RORMetadonnee](StructureDefinition-ror-metadonnee.md) | — |

-------

#### RORSavoirFaire

Le **Savoir-Faire** décrit la spécialité ou la compétence principale du professionnel.

| | | | |
| :--- | :--- | :--- | :--- |
| typeSavoirFaire | 1..1 | Coding | TRE_R04-TypeSavoirFaire |
| codeSpecialite | 0..1 | Coding | — |
| metadonnee | 1..1 | [RORMetadonnee](StructureDefinition-ror-metadonnee.md) | — |

-------

#### RORSituationOperationnelle

La **Situation Opérationnelle** caractérise les conditions d'exercice du professionnel dans le cadre d'une offre opérationnelle précise.

| | | | |
| :--- | :--- | :--- | :--- |
| modeExerciceOffre | 1..1 | Coding | TRE_R23-ModeExercice |
| competenceSpecifique | 0..* | Coding | TRE_R243-CompetenceSpecifique |
| secteurConventionnement | 0..1 | Coding | TRE_R282-CNAMAmeliSecteurConventionnement |
| metadonnee | 1..1 | [RORMetadonnee](StructureDefinition-ror-metadonnee.md) | — |

