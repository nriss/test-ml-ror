# Objectif

Générer un IG à partir du modèle d'expo au format PDF

# Stratégie

- Convertir le pdf (ROR_ME_V3.0.1_ModeleExposition_VFD_20260316.pdf) au format markdown
- Traiter le modele d'expo partie par partie (suivre l'avancée, créer plusieurs agents parallèles).
- Hériter du MOS 0.1.0-ballot (https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot) https://github.com/ansforge/IG-modele-objets-sante
- Reprendre la structure du MOS (FSH, arborescence des pages, ...)

## Mapping MOS → ROR

Le MOS et le modèle d'exposition ROR sont alignés. La stratégie est :
- Ne pas redéfinir ce qui existe déjà dans le MOS
- Créer des LogicalModels ROR qui **héritent** des LogicalModels MOS correspondants
- N'ajouter en FSH que les **différences** : attributs supplémentaires, contraintes spécifiques au contexte ROR, cardinalités resserrées

## Découpage du modèle (ordre de traitement)

Suivre le menu du modèle d'exposition :
1. Tarif
2. Organisation
3. OffreOperationnelle
4. *(continuer dans l'ordre du menu du PDF)*

Cocher chaque entité au fur et à mesure pour suivre l'avancement.

## Règles de nommage

Mêmes conventions que le MOS, avec le suffixe `ROR` :
- LogicalModel : `ROROrganisation`, `ROROffreOperationnelle`, `RORTarif`, ...
- Éléments FSH : même casse que le MOS

## Terminologies

Reprendre exactement les terminologies indiquées dans le modèle d'exposition (TRE_*, JDV_*, NOS_*).
Les terminologies françaises sont disponibles sur :
- https://smt.esante.gouv.fr/fhir
- https://interop.esante.gouv.fr/terminologies

## Pages narratives

Pour chaque entité traitée, générer une page `pagecontent` en :
- Reprenant le narratif du PDF (description, contexte, règles de gestion)
- S'inspirant de la structure des pages MOS (présentation de l'entité, tableau des attributs, liens vers les profils)

## Critère de "done"

Une entité est considérée terminée quand l'IG publisher valide sans erreur bloquante.