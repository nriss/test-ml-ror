# ROR - Pôle - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Modèle logique: ROR - Pôle 

 
Spécialisation ROR du PoleActivite du MOS. Pôle d'activité au sens de la loi HPST, art.13. Organisation interne de premier niveau regroupant des structures internes. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-pole)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [PoleActivite](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-PoleActivite.html) 

Cette structure est dérivée de [PoleActivite](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-PoleActivite.html) 

** Résumé **

 **Vue différentielle** 

Cette structure est dérivée de [PoleActivite](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-PoleActivite.html) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [PoleActivite](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-PoleActivite.html) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-pole.csv), [Excel](../StructureDefinition-ror-pole.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-pole",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-pole",
  "version" : "0.1.0",
  "name" : "RORPole",
  "title" : "ROR - Pôle",
  "status" : "draft",
  "date" : "2026-06-09T19:07:13+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Spécialisation ROR du PoleActivite du MOS. Pôle d'activité au sens de la loi HPST, art.13. Organisation interne de premier niveau regroupant des structures internes.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-pole",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PoleActivite|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-pole",
      "path" : "ror-pole",
      "short" : "Pôle d'activité dans le contexte ROR",
      "definition" : "Spécialisation ROR du PoleActivite du MOS. Pôle d'activité au sens de la loi HPST, art.13."
    }]
  }
}

```
