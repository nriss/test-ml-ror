# Organisation - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Organisation

Cette section est transversale : elle décrit l'organisation interne des établissements, utile pour les professionnels de santé (compréhension des structures de soins) et pour les développeurs (implémentation des modèles logiques).

La section **Organisation** décrit l'organisation interne d'un établissement. Elle permet de représenter les pôles, services, unités fonctionnelles et autres organisations internes qui structurent les établissements de santé.

### Donnée pivot

L'identifiant des organisations internes est généré par les ROR. Lorsqu'il est généré par une instance régionale, il est de la forme `code INSEE régional / code interne ROR`. Cet identifiant est unique et pérenne pour toute la France.

-------

### Diagramme

classDiagram class OI["ROROrganisationInterne"] { <<abstract>> identifiantOI : Identifier [1..1] nomOI : string [1..1] typeOI : Coding [1..1] contact : Contact [0..*] boiteLettreMSS : BoiteLettreMSS [0..*] dateOuverture : date [0..1] dateFermeture : date [0..1] typeFermeture : Coding [0..1] datePrevisionnelleReouverture : date [0..1] metadonnee : RORMetadonnee [1..1] } class Pole["RORPole"] class SI["RORStructureInterne"] class UF["RORUniteFonctionnelle"] OI <|-- Pole OI <|-- SI OI <|-- UF OI "*" --> "*" OI : contient namespace Structure["Structure"] { class EG["ROREntiteGeographique"] } namespace OffreOperationnelle["Offre Opérationnelle"] { class Offre["ROROffreOperationnelle"] } OI "*" --> "1..*" EG : rattachée à OI "0..1" --> "1..*" Offre : porte click OI href "StructureDefinition-ror-organisation-interne.html" "ROROrganisationInterne" click Pole href "StructureDefinition-ror-pole.html" "RORPole" click SI href "StructureDefinition-ror-structure-interne.html" "RORStructureInterne" click UF href "StructureDefinition-ror-unite-fonctionnelle.html" "RORUniteFonctionnelle" click EG href "StructureDefinition-ror-entite-geographique.html" "ROREntiteGeographique" click Offre href "StructureDefinition-ror-offre-operationnelle.html" "ROROffreOperationnelle"

-------

### Modèles logiques

| | | |
| :--- | :--- | :--- |
| [ROROrganisationInterne](StructureDefinition-ror-organisation-interne.md) | OrganisationInterne | Organisation opérationnelle au sein d'un établissement |
| [RORPole](StructureDefinition-ror-pole.md) | PoleActivite | Pôle d'activité regroupant des services |
| [RORStructureInterne](StructureDefinition-ror-structure-interne.md) | StructureInterne | Structure interne de l'établissement |
| [RORUniteFonctionnelle](StructureDefinition-ror-unite-fonctionnelle.md) | UniteFonctionnelle | Unité fonctionnelle de soins |

-------

### ROROrganisationInterne

L'**Organisation Interne** (OI) représente l'organisation opérationnelle au sein d'un établissement : pôles, services, unités fonctionnelles, équipes de soins, etc. Elle est l'entité à laquelle sont rattachées les offres opérationnelles.

La hiérarchie organisationnelle dans le ROR est la suivante :

```
EntiteGeographique
  └── OrganisationInterne (typeOI = Pôle)
        └── OrganisationInterne (typeOI = Service / Unité fonctionnelle)

```

Les classes `RORPole`, `RORStructureInterne` et `RORUniteFonctionnelle` sont des spécialisations de `ROROrganisationInterne` héritées du MOS, permettant de typer sémantiquement le niveau hiérarchique.

**Règles de gestion :**

* `RG_EXP_013` : En fonction du type d'OI, les contacts PEUVENT inclure le contact du responsable du pôle, le contact du responsable du service, le contact du responsable de l'unité, le contact du secrétariat, le contact du secrétariat de permanence…
* `RG_EXP_043` : La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné, sinon elle n'est jamais renseignée.
* `RG_EXP_044` : Lorsqu'un niveau de structure ou d'organisation est fermé, tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermés avec le même type, la même date de fermeture et, le cas échéant, la même date de réouverture prévisionnelle.
* `RG_EXP_045` : La date de réouverture peut être renseignée lorsque le type de fermeture est « Fermeture temporaire », sinon elle n'est jamais renseignée.

-------

### RORPole

-------

### RORStructureInterne

-------

### RORUniteFonctionnelle

