# JDV ROR - Profession de Santé (provisoire) - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## ValueSet: JDV ROR - Profession de Santé (provisoire) (Expérimental) 

 
Jeu de valeurs provisoire incluant tous les codes de TRE_G15-ProfessionSante pour le contexte ROR. En attente de création officielle. 

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
  "id" : "jdv-ror-profession-sante",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-profession-sante",
  "version" : "0.1.0",
  "name" : "JDVRORProfessionSante",
  "title" : "JDV ROR - Profession de Santé (provisoire)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-08T14:05:48+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_G15-ProfessionSante pour le contexte ROR. En attente de création officielle.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante",
      "version" : "20250328120000"
    }]
  }
}

```
