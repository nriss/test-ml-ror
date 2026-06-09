# JDV ROR - Civilité d'Exercice (provisoire) - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## ValueSet: JDV ROR - Civilité d'Exercice (provisoire) (Expérimental) 

 
Jeu de valeurs provisoire incluant tous les codes de TRE_R11-CiviliteExercice pour le contexte ROR. En attente de création officielle. 

 **References** 

* [ROR - Exercice Professionnel](StructureDefinition-ror-exercice-professionnel.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "jdv-ror-civilite-exercice",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-civilite-exercice",
  "version" : "0.1.0",
  "name" : "JDVRORCiviliteExercice",
  "title" : "JDV ROR - Civilité d'Exercice (provisoire)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-09T15:32:43+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R11-CiviliteExercice pour le contexte ROR. En attente de création officielle.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R11-CiviliteExercice/FHIR/TRE-R11-CiviliteExercice",
      "version" : "20231215120000"
    }]
  }
}

```
