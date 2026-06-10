# JDV ROR - Type de Source (provisoire) - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## ValueSet: JDV ROR - Type de Source (provisoire) (Expérimental) 

 
Jeu de valeurs provisoire incluant tous les codes de TRE_R335-TypeSource pour le contexte ROR. En attente de création officielle. 

 **References** 

* [ROR - Capacité d'Accueil Opérationnelle](StructureDefinition-ror-capacite-accueil-operationnelle.md)

### Définition logique (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "jdv-ror-type-source",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-type-source",
  "version" : "0.1.0",
  "name" : "JDVRORTypeSource",
  "title" : "JDV ROR - Type de Source (provisoire)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-10T12:24:33+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R335-TypeSource pour le contexte ROR. En attente de création officielle.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R335-TypeSource/FHIR/TRE-R335-TypeSource"
    }]
  }
}

```
