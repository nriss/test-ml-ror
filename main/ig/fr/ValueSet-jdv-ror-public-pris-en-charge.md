# JDV ROR - Public Pris en Charge (provisoire) - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## ValueSet: JDV ROR - Public Pris en Charge (provisoire) (Expérimental) 

 
Jeu de valeurs provisoire incluant tous les codes de TRE_R239-PublicPrisEnCharge pour le contexte ROR. En attente de création officielle. 

 **References** 

* [ROR - Patientèle](StructureDefinition-ror-patientele.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "jdv-ror-public-pris-en-charge",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-public-pris-en-charge",
  "version" : "0.1.0",
  "name" : "JDVRORPublicPrisEnCharge",
  "title" : "JDV ROR - Public Pris en Charge (provisoire)",
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
  "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R239-PublicPrisEnCharge pour le contexte ROR. En attente de création officielle.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R239-PublicPrisEnCharge/FHIR/TRE-R239-PublicPrisEnCharge",
      "version" : "20250328120000"
    }]
  }
}

```
