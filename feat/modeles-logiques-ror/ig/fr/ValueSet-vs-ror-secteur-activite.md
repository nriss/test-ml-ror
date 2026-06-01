# ROR - Secteur d'activité (restreint) - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## ValueSet: ROR - Secteur d'activité (restreint) (Expérimental) 

 
Restriction du ValueSet MOS `secteurActivite-vs` aux secteurs d'activité couverts par le périmètre du ROR. 
Le ValueSet MOS de référence inclut l'ensemble des secteurs définis dans la TRE_R02-SecteurActivite (transports sanitaires, hôpitaux militaires, etc.). Cette restriction ne retient que les secteurs effectivement répertoriés dans le ROR. 

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
  "id" : "vs-ror-secteur-activite",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/vs-ror-secteur-activite",
  "version" : "0.1.0",
  "name" : "VS_RorSecteurActivite",
  "title" : "ROR - Secteur d'activité (restreint)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-01T10:07:23+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Restriction du ValueSet MOS `secteurActivite-vs` aux secteurs d'activité couverts par le périmètre du ROR.\n\nLe ValueSet MOS de référence inclut l'ensemble des secteurs définis dans la TRE_R02-SecteurActivite (transports sanitaires, hôpitaux militaires, etc.). Cette restriction ne retient que les secteurs effectivement répertoriés dans le ROR.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "copyright" : "ANS",
  "compose" : {
    "include" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R02-SecteurActivite/FHIR/TRE-R02-SecteurActivite",
      "version" : "20250523120000",
      "concept" : [{
        "code" : "SA07",
        "display" : "Etablissement de santé privé d'intérêt collectif"
      },
      {
        "code" : "SA08",
        "display" : "Etablissement de santé privé lucratif"
      },
      {
        "code" : "SA09",
        "display" : "Etablissement public de santé"
      },
      {
        "code" : "SA25",
        "display" : "Laboratoire de biologie médicale"
      },
      {
        "code" : "SA29",
        "display" : "Cabinets et cliniques vétérinaires"
      },
      {
        "code" : "SA33",
        "display" : "Etablissement et service social et médico-social"
      },
      {
        "code" : "SA52",
        "display" : "Maison de santé"
      }]
    }]
  }
}

```
