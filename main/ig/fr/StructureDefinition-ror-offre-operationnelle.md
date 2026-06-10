# ROR - Offre Opérationnelle - Démonstration - Modèle Logique ROR dérivant du MOS v0.1.0

## Modèle logique: ROR - Offre Opérationnelle 

 
Spécialisation ROR de l'OffreOperationnelle du MOS. Correspond aux prestations que peut réaliser une structure pour répondre au besoin de santé d'une personne dans le contexte ROR. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.test.ror|current/StructureDefinition/ror-offre-operationnelle)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [OffreOperationnelle](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-OffreOperationnelle.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [OffreOperationnelle](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-OffreOperationnelle.html) 

** Résumé **

Obligatoire : 4 éléments(1 élément obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [OffreOperationnelle](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-OffreOperationnelle.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [OffreOperationnelle](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-OffreOperationnelle.html) 

** Résumé **

Obligatoire : 4 éléments(1 élément obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-ror-offre-operationnelle.csv), [Excel](../StructureDefinition-ror-offre-operationnelle.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ror-offre-operationnelle",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle",
  "version" : "0.1.0",
  "name" : "ROROffreOperationnelle",
  "title" : "ROR - Offre Opérationnelle",
  "status" : "draft",
  "date" : "2026-06-10T12:22:45+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Spécialisation ROR de l'OffreOperationnelle du MOS. Correspond aux prestations que peut réaliser une structure pour répondre au besoin de santé d'une personne dans le contexte ROR.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-offre-operationnelle",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/OffreOperationnelle|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ror-offre-operationnelle",
      "path" : "ror-offre-operationnelle",
      "short" : "Offre opérationnelle dans le contexte ROR",
      "definition" : "Spécialisation ROR de l'OffreOperationnelle du MOS."
    },
    {
      "id" : "ror-offre-operationnelle.identifiantOffre",
      "path" : "ror-offre-operationnelle.identifiantOffre",
      "short" : "Identifiant de l'offre (obligatoire dans le ROR, format : codeINSEE/identifiant)",
      "min" : 1
    },
    {
      "id" : "ror-offre-operationnelle.typeOffre",
      "path" : "ror-offre-operationnelle.typeOffre",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J238-TypeOffre-ROR/FHIR/JDV-J238-TypeOffre-ROR|20250625120000"
      }
    },
    {
      "id" : "ror-offre-operationnelle.champActivite",
      "path" : "ror-offre-operationnelle.champActivite",
      "short" : "Champ d'activité principal de l'offre (obligatoire dans le ROR)",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-champ-activite|0.1.0"
      }
    },
    {
      "id" : "ror-offre-operationnelle.temporaliteAccueil",
      "path" : "ror-offre-operationnelle.temporaliteAccueil",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-temporalite-accueil|0.1.0"
      }
    },
    {
      "id" : "ror-offre-operationnelle.modePriseEnCharge",
      "path" : "ror-offre-operationnelle.modePriseEnCharge",
      "short" : "Mode de prise en charge (obligatoire dans le ROR)",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-mode-prise-en-charge|0.1.0"
      }
    },
    {
      "id" : "ror-offre-operationnelle.modaliteAccueil",
      "path" : "ror-offre-operationnelle.modaliteAccueil",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-modalite-accueil|0.1.0"
      }
    },
    {
      "id" : "ror-offre-operationnelle.modeGestion",
      "path" : "ror-offre-operationnelle.modeGestion",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-mode-gestion|0.1.0"
      }
    },
    {
      "id" : "ror-offre-operationnelle.uniteSensible",
      "path" : "ror-offre-operationnelle.uniteSensible",
      "short" : "Indicateur de confidentialité de l'offre (obligatoire dans le ROR)",
      "min" : 1
    },
    {
      "id" : "ror-offre-operationnelle.acteSpecifique",
      "path" : "ror-offre-operationnelle.acteSpecifique",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-acte-specifique|0.1.0"
      }
    },
    {
      "id" : "ror-offre-operationnelle.acteRealiseHorsCabinet",
      "path" : "ror-offre-operationnelle.acteRealiseHorsCabinet",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-acte-specifique|0.1.0"
      }
    },
    {
      "id" : "ror-offre-operationnelle.specialisationPriseEnCharge",
      "path" : "ror-offre-operationnelle.specialisationPriseEnCharge",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-specialisation-pec|0.1.0"
      }
    },
    {
      "id" : "ror-offre-operationnelle.ouvertureAnnuelle",
      "path" : "ror-offre-operationnelle.ouvertureAnnuelle",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-ouverture-annuelle|0.1.0"
      }
    },
    {
      "id" : "ror-offre-operationnelle.professionRessource",
      "path" : "ror-offre-operationnelle.professionRessource",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J186-ProfessionRessource-ROR/FHIR/JDV-J186-ProfessionRessource-ROR|20250623120000"
      }
    },
    {
      "id" : "ror-offre-operationnelle.competenceSpecifique",
      "path" : "ror-offre-operationnelle.competenceSpecifique",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ValueSet/jdv-ror-competence-specifique|0.1.0"
      }
    },
    {
      "id" : "ror-offre-operationnelle.niveauExpertise",
      "path" : "ror-offre-operationnelle.niveauExpertise",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J227-NiveauExpertise-ROR/FHIR/JDV-J227-NiveauExpertise-ROR|20250425120000"
      }
    },
    {
      "id" : "ror-offre-operationnelle.typeFermeture",
      "path" : "ror-offre-operationnelle.typeFermeture",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J185-typeFermeture-ROR/FHIR/JDV-J185-typeFermeture-ROR"
      }
    },
    {
      "id" : "ror-offre-operationnelle.metadonnee",
      "path" : "ror-offre-operationnelle.metadonnee",
      "short" : "Informations relatives à la gestion des données de l'offre opérationnelle dans le ROR.",
      "definition" : "Informations relatives à la gestion des données de l'offre opérationnelle dans le ROR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee"
      }]
    }]
  }
}

```
