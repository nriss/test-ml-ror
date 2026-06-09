// Base FHIR
Alias: $Base = http://hl7.org/fhir/StructureDefinition/Base

// MOS Logical Models
Alias: $MOS-EntiteJuridique = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteJuridique
Alias: $MOS-EntiteGeographique = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteGeographique
Alias: $MOS-OrganisationInterne = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/OrganisationInterne
Alias: $MOS-PoleActivite = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PoleActivite
Alias: $MOS-StructureInterne = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/StructureInterne
Alias: $MOS-UniteFonctionnelle = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/UniteFonctionnelle
Alias: $MOS-OffreOperationnelle = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/OffreOperationnelle
Alias: $MOS-Patientele = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Patientele
Alias: $MOS-LieuRealisationOffre = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/LieuRealisationOffre
Alias: $MOS-EquipementSpecifique = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EquipementSpecifique
Alias: $MOS-CapaciteHabitation = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapaciteHabitation
Alias: $MOS-CapacitePriseCharge = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapacitePriseCharge
Alias: $MOS-PersonnePhysique = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePhysique
Alias: $MOS-Professionnel = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Professionnel
Alias: $MOS-ExerciceProfessionnel = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ExerciceProfessionnel
Alias: $MOS-SavoirFaire = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SavoirFaire
Alias: $MOS-Specialite = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Specialite
Alias: $MOS-Competence = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Competence
Alias: $MOS-CompetenceExclusive = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CompetenceExclusive
Alias: $MOS-OrientationParticuliere = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/OrientationParticuliere
Alias: $MOS-CapaciteSavoirfaire = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/CapaciteSavoirfaire
Alias: $MOS-QualificationPAC = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/QualificationPAC
Alias: $MOS-DroitExerciceComplementaire = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DroitExerciceComplementaire
Alias: $MOS-SurspecialiteTransversale = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SurspecialiteTransversale
Alias: $MOS-DESCNonQualifiant = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DESCNonQualifiant
Alias: $MOS-SituationOperationnelle = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SituationOperationnelle
Alias: $MOS-DivisionTerritoriale = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/DivisionTerritoriale
Alias: $MOS-Horaire = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Horaire
Alias: $MOS-Contact = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Contact
Alias: $MOS-BoiteLettreMSS = https://interop.esante.gouv.fr/ig/mos/StructureDefinition/BoiteLettreMSS

// CodeSystems TRE (références documentaires — ne pas utiliser directement en binding)
Alias: $TRE-G07-TypeIdentifiantStructure = https://mos.esante.gouv.fr/NOS/TRE_G07-TypeIdentifiantStructure/FHIR/TRE-G07-TypeIdentifiantStructure
Alias: $TRE-G08-TypeIdentifiantPersonne = https://mos.esante.gouv.fr/NOS/TRE_G08-TypeIdentifiantPersonne/FHIR/TRE-G08-TypeIdentifiantPersonne
Alias: $TRE-R340-TypeCaracteristiqueEquipement = https://mos.esante.gouv.fr/NOS/TRE_R340-TypeCaracteristiqueEquipement/FHIR/TRE-R340-TypeCaracteristiqueEquipement

