# JDV ROR - Modalité Participation SPH / ESPIC (provisoire) - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## ValueSet: JDV ROR - Modalité Participation SPH / ESPIC (provisoire) (Expérimental) 

 
Jeu de valeurs provisoire incluant tous les codes de TRE_R73-ESPIC pour le contexte ROR. En attente de création officielle. 

 **References** 

* [ROR - Entité Géographique](StructureDefinition-ror-entite-geographique.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "jdv-ror-espic",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-espic",
  "version" : "0.1.0",
  "name" : "JDVRORModaliteParticipationSPH",
  "title" : "JDV ROR - Modalité Participation SPH / ESPIC (provisoire)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-09T14:33:17+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R73-ESPIC pour le contexte ROR. En attente de création officielle.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R73-ESPIC/FHIR/TRE-R73-ESPIC",
      "version" : "20231215120000"
    }]
  }
}

```
