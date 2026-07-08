# Introduction - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Introduction

**IG de démonstration**

Cet IG illustre comment définir des modèles logiques ROR en dérivant des modèles du MOS (Modèle des Objets de Santé).

> Cet Implementation Guide est en cours de construction (ci-build). Il est susceptible d'évoluer fréquemment.

Le **Répertoire Opérationnel des Ressources (ROR)** est le référentiel national de description de l'offre de santé. Il constitue le gisement de données de référence pour les échanges entre systèmes d'information de santé.

Ce modèle d'exposition (version 3.0.1) répond aux besoins suivants :

* **Recherche inter-ROR** en sanitaire et médico-social
* **Orientation en aval de l'hospitalisation**
* **Orientation d'une personne âgée** en perte d'autonomie ou en situation de handicap
* **Orientation en soins non programmés**

Les données sont modélisées en cohérence avec le [Modèle des Objets de Santé (MOS)](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/) et les nomenclatures associées (NOS) gérés par l'ANS.

-------

### Description de l'offre de santé

Les acteurs de santé ont convergé sur une vision commune de l'offre de santé autour de quatre composantes :

* L'**organisation opérationnelle** au sein d'une structure,
* Qui **mobilise des professionnels**,
* Et dispose d'**équipements spécifiques**,
* Pour réaliser des **activités opérationnelles**.

Les données de description de l'offre de santé, échangées avec les ROR, sont structurées en **5 sous-ensembles** :

| | | | |
| :--- | :--- | :--- | :--- |
| 1 | **Structure** | Entité Juridique et Entité Géographique, auxquelles sont rattachés les tarifs | [Structure](structure.md),[Tarif](tarif.md) |
| 2 | **Organisation** | Organisation interne d'un établissement (pôles, services, unités fonctionnelles) | [Organisation](organisation.md) |
| 3 | **Offre Opérationnelle** | Prestations que peut réaliser une structure pour répondre au besoin de santé | [Offre Opérationnelle](offre-operationnelle.md) |
| 4 | **Ressources Opérationnelles** | Moyens mis en œuvre pour réaliser la prestation | [Ressources Opérationnelles](ressources-operationnelles.md) |
| 5 | **Professionnel** | Personnes physiques, professionnels, exercice professionnel et savoir-faire | [Professionnel Ressource](professionnel.md) |

classDiagram namespace Structure["Structure"] { class EJ["ROREntiteJuridique"] class EG["ROREntiteGeographique"] } namespace Organisation["Organisation"] { class OI["ROROrganisationInterne"] } namespace Tarif["Tarif"] { class Tarif["RORTarif"] { <<abstract>> } } namespace OffreOperationnelle["Offre Opérationnelle"] { class Offre["ROROffreOperationnelle"] } namespace RessourcesOperationnelles["Ressources Opérationnelles"] { class Lieu["RORLieuRealisationOffre"] } namespace Professionnel["Professionnel"] { class SitOp["RORSituationOperationnelle"] class EP["RORExerciceProfessionnel"] } EJ "1" --> "1..*" EG EG "1" --> "0..*" OI EG "1" --> "0..*" Tarif OI "0..1" --> "1..*" Offre OI "*" --> "*" OI : contient Offre "1" --> "1" Lieu Offre "1" --> "0..*" SitOp SitOp "0..*" --> "1" EP : réalisée par click EJ href "StructureDefinition-ror-entite-juridique.html" "ROREntiteJuridique" click EG href "StructureDefinition-ror-entite-geographique.html" "ROREntiteGeographique" click OI href "StructureDefinition-ror-organisation-interne.html" "ROROrganisationInterne" click Tarif href "StructureDefinition-ror-tarif.html" "RORTarif" click Offre href "StructureDefinition-ror-offre-operationnelle.html" "ROROffreOperationnelle" click Lieu href "StructureDefinition-ror-lieu-realisation-offre.html" "RORLieuRealisationOffre" click SitOp href "StructureDefinition-ror-situation-operationnelle.html" "RORSituationOperationnelle" click EP href "StructureDefinition-ror-exercice-professionnel.html" "RORExerciceProfessionnel"

### Données pivots

Chaque sous-ensemble possède des **données pivots** — identifiants uniques et persistants au niveau national — permettant aux applications externes de se synchroniser avec le ROR. Ces données ne sont pas modifiables après création.

| | |
| :--- | :--- |
| **Structure** | `idNat_Struct`— n° FINESS juridique/géographique, SIREN ou SIRET selon le type de structure |
| **Organisation** | Identifiant généré par le ROR, de la forme`code INSEE régional / code interne ROR` |
| **Offre Opérationnelle** | `identifiantOffre`— unique au niveau national, généré par une instance régionale ou le ROR national |
| **Ressources Opérationnelles** | Identifiant du lieu de réalisation de l'offre |
| **Professionnel** | `idNat_PS`— n° RPPS ou ADELI du professionnel |

