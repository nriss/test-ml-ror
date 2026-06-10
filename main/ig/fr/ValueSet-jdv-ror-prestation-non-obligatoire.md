# JDV ROR - Prestation Non Obligatoire Incluse (provisoire) - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## ValueSet: JDV ROR - Prestation Non Obligatoire Incluse (provisoire) (Expérimental) 

 
Jeu de valeurs provisoire incluant tous les codes de TRE_R264-PrestationNonObligatoireIncluse pour le contexte ROR. En attente de création officielle. 

 **References** 

* [ROR - Forfait Socle Hébergement](StructureDefinition-ror-forfait-socle-hebergement.md)
* [ROR - Tarif Prestation Supplémentaire](StructureDefinition-ror-tarif-prestation-supplementaire.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "jdv-ror-prestation-non-obligatoire",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-prestation-non-obligatoire",
  "version" : "0.1.0",
  "name" : "JDVRORPrestationNonObligatoire",
  "title" : "JDV ROR - Prestation Non Obligatoire Incluse (provisoire)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-10T09:59:42+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R264-PrestationNonObligatoireIncluse pour le contexte ROR. En attente de création officielle.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R264-PrestationNonObligatoireIncluse/FHIR/TRE-R264-PrestationNonObligatoireIncluse",
      "version" : "20231215120000"
    }]
  }
}

```
