# JDV ROR - Type de Crise (provisoire) - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## ValueSet: JDV ROR - Type de Crise (provisoire) (Expérimental) 

 
Jeu de valeurs provisoire incluant tous les codes de TRE_R336-TypeCrise pour le contexte ROR. En attente de création officielle. 

 **References** 

* [ROR - Capacité d'Accueil Opérationnelle](StructureDefinition-ror-capacite-accueil-operationnelle.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "jdv-ror-type-crise",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-type-crise",
  "version" : "0.1.0",
  "name" : "JDVRORTypeCrise",
  "title" : "JDV ROR - Type de Crise (provisoire)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-09T08:06:43+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R336-TypeCrise pour le contexte ROR. En attente de création officielle.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R336-TypeCrise/FHIR/TRE-R336-TypeCrise",
      "version" : "20231215120000"
    }]
  }
}

```
