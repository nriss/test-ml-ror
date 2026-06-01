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

### Schéma des relations

<?xml version="1.0" encoding="us-ascii" standalone="no"?>

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

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.4.0/CodeSystem-ISO3166Part1.html): [RorEntiteGeographique](StructureDefinition-ror-entite-geographique.md), [RorOffreOperationnelle](StructureDefinition-ror-offre-operationnelle.md), [RorOrganisationInterne](StructureDefinition-ror-organisation-interne.md), [TestROR](index.md) and [VS_RorSecteurActivite](ValueSet-vs-ror-secteur-activite.md)


