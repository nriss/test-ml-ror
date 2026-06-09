# Tarif - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Tarif

### Tarif

Cette section est transversale : les tarifs intéressent les patients et les professionnels de santé pour l'orientation, et les développeurs pour l'implémentation.

La section **Tarif** décrit les prix des prestations et services fournis par un établissement. Les tarifs sont rattachés à l'Entité Géographique. Seuls les tarifs déterminants pour l'orientation d'un patient sont décrits dans le ROR.

La classe `RORTarif` est une **classe abstraite** dont héritent les différents types de tarifs spécialisés.

-------

#### Diagramme

<?xml version="1.0" encoding="us-ascii" standalone="no"?>

-------

#### Modèles logiques

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

#### RORTarif (classe abstraite)

Attributs communs à tous les types de tarifs. Cette classe n'est pas instanciée directement : seules ses sous-classes spécialisées sont utilisées.

**Règles de gestion :**

* `RG_EXP_026` : Un seul tarif de type « Forfait socle hébergement » PEUT être instancié pour chaque combinaison de `tarifMoins60Ans`, `typeHabitation`, `temporaliteAccueil`, `conditionTarifaire` pour une même EG.
* `RG_EXP_027` : Pour les autres types de tarifs, un seul montant PEUT être exposé pour chaque combinaison des valeurs des attributs (hors montant) pour une même EG.

Des conseils sur l'interprétation du contenu de ce tableau peuvent être trouvés[ici](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#data-dictionaries)

-------

#### RORForfaitSocleHebergement

Tarif journalier et par personne pour un type d'hébergement donné. Inclut obligatoirement les prestations définies dans le décret n°2015-1868.

Des conseils sur l'interprétation du contenu de ce tableau peuvent être trouvés[ici](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#data-dictionaries)

-------

#### RORTarifAccueilDeJour

Des conseils sur l'interprétation du contenu de ce tableau peuvent être trouvés[ici](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#data-dictionaries)

-------

#### RORTarifDependance

Des conseils sur l'interprétation du contenu de ce tableau peuvent être trouvés[ici](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#data-dictionaries)

-------

#### RORTarifAidesHumaines

Des conseils sur l'interprétation du contenu de ce tableau peuvent être trouvés[ici](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#data-dictionaries)

-------

#### RORTarifPrestationSupplementaire

Des conseils sur l'interprétation du contenu de ce tableau peuvent être trouvés[ici](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#data-dictionaries)

-------

#### RORSupplementTarifHebergement

Des conseils sur l'interprétation du contenu de ce tableau peuvent être trouvés[ici](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#data-dictionaries)

-------

#### RORTarifPortageRepas

Des conseils sur l'interprétation du contenu de ce tableau peuvent être trouvés[ici](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#data-dictionaries)

