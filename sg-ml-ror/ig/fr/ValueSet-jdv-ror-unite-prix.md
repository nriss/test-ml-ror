# JDV ROR - Unité de Prix (provisoire) - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## ValueSet: JDV ROR - Unité de Prix (provisoire) (Expérimental) 

 
Jeu de valeurs provisoire incluant tous les codes de TRE_R228-UnitePrix pour le contexte ROR. En attente de création officielle. 

 **References** 

* [ROR - Tarif](StructureDefinition-ror-tarif.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "jdv-ror-unite-prix",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-unite-prix",
  "version" : "0.1.0",
  "name" : "JDVRORUnitePrix",
  "title" : "JDV ROR - Unité de Prix (provisoire)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-07T16:28:25+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R228-UnitePrix pour le contexte ROR. En attente de création officielle.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R228-UnitePrix/FHIR/TRE-R228-UnitePrix",
      "version" : "20231215120000"
    }]
  }
}

```
