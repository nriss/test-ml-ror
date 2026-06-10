# JDV ROR - Acte Spécifique (provisoire) - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## ValueSet: JDV ROR - Acte Spécifique (provisoire) (Expérimental) 

 
Jeu de valeurs provisoire incluant tous les codes de TRE_R210-ActeSpecifique pour le contexte ROR. En attente de création officielle. 

 **References** 

* [ROR - Offre Opérationnelle](StructureDefinition-ror-offre-operationnelle.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "jdv-ror-acte-specifique",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-acte-specifique",
  "version" : "0.1.0",
  "name" : "JDVRORActeSpecifique",
  "title" : "JDV ROR - Acte Spécifique (provisoire)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-10T12:57:58+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R210-ActeSpecifique pour le contexte ROR. En attente de création officielle.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique",
      "version" : "20250623120000"
    }]
  }
}

```
