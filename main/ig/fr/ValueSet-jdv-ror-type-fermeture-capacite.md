# JDV ROR - Type de Fermeture de Capacité (provisoire) - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## ValueSet: JDV ROR - Type de Fermeture de Capacité (provisoire) (Expérimental) 

 
Jeu de valeurs provisoire incluant tous les codes de TRE_R333-TypeFermetureCapacite pour le contexte ROR. En attente de création officielle. 

 **References** 

* [ROR - Capacité d'Accueil Opérationnelle](StructureDefinition-ror-capacite-accueil-operationnelle.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "jdv-ror-type-fermeture-capacite",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-type-fermeture-capacite",
  "version" : "0.1.0",
  "name" : "JDVRORTypeFermetureCapacite",
  "title" : "JDV ROR - Type de Fermeture de Capacité (provisoire)",
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
  "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R333-TypeFermetureCapacite pour le contexte ROR. En attente de création officielle.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R333-TypeFermetureCapacite/FHIR/TRE-R333-TypeFermetureCapacite",
      "version" : "20231215120000"
    }]
  }
}

```
