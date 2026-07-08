# Tarif - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Tarif

Cette section est transversale : les tarifs intéressent les patients et les professionnels de santé pour l'orientation, et les développeurs pour l'implémentation.

La section **Tarif** décrit les prix des prestations et services fournis par un établissement. Les tarifs sont rattachés à l'Entité Géographique. Seuls les tarifs déterminants pour l'orientation d'un patient sont décrits dans le ROR.

La classe `RORTarif` est une **classe abstraite** dont héritent les différents types de tarifs spécialisés.

-------

### Diagramme

🔍+
🔍−
↻
⛶

 

classDiagram class Tarif["RORTarif"] { <<abstract>> typeTarif : Coding [1..1] montantTarif : Money [1..1] unitePrix : Coding [1..1] dateDebutValiditeTarif : date [0..1] metadonnee : RORMetadonnee [1..1] } class FSH["RORForfaitSocleHebergement"] { prestationsNonObligatoiresIncluses : Coding [0..*] autresPrestationsNonObligatoiresIncluses : string [0..*] tarifMoins60Ans : boolean [1..1] typeHabitation : Coding [1..1] conditionTarifaire : Coding [0..1] temporaliteAccueil : Coding [1..1] } class TAJ["RORTarifAccueilDeJour"] { conditionTarifaire : Coding [0..1] } class TD["RORTarifDependance"] { groupeTarifaireDependance : Coding [1..1] temporaliteAccueil : Coding [1..1] } class TAH["RORTarifAidesHumaines"] { nomTarifAidesHumaines : string [0..1] conditionTarifaire : Coding [0..1] modeGestion : Coding [1..1] } class TPS["RORTarifPrestationSupplementaire"] { nomAutrePrestationSupp : string [1..1] nomPrestationSupp : Coding [0..1] } class STH["RORSupplementTarifHebergement"] { typeHabitation : Coding [1..1] } class TPR["RORTarifPortageRepas"] { conditionTarifaire : Coding [0..1] nomTarifPortageRepas : string [0..1] } Tarif <|-- FSH Tarif <|-- TAJ Tarif <|-- TD Tarif <|-- TAH Tarif <|-- TPS Tarif <|-- STH Tarif <|-- TPR click Tarif href "StructureDefinition-ror-tarif.html" "RORTarif" click FSH href "StructureDefinition-ror-forfait-socle-hebergement.html" "RORForfaitSocleHebergement" click TAJ href "StructureDefinition-ror-tarif-accueil-de-jour.html" "RORTarifAccueilDeJour" click TD href "StructureDefinition-ror-tarif-dependance.html" "RORTarifDependance" click TAH href "StructureDefinition-ror-tarif-aides-humaines.html" "RORTarifAidesHumaines" click TPS href "StructureDefinition-ror-tarif-prestation-supplementaire.html" "RORTarifPrestationSupplementaire" click STH href "StructureDefinition-ror-supplement-tarif-hebergement.html" "RORSupplementTarifHebergement" click TPR href "StructureDefinition-ror-tarif-portage-repas.html" "RORTarifPortageRepas"

 

-------

### Modèles logiques

| | | |
| :--- | :--- | :--- |
| [RORTarif](StructureDefinition-ror-tarif.md) | Base (abstrait) | Classe abstraite commune à tous les tarifs |
| [RORForfaitSocleHebergement](StructureDefinition-ror-forfait-socle-hebergement.md) | RORTarif | Tarif journalier d'hébergement (décret n°2015-1868) |
| [RORTarifAccueilDeJour](StructureDefinition-ror-tarif-accueil-de-jour.md) | RORTarif | Tarif journalier pour l'accueil de jour |
| [RORTarifDependance](StructureDefinition-ror-tarif-dependance.md) | RORTarif | Tarif correspondant au groupe de dépendance GIR |
| [RORTarifAidesHumaines](StructureDefinition-ror-tarif-aides-humaines.md) | RORTarif | Tarif de la section soins/dépendance pour les aides humaines |
| [RORTarifPrestationSupplementaire](StructureDefinition-ror-tarif-prestation-supplementaire.md) | RORTarif | Tarif d'une prestation supplémentaire facultative |
| [RORSupplementTarifHebergement](StructureDefinition-ror-supplement-tarif-hebergement.md) | RORTarif | Supplément tarifaire pour hébergement |
| [RORTarifPortageRepas](StructureDefinition-ror-tarif-portage-repas.md) | RORTarif | Tarif du portage de repas |

-------

### RORTarif (classe abstraite)

Attributs communs à tous les types de tarifs. Cette classe n'est pas instanciée directement : seules ses sous-classes spécialisées sont utilisées.

**Règles de gestion :**

* `RG_EXP_026` : Un seul tarif de type « Forfait socle hébergement » PEUT être instancié pour chaque combinaison de `tarifMoins60Ans`, `typeHabitation`, `temporaliteAccueil`, `conditionTarifaire` pour une même EG.
* `RG_EXP_027` : Pour les autres types de tarifs, un seul montant PEUT être exposé pour chaque combinaison des valeurs des attributs (hors montant) pour une même EG.

-------

### RORForfaitSocleHebergement

Tarif journalier et par personne pour un type d'hébergement donné. Inclut obligatoirement les prestations définies dans le décret n°2015-1868.

-------

### RORTarifAccueilDeJour

-------

### RORTarifDependance

-------

### RORTarifAidesHumaines

-------

### RORTarifPrestationSupplementaire

**Règles de gestion :**

* `RG_EXP_036` : Les attributs de la classe `TarifPrestationSupplementaire` DOIVENT être mutuellement exclusifs : soit `nomPrestationSupp` (code d'une prestation connue), soit `nomAutrePrestationSupp` (libellé libre), mais pas les deux simultanément.

-------

### RORSupplementTarifHebergement

**Règles de gestion :**

* `RG_EXP_029` : L'attribut `typeHabitation` d'un tarif de type « supplément tarif hébergement » DOIT prendre la valeur « chambre simple ».

-------

### RORTarifPortageRepas

