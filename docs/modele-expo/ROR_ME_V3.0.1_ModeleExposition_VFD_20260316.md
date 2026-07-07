

<!-- Start of picture text -->
**Modèle d’exposition ROR**

Statut : Validé | Classification : Publique | Version : 3.0.1

<!-- End of picture text -->

Agence du Numérique en Santé 9, rue Georges Pitard – 75015 Paris T. 01 58 45 32 50 esante.gouv.fr

# **TABLE DES MATIERES**

|**_1._**|**_Données communes aux échanges ...................................................................................... 5_**|
|---|---|
|**_2._**|**_Description de l'offre de Santé .............................................................................................. 6_**|
|**_3._**|**_Données pivots ....................................................................................................................... 7_**|
|**_4._**|**_Vue d'ensemble de l'offre de santé échangée ...................................................................... 8_**|
|**_5._**|**_Structure ................................................................................................................................. 9_**|
|**_5.1_**|**_Classe "EntiteJuridique" ...................................................................................................................... 9_**|
|**_5.2_**|**_Classe "EntiteGeographique" ............................................................................................................ 13_**|
|**_6._**|**_Tarif ....................................................................................................................................... 18_**|
|**_6.1_**|**_Classe "Tarif" ....................................................................................................................................... 19_**|
|**_6.2_**|**_Classe "ForfaitSocleHebergement"................................................................................................... 19_**|
|**_6.3_**|**_Classe "TarifAccueilDeJour" ............................................................................................................. 20_**|
|**_6.4_**|**_Classe "TarifDependance" ................................................................................................................. 21_**|
|**_6.5_**|**_Classe "TarifAidesHumaines" ............................................................................................................ 21_**|
|**_6.6_**|**_Classe "TarifPrestationSupplementaire" .......................................................................................... 22_**|
|**_6.7_**|**_Classe "SupplementTarifHebergement" ........................................................................................... 22_**|
|**_6.8_**|**_Classe "TarifPortageRepas" .............................................................................................................. 22_**|
|**_7._**|**_Organisation ......................................................................................................................... 24_**|
|**_7.1_**|**_Classe "OrganisationInterne" ............................................................................................................ 24_**|
|**_7.2_**|**_Classe "Pole" ....................................................................................................................................... 26_**|
|**_7.3_**|**_Classe "StructureInterne" .................................................................................................................. 27_**|
|**_7.4_**|**_Classe "UniteFonctionnelle" .............................................................................................................. 27_**|
|**_8._**|**_Offre Opérationnelle ............................................................................................................. 28_**|
|**_8.1_**|**_Classe "OffreOperationnelle" ............................................................................................................. 28_**|
|**_8.2_**|**_Classe "Patientele" ............................................................................................................................. 34_**|
|**_8.3_**|**_Classe "ActiviteOperationnelle" ........................................................................................................ 35_**|
|**_9._**|**_Ressources Opérationnelles ............................................................................................... 37_**|
|**_9.1_**|**_Classe "LieuRealisationOffre" ........................................................................................................... 37_**|
|**_9.2_**|**_Classe "EquipementSpecifique"........................................................................................................ 38_**|
|**_9.3_**|**_Classe "CapaciteHabitation" .............................................................................................................. 38_**|
|**_9.4_**|**_Classe "CapacitePriseCharge" .......................................................................................................... 39_**|
|**_9.5_**|**_Classe "CapaciteAccueilOperationnelle" ......................................................................................... 39_**|
|**_9.6_**|**_Classe "LimiteCaracteristiqueEquipement" ..................................................................................... 40_**|
|**_10._**|**_Professionnel Ressource .................................................................................................... 42_**|
|**_10.1_**|**_Classe "PersonnePhysique" .............................................................................................................. 42_**|
|**_10.2_**|**_Classe "Professionnel" ....................................................................................................................... 42_**|
|**_10.3_**|**_Classe "ExerciceProfessionnel" ........................................................................................................ 43_**|

|**_10.4_** **_Classe "SavoirFaire" ........................................................................................................................... 44_**|
|---|
|_10.4.1_ _Classe "Specialite" .......................................................................................................... 45_|
|_10.4.2_ _Classe "Competence" ..................................................................................................... 45_|
|_10.4.3_ _Classe "CompetenceExclusive" ...................................................................................... 46_|
|_10.4.4_ _Classe "OrientationParticuliere" ...................................................................................... 46_|
|_10.4.5_ _Classe "Capacite" ........................................................................................................... 47_|
|_10.4.6_ _Classe "QualificationPAC" ............................................................................................... 47_|
|_10.4.7_ _Classe "DroitExerciceComplementaire"........................................................................... 47_|
|_10.4.8_ _Classe "SurspecialiteTransversale" ................................................................................. 48_|
|_10.4.9_ _Classe "DESCNonQualifiant" .......................................................................................... 48_|
|**_10.5_** **_Classe "SituationOperationnelle" ...................................................................................................... 49_**|
|**_11._** **_Classes communes .............................................................................................................. 51_**|
|**_11.1_** **_Classe "Adresse" ................................................................................................................................ 51_**|
|**_11.2_** **_Classe "BoiteLettreMSS" .................................................................................................................... 53_**|
|**_11.3_** **_Classe "Contact" ................................................................................................................................. 53_**|
|**_11.4_** **_Classe "CoordonneeGeographique" ................................................................................................. 55_**|
|**_11.5_** **_Classe "DivisionTerritoriale" .............................................................................................................. 56_**|
|**_11.6_** **_Classe "Horaire" .................................................................................................................................. 57_**|
|**_11.7_** **_Classe "Lieu" ....................................................................................................................................... 57_**|
|**_11.8_** **_Classe "Metadonnee" ......................................................................................................................... 58_**|
|**_11.9_** **_Classe "Telecommunication" ............................................................................................................. 59_**|
|**_12._** **_Types de données ................................................................................................................ 61_**|
|**_12.1_** **_Classe "Code" ...................................................................................................................................... 61_**|
|**_12.2_** **_Classe "Date" ....................................................................................................................................... 62_**|
|**_12.3_** **_Classe "DateHeure" ............................................................................................................................ 62_**|
|**_12.4_** **_Classe "Heure" .................................................................................................................................... 63_**|
|**_12.5_** **_Classe "Identifiant" ............................................................................................................................. 63_**|
|**_12.6_** **_Classe "Indicateur" ............................................................................................................................. 64_**|
|**_12.7_** **_Classe "Mesure" .................................................................................................................................. 64_**|
|**_12.8_** **_Classe "Montant"................................................................................................................................. 65_**|
|**_12.9_** **_Classe "Numerique" ............................................................................................................................ 65_**|
|**_12.10_** **_Classe "ObjetBinaire" ......................................................................................................................... 65_**|
|**_12.11_** **_Classe "Texte" ..................................................................................................................................... 66_**|
|**_13._** **_Règles de gestion qui accompagnent le modèle ............................................................... 67_**|
|**_13.1_** **_Règles de la partie Structure .............................................................................................................. 67_**|
|**_13.2_** **_Règles de la partie Tarif ...................................................................................................................... 68_**|
|**_13.3_** **_Règles de la partie Organisation ....................................................................................................... 69_**|
|**_13.4_** **_Règles de la partie Offre Opérationnelle ........................................................................................... 70_**|

|**N° Règle**|**Description de la règle**|
|---|---|
|**_13.6_** **_Règles de la partie Professionnel Ressource .................................................................................. 72_** **_13.7_** **_Règles de la partie Classes communes ............................................................................................ 73_**||

# **1. DONNEES COMMUNES AUX ECHANGES**

