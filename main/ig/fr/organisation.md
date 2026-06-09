# Organisation - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Organisation

### Organisation

Cette section est transversale : elle décrit l'organisation interne des établissements, utile pour les professionnels de santé (compréhension des structures de soins) et pour les développeurs (implémentation des modèles logiques).

La section **Organisation** décrit l'organisation interne d'un établissement. Elle permet de représenter les pôles, services, unités fonctionnelles et autres organisations internes qui structurent les établissements de santé.

#### Donnée pivot

L'identifiant des organisations internes est généré par les ROR. Lorsqu'il est généré par une instance régionale, il est de la forme `code INSEE régional / code interne ROR`. Cet identifiant est unique et pérenne pour toute la France.

-------

#### Diagramme

🔍+
🔍−
↻
⛶

  

-------

#### Modèles logiques

| | | |
| :--- | :--- | :--- |
| [ROROrganisationInterne](StructureDefinition-ror-organisation-interne.md) | OrganisationInterne | Organisation opérationnelle au sein d'un établissement |
| [RORPole](StructureDefinition-ror-pole.md) | PoleActivite | Pôle d'activité regroupant des services |
| [RORStructureInterne](StructureDefinition-ror-structure-interne.md) | StructureInterne | Structure interne de l'établissement |
| [RORUniteFonctionnelle](StructureDefinition-ror-unite-fonctionnelle.md) | UniteFonctionnelle | Unité fonctionnelle de soins |

-------

#### ROROrganisationInterne

L'**Organisation Interne** (OI) représente l'organisation opérationnelle au sein d'un établissement : pôles, services, unités fonctionnelles, équipes de soins, etc. Elle est l'entité à laquelle sont rattachées les offres opérationnelles.

La hiérarchie organisationnelle dans le ROR est la suivante :

```
EntiteGeographique
  └── OrganisationInterne (typeOI = Pôle)
        └── OrganisationInterne (typeOI = Service / Unité fonctionnelle)

```

Les classes `RORPole`, `RORStructureInterne` et `RORUniteFonctionnelle` sont des spécialisations de `ROROrganisationInterne` héritées du MOS, permettant de typer sémantiquement le niveau hiérarchique.

**Règles de gestion :**

* `RG_EXP_044` : Lorsqu'une organisation interne est fermée, toutes les offres opérationnelles rattachées sont également fermées avec le même type et la même date de fermeture.

Des conseils sur l'interprétation du contenu de ce tableau peuvent être trouvés[ici](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#data-dictionaries)

-------

#### RORPole

Des conseils sur l'interprétation du contenu de ce tableau peuvent être trouvés[ici](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#data-dictionaries)

-------

#### RORStructureInterne

Des conseils sur l'interprétation du contenu de ce tableau peuvent être trouvés[ici](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#data-dictionaries)

-------

#### RORUniteFonctionnelle

Des conseils sur l'interprétation du contenu de ce tableau peuvent être trouvés[ici](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#data-dictionaries)