// Terminologies Structure — aliases redirigés vers JDV provisoires ROR
// CS: https://mos.esante.gouv.fr/NOS/TRE_R72-FinessStatutJuridique/FHIR/TRE-R72-FinessStatutJuridique
Alias: $TRE-R72-FinessStatutJuridique = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-finess-statut-juridique
// CS: https://mos.esante.gouv.fr/NOS/TRE_R69-FinessAgregatStatutJuridiqueNiv2/FHIR/TRE-R69-FinessAgregatStatutJuridiqueNiv2
Alias: $TRE-R69-FinessAgregatStatutJuridiqueNiv2 = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-agreg-statut-juridique-niv2
// CS: https://mos.esante.gouv.fr/NOS/TRE_R286-TypeFermeture/FHIR/TRE-R286-TypeFermeture → utilise le JDV officiel ROR
Alias: $TRE-R286-TypeFermeture = https://mos.esante.gouv.fr/NOS/JDV_J185-typeFermeture-ROR/FHIR/JDV-J185-typeFermeture-ROR
// CS: https://mos.esante.gouv.fr/NOS/TRE_R73-ESPIC/FHIR/TRE-R73-ESPIC
Alias: $TRE-R73-ESPIC = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-espic
// CS: https://mos.esante.gouv.fr/NOS/TRE_R202-AccessibiliteLieu/FHIR/TRE-R202-AccessibiliteLieu
Alias: $TRE-R202-AccessibiliteLieu = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-accessibilite-lieu
// CS: https://mos.esante.gouv.fr/NOS/TRE_R284-NiveauRecoursORSAN/FHIR/TRE-R284-NiveauRecoursORSAN
Alias: $TRE-R284-NiveauRecoursORSAN = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-niveau-recours-orsan
// CS: https://mos.esante.gouv.fr/NOS/TRE_R241-AideFinanciere/FHIR/TRE-R241-AideFinanciere
Alias: $TRE-R241-AideFinanciere = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-aide-financiere

// Terminologies Organisation
// CS: https://mos.esante.gouv.fr/NOS/TRE_R207-TypeOrganisationInterne/FHIR/TRE-R207-TypeOrganisationInterne
Alias: $TRE-R207-TypeOrganisationInterne = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-type-organisation-interne
Alias: $JDV-J185-typeFermeture-ROR = https://mos.esante.gouv.fr/NOS/JDV_J185-typeFermeture-ROR/FHIR/JDV-J185-typeFermeture-ROR

// Terminologies Offre Opérationnelle
Alias: $JDV-J238-TypeOffre-ROR = https://mos.esante.gouv.fr/NOS/JDV_J238-TypeOffre-ROR/FHIR/JDV-J238-TypeOffre-ROR
// CS: https://mos.esante.gouv.fr/NOS/TRE_R227-ChampActivite/FHIR/TRE-R227-ChampActivite
Alias: $TRE-R227-ChampActivite = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-champ-activite
// CS: https://mos.esante.gouv.fr/NOS/TRE_R240-TemporaliteAccueil/FHIR/TRE-R240-TemporaliteAccueil
Alias: $TRE-R240-TemporaliteAccueil = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-temporalite-accueil
// CS: https://mos.esante.gouv.fr/NOS/TRE_R213-ModePriseEnCharge/FHIR/TRE-R213-ModePriseEnCharge
Alias: $TRE-R213-ModePriseEnCharge = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-mode-prise-en-charge
// CS: https://mos.esante.gouv.fr/NOS/TRE_R338-ModaliteAccueil/FHIR/TRE-R338-ModaliteAccueil
Alias: $TRE-R338-ModaliteAccueil = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-modalite-accueil
// CS: https://mos.esante.gouv.fr/NOS/TRE_R236-ModeGestion/FHIR/TRE-R236-ModeGestion
Alias: $TRE-R236-ModeGestion = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-mode-gestion
// CS: https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique
Alias: $TRE-R210-ActeSpecifique = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-acte-specifique
// CS: https://mos.esante.gouv.fr/NOS/TRE_R245-SpecialisationDePriseEnCharge/FHIR/TRE-R245-SpecialisationDePriseEnCharge
Alias: $TRE-R245-SpecialisationDePriseEnCharge = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-specialisation-pec
// CS: https://mos.esante.gouv.fr/NOS/TRE_R238-OuvertureAnnuelle/FHIR/TRE-R238-OuvertureAnnuelle
Alias: $TRE-R238-OuvertureAnnuelle = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-ouverture-annuelle
Alias: $JDV-J186-ProfessionRessource-ROR = https://mos.esante.gouv.fr/NOS/JDV_J186-ProfessionRessource-ROR/FHIR/JDV-J186-ProfessionRessource-ROR
// CS: https://mos.esante.gouv.fr/NOS/TRE_R243-CompetenceSpecifique/FHIR/TRE-R243-CompetenceSpecifique
Alias: $TRE-R243-CompetenceSpecifique = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-competence-specifique
Alias: $JDV-J227-NiveauExpertise-ROR = https://mos.esante.gouv.fr/NOS/JDV_J227-NiveauExpertise-ROR/FHIR/JDV-J227-NiveauExpertise-ROR
// CS: https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle
Alias: $TRE-R211-ActiviteOperationnelle = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-activite-operationnelle
Alias: $JDV-J51-FamilleActiviteOperationnelle-ROR = https://mos.esante.gouv.fr/NOS/JDV_J51-FamilleActiviteOperationnelle-ROR/FHIR/JDV-J51-FamilleActiviteOperationnelle-ROR
// CS: https://mos.esante.gouv.fr/NOS/TRE_R239-PublicPrisEnCharge/FHIR/TRE-R239-PublicPrisEnCharge
Alias: $TRE-R239-PublicPrisEnCharge = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-public-pris-en-charge

