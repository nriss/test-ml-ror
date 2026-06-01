# Démonstration - Modèle Logique ROR dérivant du MOS

[![Build Status](https://github.com/nriss/test-ml-ror/actions/workflows/fhir-workflows.yml/badge.svg)](https://github.com/nriss/test-ml-ror/actions)

**Preview CI :** https://nriss.github.io/test-ml-ror/main/ig

## Objectif

Cet IG de démonstration illustre comment des équipes projets peuvent définir leurs propres **modèles logiques FHIR** en s'appuyant sur le [MOS (Modèle des Objets de Santé)](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/).

Le cas d'usage choisi est celui du **ROR (Répertoire de l'Offre de soins et des Ressources)**, qui a besoin de décrire :
- l'offre de soins opérationnelle d'une structure
- les entités géographiques où cette offre est réalisée
- les organisations internes (pôles, services, unités)

## Approche

| Modèle | Stratégie | Base MOS |
|---|---|---|
| `RorOffreOperationnelle` | Dérivation | `OffreOperationnelle` |
| `RorEntiteGeographique` | Dérivation | `EntiteGeographique` |
| `RorOrganisationInterne` | Création ex nihilo | — |

Les modèles logiques MOS sont utilisés comme socle commun. Le ROR les spécialise (contraintes supplémentaires, éléments additionnels) sans repartir de zéro.

## Dépendances

- **MOS :** `ans.fr.mos 0.1.0-ballot` — https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/
- **FHIR :** R4 (4.0.1)
