### Organisation

<div style="background-color: #fff9e6; border-left: 4px solid #ff9800; padding: 12px 16px; margin-bottom: 16px;">
Cette section est transversale : elle décrit l'organisation interne des établissements, utile pour les professionnels de santé (compréhension des structures de soins) et pour les développeurs (implémentation des modèles logiques).
</div>

La section **Organisation** décrit l'organisation interne d'un établissement. Elle permet de représenter les pôles, services, unités fonctionnelles et autres organisations internes qui structurent les établissements de santé.

#### Donnée pivot

L'identifiant des organisations internes est généré par les ROR. Lorsqu'il est généré par une instance régionale, il est de la forme `code INSEE régional / code interne ROR`. Cet identifiant est unique et pérenne pour toute la France.

---

#### Modèles logiques

| Modèle ROR | Héritage MOS | Description |
|---|---|---|
| [ROROrganisationInterne](StructureDefinition-ror-organisation-interne.html) | OrganisationInterne | Organisation opérationnelle au sein d'un établissement |
| [RORPole](StructureDefinition-ror-pole.html) | PoleActivite | Pôle d'activité regroupant des services |
| [RORStructureInterne](StructureDefinition-ror-structure-interne.html) | StructureInterne | Structure interne de l'établissement |
| [RORUniteFonctionnelle](StructureDefinition-ror-unite-fonctionnelle.html) | UniteFonctionnelle | Unité fonctionnelle de soins |

---

#### ROROrganisationInterne

L'**Organisation Interne** (OI) représente l'organisation opérationnelle au sein d'un établissement : pôles, services, unités fonctionnelles, équipes de soins, etc. Elle est l'entité à laquelle sont rattachées les offres opérationnelles.

Attributs spécifiques ROR :

| Attribut | Card. | Type | Terminologie |
|---|---|---|---|
| identifiantOI | 1..1 | Identifier | — |
| nomOI | 1..1 | string | — |
| typeOI | 1..1 | Coding | TRE_R207-TypeOrganisationInterne |
| typeFermeture | 0..1 | Coding | JDV_J185-typeFermeture-ROR |
| metadonnee | 1..1 | [RORMetadonnee](StructureDefinition-ror-metadonnee.html) | — |

---

#### Hiérarchie de l'organisation interne

Dans le ROR, la hiérarchie organisationnelle est la suivante :

```
EntiteGeographique
  └── OrganisationInterne (typeOI = Pôle)
        └── OrganisationInterne (typeOI = Service / Unité fonctionnelle)
```

Les classes `RORPole`, `RORStructureInterne` et `RORUniteFonctionnelle` sont des spécialisations de `ROROrganisationInterne` héritées du MOS, permettant de typer sémantiquement le niveau hiérarchique.
