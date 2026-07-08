# JDV ROR - Temporalité d'Accueil (provisoire) - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## ValueSet: JDV ROR - Temporalité d'Accueil (provisoire) (Expérimental) 

 
Jeu de valeurs provisoire incluant tous les codes de TRE_R240-TemporaliteAccueil pour le contexte ROR. En attente de création officielle. 

 **References** 

* [ROR - Forfait Socle Hébergement](StructureDefinition-ror-forfait-socle-hebergement.md)
* [ROR - Offre Opérationnelle](StructureDefinition-ror-offre-operationnelle.md)
* [ROR - Tarif Dépendance](StructureDefinition-ror-tarif-dependance.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "jdv-ror-temporalite-accueil",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-temporalite-accueil",
  "version" : "0.1.0",
  "name" : "JDVRORTemporaliteAccueil",
  "title" : "JDV ROR - Temporalité d'Accueil (provisoire)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-08T16:19:56+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R240-TemporaliteAccueil pour le contexte ROR. En attente de création officielle.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R240-TemporaliteAccueil/FHIR/TRE-R240-TemporaliteAccueil",
      "version" : "20231215120000"
    }]
  }
}

```
