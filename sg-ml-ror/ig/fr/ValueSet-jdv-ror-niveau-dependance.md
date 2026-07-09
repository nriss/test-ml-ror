# JDV ROR - Niveau de Dépendance (provisoire) - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## ValueSet: JDV ROR - Niveau de Dépendance (provisoire) (Expérimental) 

 
Jeu de valeurs provisoire incluant tous les codes de TRE_R237-NiveauDependance pour le contexte ROR. En attente de création officielle. 

 **References** 

* [ROR - Tarif Dépendance](StructureDefinition-ror-tarif-dependance.md)

### Définition logique (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "jdv-ror-niveau-dependance",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-niveau-dependance",
  "version" : "0.1.0",
  "name" : "JDVRORNiveauDependance",
  "title" : "JDV ROR - Niveau de Dépendance (provisoire)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-09T12:48:10+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R237-NiveauDependance pour le contexte ROR. En attente de création officielle.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R237-NiveauDependance/FHIR/TRE-R237-NiveauDependance"
    }]
  }
}

```
