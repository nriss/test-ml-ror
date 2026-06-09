# Accueil - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Accueil

**IG de démonstration**

Cet IG est un exemple illustrant comment des équipes projets (ici : ROR) peuvent définir leurs propres modèles logiques en dérivant des modèles du MOS.

> Cet Implementation Guide est en cours de construction (ci-build). Il est susceptible d'évoluer fréquemment.

### Contexte et objectif

Le [MOS (Modèle des Objets de Santé)](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/) définit un socle commun de modèles logiques pour représenter les entités du système de santé français : professionnels de santé, structures, offres de soins, etc.

Cet IG de démonstration montre comment une équipe projet — ici l'équipe **ROR (Répertoire de l'Offre de soins et des Ressources)** — peut :

1. **Dériver**des modèles logiques existants du MOS pour les spécialiser à son contexte
1. **Créer**de nouveaux modèles logiques propres au ROR, non couverts par le MOS
1. **Documenter**les relations entre les objets via un schéma de liaison

### Modèles logiques définis

| | | |
| :--- | :--- | :--- |
| `RorOffreOperationnelle` | Dérivé du MOS | Offre de soins opérationnelle, spécialisée pour le ROR |
| `RorEntiteGeographique` | Dérivé du MOS | Lieu de réalisation de l'offre, avec extensions ROR |
| `RorOrganisationInterne` | Nouveau | Organisation interne d'une structure (pôle, unité, service) |

### Dépendances






### Analyse cross-version

Ceci est un IG R4. Aucune des fonctionnalités qu'il utilise n'est modifiée dans R4B, il peut donc être utilisé tel quel avec les systèmes R4B. Les packages pour [R4 (ans.fhir.fr.test.ror.r4)](../package.r4.tgz) et [R4B (ans.fhir.fr.test.ror.r4b)](../package.r4b.tgz) sont disponibles.

### Profils globaux

*There are no Global profiles defined*

### Paramètres d'expansion

* Parameter: system-version
  * Value: SNOMED CT[??]
* Parameter: displayLanguage
  * Value: fr-FR

### Propriété intellectuelle

