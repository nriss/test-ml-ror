# ROR - Activité Opérationnelle - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Modèle logique: ROR - Activité Opérationnelle 

 
Ensemble cohérent d'actions et de pratiques mises en œuvre pour participer au rétablissement ou à l'entretien de la Santé d'une personne dans le contexte ROR. Les activités opérationnelles peuvent être regroupées au sein de familles d'activités. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-activite-operationnelle)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-activite-operationnelle.csv), [Excel](../StructureDefinition-ror-activite-operationnelle.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-activite-operationnelle",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-activite-operationnelle",
  "version" : "0.1.0",
  "name" : "RORActiviteOperationnelle",
  "title" : "ROR - Activité Opérationnelle",
  "status" : "draft",
  "date" : "2026-06-10T09:59:42+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ensemble cohérent d'actions et de pratiques mises en œuvre pour participer au rétablissement ou à l'entretien de la Santé d'une personne dans le contexte ROR. Les activités opérationnelles peuvent être regroupées au sein de familles d'activités.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-activite-operationnelle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-activite-operationnelle",
      "path" : "ror-activite-operationnelle",
      "short" : "Activité opérationnelle dans le contexte ROR",
      "definition" : "Ensemble cohérent d'actions et de pratiques mises en œuvre pour répondre aux besoins de santé d'une personne."
    },
    {
      "id" : "ror-activite-operationnelle.activiteOperationnelle",
      "path" : "ror-activite-operationnelle.activiteOperationnelle",
      "short" : "Une activité opérationnelle est un ensemble cohérent d'actions et de pratiques mises en œuvre pour répondre aux besoins de Santé de la personne. Elle peut être d'ordre sanitaire, social ou médico-social.",
      "definition" : "Une activité opérationnelle est un ensemble cohérent d'actions et de pratiques mises en œuvre pour répondre aux besoins de Santé de la personne.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-activite-operationnelle|0.1.0"
      }
    },
    {
      "id" : "ror-activite-operationnelle.familleActiviteOperationnelle",
      "path" : "ror-activite-operationnelle.familleActiviteOperationnelle",
      "short" : "Regroupement cohérent d'activités délivrées dans le cadre d'une prestation, répondant à un besoin de la personne. Dans le secteur médico-social, correspond au niveau 4 des prestations de la nomenclature SERAFIN.",
      "definition" : "Regroupement cohérent d'activités délivrées dans le cadre d'une prestation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J51-FamilleActiviteOperationnelle-ROR/FHIR/JDV-J51-FamilleActiviteOperationnelle-ROR|20230127120000"
      }
    },
    {
      "id" : "ror-activite-operationnelle.metadonnee",
      "path" : "ror-activite-operationnelle.metadonnee",
      "short" : "Informations relatives à la gestion des données de l'activité opérationnelle dans le ROR.",
      "definition" : "Informations relatives à la gestion des données de l'activité opérationnelle dans le ROR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee"
      }]
    }]
  }
}

```
