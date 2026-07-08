# Structure - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Structure

Cette section est transversale : elle intéresse les professionnels de santé (compréhension de la structure des établissements) et les développeurs (implémentation des modèles logiques).

La section **Structure** décrit les organismes du domaine sanitaire, médico-social et social. Elle regroupe les deux classes fondamentales qui caractérisent l'identité d'un établissement dans le ROR.

Les structures peuvent être immatriculées dans :

* **FINESS** (établissements sanitaires, sociaux et médico-sociaux),
* **RPPS / ADELI** (professionnels de santé exerçant en cabinet libéral),
* **SIRENE** (autres types de structures).

### Données pivots

Les données pivots de la section Structure permettent aux systèmes externes de se synchroniser avec le ROR :

* L'**idNat_Struct** (numéro FINESS juridique, numéro SIREN, etc.) identifie l'Entité Juridique.
* L'**idNat_Struct** (numéro FINESS géographique, numéro SIRET, etc.) identifie l'Entité Géographique.

Ces données pivots ne sont pas modifiables après création.

-------

### Diagramme

classDiagram namespace MOS["MOS (héritage)"] { class MOS_EJ["EntiteJuridique"] class MOS_EG["EntiteGeographique"] } class EJ["ROREntiteJuridique"] { idNatStruct : Identifier [1..1] numFINESS : Identifier [0..1] numSIREN : Identifier [0..1] raisonSociale : string [1..1] complementRaisonSociale : string [0..1] statutJuridique : Coding [1..1] agregatStatutJuridiqueNiv2 : Coding [0..1] adresseEJ : Address [0..1] contact : Contact [0..*] dateCreation : date [0..1] dateFermeture : date [0..1] typeFermeture : Coding [0..1] metadonnee : RORMetadonnee [1..1] } class EG["ROREntiteGeographique"] { idNatStruct : Identifier [1..1] numFINESS : Identifier [0..1] raisonSociale : string [1..1] categorieEtablissement : Coding [0..*] modaliteParticipationSPH : Coding [0..1] accessibiliteLieu : Coding [0..*] niveauRecoursORSAN : Coding [0..*] aideFinanciere : Coding [0..*] typeFermeture : Coding [0..1] territoireSante : Identifier [0..1] dateCreation : date [0..1] dateFermeture : date [0..1] metadonnee : RORMetadonnee [1..1] } namespace Organisation["Organisation"] { class OI["ROROrganisationInterne"] } namespace TarifPkg["Tarif"] { class Tarif["RORTarif"] { <<abstract>> } } EJ --|> MOS_EJ EG --|> MOS_EG EJ "1" --> "1..*" EG EG "1" --> "0..*" OI EG "1" --> "0..*" Tarif click EJ href "StructureDefinition-ror-entite-juridique.html" "ROREntiteJuridique" click EG href "StructureDefinition-ror-entite-geographique.html" "ROREntiteGeographique" click OI href "StructureDefinition-ror-organisation-interne.html" "ROROrganisationInterne" click Tarif href "StructureDefinition-ror-tarif.html" "RORTarif" cssClass "MOS_EJ,MOS_EG" mosClass classDef mosClass fill:#D3D3D3,stroke:#888,color:#333

-------

### Modèles logiques

| | | |
| :--- | :--- | :--- |
| [ROREntiteJuridique](StructureDefinition-ror-entite-juridique.md) | EntiteJuridique | Personne morale détentrice de droits (autorisations, agréments, conventions) |
| [ROREntiteGeographique](StructureDefinition-ror-entite-geographique.md) | EntiteGeographique | Implantation géographique d'une entité juridique (établissement) |

-------

### Règles générales de transmission

* `RG_EXP_002` : Si un élément obligatoire dans la structure du flux d'échange n'est pas renseigné dans le ROR interrogé, alors l'instance de l'entité à laquelle appartient cet élément NE DOIT PAS être transmise. Les instances des entités hiérarchiquement inférieures NE DOIVENT PAS être transmises non plus. Les instances des entités hiérarchiquement supérieures DOIVENT être transmises en respectant la condition ci-dessus.

-------

### ROREntiteJuridique

L'**Entité Juridique** (EJ) correspond à la notion de personne morale :

* Pour les établissements FINESS : une EJ détient des droits lui permettant d'exercer ses activités dans des entités géographiques.
* Pour les structures dans RPPS/ADELI hors FINESS : l'EJ représente la personne morale qui porte la responsabilité d'exercice.
* Pour les autres structures : une EJ est une personne morale inscrite dans le SIRENE.

**Règles de gestion :**

* `RG_EXP_004` : L'`idNat_Struct` DOIT être renseigné en priorité avec le numéro FINESS si l'établissement est immatriculé dans FINESS.
* `RG_EXP_037` : Lorsque `numEJ_RPPS_ADELI_Rang` (RPPSrang ou ADELIrang pour les cabinets libéraux hors société d'exercice) est renseigné, il doit être utilisé pour la construction de l'`idNat_Struct`.
* `RG_EXP_043` : La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné, sinon elle n'est jamais renseignée.
* `RG_EXP_044` : Lorsqu'un niveau de structure ou d'organisation est fermé, tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermés avec le même type, la même date de fermeture et, le cas échéant, la même date de réouverture prévisionnelle.
* `RG_EXP_045` : La date de réouverture peut être renseignée lorsque le type de fermeture est « Fermeture temporaire », sinon elle n'est jamais renseignée.

-------

### ROREntiteGeographique

L'**Entité Géographique** (EG) correspond à la notion d'établissement d'une entité juridique :

* Pour les entités FINESS : l'EG correspond à une implantation géographique caractérisée par une catégorie d'établissement.
* Pour les entités RPPS/ADELI hors FINESS : l'EG correspond à l'implantation géographique où le professionnel exerce.

**Règles de gestion :**

* `RG_EXP_005` : L'`idNat_Struct` de l'EG DOIT être renseigné en priorité avec le numéro FINESS si l'établissement est immatriculé dans FINESS.
* `RG_EXP_006` : Les contacts d'une EG PEUVENT contenir les contacts du directeur et de la cellule d'alerte.
* `RG_EXP_030` : L'attribut `territoireSante` est obligatoirement une division territoriale de type « Territoire de Santé ».
* `RG_EXP_038` : Lorsque `numEG_RPPS_ADELI_Rang` est renseigné, il doit être utilisé pour la construction de l'`idNat_Struct`.
* `RG_EXP_003` : Si la date de fermeture transmise est la date de fermeture définitive, alors `typeFermeture` DOIT être renseigné avec l'OID correspondant au code DEF issu du référentiel FINESS.
* `RG_EXP_043` : La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné, sinon elle n'est jamais renseignée.
* `RG_EXP_044` : Lorsqu'un niveau de structure ou d'organisation est fermé, tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermés avec le même type, la même date de fermeture et, le cas échéant, la même date de réouverture prévisionnelle.
* `RG_EXP_045` : La date de réouverture peut être renseignée lorsque le type de fermeture est « Fermeture temporaire », sinon elle n'est jamais renseignée.

