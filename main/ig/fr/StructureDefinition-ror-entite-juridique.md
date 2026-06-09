# ROR - Entité Juridique - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Modèle logique: ROR - Entité Juridique 

 
Spécialisation ROR de l'EntiteJuridique du MOS. Correspond à la notion de personne morale dans le contexte du Répertoire Opérationnel des Ressources. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-entite-juridique)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [EntiteJuridique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-EntiteJuridique.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [EntiteJuridique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-EntiteJuridique.html) 

** Résumé **

Obligatoire : 3 éléments(1 élément obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [EntiteJuridique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-EntiteJuridique.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [EntiteJuridique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-EntiteJuridique.html) 

** Résumé **

Obligatoire : 3 éléments(1 élément obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-entite-juridique.csv), [Excel](../StructureDefinition-ror-entite-juridique.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-entite-juridique",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-juridique",
  "version" : "0.1.0",
  "name" : "ROREntiteJuridique",
  "title" : "ROR - Entité Juridique",
  "status" : "draft",
  "date" : "2026-06-09T15:10:34+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Spécialisation ROR de l'EntiteJuridique du MOS. Correspond à la notion de personne morale dans le contexte du Répertoire Opérationnel des Ressources.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-entite-juridique",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteJuridique|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-entite-juridique",
      "path" : "ror-entite-juridique",
      "short" : "Entité juridique dans le contexte ROR",
      "definition" : "Spécialisation ROR de l'EntiteJuridique du MOS. Correspond à la notion de personne morale dans le contexte du Répertoire Opérationnel des Ressources."
    },
    {
      "id" : "ror-entite-juridique.idNatStruct",
      "path" : "ror-entite-juridique.idNatStruct",
      "short" : "Identification nationale de l'EJ (obligatoire dans le ROR)",
      "min" : 1
    },
    {
      "id" : "ror-entite-juridique.raisonSociale",
      "path" : "ror-entite-juridique.raisonSociale",
      "short" : "Raison sociale complète de l'entité juridique (obligatoire dans le ROR)",
      "min" : 1
    },
    {
      "id" : "ror-entite-juridique.statutJuridique",
      "path" : "ror-entite-juridique.statutJuridique",
      "short" : "Statut juridique de l'entité juridique (obligatoire dans le ROR)",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-finess-statut-juridique|0.1.0"
      }
    },
    {
      "id" : "ror-entite-juridique.agregatStatutJuridiqueNiv2",
      "path" : "ror-entite-juridique.agregatStatutJuridiqueNiv2",
      "short" : "Sous-ensemble d'agrégat de statut juridique (sousEnsembleAgregatStatutJuridique)",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-agreg-statut-juridique-niv2|0.1.0"
      }
    },
    {
      "id" : "ror-entite-juridique.typeFermeture",
      "path" : "ror-entite-juridique.typeFermeture",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J185-typeFermeture-ROR/FHIR/JDV-J185-typeFermeture-ROR"
      }
    },
    {
      "id" : "ror-entite-juridique.metadonnee",
      "path" : "ror-entite-juridique.metadonnee",
      "short" : "Informations relatives à la gestion des données de l'entité juridique dans le ROR.",
      "definition" : "Informations relatives à la gestion des données de l'entité juridique dans le ROR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee"
      }]
    }]
  }
}

```