-------

### Relation avec le MOS

Ce modèle ROR dérive du MOS. La stratégie appliquée est :

* **Ne pas redéfinir** ce qui existe déjà dans le MOS
* **Créer des LogicalModels ROR** qui héritent des LogicalModels MOS correspondants
* **N'ajouter en FSH que les différences** : attributs supplémentaires, contraintes spécifiques au contexte ROR, cardinalités resserrées

Différences notables par rapport au MOS :

* Les attributs MOS ne répondant pas aux besoins métiers ROR ne sont pas repris.
* Certaines cardinalités sont contraintes (ex. `idNatStruct 1..1`, `champActivite 1..1`).
* De nouveaux concepts propres au ROR ont été ajoutés (ex. `RORMetadonnee`, `RORCapaciteAccueilOperationnelle`, hiérarchie `RORTarif`).
* Les héritages UML sont traduits par des compositions conformément au [Guide UML-XML de l'État](https://references.modernisation.gouv.fr/sites/default/files/RGI-MDC%20Guide%20UML-XML.pdf).

-------

### Dépendances







–>

–>

–>

### Propriété intellectuelle

Certaines ressources sémantiques de ce guide sont protégées par des droits de propriété intellectuelle couverte par les déclarations ci-dessous. L’utilisation de ces ressources est soumise à l’acceptation et au respect des conditions précisées dans la licence d’utilisation de chacune d’entre elle.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.4.0/CodeSystem-ISO3166Part1.html): [JDVRORAccessibiliteLieu](ValueSet-jdv-ror-accessibilite-lieu.md), [JDVRORActeSpecifique](ValueSet-jdv-ror-acte-specifique.md)... Show 86 more, [JDVRORActiviteOperationnelle](ValueSet-jdv-ror-activite-operationnelle.md), [JDVRORAffectationTemporaire](ValueSet-jdv-ror-affectation-temporaire.md), [JDVRORAgregatStatutJuridiqueNiv2](ValueSet-jdv-ror-agreg-statut-juridique-niv2.md), [JDVRORAideFinanciere](ValueSet-jdv-ror-aide-financiere.md), [JDVRORCapaciteSavoirFaire](ValueSet-jdv-ror-capacite-savoir-faire.md), [JDVRORChampActivite](ValueSet-jdv-ror-champ-activite.md), [JDVRORCivilite](ValueSet-jdv-ror-civilite.md), [JDVRORCiviliteExercice](ValueSet-jdv-ror-civilite-exercice.md), [JDVRORCompetence](ValueSet-jdv-ror-competence.md), [JDVRORCompetenceExclusive](ValueSet-jdv-ror-competence-exclusive.md), [JDVRORCompetenceSpecifique](ValueSet-jdv-ror-competence-specifique.md), [JDVRORConditionTarifaire](ValueSet-jdv-ror-condition-tarifaire.md), [JDVRORDESCNonQualifiant](ValueSet-jdv-ror-desc-non-qualifiant.md), [JDVRORDroitExerciceComplementaire](ValueSet-jdv-ror-droit-exercice-complementaire.md), [JDVROREquipement](ValueSet-jdv-ror-equipement.md), [JDVRORFinessStatutJuridique](ValueSet-jdv-ror-finess-statut-juridique.md), [JDVRORGenreCapacite](ValueSet-jdv-ror-genre-capacite.md), [JDVRORModaliteAccueil](ValueSet-jdv-ror-modalite-accueil.md), [JDVRORModaliteParticipationSPH](ValueSet-jdv-ror-espic.md), [JDVRORModeExercice](ValueSet-jdv-ror-mode-exercice.md), [JDVRORModeGestion](ValueSet-jdv-ror-mode-gestion.md), [JDVRORModePriseEnCharge](ValueSet-jdv-ror-mode-prise-en-charge.md), [JDVRORNatureCapacite](ValueSet-jdv-ror-nature-capacite.md), [JDVRORNiveauDependance](ValueSet-jdv-ror-niveau-dependance.md), [JDVRORNiveauRecoursORSAN](ValueSet-jdv-ror-niveau-recours-orsan.md), [JDVROROrientationParticuliere](ValueSet-jdv-ror-orientation-particuliere.md), [JDVROROuvertureAnnuelle](ValueSet-jdv-ror-ouverture-annuelle.md), [JDVRORPrestationNonObligatoire](ValueSet-jdv-ror-prestation-non-obligatoire.md), [JDVRORProfessionSante](ValueSet-jdv-ror-profession-sante.md), [JDVRORPublicPrisEnCharge](ValueSet-jdv-ror-public-pris-en-charge.md), [JDVRORQualificationPAC](ValueSet-jdv-ror-qualification-pac.md), [JDVRORSecteurConventionnement](ValueSet-jdv-ror-secteur-conventionnement.md), [JDVRORSpecialisationPriseEnCharge](ValueSet-jdv-ror-specialisation-pec.md), [JDVRORSpecialiteOrdinale](ValueSet-jdv-ror-specialite-ordinale.md), [JDVRORStatutCapacite](ValueSet-jdv-ror-statut-capacite.md), [JDVRORSurspecialiteTransversale](ValueSet-jdv-ror-surspecialite-transversale.md), [JDVRORTemporalite](ValueSet-jdv-ror-temporalite.md), [JDVRORTemporaliteAccueil](ValueSet-jdv-ror-temporalite-accueil.md), [JDVRORTypeCrise](ValueSet-jdv-ror-type-crise.md), [JDVRORTypeFermetureCapacite](ValueSet-jdv-ror-type-fermeture-capacite.md), [JDVRORTypeHabitation](ValueSet-jdv-ror-type-habitation.md), [JDVRORTypeLitSupplementaire](ValueSet-jdv-ror-type-lit-supplementaire.md), [JDVRORTypeOrganisationInterne](ValueSet-jdv-ror-type-organisation-interne.md), [JDVRORTypeSavoirFaire](ValueSet-jdv-ror-type-savoir-faire.md), [JDVRORTypeSource](ValueSet-jdv-ror-type-source.md), [JDVRORTypeTarif](ValueSet-jdv-ror-type-tarif.md), [JDVRORUnitePrix](ValueSet-jdv-ror-unite-prix.md), [MExROR](index.md), [RORActiviteOperationnelle](StructureDefinition-ror-activite-operationnelle.md), [RORCapacite](StructureDefinition-ror-capacite-savoir-faire.md), [RORCapaciteAccueilOperationnelle](StructureDefinition-ror-capacite-accueil-operationnelle.md), [RORCapaciteHabitation](StructureDefinition-ror-capacite-habitation.md), [RORCapacitePriseCharge](StructureDefinition-ror-capacite-prise-charge.md), [RORCompetence](StructureDefinition-ror-competence.md), [RORCompetenceExclusive](StructureDefinition-ror-competence-exclusive.md), [RORDESCNonQualifiant](StructureDefinition-ror-desc-non-qualifiant.md), [RORDroitExerciceComplementaire](StructureDefinition-ror-droit-exercice-complementaire.md), [ROREntiteGeographique](StructureDefinition-ror-entite-geographique.md), [ROREntiteJuridique](StructureDefinition-ror-entite-juridique.md), [ROREquipementSpecifique](StructureDefinition-ror-equipement-specifique.md), [RORExerciceProfessionnel](StructureDefinition-ror-exercice-professionnel.md), [RORForfaitSocleHebergement](StructureDefinition-ror-forfait-socle-hebergement.md), [RORLieuRealisationOffre](StructureDefinition-ror-lieu-realisation-offre.md), [RORLimiteCaracteristiqueEquipement](StructureDefinition-ror-limite-caracteristique-equipement.md), [RORMetadonnee](StructureDefinition-ror-metadonnee.md), [ROROffreOperationnelle](StructureDefinition-ror-offre-operationnelle.md), [ROROrganisationInterne](StructureDefinition-ror-organisation-interne.md), [ROROrientationParticuliere](StructureDefinition-ror-orientation-particuliere.md), [RORPatientele](StructureDefinition-ror-patientele.md), [RORPersonnePhysique](StructureDefinition-ror-personne-physique.md), [RORPole](StructureDefinition-ror-pole.md), [RORProfessionnel](StructureDefinition-ror-professionnel.md), [RORQualificationPAC](StructureDefinition-ror-qualification-pac.md), [RORSavoirFaire](StructureDefinition-ror-savoir-faire.md), [RORSituationOperationnelle](StructureDefinition-ror-situation-operationnelle.md), [RORSpecialite](StructureDefinition-ror-specialite.md), [RORStructureInterne](StructureDefinition-ror-structure-interne.md), [RORSupplementTarifHebergement](StructureDefinition-ror-supplement-tarif-hebergement.md), [RORSurspecialiteTransversale](StructureDefinition-ror-surspecialite-transversale.md), [RORTarif](StructureDefinition-ror-tarif.md), [RORTarifAccueilDeJour](StructureDefinition-ror-tarif-accueil-de-jour.md), [RORTarifAidesHumaines](StructureDefinition-ror-tarif-aides-humaines.md), [RORTarifDependance](StructureDefinition-ror-tarif-dependance.md), [RORTarifPortageRepas](StructureDefinition-ror-tarif-portage-repas.md), [RORTarifPrestationSupplementaire](StructureDefinition-ror-tarif-prestation-supplementaire.md) and [RORUniteFonctionnelle](StructureDefinition-ror-unite-fonctionnelle.md)


