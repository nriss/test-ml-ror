# JDV ROR - Compétence Exclusive (provisoire) - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## ValueSet: JDV ROR - Compétence Exclusive (provisoire) (Expérimental) 

 
Jeu de valeurs provisoire incluant tous les codes de TRE_R40-CompetenceExclusive pour le contexte ROR. En attente de création officielle. 

 **References** 

* [ROR - Compétence Exclusive](StructureDefinition-ror-competence-exclusive.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "jdv-ror-competence-exclusive",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-competence-exclusive",
  "version" : "0.1.0",
  "name" : "JDVRORCompetenceExclusive",
  "title" : "JDV ROR - Compétence Exclusive (provisoire)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-08T16:46:42+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R40-CompetenceExclusive pour le contexte ROR. En attente de création officielle.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R40-CompetenceExclusive/FHIR/TRE-R40-CompetenceExclusive",
      "version" : "20231215120000"
    }]
  }
}

```
