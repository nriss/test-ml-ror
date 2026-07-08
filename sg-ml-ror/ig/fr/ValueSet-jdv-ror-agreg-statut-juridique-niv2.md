# JDV ROR - Agrégat Statut Juridique Niv2 (provisoire) - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## ValueSet: JDV ROR - Agrégat Statut Juridique Niv2 (provisoire) (Expérimental) 

 
Jeu de valeurs provisoire incluant tous les codes de TRE_R69-FinessAgregatStatutJuridiqueNiv2 pour le contexte ROR. En attente de création officielle. 

 **References** 

* [ROR - Entité Juridique](StructureDefinition-ror-entite-juridique.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "jdv-ror-agreg-statut-juridique-niv2",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-agreg-statut-juridique-niv2",
  "version" : "0.1.0",
  "name" : "JDVRORAgregatStatutJuridiqueNiv2",
  "title" : "JDV ROR - Agrégat Statut Juridique Niv2 (provisoire)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-08T15:14:17+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R69-FinessAgregatStatutJuridiqueNiv2 pour le contexte ROR. En attente de création officielle.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R69-FinessAgregatStatutJuridiqueNiv2/FHIR/TRE-R69-FinessAgregatStatutJuridiqueNiv2",
      "version" : "20231215120000"
    }]
  }
}

```