// Terminologies Tarif
// CS: https://mos.esante.gouv.fr/NOS/TRE_R246-TypeTarif/FHIR/TRE-R246-TypeTarif
Alias: $TRE-R246-TypeTarif = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-type-tarif
// CS: https://mos.esante.gouv.fr/NOS/TRE_R228-UnitePrix/FHIR/TRE-R228-UnitePrix
Alias: $TRE-R228-UnitePrix = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-unite-prix
// CS: https://mos.esante.gouv.fr/NOS/TRE_R264-PrestationNonObligatoireIncluse/FHIR/TRE-R264-PrestationNonObligatoireIncluse
Alias: $TRE-R264-PrestationNonObligatoireIncluse = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-prestation-non-obligatoire
// CS: https://mos.esante.gouv.fr/NOS/TRE_R242-TypeHabitation/FHIR/TRE-R242-TypeHabitation
Alias: $TRE-R242-TypeHabitation = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-type-habitation
// CS: https://mos.esante.gouv.fr/NOS/TRE_R250-ConditionTarifaire/FHIR/TRE-R250-ConditionTarifaire
Alias: $TRE-R250-ConditionTarifaire = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-condition-tarifaire
// CS: https://mos.esante.gouv.fr/NOS/TRE_R237-NiveauDependance/FHIR/TRE-R237-NiveauDependance
Alias: $TRE-R237-NiveauDependance = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-niveau-dependance

// Terminologies Ressources Opérationnelles
// CS: https://mos.esante.gouv.fr/NOS/TRE_R212-Equipement/FHIR/TRE-R212-Equipement
Alias: $TRE-R212-Equipement = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-equipement
// CS: https://mos.esante.gouv.fr/NOS/TRE_R337-AffectationTemporaire/FHIR/TRE-R337-AffectationTemporaire
Alias: $TRE-R337-AffectationTemporaire = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-affectation-temporaire
// CS: https://mos.esante.gouv.fr/NOS/TRE_R329-NatureCapacite/FHIR/TRE-R329-NatureCapacite
Alias: $TRE-R329-NatureCapacite = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-nature-capacite
// CS: https://mos.esante.gouv.fr/NOS/TRE_R330-StatutCapacite/FHIR/TRE-R330-StatutCapacite
Alias: $TRE-R330-StatutCapacite = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-statut-capacite
// CS: https://mos.esante.gouv.fr/NOS/TRE_R331-Temporalite/FHIR/TRE-R331-Temporalite
Alias: $TRE-R331-Temporalite = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-temporalite
// CS: https://mos.esante.gouv.fr/NOS/TRE_R335-TypeSource/FHIR/TRE-R335-TypeSource
Alias: $TRE-R335-TypeSource = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-type-source
// CS: https://mos.esante.gouv.fr/NOS/TRE_R332-GenreCapacite/FHIR/TRE-R332-GenreCapacite
Alias: $TRE-R332-GenreCapacite = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-genre-capacite
// CS: https://mos.esante.gouv.fr/NOS/TRE_R333-TypeFermetureCapacite/FHIR/TRE-R333-TypeFermetureCapacite
Alias: $TRE-R333-TypeFermetureCapacite = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-type-fermeture-capacite
// CS: https://mos.esante.gouv.fr/NOS/TRE_R334-TypeLitSupplementaire/FHIR/TRE-R334-TypeLitSupplementaire
Alias: $TRE-R334-TypeLitSupplementaire = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-type-lit-supplementaire
// CS: https://mos.esante.gouv.fr/NOS/TRE_R336-TypeCrise/FHIR/TRE-R336-TypeCrise
Alias: $TRE-R336-TypeCrise = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-type-crise

