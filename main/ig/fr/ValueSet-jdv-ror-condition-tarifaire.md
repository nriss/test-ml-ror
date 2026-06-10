# JDV ROR - Condition Tarifaire (provisoire) - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## ValueSet: JDV ROR - Condition Tarifaire (provisoire) (Expérimental) 

 
Jeu de valeurs provisoire incluant tous les codes de TRE_R250-ConditionTarifaire pour le contexte ROR. En attente de création officielle. 

 **References** 

* [ROR - Forfait Socle Hébergement](StructureDefinition-ror-forfait-socle-hebergement.md)
* [ROR - Tarif Accueil de Jour](StructureDefinition-ror-tarif-accueil-de-jour.md)
* [ROR - Tarif Aides Humaines](StructureDefinition-ror-tarif-aides-humaines.md)
* [ROR - Tarif Portage Repas](StructureDefinition-ror-tarif-portage-repas.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "jdv-ror-condition-tarifaire",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-condition-tarifaire",
  "version" : "0.1.0",
  "name" : "JDVRORConditionTarifaire",
  "title" : "JDV ROR - Condition Tarifaire (provisoire)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-10T10:08:12+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R250-ConditionTarifaire pour le contexte ROR. En attente de création officielle.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R250-ConditionTarifaire/FHIR/TRE-R250-ConditionTarifaire",
      "version" : "20231215120000"
    }]
  }
}

```
