# ROR - Surspécialité Transversale - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Modèle logique: ROR - Surspécialité Transversale 

 
Spécialisation ROR de la SurspecialiteTransversale du MOS. Droit d'exercice complémentaire au sein de la spécialité du médecin, acquis par une formation spécialisée transversale (FST). 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-surspecialite-transversale)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [SurspecialiteTransversale](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-SurspecialiteTransversale.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [SurspecialiteTransversale](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-SurspecialiteTransversale.html) 

** Résumé **

 **Vue différentielle** 

Cette structure est dérivée de [SurspecialiteTransversale](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-SurspecialiteTransversale.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [SurspecialiteTransversale](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-SurspecialiteTransversale.html) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-surspecialite-transversale.csv), [Excel](../StructureDefinition-ror-surspecialite-transversale.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-surspecialite-transversale",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-surspecialite-transversale",
  "version" : "0.1.0",
  "name" : "RORSurspecialiteTransversale",
  "title" : "ROR - Surspécialité Transversale",
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
  "description" : "Spécialisation ROR de la SurspecialiteTransversale du MOS. Droit d'exercice complémentaire au sein de la spécialité du médecin, acquis par une formation spécialisée transversale (FST).",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-surspecialite-transversale",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SurspecialiteTransversale|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-surspecialite-transversale",
      "path" : "ror-surspecialite-transversale",
      "short" : "Surspécialité transversale dans le contexte ROR",
      "definition" : "Spécialisation ROR de la SurspecialiteTransversale du MOS."
    },
    {
      "id" : "ror-surspecialite-transversale.surspecialiteTransversale",
      "path" : "ror-surspecialite-transversale.surspecialiteTransversale",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-surspecialite-transversale|0.1.0"
      }
    }]
  }
}

```
