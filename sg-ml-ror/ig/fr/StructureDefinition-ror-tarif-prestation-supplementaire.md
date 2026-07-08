# ROR - Tarif Prestation Supplémentaire - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Modèle logique: ROR - Tarif Prestation Supplémentaire 

 
Tarifs des principales prestations supplémentaires qui ne sont pas comprises dans le tarif hébergement de l'établissement et qui peuvent avoir un impact sur l'orientation. Les attributs DOIVENT être mutuellement exclusifs. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-tarif-prestation-supplementaire)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [RORTarif](StructureDefinition-ror-tarif.md) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [RORTarif](StructureDefinition-ror-tarif.md) 

** Résumé **

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [RORTarif](StructureDefinition-ror-tarif.md) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [RORTarif](StructureDefinition-ror-tarif.md) 

** Résumé **

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-tarif-prestation-supplementaire.csv), [Excel](../StructureDefinition-ror-tarif-prestation-supplementaire.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-tarif-prestation-supplementaire",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif-prestation-supplementaire",
  "version" : "0.1.0",
  "name" : "RORTarifPrestationSupplementaire",
  "title" : "ROR - Tarif Prestation Supplémentaire",
  "status" : "draft",
  "date" : "2026-07-08T17:09:23+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Tarifs des principales prestations supplémentaires qui ne sont pas comprises dans le tarif hébergement de l'établissement et qui peuvent avoir un impact sur l'orientation. Les attributs DOIVENT être mutuellement exclusifs.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif-prestation-supplementaire",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-tarif|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-tarif-prestation-supplementaire",
      "path" : "ror-tarif-prestation-supplementaire",
      "short" : "Tarif d'une prestation supplémentaire hors tarif hébergement",
      "definition" : "Tarifs des principales prestations supplémentaires qui ne sont pas comprises dans le tarif hébergement."
    },
    {
      "id" : "ror-tarif-prestation-supplementaire.nomAutrePrestationSupp",
      "path" : "ror-tarif-prestation-supplementaire.nomAutrePrestationSupp",
      "short" : "Nom du tarif d'une prestation supplémentaire.",
      "definition" : "Nom du tarif d'une prestation supplémentaire.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ror-tarif-prestation-supplementaire.nomPrestationSupp",
      "path" : "ror-tarif-prestation-supplementaire.nomPrestationSupp",
      "short" : "Nom codé de la prestation supplémentaire. Mutuellement exclusif avec nomAutrePrestationSupp.",
      "definition" : "Nom codé de la prestation supplémentaire. Mutuellement exclusif avec nomAutrePrestationSupp.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-prestation-non-obligatoire|0.1.0"
      }
    }]
  }
}

```
