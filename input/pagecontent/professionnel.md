### Professionnel Ressource

<div style="background-color: #fff9e6; border-left: 4px solid #ff9800; padding: 12px 16px; margin-bottom: 16px;">
Cette section est transversale : elle décrit les professionnels de santé participant à l'offre opérationnelle.
</div>

La section **Professionnel Ressource** décrit les professionnels de santé qui réalisent les prestations dans le cadre d'une offre opérationnelle. La situation opérationnelle d'un professionnel est rattachée aux offres opérationnelles : le professionnel réalise une prestation dans un lieu de réalisation.

#### Donnée pivot

L'**idNat_PS** (numéro RPPS ou ADELI) est l'identifiant national du professionnel dans le cadre de l'interopérabilité.

---

#### Modèles logiques

| Modèle ROR | Héritage MOS | Description |
|---|---|---|
| [RORPersonnePhysique](StructureDefinition-ror-personne-physique.html) | PersonnePhysique | Données d'identité de la personne physique |
| [RORProfessionnel](StructureDefinition-ror-professionnel.html) | Professionnel | Professionnel enregistré dans un répertoire national |
| [RORExerciceProfessionnel](StructureDefinition-ror-exercice-professionnel.html) | ExerciceProfessionnel | Exercice d'une profession par un professionnel |
| [RORSavoirFaire](StructureDefinition-ror-savoir-faire.html) | SavoirFaire | Savoir-faire principal du professionnel |
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

| Attribut | Card. | Type | Terminologie |
|---|---|---|---|
| civilite | 0..1 | Coding | TRE_R81-Civilite |
| nomFamille | 1..1 | string | — |
| prenom | 1..1 | string | — |
| metadonnee | 1..1 | [RORMetadonnee](StructureDefinition-ror-metadonnee.html) | — |

---

#### RORProfessionnel

Le **Professionnel** représente le professionnel enregistré dans le RPPS ou ADELI.

| Attribut | Card. | Type | Terminologie |
|---|---|---|---|
| idNatPS | 1..1 | Identifier | TRE_G08-TypeIdentifiantPersonne |
| metadonnee | 1..1 | [RORMetadonnee](StructureDefinition-ror-metadonnee.html) | — |

---

#### RORExerciceProfessionnel

L'**Exercice Professionnel** caractérise l'exercice d'une profession par un professionnel.

| Attribut | Card. | Type | Terminologie |
|---|---|---|---|
| profession | 1..1 | Coding | TRE_G15-ProfessionSante |
| civiliteExercice | 0..1 | Coding | TRE_R11-CiviliteExercice |
| metadonnee | 1..1 | [RORMetadonnee](StructureDefinition-ror-metadonnee.html) | — |

---

#### RORSavoirFaire

Le **Savoir-Faire** décrit la spécialité ou la compétence principale du professionnel.

| Attribut | Card. | Type | Terminologie |
|---|---|---|---|
| typeSavoirFaire | 1..1 | Coding | TRE_R04-TypeSavoirFaire |
| codeSpecialite | 0..1 | Coding | — |
| metadonnee | 1..1 | [RORMetadonnee](StructureDefinition-ror-metadonnee.html) | — |

---

#### RORSituationOperationnelle

La **Situation Opérationnelle** caractérise les conditions d'exercice du professionnel dans le cadre d'une offre opérationnelle précise.

| Attribut | Card. | Type | Terminologie |
|---|---|---|---|
| modeExerciceOffre | 1..1 | Coding | TRE_R23-ModeExercice |
| competenceSpecifique | 0..* | Coding | TRE_R243-CompetenceSpecifique |
| secteurConventionnement | 0..1 | Coding | TRE_R282-CNAMAmeliSecteurConventionnement |
| metadonnee | 1..1 | [RORMetadonnee](StructureDefinition-ror-metadonnee.html) | — |
