# ROR - Limite de Caractéristique d'Équipement - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Modèle logique: ROR - Limite de Caractéristique d'Équipement 

 
Précise les limites que peut supporter l'équipement le plus tolérant parmi les équipements spécifiques de même type dans cette organisation. Par exemple, si une organisation possède 3 tables de bloc opératoire pouvant accueillir des patients d'un poids maximum de 180 kg, 190 kg et 200 kg, seule la valeur limite de 200 kg sera identifiée dans cette classe. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-limite-caracteristique-equipement)

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

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-limite-caracteristique-equipement.csv), [Excel](../StructureDefinition-ror-limite-caracteristique-equipement.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-limite-caracteristique-equipement",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-limite-caracteristique-equipement",
  "version" : "0.1.0",
  "name" : "RORLimiteCaracteristiqueEquipement",
  "title" : "ROR - Limite de Caractéristique d'Équipement",
  "status" : "draft",
  "date" : "2026-07-09T12:48:10+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Précise les limites que peut supporter l'équipement le plus tolérant parmi les équipements spécifiques de même type dans cette organisation. Par exemple, si une organisation possède 3 tables de bloc opératoire pouvant accueillir des patients d'un poids maximum de 180 kg, 190 kg et 200 kg, seule la valeur limite de 200 kg sera identifiée dans cette classe.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-limite-caracteristique-equipement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-limite-caracteristique-equipement",
      "path" : "ror-limite-caracteristique-equipement",
      "short" : "ROR - Limite de Caractéristique d'Équipement",
      "definition" : "Précise les limites que peut supporter l'équipement le plus tolérant parmi les équipements spécifiques de même type dans cette organisation. Par exemple, si une organisation possède 3 tables de bloc opératoire pouvant accueillir des patients d'un poids maximum de 180 kg, 190 kg et 200 kg, seule la valeur limite de 200 kg sera identifiée dans cette classe."
    },
    {
      "id" : "ror-limite-caracteristique-equipement.typeCaracteristique",
      "path" : "ror-limite-caracteristique-equipement.typeCaracteristique",
      "short" : "Type de caractéristique de l'équipement",
      "definition" : "Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R340-TypeCaracteristiqueEquipement/FHIR/TRE-R340-TypeCaracteristiqueEquipement|20240329120000"
      }
    },
    {
      "id" : "ror-limite-caracteristique-equipement.valeurLimite",
      "path" : "ror-limite-caracteristique-equipement.valeurLimite",
      "short" : "Valeur limite de la caractéristique",
      "definition" : "Correspond à la valeur extrême associée à une caractéristique de l'équipement.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    }]
  }
}

```