// Terminologies Professionnel
// CS: https://mos.esante.gouv.fr/NOS/TRE_R81-Civilite/FHIR/TRE-R81-Civilite
Alias: $TRE-R81-Civilite = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-civilite
// CS: https://mos.esante.gouv.fr/NOS/TRE_R11-CiviliteExercice/FHIR/TRE-R11-CiviliteExercice
Alias: $TRE-R11-CiviliteExercice = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-civilite-exercice
// CS: https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante
Alias: $TRE-G15-ProfessionSante = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-profession-sante
// CS: https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire
Alias: $TRE-R04-TypeSavoirFaire = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-type-savoir-faire
// CS: https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale
Alias: $TRE-R38-SpecialiteOrdinale = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-specialite-ordinale
// CS: https://mos.esante.gouv.fr/NOS/TRE_R39-Competence/FHIR/TRE-R39-Competence
Alias: $TRE-R39-Competence = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-competence
// CS: https://mos.esante.gouv.fr/NOS/TRE_R40-CompetenceExclusive/FHIR/TRE-R40-CompetenceExclusive
Alias: $TRE-R40-CompetenceExclusive = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-competence-exclusive
// CS: https://mos.esante.gouv.fr/NOS/TRE_G13-OrientationParticuliere/FHIR/TRE-G13-OrientationParticuliere
Alias: $TRE-G13-OrientationParticuliere = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-orientation-particuliere
// CS: https://mos.esante.gouv.fr/NOS/TRE_R43-CapaciteSavoirFaire/FHIR/TRE-R43-CapaciteSavoirFaire
Alias: $TRE-R43-CapaciteSavoirFaire = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-capacite-savoir-faire
// CS: https://mos.esante.gouv.fr/NOS/TRE_R44-QualificationPAC/FHIR/TRE-R44-QualificationPAC
Alias: $TRE-R44-QualificationPAC = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-qualification-pac
// CS: https://mos.esante.gouv.fr/NOS/TRE_R97-DroitExerciceCompl/FHIR/TRE-R97-DroitExerciceCompl
Alias: $TRE-R97-DroitExerciceCompl = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-droit-exercice-complementaire
// CS: https://mos.esante.gouv.fr/NOS/TRE_R359-SurspecialiteTransversale/FHIR/TRE-R359-SurspecialiteTransversale
Alias: $TRE-R359-SurspecialiteTransversale = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-surspecialite-transversale
// CS: https://mos.esante.gouv.fr/NOS/TRE_R42-DESCnonQualifiant/FHIR/TRE-R42-DESCnonQualifiant
Alias: $TRE-R42-DESCnonQualifiant = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-desc-non-qualifiant
// CS: https://mos.esante.gouv.fr/NOS/TRE_R23-ModeExercice/FHIR/TRE-R23-ModeExercice
Alias: $TRE-R23-ModeExercice = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-mode-exercice
// CS: https://mos.esante.gouv.fr/NOS/TRE_R282-CNAMAmeliSecteurConventionnement/FHIR/TRE-R282-CNAMAmeliSecteurConventionnement
Alias: $TRE-R282-CNAMAmeliSecteurConventionnement = https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-secteur-conventionnement

// Terminologies Métadonnée
Alias: $JDV-J237-RegionOM-ROR = https://mos.esante.gouv.fr/NOS/JDV_J237-RegionOM-ROR/FHIR/JDV-J237-RegionOM-ROR

// Terminologies Catégorie EG
Alias: $JDV-J55-CategorieEG-ROR = https://mos.esante.gouv.fr/NOS/JDV_J55-CategorieEG-ROR/FHIR/JDV-J55-CategorieEG-ROR
