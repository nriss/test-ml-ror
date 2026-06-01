<div style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>IG de démonstration</b><br>
Cet IG est un exemple illustrant comment des équipes projets (ici : ROR) peuvent définir leurs propres modèles logiques en dérivant des modèles du MOS.
</div>

{% if site.data.info.releaselabel == 'ci-build' %}
<div style="width: 65%">
    <blockquote class="stu-note">
    <p>Cet Implementation Guide est en cours de construction (ci-build). Il est susceptible d'évoluer fréquemment.</p>
    </blockquote>
</div>
{% endif %}

### Contexte et objectif

Le [MOS (Modèle des Objets de Santé)](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/) définit un socle commun de modèles logiques pour représenter les entités du système de santé français : professionnels de santé, structures, offres de soins, etc.

Cet IG de démonstration montre comment une équipe projet — ici l'équipe **ROR (Répertoire de l'Offre de soins et des Ressources)** — peut :

1. **Dériver** des modèles logiques existants du MOS pour les spécialiser à son contexte
2. **Créer** de nouveaux modèles logiques propres au ROR, non couverts par le MOS
3. **Documenter** les relations entre les objets via un schéma de liaison

### Modèles logiques définis

| Modèle | Type | Description |
|---|---|---|
| `RorOffreOperationnelle` | Dérivé du MOS | Offre de soins opérationnelle, spécialisée pour le ROR |
| `RorEntiteGeographique` | Dérivé du MOS | Lieu de réalisation de l'offre, avec extensions ROR |
| `RorOrganisationInterne` | Nouveau | Organisation interne d'une structure (pôle, unité, service) |

### Schéma des relations

{% include ror-schema.svg %}

### Dépendances

{% include dependency-table.xhtml %}

### Analyse cross-version

{% include cross-version-analysis.xhtml %}

### Profils globaux

{% include globals-table.xhtml %}

### Paramètres d'expansion

{% include expansion-params.xhtml %}

### Propriété intellectuelle

{% include ip-statements.xhtml %}