Ce document décrit les objets utilisés pour exposer l’offre de santé retournée par les ROR lors des échanges entre deux ROR (échanges inter ROR) ou entre un ROR et un SI-Externe (mise à jour d'une application à partir d’un ROR). Cette version du modèle d'exposition répond aux besoins suivants :

- Recherche inter-ROR en sanitaire et médico-social

- Orientation en aval de l'hospitalisation

- Orientation d'une personne âgée en perte d’autonomie ou d’une personne en situation de handicap.

- Orientation en soins non programmés

Les données sont modélisées en cohérence avec  le Modèle des Objets de Santé (MOS) et les nomenclatures associées (NOS) gérés par l'ANS :

#### MOS : https://esante.gouv.fr/produits-services/mos-nos

NOS: https://esante.gouv.fr/interoperabilite/mos-nos/nos

Le fichier des nomenclatures est attaché dans la rubrique « NOS : ENSEMBLE DES TERMINOLOGIES DE RÉFÉRENCE (TRE), JEUX DE VALEURS (JDV) ET TABLES D'ASSOCIATION (ASS) ».

Toutefois il existe des différences entre le MOS/NOS et la modélisation UML des présentes spécifications :

- Les attributs des objets du MOS ne répondant pas aux besoins métiers exprimés ne sont pas repris;

- Les associations entre les objets du MOS ne sont pas imposées  et sont adaptées en fonction des besoins métiers exprimés et/ou des contraintes fonctionnelles et techniques;

- Le MOS ne contraint pas les cardinalités des attributs (quasiment toutes les données sont facultatives). Dans ces spécifications, certaines cardinalités sont contraintes pour répondre aux besoins métiers et techniques;

- De nouveaux concepts ainsi que de nouvelles nomenclatures sont décrits dans le modèle d'exposition du ROR pour répondre aux besoins métiers. Ces nouveaux concepts, inexistants dans le MOS, ont vocation à y être intégrés lorsqu’ils auront été éprouvés;

- En termes UML, les héritages de classe sont traduits par des compositions conformément au « Guide UML-XML à l'usage de la dématérialisation des échanges de données entre les systèmes d'information ».

https://references.modernisation.gouv.fr/sites/default/files/RGI-MDC%20Guide%20UML-XML.pdf

# **2. DESCRIPTION DE L'OFFRE DE SANTE**

Le Répertoire Opérationnel des Ressources (ROR) est le référentiel (au sens gisement de données) de description de l’offre de santé.

Les acteurs de santé ont convergé sur une vision commune de l’offre de Santé décrite dans le modèle d’exposition du ROR autour de quatre composantes :

- L’organisation opérationnelle au sein d’une structure,

- Qui mobilise des professionnels,

- Et dispose d’équipements spécifiques,

- Pour réaliser des activités opérationnelles.

Les composants des offres de santé sont modélisés au format UML et sont présentés ci-après.

Les données de description de l’offre de santé, échangées avec les ROR, sont structurées en 5 sous-ensembles :

1. La structure d’un établissement (Entité Juridique et Entité Géographique) à laquelle sont rattachés les tarifs de l’établissement. Pour des raisons de lisibilité les Tarifs sont décrits comme un sous-ensemble à part dans ce document mais sont techniquement dans le sous-ensemble structure d’établissement.

2. L’organisation interne d’un établissement (pôles, services, unités fonctionnelles).

3. L’offre opérationnelle décrivant les prestations que peut réaliser une structure et qui permettent de répondre au besoin de santé d'une personne.

4. Les ressources opérationnelles qui décrivent les moyens qui peuvent être mis en œuvre pour réaliser la prestation

5. Le professionnel de santé (Personne physique, Professionnel, Exercice professionnel, Savoirfaire). La situation opérationnelle d’un professionnel de santé est rattachée aux offres opérationnelles : le professionnel réalise une prestation dans un lieu de réalisation.

**_Figure 1 Description de l'offre de santé échangée_**

# **3. DONNEES PIVOTS**

Chaque sous-ensemble possède des données pivots (identifiants uniques et persistants au niveau national) pour permettre aux applications externes de se synchroniser :

Données pivots pour le sous-ensemble "Structure" :

- L'idNat_Struct (n° FINESS juridique, n° SIREN, ...) qui est l'identifiant national de l'Entité Juridique dans le cadre de l'interopérabilité. Le format est précisé dans la description de l'Entité Juridique.
- L'idNat_Struct (n° FINESS géographique, n° SIRET, ...) qui est l'identifiant national de l'Entité Géographique dans le cadre de l'interopérabilité. Le format est précisé dans la description de l'Entité Géographique

Données pivots pour le sous-ensemble "Organisation" :

- L'identifiant est généré par les ROR pour les éléments de l’organisation interne d’un établissement. Lorsqu’il est généré par une instance régionale, celui-ci est de la forme « code INSEE régional / code interne ROR ». L’identifiant des OI tel qu’il est défini est un identifiant unique et pérenne pour toute la France. La nomenclature TRE_R30_RegionOM liste les codes associés à chaque région.

Données pivots pour le sous-ensemble "Offre Opérationnelle" :

- L'identifiantOffre qui est l'identifiant de l'offre, unique et persistant au niveau national, généré par une instance régionale du ROR ou par le ROR national.

Lorsqu’il est généré par une instance régionale, celui-ci est de la forme « code INSEE régional / code interne ROR ».

Données pivots pour le sous-ensemble "Ressources Opérationnelles" :

- L'identifiant du lieu de réalisation de l'offre

Données pivots pour le sous-ensemble "Professionnel" :

- L'idNat_PS (n° RPPS/ADELI) est l'identifiant national du professionnel dans le cadre de l'interopérabilité. Le format est précisé dans la description du Professionnel.

Ces données pivots ne sont pas modifiables après création.

Modèle d’exposition V3.0 ROR

# **4. VUE D'ENSEMBLE DE L'OFFRE DE SANTE ECHANGEE**

L’offre de santé retournée, qui est transmise dans les flux d'échange, est représentée dans le diagramme ci-dessous.

Chaque sous-ensemble est décrit dans un chapitre dédié.

**_Figure 2 Diagramme General_**

# **5. STRUCTURE**

La partie "Structure" décrit les organismes du domaine sanitaire, médico-social et social immatriculés dans le fichier national des établissements sanitaires et sociaux (FINESS) ou dans le Système Informatique pour le Répertoire des Entreprises et de leurs Établissements (SIRENE) dédié aux entreprises, associations et organismes du secteur public.

RG_EXP_002 : Si un élément obligatoire dans la structure du flux d’échange n’est pas renseigné dans le ROR interrogé, alors l’instance de l’entité à laquelle appartient cet élément NE DOIT PAS être transmise. Les instances des entités hiérarchiquement inférieures NE DOIVENT PAS être transmises non plus.

Les instances des entités hiérarchiquement supérieures DOIVENT être transmises en respectant la condition ci-dessus.

**_Figure 3 Structure_**

## **5.1 Classe "EntiteJuridique"**

L'Entité Juridique (EJ) correspond à la notion de personne morale :

- Pour les établissements sanitaires, sociaux, médico-sociaux enregistrés dans FINESS, une EJ détient des droits (autorisations, agréments, conventions, etc.) lui permettant d'exercer ses activités dans des entités géographiques; chaque EJ dispose d'un statut juridique de la personne morale;
- Pour les structures enregistrées dans le RPPS ou dans ADELI mais absentes de FINESS, l'EJ représente la personne morale qui porte la responsabilité d'exercice dans l'entité géographique associée;

- Pour les autres types de structures, une EJ est une personne morale inscrite dans le SIRENE.

#### _Liste des attributs de la classe EntiteJuridique_

|**Nom**|**Description**|
|---|---|
|idNat_Struct : [1..1] Identifiant|Identification nationale des Entités Juridiques définie dans le CI-SIS. Cette identification est obtenue par la concaténation du type d'identifiant national de structure(provenant de la nomenclature TRE_G07-TypeIdentifiantStructure) et de l'identifiant de la structure. Pour une Entité Juridique, IdNat_Struct peut prendre les valeurs suivantes :<br>- 1 + N° FINESS de l'entité juridique<br>- 2 + N° SIREN<br>- 0 + Identifiant cabinet ADELI de l'entité géographique associée<br>- 4 + Identifiant cabinet RPPS de l'entité géographique associée RG_EXP_004 : L’«idNat_Struct » qui est l'identification nationale de l'Entité Juridique dans le cadre de l'interopérabilité DOIT être renseigné en priorité avec le numéro FINESS si l’établissement est immatriculé dans FINESS. RG_EXP_037 : Lorsque « numEJ_RPPS_ADELI_Rang » (qui correspond au RPPSrang ou ADELIrang pour les cabinets libéraux hors société d’exercice) est renseigné, il doit être utilisé pour la construction IdNat_Struct.|
|numFINESS : [0..1] Identifiant|Identifiant FINESS de l'entité juridique attribué lors de sa création. Le numéro FINESS étant porteur intrinsèquement de liens avec le domaine sanitaire ou le domaine médico-social, il est, s'il existe, à privilégier pour l’identification de ces personnes morales en tant qu’acteurs sanitaires et médico-sociaux (Référentiel d’identification des acteurs sanitaires et médico-sociaux - Politique Générale de Sécurité des Systèmes d’Information de Santé (PGSSI-SI)). Le numéro FINESS se compose de 9 caractères.|
|numSIREN : [0..1] Identifiant|Le numéro SIREN est le numéro unique d'identification attribué à chaque entreprise par l'INSEE. Ce numéro est un simple numéro d'ordre, composé de 8 chiffres complétés par une clé de Luhn. Il est attribué une seule fois et n'est supprimé du répertoire qu'au moment de la disparition de la personne juridique (décès ou cessation de toute activité pour un entrepreneur individuel, dissolution pour une personne morale). Il ne sera plus jamais utilisé pour immatriculer une autre unité SIREN.|
|numEJ_RPPS_ADELI_Rang : [0..1] Identifiant|Cet attribut concerne un cabinet libéral (hors société d’exercice) présent dans le RPPS ou dans ADELI mais qui n’est pas identifié par un n° SIREN dans ces référentiels. numEJ_RPPS_ADELI_Rang reprend l'identifiant de la seule entité géographique qui lui est rattachée. RG_EXP_037 : Lorsque « numEJ_RPPS_ADELI_Rang » (qui correspond au RPPSrang ou ADELIrang pour les cabinets libéraux hors société d’exercice) est renseigné, il doit être utilisé pour la construction IdNat_Struct.|
|raisonSociale : [1..1] Texte|Raison sociale complète de l'entité juridique (acronymes, sigles ou abréviations développées). Contexte ROR : La raison sociale de l’entité juridique correspond au nom officiel de la personne morale, c'est à dire le nom sous lequel elle a été enregistrée au Registre du commerce et des sociétés (RCS) ou au répertoire des métiers ou au journal officiel. Cette raison sociale peut comporter des indications sur le statut juridique de la personne morale (ex : SA, SARL, Fondation, Association…).|
|complementRaisonSociale : [0..1] Texte|Suite de la raison sociale, si elle existe. Ce complément peut contenir notamment des informations facilitant l'adressage d'un courrier aux structures.|
|statutJuridique : [1..1] Code [TRE-R72-FinessStatutJuridique](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R72-FinessStatutJuridique.html)|Le statut juridique détermine la situation juridique de l’établissement c’est-à-dire les règles particulières de fonctionnement qui le régissent, notamment sa gestion administrative et financière et la gestion de ses biens. Le statut juridique est attribué à la personne morale ou physique de l’établissement : l’entité juridique. Tous les établissements de la même EJ relèvent du même statut juridique.|
|sousEnsembleAgregatStatutJuridique : [0..1] Code [TRE-R69-FinessAgregatStatutJuridiqueNiv2](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R69-FinessAgregatStatutJuridiqueNiv2.html)|Le « sous ensemble agrégat » est le deuxième niveau dans l’arborescence des statuts juridiques. Il caractérise le statut juridique d’une structure au sens du droit applicable (public / privé) et de la finalité (non lucratif / commercial). L’information est issue de FINESS ou du RPPS. La table d'association "ASS_X11-FinessAgregatStatutJuridique" assure la correspondance entre les codes des différents niveaux d'agrégats et le niveau le plus fin, statut Juridique.|
|adresseEJ : [0..1] Adresse|Adresse géopostale du siège de l'entité juridique.|
|contact : [0..*] Contact|Point(s) de contact de l'entité juridique. Contexte ROR : Informations permettant de contacter une personne ou un service au siège de l’entité juridique. Les noms, prénoms et la fonction du contact sont précisés.|
|dateCreation : [0..1] Date|Date de création de l'entité juridique. Contexte ROR : Date de création administrative de l'EJ FINESS. Pour les établissements enregistrés dans FINESS, cette date est la date de création de l'EJ dans la base FINESS ou la date officielle de l'arrêté de création des établissements publics lorsqu'elle est connue.|
|dateFermeture : [0..1] Date|Date de fermeture de l'entité juridique. Contexte ROR : Pour les entités enregistrées dans FINESS, cette date indique la fin d’existence ou la fin d’utilité dans le répertoire de l’entité juridique. RG_EXP_043 : La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné, sinon elle n'est jamais renseignée. RG_EXP_044 : Lorsqu'un niveau de structure ou d'organisation est fermée tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermées avec le même type et la même date de fermeture et le cas échéant avec la même date de réouverture prévisionnelle. Type de fermeture de l'entité juridique, au sens des règles de gestion du SI FINESS (par exemple, fermeture définitive), obligatoire lors de la fermeture de l'entité.|
|typeFermeture : [0..1] Code [TRE-R286-TypeFermeture](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R286-TypeFermeture.html)|RG_EXP_043 : La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné, sinon elle n'est jamais renseignée. RG_EXP_044 : Lorsqu'un niveau de structure ou d'organisation est fermée tous les niveaux inférieurs ainsique toutes les offres opérationnellesqui lui sont rattachées sont également fermées avec le même type et la même date de fermeture et le cas échéant avec la même date de réouverture prévisionnelle.|
|metadonnee : [1..1] Metadonnee|Informations relatives à la gestion des classes et des données.|

**_Table 1 Attributs de la classe "EntiteJuridique"_**

## **5.2 Classe "EntiteGeographique"**

L'Entité Géographique (EG) correspond à la notion d'établissement d'une entité juridique :

- Pour les entités inscrites au FINESS, l'EG correspond à une implantation géographique. Une EG est caractérisée par une catégorie d'établissements; les activités autorisées sont associées à l'EG.
- Pour les entités renseignées dans le RPPS ou ADELI mais non inscrites au FINESS, l'EG correspond à l'implantation géographique où le professionnel exerce son activité. Elle peut être identifiée par un numéro SIRET ou un identifiant RPPS-rang ou ADELI-rang en fonction de la catégorie d'établissement.

_Liste des attributs de la classe EntiteGeographique_

|**Nom**|**Description**|
|---|---|
|idNat_Struct : [1..1] Identifiant|Identification nationale de l'Entité Géographique définie dans le CI-SIS. Cette identification est obtenue par la concaténation du type d'identifiant national de structure (provenant de la nomenclature TRE_G07-TypeIdentifiantStructure) et de l'identifiant de la structure. Pour une Entité Géographiques, IdNat_Struct peut prendre les valeurs suivantes :<br>- 0 + Identifiant cabinet ADELI<br>- 1 + N° FINESS de l'entité géographique<br>- 3 + N° SIRET<br>- 4 + Identifiant cabinet RPPS RG_EXP_005 : L’ « idNat_Struct » qui est l'identification nationale de l'Entité Géographique dans le cadre de l'interopérabilité DOIT être renseigné en priorité avec le numéro FINESS si l’établissement est immatriculé dans FINESS. RG_EXP_038 : Lorsque « numEG_RPPS_ADELI_Rang » (qui correspond au RPPSrang ou ADELIrang pour les cabinets libéraux hors société d’exercice) est renseigné, il doit être utilisé pour la construction IdNat_Struct.|
|numFINESS : [0..1] Identifiant|Numéro FINESS de l'entité géographique. Le numéro FINESS étant porteur intrinsèquement de liens avec le domaine sanitaire ou le domaine médico-social, il est, s'il existe, à privilégier pour l’identification de ces personnes morales en tant qu’acteurs sanitaires et médico-sociaux (Référentiel d’identification des acteurs sanitaires et médico-sociaux - Politique Générale de Sécurité des Systèmes d’Information de Santé (PGSSI-SI)). Le numéro FINESS se compose de 9 caractères.|
|numSIRET : [0..1] Identifiant|Le numéro SIRET est le numéro unique d'identification, attribué par l'INSEE, à chaque entité géographique. Ce numéro est un simple numéro d'ordre, composé de 14 chiffres non significatifs :<br>- les 9 chiffres du numéro SIREN de l'entreprise dont l'établissement dépend, suivis des 5 chiffres du numéro interne de classement (NIC), lui-même constitué de 4 chiffres complétés d'une clé de Luhn. Le numéro SIRET n'a aucun lien avec les caractéristiques de l'établissement. Il est fermé quand l'activité cesse dans l'établissement concerné ou lorsque l'établissement change d'adresse.|
|numEG_RPPS_ADELI_Rang : [0..1] Identifiant|Identifiant spécifique généré par le système lors de la création d'une structure d'exercice pour un cabinet individuel et un cabinet de groupe. Il est communément connu sous le nom de RPPS-rang ou ADELI-rang :<br>- le RPPS-rang, de 14 caractères, est formé des 11 caractères de l’identifiant RPPS du titulaire du cabinet, suivi d’un numéro d’ordre sur 2 caractères et d’une clé de Luhn (1 caractère) ;<br>- l’ADELI-rang, de 11 caractères, est formé des 9 caractères du numéro ADELI du titulaire du cabinet suivi d’un numéro d’ordre sur 2 caractères. Cet identifiant est utilisé dans les échanges techniques avec le système FNPS de la CNAM, se substituant ainsi au numéro de SIRET dans le cas où ce dernier n'est pas encore connu du système. RG_EXP_038 : Lorsque « numEG_RPPS_ADELI_Rang » (qui correspond au RPPSrang ou ADELIrang pour les cabinets libéraux hors société d’exercice) est renseigné, il doit être utilisé pour la construction IdNat_Struct.|
|denominationEG : [1..1] Texte|Nom sous lequel l'entité géographique exerce son activité. Dans le cas d'un établissement enregistré dans le FINESS, cet attribut correspond à la notion de "raison sociale d'un établissement" renseignée dans le FINESS. Contexte ROR : Nom sous lequel l'entité géographique exerce son activité.<br>- Dans le cas d'une EG enregistrée dans le FINESS, cet attribut correspond à la notion de "raison sociale d'un établissement".<br>- Dans le cas d'une EG enregistrée dans le RPPS ou dans ADELI, cet attribut correspond à la notion "d'enseigne commerciale".<br>- Dans le cas d'une EG enregistrée dans ADELI, cette donnée n'étant pas renseignée, c'est la raison sociale de l'EJ qui peut être reprise.|
|complementDenominationEG : [0..1] Texte|Suite de la dénomination de l'entité géographique, si elle existe. Ce complément peut contenir notamment des informations facilitant l'adressage d'un courrier aux structures.|
|nomOperationnel : [0..1] Texte categorieEG : [1..1] Code [JDV-J55-CategorieEG-ROR](https://interop.esante.gouv.fr/terminologies/ValueSet-JDV-J55-CategorieEG-ROR.html)|Le nom opérationnel est l’appellation communément utilisée par les acteurs de santé pour désigner l'entité géographique, indépendamment des référentiels nationaux. La catégorie d'établissement est le cadre réglementaire dans lequel s'exerce l'activité de l'entité géographique. Les catégories d'établissement sont elles-mêmes classifiées en grands agrégats qui sont :<br>-Etablissements relevant de la loi hospitalière,<br>- Autres établissements de soins et de prévention,<br>-Autres établissements à caractère sanitaire,<br>- Etablissements et services sociaux d'accueil, hébergement, assistance, réadaptation,<br>- Etablissements et services sociaux d'aide à la famille,<br>- Etablissements de formation des personnels sanitaires et sociaux. Contexte ROR : La catégorie d'entité géographique est le cadre règlementaire dans lequel s'exerce l'activité de l'entité géographique. Les catégories d'EG s'appuient sur les catégories d'ET pour les structures de FINESS et les secteurs d'activité du RPPS pour les cabinets.|
|modaliteParticipationSPH : [0..1] Code [TRE-R73-ESPIC](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R73-ESPIC.html)|Modalités de participation au service public hospitalier.|
|zonePoser : [0..1] Indicateur|Cet indicateur précise l’existence d’une zone de poser pour hélicoptère sur le site concerné. 0 = Pas de zone de poser 1 = Existence d'une zone de poser|
|lieuEG : [0..1] Lieu|Le lieu de l'EG correspond à son entrée principale, au lieu d'accueil des patients. Un lieu peut notamment être décrit par une adresse et des coordonnées géographiques.|
|contact : [0..*] Contact|Informations permettant de contacter l'accueil ou le secrétariat de l'entité géographique. Les contacts du directeur et de la cellule d'alerte peuvent être inclus dans cette liste de contacts. RG_EXP_006 : Les contacts d'une EG PEUVENT contenir les contacts du directeur et de la cellule d’alerte.|
|aideFinanciere : [0..*] Code [TRE-R241-AideFinanciere](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R241-AideFinanciere.html)|L'Aide financière précise l'aide financière pour laquelle l'EG dispose d'une habilitation ou conventionnement qui permet aux personnes accueillies d'en bénéficier si elles remplissent les conditions.|
|territoireSante : [0..*] DivisionTerritoriale|Territoire(s) de santé où est située l'entité géographique. RG_EXP_030 : L’attribut territoire santé est obligatoirement une division territoriale de type « Territoire de Santé ». L’indicateur hébergement des familles précise si l'établissement peut héberger les familles des personnes|
|hebergementFamille : [0..1] Indicateur|prises en charge. Valeurs possibles : 0 = L'établissement ne peut pas héberger les familles des personnes prises en charge 1 = L'établissement peut héberger les familles des personnes prises en charge|
|nbPlaceAideSocialeTemporaire : [0..1] Numerique|Il s'agit du nombre de places temporaires dédiées à l'aide sociale dans l'établissement.|
|nbPlaceAideSocialePermanent : [0..1] Numerique|Il s'agit du nombre de places permanentes dédiées à l'aide sociale dans l'établissement.|
|accessibiliteLieu : [0..1] Code [TRE-R202-AccessibiliteLieu](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R202-AccessibiliteLieu.html)|Précise dans quelle mesure les locaux sont conformes aux dispositions règlementaires relatives à l’accessibilité des établissements recevant du public.|
|niveauRecoursORSAN : [0..1] Code [TRE-R284-NiveauRecoursORSAN](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R284-NiveauRecoursORSAN.html)|Le niveau de recours ORSAN correspond à une hiérarchisation fonctionnelle de la mobilisation des établissements pour accueillir les patients après régulation par le SAMU.|
|dateOuverture : [0..1] Date|Date d’ouverture réelle de fonctionnement de l’entité géographique. Pour les établissements soumis à autorisation, elle est constatée par la première visite de conformité du premier équipement autorisé. La date d’ouverture doit être supérieure ou égale à la date d’autorisation.|
|dateFermeture : [0..1] Date|Date de fermeture de l'entité géographique. La date doit être supérieure à la date d’ouverture. RG_EXP_003 : Si la date de fermeture transmise est la date de fermeture définitive, alors l’attribut typeFermeture DOIT être renseigné avec l’OID correspondant au code DEF issus du référentiel FINESS. RG_EXP_043 : La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné, sinon elle n'est jamais renseignée. RG_EXP_044 : Lorsqu'un niveau de structure ou d'organisation est fermée tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermées avec le même type et la même date de fermeture et le cas échéant avec la même date de réouverture prévisionnelle.|
|typeFermeture : [0..1] Code [TRE-R286-TypeFermeture](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R286-TypeFermeture.html)|Type de fermeture de l'entité géographique, au sens des règles de gestion du SI FINESS (par exemple: fermeture définitive, fermeture provisoire). RG_EXP_043 : La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné, sinon elle n'est jamais renseignée. RG_EXP_044 : Lorsqu'un niveau de structure ou d'organisation est fermée tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermées avec le meme type et la même date de fermeture et le cas échéant avec la même date de réouverture prévisionnelle.|
|commentaire : [0..1] Texte|Commentaire qui permet à la structure de donner des informations complémentaires.|
|metadonnee : [1..1] Metadonnee|Informations relatives à la gestion des classes et des données.|

**_Table 2 Attributs de la classe "EntiteGeographique"_**

# **6. TARIF**

Cette partie regroupe l'ensemble des classes qui permettent de définir les tarifs des prestations et services d'une entité géographique.

RG_EXP_002 : Si un élément obligatoire dans la structure du flux d’échange n’est pas renseigné dans le ROR interrogé, alors l’instance de l’entité à laquelle appartient cet élément NE DOIT PAS être transmise. Les instances des entités hiérarchiquement inférieures NE DOIVENT PAS être transmises non plus.

Les instances des entités hiérarchiquement supérieures DOIVENT être transmises en respectant la condition ci-dessus.

**_Figure 4 Tarif_**

## **6.1 Classe "Tarif"**

La classe Tarif est une classe abstraite qui contient les attributs inhérents et communs aux classes décrivant les prix des prestations et services fournis par l'établissement.

#### _Liste des attributs de la classe Tarif_

|**Nom**|**Description**|
|---|---|
|typeTarif : [1..1] Code [TRE-R246-TypeTarif](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R246-TypeTarif.html)|Un type de tarif s’applique à une catégorie de services pour lesquels l’entité géographique a fixé un prix. Seuls les tarifs déterminants pour l'orientation d'un patient sont décrits dans le ROR. Exemple : Forfait socle hébergement RG_EXP_026 : Un seul tarif de type « Forfait socle hébergement » PEUT être instancié pour chaque combinaison des valeurs des attributs « tarifMoin60Ans », « typeHabitation », « temporalitéAcceuil », « ConditionTarifaire » pour une même EG. RG_EXP_027 : Pour les tarifs de type différent de « Forfait socle hébergement », alors un seul montant PEUT être exposé pour chaque combinaison des valeurs des attributs autre que le montant, pour une même EG.|
|montantTarif : [1..1] Montant|Montant du tarif des prestations et services. Contexte ROR : Prix en euros, majoritairement appliqué par l’établissement pour un service.|
|unitePrix : [1..1] Code [TRE-R228-UnitePrix](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R228-UnitePrix.html)|Unité de référence pour évaluer le prix des prestations et services.|
|dateDebutValiditeTarif : [0..1] Date|Dernière date de début de validité du tarif indiqué.|
|metadonnee : [1..1] Metadonnee|Informations relatives à la gestion des classes et des données.|

**_Table 3 Attributs de la classe "Tarif"_**

## **6.2 Classe "ForfaitSocleHebergement"**

- Classe spécialisée, hérite de:Tarif

Tarif journalier et par personne (majoritairement appliqué par l’établissement) pour un type d’hébergement donné. Il inclut obligatoirement les prestations définies dans le décret n°2015-1868. Il peut aussi inclure d’autres prestations spécifiques. Ces prestations sont précisées. Ce tarif peut être modulable, ou non, pour les personnes bénéficiaires de l'aide sociale (ASH).

RG_EXP_026 : Un seul tarif de type « Forfait socle hébergement » PEUT être instancié pour chaque combinaison des valeurs des attributs « tarifMoin60Ans », « typeHabitation », « temporalitéAcceuil », « ConditionTarifaire » pour une même EG.

_Liste des attributs de la classe ForfaitSocleHebergement_

|**Nom**|**Description**|
|---|---|
|prestationsNonObligatoiresIncluses : [0..*] Code [TRE-R264-PrestationNonObligatoireIncluse](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R264-PrestationNonObligatoireIncluse.html)|Service non inclus dans les prestations obligatoires.|
|autresPrestationsNonObligatoiresIncluses : [0..*] Texte|Autres Prestations incluses dans le tarif socle hébergement mais en sus des prestations prévues dans le décret des prestations minimales d'hébergement, non proposées dans la nomenclature.|
|tarifMoins60Ans : [1..1] Indicateur|Indicateur qui précise que le tarif hébergement est spécifiquement appliqué aux personnes de moins de 60 ans. Valeurs possibles : 0 = Le tarif est applicable aux personnes de 60 ans et plus 1 = Le tarif est applicable aux personnes de moins de 60 ans|
|typeHabitation : [1..1] Code [TRE-R242-TypeHabitation](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R242-TypeHabitation.html)|Précise les caractéristiques de l'hébergement.|
|conditionTarifaire : [0..1] Code [TRE-R250-ConditionTarifaire](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R250-ConditionTarifaire.html)|La condition tarifaire précise les conditions d’accès à un tarif, modulées en fonction des critères relatifs à la personne.|
|temporaliteAccueil : [1..1] Code [TRE-R240-TemporaliteAccueil](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R240-TemporaliteAccueil.html)|Le tarif peut s’appliquer à un hébergement permanent ou à un hébergement temporaire. L’hébergement temporaire s’entend au sens d’un hébergement pour une durée limitée dans le temps, de 90 jours maximum par an dans un établissement.|

**_Table 4 Attributs de la classe "ForfaitSocleHebergement"_**

## **6.3 Classe "TarifAccueilDeJour"**

- Classe spécialisée, hérite de:Tarif

Tarif journalier et par personne appliqué par l’établissement pour un accueil de jour.

_Liste des attributs de la classe TarifAccueilDeJour_

|**Nom**|**Description**|
|---|---|
|conditionTarifaire : [0..1] Code [TRE-R250-ConditionTarifaire](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R250-ConditionTarifaire.html)|La condition tarifaire précise les conditions d’accès à un tarif, modulées en fonction des critères relatifs à la personne.|

**_Table 5 Attributs de la classe "TarifAccueilDeJour"_**

## **6.4 Classe "TarifDependance"**

- Classe spécialisée, hérite de:Tarif

Tarif correspondant au niveau de dépendance de la personne âgée accueillie.

#### _Liste des attributs de la classe TarifDependance_

|**Nom**|**Description**|
|---|---|
|groupeTarifaireDependance : [1..1] Code [TRE-R237-NiveauDependance](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R237-GroupeTarifaireDependance.html)|Niveau de dépendance de la personne âgée accueillie qui sera associé à un tarif. Il y a 3 niveaux de tarifs selon le GIR.|
|temporaliteAccueil : [1..1] Code [TRE-R240-TemporaliteAccueil](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R240-TemporaliteAccueil.html)|Le tarif peut s’appliquer à un hébergement permanent ou à un hébergement temporaire. L’hébergement temporaire s’entend au sens d’un hébergement pour une durée limitée dans le temps, de 90 jours maximum par an dans un établissement.|

**_Table 6 Attributs de la classe "TarifDependance"_**

## **6.5 Classe "TarifAidesHumaines"**

- Classe spécialisée, hérite de:Tarif

Tarif horaire ou forfaitaire (avec charges) des intervenants à domicile.

#### _Liste des attributs de la classe TarifAidesHumaines_

|**Nom**|**Description**|
|---|---|
|nomTarifAidesHumaines : [0..1] Texte|Nom du tarif aides humaines.|
|conditionTarifaire : [0..1] Code [TRE-R250-ConditionTarifaire](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R250-ConditionTarifaire.html)|La condition tarifaire précise les conditions d’accès à un tarif, modulées en fonction des critères relatifs à la personne.|
|modeGestion : [1..1] Code [TRE-R236-ModeGestion](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R236-ModeGestion.html)|Le mode de gestion indique le mode d’intervention des aides à domicile en fonction de la nature de la relation contractuelle (prestataire, mandataire).|

#### **_Table 7 Attributs de la classe "TarifAidesHumaines"_**

## **6.6 Classe "TarifPrestationSupplementaire"**

- Classe spécialisée, hérite de:Tarif

Tarifs des principales prestations supplémentaires qui ne sont pas comprises dans le tarif hébergement de l’établissement et qui peuvent avoir un impact sur l’orientation.

RG_EXP_036 : Les attributs de la classe « Tarif Prestation Supplémentaire » DOIVENT être mutuellement exclusifs.

_Liste des attributs de la classe TarifPrestationSupplementaire_

|**Nom**|**Description**|
|---|---|
|nomAutrePrestationSupp : [1..1] Texte|Nom du tarif d'une prestation supplémentaire.|
|nomPrestationSupp : [0..1] Code [TRE-R264-PrestationNonObligatoireIncluse](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R264-PrestationNonObligatoireIncluse.html)|Le tarif peut s’appliquer à un hébergement permanent ou à un hébergement temporaire. L’hébergement temporaire s’entend au sens d’un hébergement pour une durée limitée dans le temps, de 90 jours maximum par an dans un établissement.|

**_Table 8 Attributs de la classe "TarifPrestationSupplementaire"_**

## **6.7 Classe "SupplementTarifHebergement"**

- Classe spécialisée, hérite de:Tarif

Caractéristiques des lieux d'hébergement en SSR qui entrainent le paiement d'un complément au tarif de base de l'hébergement.

_Liste des attributs de la classe SupplementTarifHebergement_

|**Nom**|**Description**|
|---|---|
|typeHabitation : [1..1] Code [TRE-R242-TypeHabitation](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R242-TypeHabitation.html)|Précise les caractéristiques de l'hébergement. RG_EXP_029 : L'attribut "type habitation" d'un tarif de type "supplément tarif hébergement" DOIT prendre la valeur "chambre simple".|

**_Table 9 Attributs de la classe "SupplementTarifHebergement"_**

## **6.8 Classe "TarifPortageRepas"**

- Classe spécialisée, hérite de:Tarif

Tarif unitaire ou forfaitaire (avec charges) d’un service de livraison de repas à domicile. Les conditions tarifaires précisent s’il s’agit ou non d’un « tarif aide sociale ».

_Liste des attributs de la classe TarifPortageRepas_

|**Nom**|**Description**|
|---|---|
|conditionTarifaire : [0..1] Code [TRE-R250-ConditionTarifaire](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R250-ConditionTarifaire.html)|La condition tarifaire précise les conditions d’accès à un tarif modulé en fonction des critères relatifs à la personne.|
|nomTarifPortageRepas : [0..1] Texte|Nom du tarif de portage de repas.|

**_Table 10 Attributs de la classe "TarifPortageRepas"_**

# **7. ORGANISATION**

La partie Organisation décrit l’organisation opérationnelle interne d’une structure.

RG_EXP_002 : Si un élément obligatoire dans la structure du flux d’échange n’est pas renseigné dans le ROR interrogé, alors l’instance de l’entité à laquelle appartient cet élément NE DOIT PAS être transmise. Les instances des entités hiérarchiquement inférieures NE DOIVENT PAS être transmises non plus.

Les instances des entités hiérarchiquement supérieures DOIVENT être transmises en respectant la condition ci-dessus.

**_Figure 5 Organisation_**

## **7.1 Classe "OrganisationInterne"**

La classe Organisation Interne est une classe abstraite qui contient les attributs inhérents et communs aux classes décrivant l'organisation opérationnelle interne d'une EG permettant de délivrer la prestation.

Une organisation interne peut être composée d’autres organisations internes. Par exemple, les unités fonctionnelles peuvent être regroupées au sein de services qui peuvent être regroupés en pôles.

La description de cette organisation opérationnelle de l'EG n'est pas obligatoire. Lorsqu'elle est décrite cette organisation porte les ressources opérationnelles.

_Liste des attributs de la classe OrganisationInterne_

|**Nom**|**Description**|
|---|---|
|identifiantOI : [1..1] Identifiant|Identifiant de l'organisation interne, unique et persistant au niveau national. Contexte ROR : Identifiant de l'organisation interne, unique et persistant au niveau national, et généré par une instance régionale du ROR. Format : Concaténation du code INSEE région et d’un identifiant généré par le ROR régional séparé par le caractère "slash" (ex: 94/666).|
|nomOI : [1..1] Texte|Nom de l'organisation interne. Type d'organisation interne.|
|typeOI : [1..1] Code [TRE-R207-TypeOrganisationInterne](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R207-TypeOrganisationInterne.html)|RG_EXP_013 : En fonction du type d’OI, les contacts PEUVENT inclure le contact du responsable du pôle, le contact du responsable du service, le contact du responsable de l’unité, le contact du secrétariat, le contact du secrétariat de permanence…|
|contact : [0..*] Contact|Personne ou service qui agit comme point de contact auprès d'une autre personne ou d'un autre service. Les moyens de contact sont précisés (numéro de téléphone, fax, email, site internet).|
|boiteLettresMSS : [0..*] BoiteLettreMSS|Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à l'organisation interne.|
|dateOuverture : [0..1] Date|Date d'ouverture administrative de l'organisation interne La date de fermeture d'un niveau organisationnel correspond à la date à partir de laquelle un niveau organisationnel n'assure plus aucune prestation. Cette date de fermeture est caractérisée par un type de fermeture. A partir de cette date, les prestations des niveaux organisationnels inférieurs ne sont plus assurées. Lorsqu'il s'agit d'une fermeture temporaire, la date est remise à nulle lorsque le niveau organisationnel est ouvert de nouveau.|
|dateFermeture : [0..1] Date|RG_EXP_043 : La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné, sinon elle n'est jamais renseignée. RG_EXP_044 : Lorsqu'un niveau de structure ou d'organisation est fermée tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermées avec le même type et la même date de fermeture et le cas échéant avec la même date de réouverture prévisionnelle.|
|typeFermeture : [0..1] Code [JDV-J185-typeFermeture-ROR](https://interop.esante.gouv.fr/terminologies/ValueSet-JDV-J185-typeFermeture-ROR.html)|Le type de fermeture d'un niveau organisationnel indique la temporalité de la fermeture. Le type de fermeture s'applique au niveau organisationnel sur lequel la fermeture est déclarée, ainsique tous les niveaux inférieurs rattachés à ce niveau organisationnel. Par exemple, si un service est fermé temporairement, toutes les unités fonctionnelles qui lui sont rattachées sont également fermées temporairement. RG_EXP_043 : La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné, sinon elle n'est jamais renseignée. RG_EXP_044 : Lorsqu'un niveau de structure ou d'organisation est fermée tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermées avec le même type et la même date de fermeture et le cas échéant avec la même date de réouverture prévisionnelle. RG_EXP_045 : La date de réouverture peut être renseignée lorsque le type de fermeture est renseigné avec "Fermeture temporaire" sinon elle n'est jamais renseignée.|
|datePrevisionnelleReouverture : [0..1] Date|La date de réouverture correspond à la date prévisionnelle à partir de laquelle la prestation sera de nouveau assurée. Elle s'applique lors d'une période de fermeture temporaire. RG_EXP_044 : Lorsqu'un niveau de structure ou d'organisation est fermée tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermées avec le meme type et la même date de fermeture et le cas échéant avec la meme date de réouverture prévisionnelle. RG_EXP_045 : La date de réouverture peut etre renseignée lorsque le type de fermeture est renseigné avec "Fermeture temporaire" sinon elle n'est jamais renseignée. RG_EXP_046 : La date est remise à nulle lorsque l'offre est ouverte de nouveau.|
|metadonnee : [1..1] Metadonnee|Informations relatives à la gestion des classes et des données.|

**_Table 11 Attributs de la classe "OrganisationInterne"_**

## **7.2 Classe "Pole"**

- Classe spécialisée, hérite de:OrganisationInterne

Loi HPST, art.13: "Pour les établissements publics de santé, le directeur définit l'organisation de l'établissement en pôles d'activité conformément au projet médical d'établissement, après avis [...].

Modèle d’exposition V3.0 ROR

Le directeur général de l'agence régionale de santé peut autoriser un établissement à ne pas créer de pôles d'activité quand l'effectif médical de l'établissement le justifie.

Les pôles d'activité peuvent comporter des structures internes de prise en charge du malade par les équipes médicales, soignantes ou médico-techniques ainsi que les structures médico-techniques qui leur sont associées".

Extrait de "La loi HPST à l'hôpital, les clés pour comprendre - Ministère de la Santé- ANAP": "Les pôles d’activité clinique et médico-technique peuvent comporter des "structures internes" de prise en charge du malade par les équipes médicales, soignantes ou médico-techniques".

Les pôles peuvent être multi-sites, c'est à dire qu'un même pôle peut comporter des structures internes situées dans différentes entités géographiques d'une même entité juridique.

## **7.3 Classe "StructureInterne"**

- Classe spécialisée, hérite de:OrganisationInterne

Une structure interne peut être composée d'une ou plusieurs unités médicales fonctionnelles. L’appellation des structures internes des pôles est aussi laissée à la libre appréciation des établissements : il peut s’agir de services, d’unités, de centres, d’instituts, de départements, ou de toute autre appellation. Lorsque les services demeurent, les chefs de service sont placés sous l’autorité fonctionnelle du chef de pôle (cf. "La loi HPST à l'hôpital, les clés pour comprendre" - Ministère de la Santé - ANAP).

Synonyme : Service, unité, centre, institut, département, etc.

## **7.4 Classe "UniteFonctionnelle"**

- Classe spécialisée, hérite de:OrganisationInterne

L'unité fonctionnelle (UF) désigne la plus petite unité compatible avec les contraintes de gestion qui présente une activité médicale homogène.

# **8. OFFRE OPERATIONNELLE**

La partie Offre Opérationnelle correspond aux prestations que peut réaliser une structure et qui permettent de répondre au besoin de santé d'une personne.

RG_EXP_002 : Si un élément obligatoire dans la structure du flux d’échange n’est pas renseigné dans le ROR interrogé, alors l’instance de l’entité à laquelle appartient cet élément NE DOIT PAS être transmise. Les instances des entités hiérarchiquement inférieures NE DOIVENT PAS être transmises non plus.

Les instances des entités hiérarchiquement supérieures DOIVENT être transmises en respectant la condition ci-dessus.

**_Figure 6 Offre Opérationnelle_**

## **8.1 Classe "OffreOperationnelle"**

L'offre opérationnelle correspond aux prestations que peut réaliser une structure et qui permettent de répondre au besoin de santé d'une personne.

_Liste des attributs de la classe OffreOperationnelle_

|**Nom**|**Description**|
|---|---|
|identifiantOffre : [1..1] Identifiant|Identifiant de l'offre, unique et persistant au niveau national, généré par une instance régionale du ROR ou par le ROR national. Format : Concaténation du code INSEE région et d’un identifiant généré, par le ROR régional ou le ROR national, séparé par le caractère "slash" (ex: 94/666). Lors de la bascule entre les modèles d'exposition v2.4 et v3, chaque offre a hérité de l'identifiant de l'UE qu'elle a remplacé. RG_EXP_042 : Pour un transfert d’une offre d’un établissement vers un autre, l’identifiant de l'offre transférée NE DOIT PAS changer|
|nomOffre : [0..1] Texte|Dénomination sous laquelle l'offre est identifiée par le porteur d'offre et résultant de l'application de règles de bonne pratique pour être affichable auprès des professionnels comme du grand public|
|typeOffre : [0..1] Code [JDV-J238-TypeOffre-ROR](https://interop.esante.gouv.fr/terminologies/ValueSet-JDV-J238-TypeOffre-ROR.html)|Le type d'offre permet de distinguer les offres et de les classer en fonction de leur nature particulière, liée à un agrément, un personnel spécialement formé ou un environnement particulièrement adapté à l'état de santé des patients.|
|champActivite : [1..1] Code [TRE-R227-ChampActivite](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R227-ChampActivite.html)|Un champ d’activité indique le domaine dans lequel s'inscrit l'offre. RG_EXP_007 : La famille d’activité DOIT être renseignée pour toute instance de la classe Activité Opérationnelle liée à une offre dont le champ d’activité « médico-social ». RG_EXP_008 : Si le champ d’activité de l’offre est « médico-social » le public pris en charge DOIT être renseigné dans l’instance de la classe Patientèle. RG_EXP_010 : Une offre DOIT être renseignée avec un et un seul champ d’activité qui est invariable.|
|temporaliteAccueil : [0..1] Code [TRE-R240-TemporaliteAccueil](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R240-TemporaliteAccueil.html)|La temporalité d’accueil apporte une précision sur le mode de prise en charge. Elle indique si l'établissement médico-social accepte un accueil pour une durée limitée dans le temps, de 90 jours maximum par an.|
|modePriseEnCharge : [1..1] Code [TRE-R213-ModePriseEnCharge](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R213-ModePriseEnCharge.html)|Le mode de prise en charge caractérise l'hébergement ainsi que le niveau de technicité et d'intensité des soins. RG_EXP_011 : Une offre opérationnelle DOIT être renseignée avec un seul mode de prise en charge qui est invariable. Le changement de mode de prise en charge implique la création d’une nouvelle offre.|
|modaliteAccueil : [0..*] Code [TRE-R338-ModaliteAccueil](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R338-ModaliteAccueil.html)|Une modalité d’accueil permet de préciser le mode de prise en charge géographiquement (ex. : sur le lieu de vie), technologiquement (ex. : téléconsultation) ou organisationnellement (ex. : accueil séquentiel).|
|modeGestion : [0..*] Code [TRE-R236-ModeGestion](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R236-ModeGestion.html)|Le mode de gestion indique le mode d’intervention des aides à domicile en fonction de la nature de la relation contractuelle (prestataire, mandataire).|
|uniteSensible : [1..1] Indicateur|L’indicateur permet de signaler que toutes les informations de description d'une offre sont confidentielles car elles présentent un risque d'utilisation à des fins malveillantes. Valeurs possibles : 0 = L'offre ne revêt pas de caractère sensible et confidentiel 1 = L'offre revêt un caractère sensible et confidentiel RG_EXP_035 : Lors de la diffusion d’une unité élémentaire l’indicateur Unité Sensible a la valeur par défaut : 0 = L'unité ne revêt pas de caractère sensible et confidentiel RG_EXP_039 : Dans une unité sensible, le niveau de confidentialité des contacts doit être positionné à la valeur « très restreint »|
|acteSpecifique : [0..*] Code [TRE-R210-ActeSpecifique](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R210-ActeSpecifique.html)|Un acte spécifique est une action menée par un ou plusieurs acteur(s) de santé dans le cadre d’une activité. Cet acte peut correspondre à une technique spécialisée ou traduire une expertise discriminante dans le parcours de santé. Les actes réalisés habituellement par ce type d'organisation ne sont pas des actes spécifiques. Les actes spécifiques décrits sont réalisés avec les ressources propres de l’organisation ou via des ressources mises à disposition dans le cadre d’une convention à la condition que ces ressources interviennent sur site dans la réalisation de la prestation.|
|acteRealiseHorsCabinet : [0..*] Code [TRE-R210-ActeSpecifique](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R210-ActeSpecifique.html)|Les actes spécifiques réalisés hors cabinet permettent de décrire l’offre de santé des médecins libéraux réalisée en dehors du cabinet, au sein d’un établissement. La description des actes réalisés hors cabinet permet une orientation d'un patient vers un cabinet pour consultation préalable à la réalisation de cet acte spécifique.|
|specialisationPriseEnCharge : [0..*] Code [TRE-R245-SpecialisationDePriseEnCharge](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R245-SpecialisationDePriseEnCharge.html)|Une spécialisation de prise en charge correspond à un regroupement de troubles, de pathologies ou de déficiences qui nécessitent la mobilisation d'expertises, de compétences et/ou d'équipements spécifiquespouvant être discriminants dans le choix d’orientation du patient.|
|habilitationAuxSoinsSansConsentement : [0..1] Indicateur|Cet indicateur permet d'identifier les offres pour lesquelles un établissement est autorisé par le directeur général de l’ARS après avis du préfet, à prendre en charge des patients sans leur consentement. Valeurs possibles : 0 = pas d'habilitation 1 = habilitation|
|ouvertureAnnuelle : [0..1] Code [TRE-R238-OuvertureAnnuelle](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R238-OuvertureAnnuelle.html)|L’ouverture annuelle indique le nombre de jours maximum dans l’année au cours desquels la prestation peut être proposée par l'établissement.|
|zoneIntervention : [0..*] DivisionTerritoriale|Correspond au périmètre géographique dans lequel habitent les personnes pouvant être prises en charge pour la prestation décrite. Cela inclus notamment les divisions territoriales dans lesquelles les professionnels se déplacent. RG_EXP_009 : Chaque instance de la zone d’intervention DOIT être composée par des instances de DivisionTerritoriale de type Commune.|
|secteurPsychiatrique : [0..*] Texte|Le secteur de psychiatrie (ou sectorisation) correspond à une aire géographique à laquelle sont rattachées des structures de relais et de soins qui prennent en charge des patients résidants sur ce secteur. Cet attribut est le libellé du secteur de psychiatrie.|
|professionRessource : [0..*] Code [JDV-J186-ProfessionRessource-ROR](https://interop.esante.gouv.fr/terminologies/ValueSet-JDV-J186-ProfessionRessource-ROR.html)|La profession ressource traduit la mobilisation de métiers qui constituent un facteur différenciant dans la réalisation de la prestation.|
|competenceSpecifique : [0..*] Code [TRE-R243-CompetenceSpecifique](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R243-CompetenceSpecifique.html)|La compétence spécifique correspond à une capacité ou connaissance reconnue qui permet ou facilite l’accueil d’une personne. La compétence spécifique n’est ni une spécialité ordinale, ni une profession.|
|niveauExpertise : [0..*] Code [JDV-J227-NiveauExpertise-ROR](https://interop.esante.gouv.fr/terminologies/ValueSet-JDV-J227-NiveauExpertise-ROR.html)|Le niveau d'expertise atteste du niveau de ressources humaines et matérielles engagées dans la réalisation de l'offre et défini dans un cahier des charges officiel.|
|typeFermeture : [0..1] Code [JDV-J185-typeFermeture-ROR](https://interop.esante.gouv.fr/terminologies/ValueSet-JDV-J185-typeFermeture-ROR.html)|Le type de fermeture indique la temporalité d'arrêt de réalisation de la prestation. RG_EXP_043 : La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné, sinon elle n'est jamais renseignée. RG_EXP_044 : Lorsqu'un niveau de structure ou d'organisation est fermée tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermées avec le même type et la même date de fermeture et le cas échéant avec la même date de réouverture prévisionnelle. RG_EXP_045 : La date de réouverture peut être renseignée lorsque le type de fermeture est renseigné avec "Fermeture temporaire" sinon elle n'est jamais renseignée. RG_EXP_047 : Lorsqu'une offre opérationnelle est fermée, les ressources de type statutCapacite "disponible" doivent être à 0.|
|dateFermeture : [0..1] Date|La date de fermeture d'une offre correspond à la date effective à partir de laquelle la prestation n'est plus assurée. Cette date de fermeture est caractérisée par un type de fermeture. Lorsqu'il s'agit d'une fermeture temporaire, la date est remise à nulle lorsque l'offre est ouverte de nouveau. RG_EXP_043 : La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné, sinon elle n'est jamais renseignée. RG_EXP_044 : Lorsqu'un niveau de structure ou d'organisation est fermée tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermées avec le même type et la même date de fermeture et le cas échéant avec la même date de réouverture prévisionnelle.|
|datePrevisionnelleReouverture : [0..1] Date|La date de réouverture correspond à la date prévisionnelle à partir de laquelle la prestation sera de nouveau assurée. Elle s'applique lors d'une période de fermeture temporaire. RG_EXP_044 : Lorsqu'un niveau de structure ou d'organisation est fermée tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermées avec le|
|horaire : [0..*] Horaire|même type et la même date de fermeture et le cas échéant avec la même date de réouverture prévisionnelle. RG_EXP_045 : La date de réouverture peut être renseignée lorsque le type de fermeture est renseigné avec "Fermeture temporaire" sinon elle n'est jamais renseignée. RG_EXP_046 : La date est remise à nulle lorsque l'offre est ouverte de nouveau. Décrit le planning d'activité. Contexte ROR : L'attribut horaire permet de décrire chaque plage horaire de fonctionnement de l’offre ; pour chaque jour de la semaine ou pour une période donnée. RG_EXP_014 : Les horaires transmis DOIVENT inclure au minimum une période (date début, date fin) ou un jour de semaine. RG_EXP_015 : Si les horaires sont transmis sans période (date début, date fin), ils s'appliquent aux jours de la semaine à partir du jour de la semaine de lecture de l’information dans le ROR. Il s’agit d’information sur une semaine glissante : jour x (semaine n) à jour y (semaine n+1) RG_EXP_016 : Les horaires de jours de semaine RESTENT les horaires de référence semaine après semaine TANT QUE aucun nouvel horaire n’est récupéré d’un ROR. RG_EXP_017 : Les horaires portant sur une période (date début, date fin) DOIVENT être transmis si la période est en cours ou à venir lors de la lecture de l’information dans le ROR. RG_EXP_018 : Les horaires portant sur une période échue (date de fin antérieur à la date du jour) lors de la lecture de l’information dans le ROR NE DOIVENT PAS être transmis.|
|contact : [0..*] Contact|Personne ou service qui agit comme point de contact auprès d'une autre personne ou d'un autre service. Les moyens de contact sont précisés (numéro de téléphone, fax, email, site internet).|
|boiteLettreMSS : [0..*] BoiteLettreMSS|Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à l’offre opérationnelle.|
|metadonnee : [1..1] Metadonnee|Informations relatives à la gestion des classes et des données.|

**_Table 12 Attributs de la classe "OffreOperationnelle"_**

## **8.2 Classe "Patientele"**

Une patientèle est un ensemble de personnes qui répondent à des critères leur permettant de bénéficier de la prestation décrite.

_Liste des attributs de la classe Patientele_

|**Nom**|**Description**|
|---|---|
|publicPrisEnCharge : [0..*] Code [TRE-R239-PublicPrisEnCharge](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R239-PublicPrisEnCharge.html)|Ensemble de personnes qui présentent des caractéristiques psychologiques, intellectuelles, physiques, psychomotrices, comportementales leur permettant de bénéficier de la prestation décrite. RG_EXP_008 : Si le champ d'activité de l'offre est « médico-social » le public pris en charge DOIT être renseigné dans l'instance de la classe Patientèle.|
|ageMin : [1..1] Mesure|Age minimum (inclus) des personnes leur permettant de bénéficier de la prestation décrite. RG_EXP_048 : Uniquement les valeurs de Mesure/uniteMesure suivantes sont applicables :<br>- a<br>- année<br>- mo<br>- mois<br>- wk<br>- semaine<br>- d<br>- jour|
|ageMax : [1..1] Mesure|Age maximum (inclus) des personnes leur permettant de bénéficier de la prestation décrite. RG_EXP_048 : Uniquement les valeurs de Mesure/uniteMesure suivantes sont applicables :<br>- a<br>- année<br>- mo<br>- mois<br>- wk<br>- semaine<br>- d<br>- jour|
|metadonnee : [1..1] Metadonnee|Informations relatives à la gestion des classes et des données.|

|**_Table 13 Attributs de la classe "Patientele"_**|
|---|

## **8.3 Classe "ActiviteOperationnelle"**

Une activité opérationnelle est un ensemble cohérent d’actions et de pratiques mises en oeuvre pour participer au rétablissement ou à l’entretien de la Santé d’une personne. L’activité peut être d’ordre médical ou sanitaire, à visée sociale, ou encore de l’ordre de l’accompagnement dans le quotidien. Les activités opérationnelles peuvent être regroupées au sein de familles d’activités.

_Liste des attributs de la classe ActiviteOperationnelle_

|**Nom**|**Description**|
|---|---|
|activiteOperationnelle : [1..1] Code [TRE-R211-ActiviteOperationnelle](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R211-ActiviteOperationnelle.html)|Une activité opérationnelle est un ensemble cohérent d’actions et de pratiques mises en œuvre pour répondre aux besoins en Santé de la personne. Elle peut être d’ordre sanitaire, social ou médico-social. Cet ensemble opérationnel est plus détaillé qu'une activité soumise à autorisation préalable de l'ARS. Dans le secteur médico-social, chaque activité est rattachée à une famille d'activités (prestation niveau 4 de Serafin). Les activités décrites sont réalisées avec les ressources propres de la structure ou mises à disposition dans le cadre d’une convention à la condition qu'elles interviennent sur site.|
|familleActiviteOperationnelle : [0..1] Code [JDV-J51-FamilleActiviteOperationnelle-ROR](https://interop.esante.gouv.fr/terminologies/ValueSet-JDV-J51-FamilleActiviteOperationnelle-ROR.html)|Une famille d’activités opérationnelles est un regroupement cohérent d’activités délivrées dans le cadre d'une prestation, répondant à un besoin de la personne. Dans le secteur médico-social, la Famille d’activité correspond au niveau 4 des prestations de la nomenclature SERAFIN. RG_EXP_007 : La famille d’activité DOIT être renseignée pour toute instance de la classe Activité Opérationnelle liée à une offre dont le champ d’activité « médico-social ».|
|metadonnee : [1..1] Metadonnee|Informations relatives à la gestion des classes et des données.|

#### **_Table 14 Attributs de la classe "ActiviteOperationnelle"_**

Modèle d’exposition V3.0 ROR

# **9. RESSOURCES OPERATIONNELLES**

La partie Ressources Opérationnelles regroupe les classes qui décrivent les moyens qui peuvent être mis en œuvre pour réaliser la prestation.

RG_EXP_002 : Si un élément obligatoire dans la structure du flux d’échange n’est pas renseigné dans le ROR interrogé, alors l’instance de l’entité à laquelle appartient cet élément NE DOIT PAS être transmise. Les instances des entités hiérarchiquement inférieures NE DOIVENT PAS être transmises non plus.

Les instances des entités hiérarchiquement supérieures DOIVENT être transmises en respectant la condition ci-dessus.

**_Figure 7 Ressources Opérationnelles_**

## **9.1 Classe "LieuRealisationOffre"**

- Classe spécialisée, hérite de:Lieu

Espace disposant d'un ensemble de ressources pour réaliser une offre. Lorsque les ressources qui contribuent à l'offre sont mobiles, le lieu de réalisation de l'offre correspond au lieu administratif où est organisée la prise en charge.

_Liste des attributs de la classe LieuRealisationOffre_

|**Nom**|**Description**|
|---|---|
|idExterneSynchro : [0..1] Identifiant|L’identifiant externe de synchronisation est l’identifiant défini par le porteur d’offre pour la zone d’hébergement des lits.|
|nomExterneSynchro : [0..1] Texte|Nom de la zone d’hébergement des lits.|
|commentaire : [0..1] Texte|Commentaire qui permet de donner des informations complémentaires sur le lieu.|
|metadonnee : [1..1] Metadonnee|Informations relatives à la gestion des classes et des données.|

**_Table 15 Attributs de la classe "LieuRealisationOffre"_**

## **9.2 Classe "EquipementSpecifique"**

L'équipement spécifique est une ressource matérielle discriminante pour la réalisation d'une prestation.

Si un équipement n'est utile que pour un acte spécifique, seul l'acte est décrit.

Ces équipements sont des ressources propres de la structure ou mise à disposition dans le cadre d'une convention à la condition qu’elles soient utilisées sur site.

#### _Liste des attributs de la classe EquipementSpecifique_

|**Nom**|**Description**|
|---|---|
|typeEquipement : [1..1] Code [TRE-R212-Equipement](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R212-Equipement.html)|Un type d'équipement correspond à une ressource matérielle médicotechnique spécialisée, qui permet la réalisation d’une prestation. Les équipements ordinaires utilisés pour réaliser les activités proposées par une organisation ne sont pas des équipements spécifiques. Les équipements spécifiques décrits sont des ressources propres de la structure ou mises à disposition dans le cadre d’une convention à la condition qu'elles soient utilisées sur site.|
|nbEquipementEnService : [0..1] Numerique|Nombre d'équipement du même type en état de fonctionnement.|
|metadonnee : [1..1] Metadonnee|Informations relatives à la gestion des classes et des données.|

**_Table 16 Attributs de la classe "EquipementSpecifique"_**

## **9.3 Classe "CapaciteHabitation"**

La classe Capacité d'habitation décrit un type d'habitation adapté à la réalisation d'une offre.

_Liste des attributs de la classe CapaciteHabitation_

|**Nom**|**Description**|
|---|---|
|typeHabitation : [1..1] Code [TRE-R242-TypeHabitation](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R242-TypeHabitation.html)|Le type d’habitation renseigne sur la taille et le nombre de pièces d’un logement.|
|nbHabitation : [0..1] Numerique|Nombre d'habitations du même type.|
|metadonnee : [1..1] Metadonnee|Informations relatives à la gestion des classes et des données.|

**_Table 17 Attributs de la classe "CapaciteHabitation"_**

## **9.4 Classe "CapacitePriseCharge"**

La capacite de prise en charge indique à quelle affectation sont destinés les lits qui seront rattachés à cette classe.

Elle permet d’éviter de la duplication de l'offre ou du lieu de prise en charge lorsque des lits doivent être réservés dans le cadre d’une gestion de crise.

_Liste des attributs de la classe CapacitePriseCharge_

|**Nom**|**Description**|
|---|---|
|affectationTemporaire : [1..1] Code [TRE-R337-AffectationTemporaire](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R337-AffectationTemporaire.html)|L’affectation temporaire permet de réserver tout ou partie des lits d’une zone d’hébergement pour des patients selon qu’ils soient –ou non- concernés par une pathologie (Covid+, Covid-, …) ou un évènement (catastrophe naturelle, attentat, …).|
|commentaire : [0..1] Texte|Commentaire qui permet à l'établissement de donner des indications complémentaires sur les informations capacitaires.|
|metadonnee : [1..1] Metadonnee|Informations relatives à la gestion des classes et des données.|

**_Table 18 Attributs de la classe "CapacitePriseCharge"_**

## **9.5 Classe "CapaciteAccueilOperationnelle"**

Le détail de la CapaciteAccueilOperationnelle précise la classe CapacitePriseCharge par une série d’enregistrements indiquant la quantité de lit (ou de place) de l'entité pour un statut et une temporalité donnée.

Le cumul des enregistrements de capacite d'accueil opérationnelle des différentes

CapacitePriseCharge d’un lieu de prise en charge donne une vision complète de la capacité de ce lieu.

_Liste des attributs de la classe CapaciteAccueilOperationnelle_

|**Nom**|**Description**|
|---|---|
|natureCapacite : [1..1] Code [TRE-R329-NatureCapacite](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R329-NatureCapacite.html)|Indique si la capacité est exprimée en lits ou en places. Caractérise la capacité d’accueil, en lits, places, ou caractéristiques de logement où la personne est prise en charge.|
|statutCapacite : [1..1] Code [TRE-R330-StatutCapacite](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R330-TypeStatutCapacite.html)|Permet de préciser le statut des lits décrits. RG_EXP_047 : Lorsqu'une offre opérationnelle est fermée, les ressources de type statutCapacite "disponible" doivent être à 0.|
|temporaliteCapacite : [1..1] Code [TRE-R331-Temporalite](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R331-TemporaliteCapacite.html)|Indique le moment où cette capacité sera effective. Il est ainsi possible de décrire la situation immédiate, ou de fournir des informationsprospectives de capacités,prenant notamment en compte les entrées et sorties déjà identifiés de patients.|
|nombreCapacite : [1..1] Numerique|Quantité de lits ou places de la capacité exprimée. RG_EXP_047 : Lorsqu'une offre opérationnelle est fermée, les ressources de type statutCapacite "disponible" doivent être à 0.|
|typeSourceCapacite : [1..1] Code [TRE-R335-TypeSource](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R335-TypeSourceCapacite.html)|Indique quel type de source est à l’origine de l’information de capacité.|
|dateMAJCapacite : [1..1] DateHeure|Date à laquelle la capacité d’accueil a été mise à jour dans la source.|
|genreCapaciteDispo : [0..1] Code [TRE-R332-GenreCapacite](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R332-GenreCapacite.html)|Genre des patients qui peuvent être installés dans des lits disponibles. Dans le cas d’une chambre double, si un des deux lits est disponible, le patient que l’on peut y orienter sera du même genre que le patient hospitalisé dans l’autre lit.|
|typeFermetureCapacite : [0..1] Code [TRE-R333-TypeFermetureCapacite](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R333-TypeFermetureCapacite.html)|Indique le statut de lits fermés, permettant d’identifier le nombre de lits fermés qui peuvent être réactivés en cas de besoin et le nombre de ceux qui ne peuvent pas l’être.|
|typeLitSupplementaire : [0..1] Code [TRE-R334-TypeLitSupplementaire](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R334-TypeLitSupplementaire.html)|Indique le statut de lits supplémentaires, pour identifier le nombre de lits supplémentaires déjà mobilisés et, par typologie de mobilisation possible, le nombre de lits qui ne le sont pas encore.|
|typeCrise : [0..1] Code [TRE-R336-TypeCrise](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R336-TypeCrise.html)|Indique le type de crise qui permet de mobiliser le nombre de lits supplémentaires décrits.|
|metadonnee : [1..1] Metadonnee|Informations relatives à la gestion des classes et des données.|

**_Table 19 Attributs de la classe "CapaciteAccueilOperationnelle"_**

## **9.6 Classe "LimiteCaracteristiqueEquipement"**

Précise les limites que peut supporter l'équipement le plus tolérant parmi les équipements spécifiques de même type dans cette organisation.

Par exemple, si une organisation possède 3 tables de bloc opératoire pouvant accueillir des patients d'un poids maximum de 180kg, 190kg et 200Kg, seule la valeur limite de 200Kg sera identifiée dans cette classe.

_Liste des attributs de la classe LimiteCaracteristiqueEquipement_

|**Nom**|**Description**|
|---|---|
|typeCaracteristique : [1..1] Code [TRE-R340-TypeCaracteristiqueEquipement](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R340-TypeCaracteristiqueEquipement.html)|Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée.|
|valeurLimite : [1..1] Mesure|Correspond à la valeur extrême associée à une caractéristique de l'équipement.|

**_Table 20 Attributs de la classe "LimiteCaracteristiqueEquipement"_**

Modèle d’exposition V3.0 ROR

# **10. PROFESSIONNEL RESSOURCE**

Cette partie décrit le professionnel et ses modalités d'exercice opérationnelles dans la réalisation de l'offre.

RG_EXP_002 : Si un élément obligatoire dans la structure du flux d’échange n’est pas renseigné dans le ROR interrogé, alors l’instance de l’entité à laquelle appartient cet élément NE DOIT PAS être transmise. Les instances des entités hiérarchiquement inférieures NE DOIVENT PAS être transmises non plus.

Les instances des entités hiérarchiquement supérieures DOIVENT être transmises en respectant la condition ci-dessus.

RG_EXP_031 : Les informations décrivant le «Professionnel», l’«Exercice professionnel» et les «Savoir faire» sont issues des référentiels nationaux : le RPPS et le répertoire ADELI. Ces données NE DOIVENT PAS être modifiées.

**_Figure 8 Professionnel Ressource_**

## **10.1 Classe "PersonnePhysique"**

Une personne physique est un individu titulaire de droits et d'obligations caractérisé par une identité civile.

#### _Liste des attributs de la classe PersonnePhysique_

|**Nom**|**Description**|
|---|---|
|civilite : [0..1] Code [TRE-R81-Civilite](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R81-Civilite.html)|Civilité de la personne physique.|
|metadonnee : [1..1] Metadonnee|Informations relatives données. à la gestion des classes et des|

**_Table 21 Attributs de la classe "PersonnePhysique"_**

## **10.2 Classe "Professionnel"**

Données d'identification pérennes d’une personne physique, qui travaille en tant que professionnel (professionnel enregistré dans RPPS ou ADELI), personnel autorisé ou personnel d’établissement, dans les domaines sanitaire, médico-social et social.

RG_EXP_031 : Les informations décrivant le «Professionnel», l’«Exercice professionnel» et les «Savoir-faire» sont issues des référentiels nationaux : le RPPS et le répertoire ADELI. Ces données NE DOIVENT PAS être modifiées.

#### _Liste des attributs de la classe Professionnel_

|**Nom**|**Description**|
|---|---|
|idNat_PS : [1..1] Identifiant|Identification nationale du professionnel définie par le CI-SIS. Cette identification est obtenue par la concaténation du type d'identifiant national de personne (provenant de la nomenclature TRE_G08-TypeIdentifiantPersonne) et de l'identifiant de la personne physique. L'identifiant provient soit d’un référentiel national, soit d’un référentiel local propre à la structure d’exercice de la personne physique. Dans le cadre du modèle d'exposition du ROR, les situations suivantes peuvent se présenter :<br>- 0 + N° ADELI du professionnel<br>- 8 + N° RPPS du professionnel ou de l’étudiant; les étudiants sont dorénavant enregistrés progressivement dans le RPPS. RG_EXP_030 : L’« idNat_PS » qui est l'identifiant national principal du professionnel dans le cadre de l’interopérabilité DOIT être renseigné en priorité avec le numéro RPPS du professionnel s’il existe ou sinon par son numéro ADELI.|
|boiteLettresMSS : [0..*] BoiteLettreMSS|Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) au professionnel.|

**_Table 22 Attributs de la classe "Professionnel"_**

## **10.3 Classe "ExerciceProfessionnel"**

Informations décrivant notamment la profession exercée et l’identité d’exercice d’un professionnel.

RG_EXP_031 : Les informations décrivant le «Professionnel», l’«Exercice professionnel» et les «Savoir faire» sont issues des référentiels nationaux : le RPPS et le répertoire ADELI. Ces données NE DOIVENT PAS être modifiées.

_Liste des attributs de la classe ExerciceProfessionnel_

|**Nom**|**Description**|
|---|---|
|civiliteExercice : [0..1] Code [TRE-R11-CiviliteExercice](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R11-CiviliteExercice.html)|Civilité d’exercice du professionnel.|
|nomExercice : [1..1] Texte|Nom sous lequel exerce le professionnel.|
|prenomExercice : [0..1] Texte|Prénom sous lequel exerce le professionnel.|
|profession :[1..1] Code [TRE-G15-ProfessionSante](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-G15-ProfessionSante.html)|Profession exercée ou futureprofession de l'étudiant.|
|metadonnee : [1..1] Metadonnee|Informations relatives à la gestion des classes et des données.|

#### **_Table 23 Attributs de la classe "ExerciceProfessionnel"_**

## **10.4 Classe "SavoirFaire"**

Prérogatives d'exercice d'un professionnel reconnues par une autorité d'enregistrement sur une période donnée de son exercice professionnel, par exemple les spécialités ordinales, etc.

RG_EXP_031 : Les informations décrivant le «Professionnel», l’«Exercice professionnel» et les «Savoir faire» sont issues des référentiels nationaux : le RPPS et le répertoire ADELI. Ces données NE DOIVENT PAS être modifiées.

**_Figure 9 SavoirFaire_**

_Liste des attributs de la classe SavoirFaire_

|**Nom**|**Description**|
|---|---|
|typeSavoirFaire : [1..1] Code [TRE-R04-TypeSavoirFaire](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R04-TypeSavoirFaire.html)|Le type de savoir-faire (qualifications/autres attributions) désigne par exemple:<br>- une spécialité ordinale (S);<br>- une compétence (C);<br>- etc.|
|metadonnee : [1..1] Metadonnee|Informations relatives à la gestion des classes et des données.|

**_Table 24 Attributs de la classe "SavoirFaire"_**

### **10.4.1 Classe "Specialite"**

- Classe spécialisée, hérite de:SavoirFaire

Spécialité médicale ou odontologique, reconnue par une autorité d'enregistrement (Ordre ou SSA), soit sur la base d'un diplôme de spécialité (DES ou DESC de groupe II, CES jusqu'en 1991), soit via une commission de qualification.

En France, l'exercice d'une spécialité est exclusif, c'est-à-dire qu'on ne peut exercer qu'une seule spécialité, celle qui fait l'objet d'une qualification par le Conseil de l'ordre. Un médecin titulaire d'un DESC de type II, qui s'ajoute à son DES, a donc 2 qualifications possibles. Lorsqu'il s'inscrit au tableau de l'ordre des médecins, il doit déclarer sa spécialité d'exercice. S'il choisit celle de son DESC, il ne peut pas exercer la spécialité de son DES. Toutefois, il peut dans le futur, choisir le retour à la spécialité originelle portée par le DES. Ainsi, la création en 2004 du DESC de Gériatrie a marqué la naissance de la qualification de spécialiste en gériatrie (la gériatrie étant auparavant un mode d'exercice particulier de la médecine, concernant des généralistes et des spécialistes). Dans le cadre du modèle, une spécialité est un type de savoir-faire. La classe Specialite est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.

_Liste des attributs de la classe Specialite_

|**Nom**|**Description**|
|---|---|
|specialite : [0..1] Code [TRE-R38-SpecialiteOrdinale](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R38-SpecialiteOrdinale.html)|Spécialité ordinale.|

**_Table 25 Attributs de la classe "Specialite"_**

### **10.4.2 Classe "Competence"**

- Classe spécialisée, hérite de:SavoirFaire

Extrait du rapport de l'ONDPS sur la médecine générale (Tome 1 2006-2007): "La compétence était un titre délivré par l’ordre national des médecins en application du précédent règlement de qualification (Article 3 de l'arrêté du 4 septembre 1970), aux praticiens dits «ancien régime» ayant débuté leurs études médicales avant la réforme de 1982. Ce titre était accordé après avis d’une commission ordinale spécifique. Les compétences, dont la liste était fixée par arrêté, portaient soit sur des disciplines ne correspondant pas à des spécialités qualifiantes (médecine légale ou

allergologie par exemple), soit sur des spécialités médicales, le praticien compétent ne pouvant l’exercer que dans le cadre de sa spécialité d’inscription à l’ordre.

Les compétences ne peuvent plus être délivrées aux médecins issus du nouveau régime, c’est-àdire ayant débuté leurs études à compter de l’année universitaire 1984-1985.Toutefois, pour ceux de l’ancien régime et à titre transitoire, le dépôt d’une demande de qualification était possible jusqu’au 31 décembre 2004 et ces praticiens peuvent s’en prévaloir jusqu’à la fin leur période d’activité professionnelle."

Une compétence est un type de savoir-faire. La classe Competence est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.

_Liste des attributs de la classe Competence_

|**Nom**|**Description**|
|---|---|
|competence : [0..1] Code [TRE-R39-Competence](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R39-Competence.html)|Compétence acquise par le professionnel.|

**_Table 26 Attributs de la classe "Competence"_**

### **10.4.3 Classe "CompetenceExclusive"**

- Classe spécialisée, hérite de:SavoirFaire

La compétence exclusive est une compétence exercée à titre exclusif. Un professionnel ne peut exercer à la fois une compétence exclusive et une spécialité.

Dans le cadre du modèle, une compétence exclusive est un type de savoir-faire. La classe CompetenceExclusive est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.

_Liste des attributs de la classe CompetenceExclusive_

|**Nom**|**Description**|
|---|---|
|competenceExclusive : [0..1] Code [TRE-R40-CompetenceExclusive](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R40-CompetenceExclusive.html)|Compétence exclusive.|

**_Table 27 Attributs de la classe "CompetenceExclusive"_**

### **10.4.4 Classe "OrientationParticuliere"**

- Classe spécialisée, hérite de:SavoirFaire

Caractérise une orientation d'exercice: acupuncture ou homéopathie.

Dans le cadre du modèle, une orientation particulière est un type de savoir-faire. La classe OrientationParticuliere est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.

_Liste des attributs de la classe OrientationParticuliere_

|**Nom**|**Description**|
|---|---|
|orientationParticuliere : [0..1] Code [TRE-G13-OrientationParticuliere](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-G13-OrientationParticuliere.html)|Orientation particulière.|

**_Table 28 Attributs de la classe "OrientationParticuliere"_**

### **10.4.5 Classe "Capacite"**

- Classe spécialisée, hérite de:SavoirFaire

La capacité, en tant que savoir-faire, représente la reconnaissance par l'ordre d'un diplôme de capacité. Elle complète les savoir-faire principaux, notamment les spécialités.

Une capacité est un type de savoir-faire. La classe Capacite est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.

_Liste des attributs de la classe Capacite_

|**Nom**|**Description**|
|---|---|
|capacite : [0..1] Code [TRE-R43-CapaciteSavoirFaire](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R43-CapaciteSavoirFaire.html)|Capacité de médecine.|

**_Table 29 Attributs de la classe "Capacite"_**

### **10.4.6 Classe "QualificationPAC"**

- Classe spécialisée, hérite de:SavoirFaire

La qualification de praticien adjoint contractuel autorise à exercer en établissement sans être qualifié ni en médecine générale, ni en spécialité. Cela concerne des médecins à diplôme étranger dont la qualification a été reconnue avant l'instauration de l'autorisation d'exercice, et qui n'ont pas fait de démarche pour obtenir cette autorisation (environ 500 médecins concernés). Une qualification de praticien adjoint contractuel est un type de savoir-faire. La classe QualificationPAC est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.

_Liste des attributs de la classe QualificationPAC_

|**Nom**|**Description**|
|---|---|
|qualificationPAC : [0..1] Code [TRE-R44-QualificationPAC](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R44-QualificationPAC.html)|Qualification contractuel. de praticien adjoint|

**_Table 30 Attributs de la classe "QualificationPAC"_**

### **10.4.7 Classe "DroitExerciceComplementaire"**

- Classe spécialisée, hérite de:SavoirFaire

Les docteurs en médecine initialement qualifiés comme médecins spécialistes peuvent obtenir un droit d'exercice dans l'une des spécialités définies par un des DESC de médecine du groupe I.

_Liste des attributs de la classe DroitExerciceComplementaire_

|**Nom**|**Description**|
|---|---|
|droitExerciceComplementaire : [0..1] Code [TRE-R97-DroitExerciceCompl](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R97-DroitExerciceCompl.html)|Droit d'exercice complémentaire du professionnel.|

**_Table 31 Attributs de la classe "DroitExerciceComplementaire"_**

### **10.4.8 Classe "SurspecialiteTransversale"**

- Classe spécialisée, hérite de:SavoirFaire

La surspécialité transversale est le droit d’exercice complémentaire au sein de la spécialité du médecin, donné par une formation spécialisée transversale (FST). La formation spécialisée transversale est une formation venant compléter le cursus de l’interne à partir de la phase d’approfondissement, et lui permet d’acquérir les compétences pour exercer la surspécialité correspondante dans le cadre de sa spécialité.

_Liste des attributs de la classe SurspecialiteTransversale_

|**Nom**|**Description**|
|---|---|
|surspecialiteTransversale : [0..1] Code [TRE-R359-SurspecialiteTransversalee](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R359-SurspecialiteTransversale.html)|Surspécialité acquise par le professionnel en supplément de la spécialité de DES.|

**_Table 32 Attributs de la classe "SurspecialiteTransversale"_**

### **10.4.9 Classe "DESCNonQualifiant"**

- Classe spécialisée, hérite de:SavoirFaire

Un professionnel peut faire valoir, en complément de sa spécialité, un ou plusieurs savoir-faire de type DESC non qualifiant, en fonction du ou des DESC de groupe I, qu'il a obtenu(s). Un DESC non qualifiant est un type de savoir-faire. La classe

DiplomeEtudesSpécialiseesNonQualifiant est représentée dans le modèle comme une spécialisation de la classe SavoirFaire et à ce titre, elle hérite des attributs et des associations de cette classe.

_Liste des attributs de la classe DESCNonQualifiant_

|**Nom**|**Description**|
|---|---|
|DESCNonQualifiant : [0..1] Code [TRE-R42-DESCnonQualifiant](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R42-DESCnonQualifiant.html)|Diplôme complément d'études aires (DESC). spécialisées|

**_Table 33 Attributs de la classe "DESCNonQualifiant"_**

## **10.5 Classe "SituationOperationnelle"**

Caractérise les conditions d'exercice du professionnel dans le cadre de l'offre décrite.

_Liste des attributs de la classe SituationOperationnelle_

|**Nom**|**Description**|
|---|---|
|identifiantSituationOperationnelle : [0..1] Identifiant|Identifiant de la situation opérationnelle, unique et persistant au niveau national, obtenu par l’association de l’identifiant de l’offre opérationnelle suivi du caractère « / » puis de l’identifiant du professionnel.|
|modeExerciceOffre : [1..1] Code [TRE-R23-ModeExercice](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R23-ModeExercice.html)|Le mode d'exercice correspond au statut du professionnel lorsqu'il exerce dans le cadre de l'offre décrite.|
|competenceSpecifique : [0..*] Code [TRE-R243-CompetenceSpecifique](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R243-CompetenceSpecifique.html)|La compétence spécifique correspond à une capacité ou connaissance reconnue qui permet ou facilite l’accueil d’une personne. La compétence spécifique n’est ni une spécialité ordinale, ni une profession.|
|precisionHoraire : [0..1] Horaire|Décrit le planning d'activité du professionnel RG_EXP_049 : Uniquement les valeurs de Horaire/typeHoraire suivantes sont applicables :<br>- 03 – Horaire de garde<br>- 06 – Horaire de consultation sans RDV<br>- 07 – Horaire de consultation sur RDV|
|secteurConventionnement : [0..1] Code [TRE-R282-CNAMAmeliSecteurConventionnement](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R282-CNAMAmeliSecteurConventionnement.html)|Secteur de conventionnement du professionnel libéral auquel il a adhéré auprès de l'Assurance Maladie.|
|optionContratAccèsAuxSoins : [0..1] Indicateur|L'Option pratique tarifaire maîtrisée (OPTAM) a remplacé le Contrat d'accès aux soins (CAS) en 2017. L’Option pratique tarifaire maîtrisée (OPTAM) est un dispositif proposé par l’Assurance Maladie aux médecins conventionnés ayant pour objectif principal de faciliter l’accès aux soins en limitant, sans les supprimer, les dépassements d’honoraires. Les médecins exerçant une spécialité chirurgicale ou de chirurgie obstétrique, qui ont réalisé au moins 50 actes de chirurgie ou d'obstérique ont la possibilité d'adhérer à l'Option pratique tarifaire maîtrisée chirurgie et obstétrique (OPTAM-CO). Synonyme : optionPratiqueTarifaireMaîtrisée|
|carteVitaleAcceptee : [0..1] Indicateur|L’indicateur Carte Vitale acceptée précise si le professionnel, dans le cadre de cette situation opérationnelle, dispose des moyens techniques pour prendre en charge la carte vitale ou pas. 0 : pas de prise en charge de la carte vitale 1 : prise en charge de la carte vitale.|
|telecommunication : [0..1] Telecommunication|Adresse(s) de télécommunication du professionnel dans le cadre de l'offre décrite.|
|metadonnee : [1..1] Metadonnee|Informations relatives à la gestion des classes et des données.|

**_Table 34 Attributs de la classe "SituationOperationnelle"_**

# **11. CLASSES COMMUNES**

Une classe commune est souvent utilisée comme type de données d'un attribut d'une classe du modèle. Cette formalisation, consistant à remplacer la relation d'agrégation entre la classe du modèle et cette classe commune, a pour premier objectif de simplifier la lecture des diagrammes. Ces classes communes réutilisables décrivent notamment la personne physique, l’adresse géopostale, les moyens de contact, les moyens de télécommunication, les concepts codés, les lieux, les divisions territoriales et les coordonnées géographiques.

**_Figure 10 Classes communes_**

## **11.1 Classe "Adresse"**

Adresse géopostale. Un emplacement auquel une personne ou une organisation peut être trouvée ou être atteinte.

_Liste des attributs de la classe Adresse_

|**Nom**|**Description**|
|---|---|
|pointRemise : [0..1] Texte|Lieu où le destinataire prend possession de son courrier. Il est matérialisé, dans la plupart des cas, par la présence d'une boîte aux lettres; il est constitué des éléments suivants : * Local ou logement : Numéro ou désignation d'appartement, logement, pièce, bureau, local commercial ou industriel * Accès au local ou au logement: indications de couloir, d'étage ou de niveau * Boîte aux lettres : Numéro voire dénomination (éventuellement CIDEX) * Accès à la boîte à lettres: si nécessaire,: identification du couloir d'accès, de la batterie de boîtes s'il en existe plusieurs * Code acheminement interne à l'entreprise (CAIE): Codification identifiant le découpage au sein de l'entreprise en vue du traitement de courrier par les services dédiés internes à l'entreprise. Les informations d'identification du domicilié (Chez M.X) pourraient figurer dans cet attribut.|
|complementPointGeographique : [0..1] Texte|Un complément de l'adresse au point géographique constitué des éléments suivants: * Bâtiment: les bâtiments sont désignés par leur type (bâtiment, immeuble, tour,...), éventuellement des mentions d'orientation (est, ouest,...), une dénomination littérale ou une numérotation; exemple: Tour DELTA * Accès au bâtiment: l'accès au bâtiment est identifié par un numéro, une lettre, une combinaison alphanumérique. Ces éléments identifient une entrée, porte, etc.; exemple: Entrée A * Ensemble immobilier: ensemble d'habitations reliées à la voie publique par un ou plusieurs points d'accès (résidence, zone industrielle,...);|
|numeroVoie : [0..1] Texte extension : [0..1] Texte|Un numéro dans la voie; dans les cas de numérotation sans extension, il est composé de 0 à 4 caractères numériques au maximum. Extension ou indice de répétition : mention bis, ter, quater, ...ou une lettre A, B, C, D, etc. lorsque ce caractère complète une numérotation de voirie.|
|typeVoie : [0..1] Code [TRE-R35-TypeVoie](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R35-TypeVoie.html)|Type de voie : rue, avenue, boulevard, etc. Attribut obsolète et non conforme à la norme postale en vigueur NF Z 10-011 qui définit cette information comme faisant partie de l'attribut libelleVoie. Il apparait dans la classe Adresse uniquement parce que des systèmes existants l'utilisent encore.|
|libelleVoie : [0..1] Texte|Appellation qui est donnée à la voie par les municipalités. Ce libellé figure in extenso ou en abrégé sur les plaques aux différents angles de chaque rue.|
|lieuDit : [0..1] Texte|Lieu qui porte un nom rappelant une particularité topographique ou historique et qui, souvent, constitue un écart d'une commune (un écart est une petite agglomération distincte du centre de la commune à laquelle elle appartient).|
|mentionDistribution : [0..1] Texte|Mentions particulières de distribution. Il s'agit de mentions identifiant le service proposé par La Poste au destinataire. Ces mentions sont formées d'un libellé et d'un numéro de séparation (exemple : BP 42534).|
|codePostal : [0..1] Code|Code Postal : Code Postal ou code postal spécifique CEDEX * Code postal: Un code à 5 chiffres servant à l'acheminement et/ou à la distribution des envois. Il identifie un bureau distributeur dans la chaîne de traitement du courrier. * Code CEDEX (Courrier d'Entreprise à Distribution Exceptionnelle); le CEDEX est une modalité d'acheminement du courrier associée à des services particuliers de distribution offerts aux entreprises caractériséespar un adressage spécifique; le code postal spécifique CEDEX est un code attribué aux organismes, entreprises, services publics recevant un fort trafic. Il identifie un client ou un ensemble de clients. Il est positionné aux lieu et place du code postal général dans le cas des adresses CEDEX. Ainsi, un code peut être associé à un client (code individuel) ou partagé entre plusieurs clients (code collectif).|
|localite : [0..1] Texte|Localité ou Libellé du bureau distributeur CEDEX * Localité: Zone d'habitation, en général la commune d'implantation du destinataire. Elle est identifiée par son libellé INSEE sauf dans quelques cas où le libellé postal diffère du libellé INSEE, généralement pour lever des ambiguïtés. * Libellé du bureau distributeur CEDEX. Libellé du bureau distributeur c'est-à-dire (dans la très grande majorité des cas) le libellé de la commune siège du bureau CEDEX; la mention CEDEX doit obligatoirement suivre le libellé du bureau CEDEX; dans le cas où il existe plusieurs bureaux CEDEX pour une même entité ou commune, chaque bureau CEDEX sera identifié par un numéro (exemple : ROUBAIX CEDEX 2); ce numéro correspond au numéro d'arrondissement dans le cas des villes à arrondissements, à un numéro d'ordre dans les autres cas.|
|metadonnee : [1..1] Metadonnee|Informations relatives à la gestion des classes et des données.|

**_Table 35 Attributs de la classe "Adresse"_**

## **11.2 Classe "BoiteLettreMSS"**

Informations descriptives des boîtes aux lettres du service de messagerie sécurisée de santé (MSS) rattachées aux professionnels et aux structures.

#### _Liste des attributs de la classe BoiteLettreMSS_

|**Nom**|**Description**|
|---|---|
|adresseMSS : [0..1] Telecommunication|Adresse unique de messagerie sécurisée dans un domaine de messagerie MSSanté.|
|metadonnee : [1..1] Metadonnee|Informations relatives à la gestion des classes et des données.|

**_Table 36 Attributs de la classe "BoiteLettreMSS"_**

## **11.3 Classe "Contact"**

Personne ou service qui agit comme point de contact auprès d'une autre personne ou d'un autre service.

Exemple: Point de contact avec une personne ou une organisation (un guichet d'accueil, une source d'information, etc.).

#### _Liste des attributs de la classe Contact_

|**Nom**|**Description**|
|---|---|
|nom : [0..1] Texte|Un nom de la personne à contacter. RG_EXP_040 : Si l’attribut natureContact est renseigné dans l’objet Contact, alors il ne doit pas y avoir de nom de contact ni de fonctionContact. RG_EXP_041 : Si l’attribut fonctionContact est renseigné dans l’objet Contact, alors il doit y avoir un nom de contact et il ne doit pas y avoir de natureContact.|
|fonctionContact : [0..1] Code [TRE-R251-FonctionContact](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R251-FonctionContact.html)|Un titre, une position ou une fonction de la personne assurant le contact au sein de l'organisation (directeur, secrétaire, etc.). RG_EXP_040 : Si l’attribut natureContact est renseigné dans l’objet Contact, alors il ne doit pas y avoir de nom de contact ni de fonctionContact. RG_EXP_041 : Si l’attribut fonctionContact est renseigné dans l’objet Contact, alors il doit y avoir un nom de contact et il ne doit pas y avoir de natureContact.|
|natureContact : [0..1] Code [TRE-R287-NatureContact](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R287-NatureContact.html)|Un service ou un guichet assurant le contact au sein de l'organisation (accueil, admission, etc.). RG_EXP_040 : Si l’attribut natureContact est renseigné dans l’objet Contact, alors il ne doit pas y avoir de nom de contact ni de fonctionContact. RG_EXP_041 : Si l’attribut fonctionContact est renseigné dans l’objet Contact, alors il doit y avoir un nom de contact et il ne doit pas y avoir de natureContact.|
|description  : [0..1] Texte|Une description du contact.|
|niveauConfidentialite : [1..1] Code [TRE-R283-NiveauConfidentialite](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R283-NiveauConfidentialite.html)|Le niveau de confidentialité du contact permet de définir le niveau de restriction de l'accès aux attributs de la classe Contact. RG_EXP_032 : Lors de la création d’un objet Contact le niveau de confidentialité a la valeur par défaut "restreint". RG_EXP_034 : Le niveau de confidentialité de l’objet Télécommunication doit êtreplus restrictif ou égal au niveau de confidentialité de l’objet Contact auquel il est rattaché. RG_EXP_039 : Dans une unité sensible, le niveau de confidentialité des contacts doit être positionné à la valeur « très restreint »|
|telecommunication : [0..*] Telecommunication|Adresse(s) de télécommunication du contact (numéro de téléphone, adresse email, URL, etc.).|
|metadonnee : [1..1] Metadonnee|Informations relatives à la gestion des classes et des données.|

#### **_Table 37 Attributs de la classe "Contact"_**

## **11.4 Classe "CoordonneeGeographique"**

Ensemble des coordonnées géographiques d'un point spécifique telles que la longitude, la latitude et l'altitude, exprimées suivant un système géodésique choisi. Il convient de distinguer les coordonnées géographiques des coordonnées projetées suivant différents systèmes de projection.

_Liste des attributs de la classe CoordonneeGeographique_

|**Nom**|**Description**|
|---|---|
|systemeGeodesique : [1..1] Texte|Une identification du système de référence fixant les règles de mesure des positions géographiques. Le système géodésique intègre la description de l'ellipsoïde choisie. Exemple :<br>- RGF93 pour la France métropolitaine fixé par le décret no 2000-1276 du 26 décembre 2000 ;<br>- WGS 84, World Geodetic System 1984, système géodésique utilisé notamment par le système GPS. Contexte ROR : le système géodésique utilisé par chaque solution ROR est le WGS84.|
|latitude : [1..1] Numerique|Une mesure de la distance angulaire nord ou sud depuis l'équateur jusqu'au parallèle du spécifique. L'unité de mesure est spécifiée dans le type "Mesure". Le choix est possible entre le Degré Décimal (DD) et le Degré Minute Seconde (DMS), l'unité de mesure est obligatoire dans l'échange. Contexte ROR : La latitude est de type décimal (degré décimal). La latitude est constituée de la direction latitude qui spécifie la direction Nord (+) ou la direction Sud (-) depuis l’équateur jusqu’au parallèle du point spécifique. Si la direction latitude est positive le signe "+" n'est pas affiché.|
|longitude :[1..1] Numerique|Une mesure de la distance angulaire est ou ouest depuis le méridien de Greenwich jusqu'au méridien du point spécifique L'unité de mesure est spécifiée dans le type "Mesure". Le choix est possible entre le Degré Décimal (DD) et le Degré Minute Secondes (DMS), l'unité de mesure est obligatoire dans l'échange Contexte ROR : La longitude est de type décimal (degré décimal). La longitude est constituée de la direction longitude qui spécifie la direction Est (+) ou la direction Ouest (-) depuis le méridien de Greenwich jusqu’au méridien du point spécifique. Si la direction longitude est positive le signe "+" n'est pas affiché.|
|coordonneesFiables : [0..1] Indicateur|Cet attribut permet de signaler que les informations des coordonnées géographiques sont issues d'un mode de production qui assure un certain niveau de fiabilité. Valeurs possibles :<br>-1 = les coordonnées géographiques sont fiables<br>- 0 = les coordonnées géographiques ne sont pas fiables|
|metadonnee : [1..1] Metadonnee|Informations relatives à la gestion des classes et des données.|

**_Table 38 Attributs de la classe "CoordonneeGeographique"_**

## **11.5 Classe "DivisionTerritoriale"**

Une division territoriale est un territoire.

Le territoire peut correspondre à une commune, un département, une région, un territoire, un pays, un canton ou un arrondissement au sens du référentiel administratif que représente le Code Officiel Géographique pour la France (INSEE).

Pour les autres pays, cela peut être un état, un land, un comté, une province, etc. suivant leur découpage territorial.

Autres zonages:

Le territoire peut correspondre à un territoire de santé, un bassin de santé, une unité urbaine, un regroupement de communes, etc.

#### _Liste des attributs de la classe DivisionTerritoriale_

|**Nom**|**Description**|
|---|---|
|type : [1..1] Code [TRE-R201-TypeDivisionTerritoriale](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R201-TypeDivisionTerritoriale.html)|Le type de division territoriale peut être une commune, une région, un pays, un territoire de santé, etc. Les différents types de division territoriale sont notamment :<br>-Commune (France)<br>-Département (France)<br>-Région (France)<br>-Territoire de santé (France)<br>- Pays|
|code : [1..1] Code|Selon son type (commune, région, territoire de santé, etc.), code de la division territoriale. Les valeurs de ce code sont répertoriées dans les nomenclatures associées aux types de division territoriale, par exemple, les codes des communes (COG), les codes des régions (COG), les codes des territoires de santé définis par les ARS (loi HPST (Art. L. 1434-16. du code de la santé publique)), etc.|
|metadonnee : [1..1] Metadonnee|Informations relatives à la gestion des classes et des données.|

**_Table 39 Attributs de la classe "DivisionTerritoriale"_**

## **11.6 Classe "Horaire"**

La classe Horaire permet de décrire le planning d'activité.

#### _Liste des attributs de la classe Horaire_

|**Nom**|**Description**|
|---|---|
|typePlageHoraire : [0..1] Code [TRE-R252-TypeHoraire](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R252-TypeHoraire.html)|Un type de plage horaire apporte un contexte à la plage horaire définie par la suite. Un planning peut être constitué de plusieurs plages horaires du même type ou de type différent.|
|jourSemaine : [0..1] Numerique|Numéro du jour dans la semaine. D'après la norme ISO 8601, les jours de chaque semaine sont numérotés de 1 (un) pour le lundi, à 7 (sept) pour le dimanche.|
|heureDebut : [0..1] Heure|Heure de début de la plage horaire.|
|heureFin : [0..1] Heure|Heure de fin de la plage horaire.|
|debutDateEffective : [0..1] Date|Date effective de début de l'ouverture ou de la fermeture, cet attribut permet de caractériser les jours d'ouverture ou de fermeture exceptionnelle.|
|finDateEffective : [0..1] Date|Date effective de fin de l'ouverture ou de la fermeture, cet attribut permet de caractériser les jours d'ouverture ou de fermeture exceptionnelle.|
|metadonnee : [1..1] Metadonnee|Informations relatives à la gestion des classes et des données.|

**_Table 40 Attributs de la classe "Horaire"_**

## **11.7 Classe "Lieu"**

Informations relatives à une portion déterminée de l'espace, fixe ou mobile du point de vue de son affectation ou de ce qui s'y passe.

_Liste des attributs de la classe Lieu_

|**Nom**|**Description**|
|---|---|
|identifiant : [0..1] Identifiant|Identifiant fonctionnel du lieu.|
|nom : [0..1] Texte|Nom, exprimé sous la forme de texte, du lieu.|
|description : [0..1] Texte|Description textuelle du lieu, indiquant comment l'atteindre.|
|fonctionLieu : [0..1] Code [JDV-J198-FonctionLieu-ROR](https://interop.esante.gouv.fr/terminologies/ValueSet-JDV-J198-FonctionLieu-ROR.html)|La fonction correspond à la destination d'usage du lieu.|
|statut : [0..1] Code [TRE-R203-StatutLieu](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R203-StatutLieu.html)|Le statut indique si le lieu est opérationnel, fermé temporairement ou fermé définitivement.|
|communeCog : [1..1] Code [TRE-R13-CommuneOM](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R13-CommuneOM.html)|Code officiel géographique (COG) de la commune dans laquelle le lieu est situé.|
|adresse : [0..1] Adresse|Adresse géopostale du lieu.|
|coordonneeGeographique : [0..1] CoordonneeGeographique|Coordonnées géographiques du lieu.|
|telecommunication : [0..*] Telecommunication|Adresse(s) de télécommunication du lieu (numéro de téléphone, adresse email, URL, etc.).|
|metadonnee : [1..1] Metadonnee|Informations relatives à la gestion des classes et des données.|

**_Table 41 Attributs de la classe "Lieu"_**

## **11.8 Classe "Metadonnee"**

Cette classe contient les attributs inhérents et communs à toutes les classes du modèle. Elle permet aux applications externes consommatrices qui disposent d’une copie partielle des données du ROR de se synchroniser avec la description actualisée. Ces applications s’appuient en effet, sur les attributs de la classe Métadonnée pour identifier les créations, les modifications et les suppressions d’objets.

RG_EXP_020 : Afin de transmettre les métadonnées, les ROR DOIVENT tracer les dates et les heures (HH:MM:SS) de création, modification, de chaque donnée de leur structure interne. Ces informations permettent aux SI-Externes de se synchroniser.

_Liste des attributs de la classe Metadonnee_

|**Nom**|**Description**|
|---|---|
|dateCreation : [1..1] DateHeure|Date de création de la plus ancienne donnée de l'objet. RG_EXP_023 : Lors de la création d’un objet les attributs dateCreation et dateMiseJour des métadonnées DOIVENT être initiés avec la même valeur|
|dateMiseJour : [1..1] DateHeure|Date de mise à jour de la dernière donnée mise à jour de l'objet. RG_EXP_023 : Lors de la création d’un objet les attributs dateCreation et dateMiseJour des métadonnées DOIVENT être initiés avec la même valeur RG_EXP_024 : Si un attribut d’un objet est modifié (créé, modifié, supprimé) l'attribut dateMiseJour de ses métadonnées DOIT être actualisé. RG_EXP_025 : Si un objet est supprimé, l'attribut dateMiseJour de ses métadonnées et l’attribut dateMiseJour des métadonnées de l’objet de niveau supérieur doivent être actualisés. Exemple : la suppression d’une activité impacte les métadonnées de l’OI.|
|identifiant : [0..1] Identifiant|Identifiant technique qui permet à un consommateur de réconcilier les données dans un contexte spécifique d'échange.|
|commentaire : [0..1] Texte|Commentaire qui peut être associé à chaque objet.|
|regionSource : [0..1] Code [JDV-J237-RegionOM-ROR](https://interop.esante.gouv.fr/terminologies/ValueSet-JDV-J237-RegionOM-ROR.html)|Code région de la source de la donnée.|
|modeleSaisie : [0..1] Identifiant|Identifiant du modèle de saisie de l'objet (par exemple, identifiant permettant de retrouver le modèle de saisie d'une offre) ainsi que la version de ce modèle (au format : identifiant modèle version).|

**_Table 42 Attributs de la classe "Metadonnee"_**

## **11.9 Classe "Telecommunication"**

Adresse de télécommunication à laquelle une personne ou une organisation peut être contactée (téléphone, fax, e-mail, URL, etc.).

_Liste des attributs de la classe Telecommunication_

|**Nom**|**Description**|
|---|---|
|canal :[1..1] Code [TRE-R200-CanalCommunication](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R200-CanalCommunication.html)|Code spécifiant le canal ou la manière dont s'établit la communication (téléphone, e-mail, URL, etc.).|
|adresseTelecom : [1..1] Texte|Valeur de l'adresse de télécommunication dans le format induit par le canal de communication, par exemple un numéro de téléphone, une adresse de courrier électronique, une adresse URL, etc.|
|utilisation : [0..1] Texte|Précise l'utilisation du canal de communication (par exemple à des fins professionnelles, privées, etc.). Le niveau de confidentialité permet de définir le niveau de restriction de l'accès aux attributs de la classe Télécommunication.|
|niveauConfidentialite : [1..1] Code [TRE-R283-NiveauConfidentialite](https://interop.esante.gouv.fr/terminologies/CodeSystem-TRE-R283-NiveauConfidentialite.html)|RG_EXP_033 : Lors de la création d’un objet Télécommunication le niveau de confidentialité a la valeur par défaut "restreint". RG_EXP_034 : Le niveau de confidentialité de l’objet Télécommunication doit être plus restrictif ou égal au niveau de confidentialité de l’objet Contact auquel il est rattaché.|
|metadonnee : [1..1] Metadonnee|Informations relatives à la gestion des classes et des données.|

**_Table 43 Attributs de la classe "Telecommunication"_**

# **12. TYPES DE DONNEES**

Les types de données présentés dans cette section sont ceux utilisés pour typer les concepts présentés dans les sections précédentes.

Ces types sont mappés dans le schéma XML (XSD) avec les types intégrés défini par le World Wide Web Consortium (W3C).

Ex : le type "DateHeure" est mappé sur "dateTime", le type "Indicateur" est mappé sur "boolean"

Il existe deux familles de types de données:

- les types de données primitifs (ex : string, etc.);

- les types de données complexes qui sont des éléments réutilisables encapsulant des types de données primitifs; ils sont décrits dans cette partie.

**_Figure 11 Types de données_**

## **12.1 Classe "Code"**

Chaîne de caractères qui, pour des raisons de taille minimale ou d'indépendance au langage, représente ou remplace la valeur d'un texte ou d'une propriété. Equivalences: Coding (FHIR), CV (HL7 v3).

_Liste des attributs de la classe Code_

|**Nom**|**Description**|
|---|---|
|valeur : [1..1] string|Valeur du code exprimée sous la forme d'une chaîne de caractères. Equivalences: Coding.code (FHIR), ./code (HL7v3)|
|libelle : [0..1] string|Libellé correspondant à la valeur du code. Equivalences: display (FHIR), CV.displayName (HL7 v3)|
|langue : [0..1] string|Langue utilisée dans les textes du code.|
|identifiantNomenclature : [0..1] string|Identifiant de la nomenclature (ou liste de codes) à laquelle appartient le code. Cet identifiant peut être exprimé sous la forme d'un OID (Object IDentifier, identifiant universel représenté sous la forme d'une suite d'entiers (format URI)). Equivalences: Coding.system (FHIR), ./codeSystem (HL7 v3)|
|nomNomenclature : [0..1] string|Nom de la nomenclature (ou liste de codes) à laquelle appartient le code.|
|versionNomenclature : [0..1] string|Version de la nomenclature (ou liste de codes) à laquelle appartient le code. Equivalences: Coding.version(FHIR), ./codeSystemVersion (HL7 v3)|
|URINomenclature : [0..1] string|Adresse URI indiquant où la nomenclature (ou liste de codes) à laquelle appartient le code, peut être trouvée.|
|identifiantAgence : [0..1] string|Identifiant de l'agence maintenant la nomenclature (ou liste de codes) à laquelle appartient le code.|
|nomAgence : [0..1] string|Nom de l'agence maintenant la nomenclature (ou liste de codes) à laquelle appartient le code.|

**_Table 44 Attributs de la classe "Code"_**

## **12.2 Classe "Date"**

Une date est une représentation du calendrier grégorien dans diverses résolutions: année, mois, semaine, jour.

Des troncatures sont possibles telles que Année-Mois ou Année ou encore Mois-Jour, etc. Equivalence: "xs:date", "xs:gYearMonth", "xs:gYear", "xs:gMonth", "xs:gMonthDay",  "xs:gDay" (schéma XML).

_Liste des attributs de la classe Date_

|**Nom**|**Description**|
|---|---|
|valeur : [1..1] string|Valeur de la date.|
|format : [0..1] string|Format d'expression de Exemple format : AAAAMMJJ. la date.|

**_Table 45 Attributs de la classe "Date"_**

## **12.3 Classe "DateHeure"**

Date et heure de la journée (calendrier grégorien) utilisée en combinant année, mois, jour, heure, minute, seconde et fraction de secondes. Le type DateHeure est utilisé généralement pour l’horodatage.

Des troncatures sont possibles telles que Année-Mois ou Année-Mois-Jour ou encore Année-Mois-

Modèle d’exposition V3.0 ROR

Jour-Heure, etc.

Equivalence: "xs:dateTime", "xs:date", "xs:gYearMonth", "xs:gYear" (schéma XML).

_Liste des attributs de la classe DateHeure_

|**Nom**|**Description**|
|---|---|
|valeur : [1..1] string|Valeur de la date et heure.|
|format : [0..1] string|Format d'expression Exemple format : AAAAMMJJHH de MMSS. la date.|

|**_Table 46 Attributs de la classe "DateHeure"_**|
|---|

## **12.4 Classe "Heure"**

Heure de la journée utilisée dans diverses représentations : heures, minutes, secondes. Des troncatures sont possibles telles que Heure-Minute ou Minute-Seconde, etc. Equivalence: "xs:time" (schéma XML).

_Liste des attributs de la classe Heure_

|**Nom**|**Description**|
|---|---|
|valeur : [1..1] string|Valeur  du temps.|
|format : [0..1] string|Format d'expression de l'heure. Exemple format HHMM|

**_Table 47 Attributs de la classe "Heure"_**

## **12.5 Classe "Identifiant"**

Chaîne de caractères qui, associée à d'autres informations complémentaires, est utilisée pour identifier et différencier d'une manière unique, une instance d'un objet dans une structure de données, des autres objets de la même structure. Equivalences: Identifier (FHIR), II (HL7 v3).

_Liste des attributs de la classe Identifiant_

|**Nom**|**Description**|
|---|---|
|valeur : [1..1] string|Valeur de l'identifiant exprimée sous la forme d'une chaîne de caractères. Equivalences: Identifier.value (FHIR), II.extension ou II.root si le système indique OID or GUID (HL7v3).|
|typeIdentifiant : [0..1] Code [JDV-J236-TypeIdentifiant-ROR](https://interop.esante.gouv.fr/terminologies/ValueSet-JDV-J236-TypeIdentifiant-ROR.html)|Permet de préciser le type d’identifiant véhiculé. Equivalence : identifier.type (FHIR)|
|qualification : [0..1] string|Qualification de l'identifiant (définitif, temporaire, etc.). Equivalences: use (FHIR)|
|identifiantSysteme : [0..1] string|Identifiant du système auquel appartient l’identifiant. Equivalences: system (FHIR), II.root (HL7 v3)|
|nomSysteme : [0..1] string|Nom du système auquel appartient l’identifiant. Equivalences: system (FHIR), II.root (HL7 v3)|
|versionSysteme : [0..1] string|Version du système auquel appartient l’identifiant.|
|URISysteme : [0..1] string|Adresse URI indiquant où le système, auquel appartient l'identifiant, peut être trouvé.|
|identifiantAgence : [0..1] string|Identifiant de l'agence maintenant le système auquel appartient l'identifiant.|
|nomAgence : [0..1] string|Nom de l'agence maintenant le système auquel appartient l'identifiant.|

**_Table 48 Attributs de la classe "Identifiant"_**

## **12.6 Classe "Indicateur"**

Un indicateur est une propriété  décrivant l'état de l'objet auquel il s'applique.

Il peut prendre différents formats (texte, numérique, booleen):

- Numérique (1, 2, etc.)

- Texte (E(est), O(ouest), N(nord), S(sud), etc.)

- Boolean (True, False), etc.

_Liste des attributs de la classe Indicateur_

|**Nom**|**Description**|
|---|---|
|valeur : [1..1] string|Valeur de l'indicateur.|
|format : [0..1] string|Indique si la valeur est numérique, textuel ou binaire.|

## **12.7 Classe "Mesure"**

Valeur numérique déterminée par la mesure d'un objet associée à une unité de mesure spécifique. Le type "Mesure" est utilisé pour représenter une dimension physique d’un objet.

_Liste des attributs de la classe Mesure_

|**Nom**|**Description**|
|---|---|
|valeur : [1..1] integer|Valeur numérique déterminée par la mesure d'un objet|
|uniteMesure : [1..1] Terminologie UCUM|Unité de mesure (mètre, pouce, etc.) utilisée. Elle est exprimée sous la forme d'un code, selon la norme NF EN ISO 80000-1, Grandeurs et unités.|

|**_Table 50 Attributs de la classe "Mesure"_**|
|---|

## **12.8 Classe "Montant"**

Nombre d'unités monétaires exprimées explicitement ou implicitement dans une devise.

_Liste des attributs de la classe Montant_

|**Nom**|**Description**|
|---|---|
|valeur : [1..1] Numerique|Valeur exprimée sous la forme d'une chaîne de caractères.|
|devise : [1..1] Terminologie FHIR Currencies|Identifiant de la devise (euro, dollar, etc.).|

**_Table 51 Attributs de la classe "Montant"_**

## **12.9 Classe "Numerique"**

Valeur résultant d'un calcul, comptage ou séquencement.

_Liste des attributs de la classe Numerique_

|**Nom**|**Description**|
|---|---|
|valeur : [1..1] string|Valeur se traduisant en nombre.|
|format : [0..1] string|Indique si la valeur numérique est un nombre entier, décimal, nombre réel.|

**_Table 52 Attributs de la classe "Numerique"_**

## **12.10 Classe "ObjetBinaire"**

Ensemble de suites d’octets binaires de longueur finie.

Termes secondaires:

- Graphique,

- Image,

- Son,

- Video.

#### _Liste des attributs de la classe ObjetBinaire_

|**Nom**|**Description**|
|---|---|
|valeur : [1..1] string|Un ensemble de séquences de longueur finie d'octets binaires.|
|format : [0..1] string|Le format du contenu binaire.|
|mime : [0..1] string|Le type de l'objet binaire mime.|
|encodage : [0..1] string|Indique l'algorithme de décodage de l'objet binaire.|
|URI : [0..1] string|L'adresse URL (Uniform Resource Identifier) où l'objet binaire est localisé.|
|nomFichier : [0..1] string|Le nom de fichier de l'objet binaire.|

#### **_Table 53 Attributs de la classe "ObjetBinaire"_**

## **12.11 Classe "Texte"**

Chaine de caractères (string) pouvant être enrichie de la langue dans laquelle elle est exprimée.

_Liste des attributs de la classe Texte_

|**Nom**|**Description**|
|---|---|
|valeur : [1..1] string|Valeur exprimée sous la forme d'une chaîne de caractères.|
|langue : [0..1] string|Langue utilisée dans le texte.|

|**_Table 54 Attributs de la classe "Texte"_**|
|---|

Modèle d’exposition V3.0 ROR

# **13. REGLES DE GESTION QUI ACCOMPAGNENT LE MODELE**

## **13.1 Règles de la partie Structure**

|**N° Règle**|**Description de la règle**|
|---|---|
|RG_EXP_002|Si un élément obligatoire dans la structure du flux d’échange n’est pas renseigné dans le ROR interrogé, alors l’instance de l’entité à laquelle appartient cet élément NE DOIT PAS être transmise. Les instances des entités hiérarchiquement inférieures NE DOIVENT PAS être transmises non plus. Les instances des entités hiérarchiquement supérieures DOIVENT être transmises en respectant la condition ci-dessus.|
|RG_EXP_004|L’«idNat_Struct » qui est l'identification nationale de l'Entité Juridique dans le cadre de l'interopérabilité DOIT être renseigné en priorité avec le numéro FINESS si l’établissement est immatriculé dans FINESS.|
|RG_EXP_037|Lorsque « numEJ_RPPS_ADELI_Rang » (qui correspond au RPPSrang ou ADELIrang pour les cabinets libéraux hors société d’exercice) est renseigné, il doit être utilisé pour la construction IdNat_Struct.|
|RG_EXP_037|Lorsque « numEJ_RPPS_ADELI_Rang » (qui correspond au RPPSrang ou ADELIrang pour les cabinets libéraux hors société d’exercice) est renseigné, il doit être utilisé pour la construction IdNat_Struct.|
|RG_EXP_043|<sup>La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné,</sup> sinon elle n'est jamais renseignée.|
|RG_EXP_044|Lorsqu'un niveau de structure ou d'organisation est fermée tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermées avec le même type et la même date de fermeture et le cas échéant avec la même date de réouverture prévisionnelle.|
|RG_EXP_043|<sup>La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné,</sup> sinon elle n'est jamais renseignée.|
|RG_EXP_044|Lorsqu'un niveau de structure ou d'organisation est fermée tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermées avec le même type et la même date de fermeture et le cas échéant avec la même date de réouverture prévisionnelle.|
|RG_EXP_005|L’ « idNat_Struct » qui est l'identification nationale de l'Entité Géographique dans le cadre de l'interopérabilité DOIT être renseigné en priorité avec le numéro FINESS si l’établissement est immatriculé dans FINESS.|
|RG_EXP_038|Lorsque « numEG_RPPS_ADELI_Rang » (qui correspond au RPPSrang ou ADELIrang pour les cabinets libéraux hors société d’exercice) est renseigné, il doit être utilisé pour la construction IdNat_Struct.|
|RG_EXP_038|Lorsque « numEG_RPPS_ADELI_Rang » (qui correspond au RPPSrang ou ADELIrang pour les cabinets libéraux hors société d’exercice) est renseigné, il doit être utilisé pour la construction IdNat_Struct.|
|RG_EXP_006|<sup>Les contacts d'une EG PEUVENT contenir les contacts du directeur et de la cellule</sup> d’alerte.|
|RG_EXP_030|<sup>L’attribut territoire santé est obligatoirement une division territoriale de type «</sup> Territoire de Santé ».|
|RG_EXP_003|Si la date de fermeture transmise est la date de fermeture définitive, alors l’attribut typeFermeture DOIT être renseigné avec l’OID correspondant au code DEF issus du référentiel FINESS.|
|RG_EXP_043|<sup>La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné,</sup> sinon elle n'est jamais renseignée.|
|RG_EXP_044|Lorsqu'un niveau de structure ou d'organisation est fermée tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermées avec le même type et la même date de fermeture et le cas échéant avec la même date de réouverture prévisionnelle.|
|RG_EXP_043|<sup>La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné,</sup> sinon elle n'est jamais renseignée.|
|RG_EXP_044|Lorsqu'un niveau de structure ou d'organisation est fermée tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermées avec le meme type et la même date de fermeture et le cas échéant avec la même date de réouverture prévisionnelle.|

#### **_Table 55 Structure_**

## **13.2 Règles de la partie Tarif**

|**N° Règle**|**Description de la règle**|
|---|---|
|RG_EXP_002|Si un élément obligatoire dans la structure du flux d’échange n’est pas renseigné dans le ROR interrogé, alors l’instance de l’entité à laquelle appartient cet élément NE DOIT PAS être transmise. Les instances des entités hiérarchiquement inférieures NE DOIVENT PAS être transmises non plus. Les instances des entités hiérarchiquement supérieures DOIVENT être transmises en respectant la condition ci-dessus.|
|RG_EXP_026|Un seul tarif de type « Forfait socle hébergement » PEUT être instancié pour chaque combinaison des valeurs des attributs « tarifMoin60Ans », « typeHabitation », « temporalitéAcceuil », « ConditionTarifaire » pour une même EG.|
|RG_EXP_027|Pour les tarifs de type différent de « Forfait socle hébergement », alors un seul montant PEUT être exposé pour chaque combinaison des valeurs des attributs autre que le montant, pour une même EG.|
|RG_EXP_026|Un seul tarif de type « Forfait socle hébergement » PEUT être instancié pour chaque combinaison des valeurs des attributs « tarifMoin60Ans », « typeHabitation », « temporalitéAcceuil », « ConditionTarifaire » pour une même EG.|
|RG_EXP_036|<sup>Les attributs de la classe « Tarif Prestation Supplémentaire » DOIVENT être</sup> mutuellement exclusifs.|
|RG_EXP_029|<sup>L'attribut "type habitation" d'un tarif de type "supplément tarif hébergement" DOIT</sup> prendre la valeur "chambre simple".|

|**_Table 56 Tarif_**|
|---|

## **13.3 Règles de la partie Organisation**

|**N° Règle**|**Description de la règle**|
|---|---|
|RG_EXP_002|Si un élément obligatoire dans la structure du flux d’échange n’est pas renseigné dans le ROR interrogé, alors l’instance de l’entité à laquelle appartient cet élément NE DOIT PAS être transmise. Les instances des entités hiérarchiquement inférieures NE DOIVENT PAS être transmises non plus. Les instances des entités hiérarchiquement supérieures DOIVENT être transmises en respectant la condition ci-dessus.|
|RG_EXP_013|En fonction du type d’OI, les contacts PEUVENT inclure le contact du responsable du pôle, le contact du responsable du service, le contact du responsable de l’unité, le contact du secrétariat, le contact du secrétariat de permanence…|
|RG_EXP_043|<sup>La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné,</sup> sinon elle n'est jamais renseignée.|
|RG_EXP_044|Lorsqu'un niveau de structure ou d'organisation est fermée tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermées avec le même type et la même date de fermeture et le cas échéant avec la même date de réouverture prévisionnelle.|
|RG_EXP_043|<sup>La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné,</sup> sinon elle n'est jamais renseignée.|
|RG_EXP_044|Lorsqu'un niveau de structure ou d'organisation est fermée tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermées avec le même type et la même date de fermeture et le cas échéant avec la même date de réouverture prévisionnelle.|
|RG_EXP_045|<sup>La date de réouverture peut être renseignée lorsque le type de fermeture est</sup> renseigné avec "Fermeture temporaire" sinon elle n'est jamais renseignée.|
|RG_EXP_044|Lorsqu'un niveau de structure ou d'organisation est fermée tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermées avec le meme type et la même date de fermeture et le cas échéant avec la meme date de réouverture prévisionnelle.|
|RG_EXP_045|<sup>La date de réouverture peut etre renseignée lorsque le type de fermeture est</sup> renseigné avec "Fermeture temporaire" sinon elle n'est jamais renseignée.|
|RG_EXP_046|La date est remise à nulle lorsque l'offre est ouverte de nouveau.|

## **13.4 Règles de la partie Offre Opérationnelle**

|**N° Règle**|**Description de la règle**|
|---|---|
|RG_EXP_002|Si un élément obligatoire dans la structure du flux d’échange n’est pas renseigné dans le ROR interrogé, alors l’instance de l’entité à laquelle appartient cet élément NE DOIT PAS être transmise. Les instances des entités hiérarchiquement inférieures NE DOIVENT PAS être transmises non plus. Les instances des entités hiérarchiquement supérieures DOIVENT être transmises en respectant la condition ci-dessus.|
|RG_EXP_042|<sup>Pour un transfert d’une offre d’un établissement vers un autre, l’identifiant de l'offre</sup> transférée NE DOIT PAS changer|
|RG_EXP_007|<sup>La famille d’activité DOIT être renseignée pour toute instance de la classe Activité</sup> Opérationnelle liée à une offre dont le champ d’activité « médico-social ».|
|RG_EXP_008|<sup>Si le champ d’activité de l’offre est « médico-social » le public pris en charge DOIT</sup> être renseigné dans l’instance de la classe Patientèle.|
|RG_EXP_010|<sup>Une offre DOIT être renseignée avec un et un seul champ d’activité qui est</sup> invariable.|
|RG_EXP_011|Une offre opérationnelle DOIT être renseignée avec un seul mode de prise en charge qui est invariable. Le changement de mode de prise en charge implique la création d’une nouvelle offre.|
|RG_EXP_035|<sup>Lors de la diffusion d’une unité élémentaire l’indicateur Unité Sensible a la valeur</sup> par défaut : 0 = L'unité ne revêt pas de caractère sensible et confidentiel|
|RG_EXP_039|Dans une unité sensible, le niveau de confidentialité des contacts doit être positionné à la valeur « très restreint »|
|RG_EXP_009|<sup>Chaque instance de la zone d’intervention DOIT être composée par des instances</sup> de DivisionTerritoriale de type Commune.|
|RG_EXP_043|<sup>La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné,</sup> sinon elle n'est jamais renseignée.|
|RG_EXP_044|Lorsqu'un niveau de structure ou d'organisation est fermée tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermées avec le même type et la même date de fermeture et le cas échéant avec la même date de réouverture prévisionnelle.|
|RG_EXP_045|<sup>La date de réouverture peut être renseignée lorsque le type de fermeture est</sup> renseigné avec "Fermeture temporaire" sinon elle n'est jamais renseignée.|
|RG_EXP_047|<sup>Lorsqu'une offre opérationnelle est fermée, les ressources de type statutCapacite</sup> "disponible" doivent être à 0.|
|RG_EXP_043|<sup>La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné,</sup> sinon elle n'est jamais renseignée.|
|RG_EXP_044|Lorsqu'un niveau de structure ou d'organisation est fermée tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermées avec le même type et la même date de fermeture et le cas échéant avec la même date de réouverture prévisionnelle.|
|RG_EXP_044|Lorsqu'un niveau de structure ou d'organisation est fermée tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermées avec le même type et la même date de fermeture et le cas échéant avec la même date de réouverture prévisionnelle.|
|RG_EXP_045|<sup>La date de réouverture peut être renseignée lorsque le type de fermeture est</sup> renseigné avec "Fermeture temporaire" sinon elle n'est jamais renseignée.|
|RG_EXP_046|La date est remise à nulle lorsque l'offre est ouverte de nouveau.|
|RG_EXP_014|<sup>Les horaires transmis DOIVENT inclure au minimum une période (date début, date</sup> fin) ou un jour de semaine.|
|RG_EXP_015|Si les horaires sont transmis sans période (date début, date fin), ils s'appliquent aux jours de la semaine à partir du jour de la semaine de lecture de l’information dans le ROR. Il s’agit d’information sur une semaine glissante : jour x (semaine n) à jour y (semaine n+1)|
|RG_EXP_016 RG_EXP_017 si la période est en cours ou à venir lors de la lecture de l’information dans le ROR.|<sup>Les horaires de jours de semaine RESTENT les horaires de référence semaine</sup> après semaine TANT QUE aucun nouvel horaire n’est récupéré d’un ROR.|
|RG_EXP_018|<sup>Les horaires portant sur une période échue (date de fin antérieur à la date du jour)</sup> lors de la lecture de l’information dans le ROR NE DOIVENT PAS être transmis.|
|RG_EXP_008|<sup>Si le champ d’activité de l’offre est « médico-social » le public pris en charge DOIT</sup> être renseigné dans l’instance de la classe Patientèle.|
|RG_EXP_048|Uniquement les valeurs de Mesure/uniteMesure suivantes sont applicables :<br>- a<br>- année<br>- mo<br>- mois<br>- wk<br>- semaine<br>- d<br>- jour|
|RG_EXP_048|Uniquement les valeurs de Mesure/uniteMesure suivantes sont applicables :<br>- a<br>- année<br>- mo<br>- mois<br>- wk<br>- semaine<br>- d<br>- jour|
|RG_EXP_007|<sup>La famille d’activité DOIT être renseignée pour toute instance de la classe Activité</sup> Opérationnelle liée à une offre dont le champ d’activité « médico-social ».|

## **13.5 Règles de la partie Ressources Opérationnelles**

|**N° Règle**|**Description de la règle**|
|---|---|
|RG_EXP_002|Si un élément obligatoire dans la structure du flux d’échange n’est pas renseigné dans le ROR interrogé, alors l’instance de l’entité à laquelle appartient cet élément NE DOIT PAS être transmise. Les instances des entités hiérarchiquement inférieures NE DOIVENT PAS être transmises non plus. Les instances des entités hiérarchiquement supérieures DOIVENT être transmises en respectant la condition ci-dessus.|
|RG_EXP_047|<sup>Lorsqu'une offre opérationnelle est fermée, les ressources de type statutCapacite</sup> "disponible" doivent être à 0.|
|RG_EXP_047|<sup>Lorsqu'une offre opérationnelle est fermée, les ressources de type statutCapacite</sup> "disponible" doivent être à 0.|

## **13.6 Règles de la partie Professionnel Ressource**

|**N° Règle**|**Description de la règle**|
|---|---|
|RG_EXP_002|Si un élément obligatoire dans la structure du flux d’échange n’est pas renseigné dans le ROR interrogé, alors l’instance de l’entité à laquelle appartient cet élément NE DOIT PAS être transmise. Les instances des entités hiérarchiquement inférieures NE DOIVENT PAS être transmises non plus. Les instances des entités hiérarchiquement supérieures DOIVENT être transmises en respectant la condition ci-dessus.|
|RG_EXP_031|Les informations décrivant le «Professionnel», l’«Exercice professionnel» et les «Savoir faire» sont issues des référentiels nationaux : le RPPS et le répertoire ADELI. Ces données NE DOIVENT PAS être modifiées.|
|RG_EXP_031|Les informations décrivant le «Professionnel», l’«Exercice professionnel» et les «Savoir-faire» sont issues des référentiels nationaux : le RPPS et le répertoire ADELI. Ces données NE DOIVENT PAS être modifiées.|
|RG_EXP_030|L’« idNat_PS » qui est l'identifiant national principal du professionnel dans le cadre de l’interopérabilité DOIT être renseigné en priorité avec le numéro RPPS du professionnel s’il existe ou sinon par son numéro ADELI.|
|RG_EXP_031|Les informations décrivant le «Professionnel», l’«Exercice professionnel» et les «Savoir faire» sont issues des référentiels nationaux : le RPPS et le répertoire ADELI. Ces données NE DOIVENT PAS être modifiées.|
|RG_EXP_031|Les informations décrivant le «Professionnel», l’«Exercice professionnel» et les «Savoir faire» sont issues des référentiels nationaux : le RPPS et le répertoire ADELI. Ces données NE DOIVENT PAS être modifiées.|
|RG_EXP_049|Uniquement les valeurs de Horaire/typeHoraire suivantes sont applicables :<br>- 03 – Horaire de garde<br>- 06 – Horaire de consultation sans RDV<br>- 07 – Horaire de consultation sur RDV|

**_Table 60 Professionnel Ressource_**

## **13.7 Règles de la partie Classes communes**

|**N° Règle**|**Description de la règle**|
|---|---|
|RG_EXP_040|<sup>Si l’attribut natureContact est renseigné dans l’objet Contact, alors il ne doit pas y</sup> avoir de nom de contact ni de fonctionContact.|
|RG_EXP_041|<sup>Si l’attribut fonctionContact est renseigné dans l’objet Contact, alors il doit y avoir</sup> un nom de contact et il ne doit pas y avoir de natureContact.|
|RG_EXP_040|Si l’attribut natureContact est renseigné dans l’objet Contact, alors il ne doit pas y avoir de nom de contact ni de fonctionContact.|
|RG_EXP_041|<sup>Si l’attribut fonctionContact est renseigné dans l’objet Contact, alors il doit y avoir</sup> un nom de contact et il ne doit pas y avoir de natureContact.|
|RG_EXP_040|<sup>Si l’attribut natureContact est renseigné dans l’objet Contact, alors il ne doit pas y</sup> avoir de nom de contact ni de fonctionContact.|
|RG_EXP_041|<sup>Si l’attribut fonctionContact est renseigné dans l’objet Contact, alors il doit y avoir</sup> un nom de contact et il ne doit pas y avoir de natureContact.|
|RG_EXP_032|<sup>Lors de la création d’un objet Contact le niveau de confidentialité a la valeur par</sup> défaut "restreint".|
|RG_EXP_034|<sup>Le niveau de confidentialité de l’objet Télécommunication doit être plus restrictif ou</sup> égal au niveau de confidentialité de l’objet Contact auquel il est rattaché.|
|RG_EXP_039|<sup>Dans une unité sensible, le niveau de confidentialité des contacts doit être</sup> positionné à la valeur « très restreint »|
|RG_EXP_020|Afin de transmettre les métadonnées, les ROR DOIVENT tracer les dates et les heures (HH:MM:SS) de création, modification, de chaque donnée de leur structure interne. Ces informations permettent aux SI-Externes de se synchroniser.|
|RG_EXP_023|<sup>Lors de la création d’un objet les attributs dateCreation et dateMiseJour des</sup> métadonnées DOIVENT être initiés avec la même valeur|
|RG_EXP_023|<sup>Lors de la création d’un objet les attributs dateCreation et dateMiseJour des</sup> métadonnées DOIVENT être initiés avec la même valeur|
|RG_EXP_024|<sup>Si un attribut d’un objet est modifié (créé, modifié, supprimé) l'attribut dateMiseJour</sup> de ses métadonnées DOIT être actualisé.|
|RG_EXP_025|Si un objet est supprimé, l'attribut dateMiseJour de ses métadonnées et l’attribut dateMiseJour des métadonnées de l’objet de niveau supérieur doivent être actualisés. Exemple : la suppression d’une activité impacte les métadonnées de l’OI.|
|RG_EXP_033|<sup>Lors de la création d’un objet Télécommunication le niveau de confidentialité a la</sup> valeur par défaut "restreint".|
|RG_EXP_034|<sup>Le niveau de confidentialité de l’objet Télécommunication doit être plus restrictif ou</sup> égal au niveau de confidentialité de l’objet Contact auquel il est rattaché. **_Table 61 Classes communes_**|