Certaines ressources sémantiques de ce guide sont protégées par des droits de propriété intellectuelle couverte par les déclarations ci-dessous. L’utilisation de ces ressources est soumise à l’acceptation et au respect des conditions précisées dans la licence d’utilisation de chacune d’entre elle.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.4.0/CodeSystem-ISO3166Part1.html): [JDVRORAccessibiliteLieu](ValueSet-jdv-ror-accessibilite-lieu.md), [JDVRORActeSpecifique](ValueSet-jdv-ror-acte-specifique.md)... Show 85 more, [JDVRORActiviteOperationnelle](ValueSet-jdv-ror-activite-operationnelle.md), [JDVRORAffectationTemporaire](ValueSet-jdv-ror-affectation-temporaire.md), [JDVRORAgregatStatutJuridiqueNiv2](ValueSet-jdv-ror-agreg-statut-juridique-niv2.md), [JDVRORAideFinanciere](ValueSet-jdv-ror-aide-financiere.md), [JDVRORCapaciteSavoirFaire](ValueSet-jdv-ror-capacite-savoir-faire.md), [JDVRORChampActivite](ValueSet-jdv-ror-champ-activite.md), [JDVRORCivilite](ValueSet-jdv-ror-civilite.md), [JDVRORCiviliteExercice](ValueSet-jdv-ror-civilite-exercice.md), [JDVRORCompetence](ValueSet-jdv-ror-competence.md), [JDVRORCompetenceExclusive](ValueSet-jdv-ror-competence-exclusive.md), [JDVRORCompetenceSpecifique](ValueSet-jdv-ror-competence-specifique.md), [JDVRORConditionTarifaire](ValueSet-jdv-ror-condition-tarifaire.md), [JDVRORDESCNonQualifiant](ValueSet-jdv-ror-desc-non-qualifiant.md), [JDVRORDroitExerciceComplementaire](ValueSet-jdv-ror-droit-exercice-complementaire.md), [JDVROREquipement](ValueSet-jdv-ror-equipement.md), [JDVRORFinessStatutJuridique](ValueSet-jdv-ror-finess-statut-juridique.md), [JDVRORGenreCapacite](ValueSet-jdv-ror-genre-capacite.md), [JDVRORModaliteAccueil](ValueSet-jdv-ror-modalite-accueil.md), [JDVRORModaliteParticipationSPH](ValueSet-jdv-ror-espic.md), [JDVRORModeExercice](ValueSet-jdv-ror-mode-exercice.md), [JDVRORModeGestion](ValueSet-jdv-ror-mode-gestion.md), [JDVRORModePriseEnCharge](ValueSet-jdv-ror-mode-prise-en-charge.md), [JDVRORNatureCapacite](ValueSet-jdv-ror-nature-capacite.md), [JDVRORNiveauDependance](ValueSet-jdv-ror-niveau-dependance.md), [JDVRORNiveauRecoursORSAN](ValueSet-jdv-ror-niveau-recours-orsan.md), [JDVROROrientationParticuliere](ValueSet-jdv-ror-orientation-particuliere.md), [JDVROROuvertureAnnuelle](ValueSet-jdv-ror-ouverture-annuelle.md), [JDVRORPrestationNonObligatoire](ValueSet-jdv-ror-prestation-non-obligatoire.md), [JDVRORProfessionSante](ValueSet-jdv-ror-profession-sante.md), [JDVRORPublicPrisEnCharge](ValueSet-jdv-ror-public-pris-en-charge.md), [JDVRORQualificationPAC](ValueSet-jdv-ror-qualification-pac.md), [JDVRORSecteurConventionnement](ValueSet-jdv-ror-secteur-conventionnement.md), [JDVRORSpecialisationPriseEnCharge](ValueSet-jdv-ror-specialisation-pec.md), [JDVRORSpecialiteOrdinale](ValueSet-jdv-ror-specialite-ordinale.md), [JDVRORStatutCapacite](ValueSet-jdv-ror-statut-capacite.md), [JDVRORSurspecialiteTransversale](ValueSet-jdv-ror-surspecialite-transversale.md), [JDVRORTemporalite](ValueSet-jdv-ror-temporalite.md), [JDVRORTemporaliteAccueil](ValueSet-jdv-ror-temporalite-accueil.md), [JDVRORTypeCrise](ValueSet-jdv-ror-type-crise.md), [JDVRORTypeFermetureCapacite](ValueSet-jdv-ror-type-fermeture-capacite.md), [JDVRORTypeHabitation](ValueSet-jdv-ror-type-habitation.md), [JDVRORTypeLitSupplementaire](ValueSet-jdv-ror-type-lit-supplementaire.md), [JDVRORTypeOrganisationInterne](ValueSet-jdv-ror-type-organisation-interne.md), [JDVRORTypeSavoirFaire](ValueSet-jdv-ror-type-savoir-faire.md), [JDVRORTypeSource](ValueSet-jdv-ror-type-source.md), [JDVRORTypeTarif](ValueSet-jdv-ror-type-tarif.md), [JDVRORUnitePrix](ValueSet-jdv-ror-unite-prix.md), [RORActiviteOperationnelle](StructureDefinition-ror-activite-operationnelle.md), [RORCapacite](StructureDefinition-ror-capacite-savoir-faire.md), [RORCapaciteAccueilOperationnelle](StructureDefinition-ror-capacite-accueil-operationnelle.md), [RORCapaciteHabitation](StructureDefinition-ror-capacite-habitation.md), [RORCapacitePriseCharge](StructureDefinition-ror-capacite-prise-charge.md), [RORCompetence](StructureDefinition-ror-competence.md), [RORCompetenceExclusive](StructureDefinition-ror-competence-exclusive.md), [RORDESCNonQualifiant](StructureDefinition-ror-desc-non-qualifiant.md), [RORDroitExerciceComplementaire](StructureDefinition-ror-droit-exercice-complementaire.md), [ROREntiteGeographique](StructureDefinition-ror-entite-geographique.md), [ROREntiteJuridique](StructureDefinition-ror-entite-juridique.md), [ROREquipementSpecifique](StructureDefinition-ror-equipement-specifique.md), [RORExerciceProfessionnel](StructureDefinition-ror-exercice-professionnel.md), [RORForfaitSocleHebergement](StructureDefinition-ror-forfait-socle-hebergement.md), [RORLieuRealisationOffre](StructureDefinition-ror-lieu-realisation-offre.md), [RORMetadonnee](StructureDefinition-ror-metadonnee.md), [ROROffreOperationnelle](StructureDefinition-ror-offre-operationnelle.md), [ROROrganisationInterne](StructureDefinition-ror-organisation-interne.md), [ROROrientationParticuliere](StructureDefinition-ror-orientation-particuliere.md), [RORPatientele](StructureDefinition-ror-patientele.md), [RORPersonnePhysique](StructureDefinition-ror-personne-physique.md), [RORPole](StructureDefinition-ror-pole.md), [RORProfessionnel](StructureDefinition-ror-professionnel.md), [RORQualificationPAC](StructureDefinition-ror-qualification-pac.md), [RORSavoirFaire](StructureDefinition-ror-savoir-faire.md), [RORSituationOperationnelle](StructureDefinition-ror-situation-operationnelle.md), [RORSpecialite](StructureDefinition-ror-specialite.md), [RORStructureInterne](StructureDefinition-ror-structure-interne.md), [RORSupplementTarifHebergement](StructureDefinition-ror-supplement-tarif-hebergement.md), [RORSurspecialiteTransversale](StructureDefinition-ror-surspecialite-transversale.md), [RORTarif](StructureDefinition-ror-tarif.md), [RORTarifAccueilDeJour](StructureDefinition-ror-tarif-accueil-de-jour.md), [RORTarifAidesHumaines](StructureDefinition-ror-tarif-aides-humaines.md), [RORTarifDependance](StructureDefinition-ror-tarif-dependance.md), [RORTarifPortageRepas](StructureDefinition-ror-tarif-portage-repas.md), [RORTarifPrestationSupplementaire](StructureDefinition-ror-tarif-prestation-supplementaire.md), [RORUniteFonctionnelle](StructureDefinition-ror-unite-fonctionnelle.md) and [TestROR](index.md)


