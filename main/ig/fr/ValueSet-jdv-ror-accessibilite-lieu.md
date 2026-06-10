# JDV ROR - Accessibilité Lieu (provisoire) - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## ValueSet: JDV ROR - Accessibilité Lieu (provisoire) (Expérimental) 

 
Jeu de valeurs provisoire incluant tous les codes de TRE_R202-AccessibiliteLieu pour le contexte ROR. En attente de création officielle. 

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
  "id" : "jdv-ror-accessibilite-lieu",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-accessibilite-lieu",
  "version" : "0.1.0",
  "name" : "JDVRORAccessibiliteLieu",
  "title" : "JDV ROR - Accessibilité Lieu (provisoire)",
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
  "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R202-AccessibiliteLieu pour le contexte ROR. En attente de création officielle.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R202-AccessibiliteLieu/FHIR/TRE-R202-AccessibiliteLieu",
      "version" : "20231215120000"
    }]
  }
}

```
