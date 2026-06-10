# Resource Modèle d'exposition du ROR dérivant du MOS (POC)



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "ans.fhir.fr.test.ror",
  "language" : "fr",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/ImplementationGuide/ans.fhir.fr.test.ror",
  "version" : "0.1.0",
  "name" : "TestROR",
  "title" : "Modèle d'exposition du ROR dérivant du MOS (POC)",
  "status" : "draft",
  "date" : "2026-06-10T12:45:37+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "IG de démonstration illustrant comment définir des modèles logiques ROR qui dérivent des modèles logiques du MOS (Modèle des Objets de Santé).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "packageId" : "ans.fhir.fr.test.ror",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.1.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.3.0"
  },
  {
    "id" : "ans_fr_mos",
    "uri" : "https://interop.esante.gouv.fr/ig/mos/ImplementationGuide/ans.fr.mos",
    "packageId" : "ans.fr.mos",
    "version" : "0.1.0-ballot"
  },
  {
    "id" : "hl7_fhir_uv_xver_r5_r4",
    "uri" : "http://hl7.org/fhir/uv/xver/ImplementationGuide/hl7.fhir.uv.xver-r5.r4",
    "packageId" : "hl7.fhir.uv.xver-r5.r4",
    "version" : "0.1.0"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2024+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "shownav"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-expansion-params"
      },
      {
        "url" : "value",
        "valueString" : "../../expansion-params.json"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-all"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "progress"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "fr"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/expansion-parameters",
      "valueReference" : {
        "reference" : "Parameters/expansion-parameters"
      }
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2024+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "shownav"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-expansion-params"
      },
      {
        "url" : "value",
        "valueString" : "../../expansion-params.json"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-all"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "progress"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "fr"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://interop.esante.gouv.fr/ig/fhir/test-ror/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "grouping" : [{
      "id" : "ReglesDéGestion",
      "name" : "Règles de gestion",
      "description" : "Instances Requirements regroupant les règles de gestion RG_EXP_* du modèle d'exposition ROR"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-accessibilite-lieu"
      },
      "name" : "JDV ROR - Accessibilité Lieu (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R202-AccessibiliteLieu pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-acte-specifique"
      },
      "name" : "JDV ROR - Acte Spécifique (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R210-ActeSpecifique pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-activite-operationnelle"
      },
      "name" : "JDV ROR - Activité Opérationnelle (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R211-ActiviteOperationnelle pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-affectation-temporaire"
      },
      "name" : "JDV ROR - Affectation Temporaire (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R337-AffectationTemporaire pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-agreg-statut-juridique-niv2"
      },
      "name" : "JDV ROR - Agrégat Statut Juridique Niv2 (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R69-FinessAgregatStatutJuridiqueNiv2 pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-aide-financiere"
      },
      "name" : "JDV ROR - Aide Financière (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R241-AideFinanciere pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-capacite-savoir-faire"
      },
      "name" : "JDV ROR - Capacité de Savoir-Faire (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R43-CapaciteSavoirFaire pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-champ-activite"
      },
      "name" : "JDV ROR - Champ d'Activité (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R227-ChampActivite pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-civilite"
      },
      "name" : "JDV ROR - Civilité (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R81-Civilite pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-civilite-exercice"
      },
      "name" : "JDV ROR - Civilité d'Exercice (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R11-CiviliteExercice pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-competence"
      },
      "name" : "JDV ROR - Compétence (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R39-Competence pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-competence-exclusive"
      },
      "name" : "JDV ROR - Compétence Exclusive (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R40-CompetenceExclusive pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-competence-specifique"
      },
      "name" : "JDV ROR - Compétence Spécifique (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R243-CompetenceSpecifique pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-condition-tarifaire"
      },
      "name" : "JDV ROR - Condition Tarifaire (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R250-ConditionTarifaire pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-desc-non-qualifiant"
      },
      "name" : "JDV ROR - DESC Non Qualifiant (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R42-DESCnonQualifiant pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-droit-exercice-complementaire"
      },
      "name" : "JDV ROR - Droit d'Exercice Complémentaire (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R97-DroitExerciceCompl pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-genre-capacite"
      },
      "name" : "JDV ROR - Genre de Capacité (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R332-GenreCapacite pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-modalite-accueil"
      },
      "name" : "JDV ROR - Modalité d'Accueil (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R338-ModaliteAccueil pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-espic"
      },
      "name" : "JDV ROR - Modalité Participation SPH / ESPIC (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R73-ESPIC pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-mode-exercice"
      },
      "name" : "JDV ROR - Mode d'Exercice (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R23-ModeExercice pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-mode-gestion"
      },
      "name" : "JDV ROR - Mode de Gestion (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R236-ModeGestion pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-mode-prise-en-charge"
      },
      "name" : "JDV ROR - Mode de Prise en Charge (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R213-ModePriseEnCharge pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-nature-capacite"
      },
      "name" : "JDV ROR - Nature de Capacité (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R329-NatureCapacite pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-niveau-dependance"
      },
      "name" : "JDV ROR - Niveau de Dépendance (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R237-NiveauDependance pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-niveau-recours-orsan"
      },
      "name" : "JDV ROR - Niveau Recours ORSAN (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R284-NiveauRecoursORSAN pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-orientation-particuliere"
      },
      "name" : "JDV ROR - Orientation Particulière (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_G13-OrientationParticuliere pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-ouverture-annuelle"
      },
      "name" : "JDV ROR - Ouverture Annuelle (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R238-OuvertureAnnuelle pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-prestation-non-obligatoire"
      },
      "name" : "JDV ROR - Prestation Non Obligatoire Incluse (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R264-PrestationNonObligatoireIncluse pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-profession-sante"
      },
      "name" : "JDV ROR - Profession de Santé (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_G15-ProfessionSante pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-public-pris-en-charge"
      },
      "name" : "JDV ROR - Public Pris en Charge (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R239-PublicPrisEnCharge pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-qualification-pac"
      },
      "name" : "JDV ROR - Qualification PAC (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R44-QualificationPAC pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-secteur-conventionnement"
      },
      "name" : "JDV ROR - Secteur Conventionnement (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R282-CNAMAmeliSecteurConventionnement pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-specialisation-pec"
      },
      "name" : "JDV ROR - Spécialisation de Prise en Charge (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R245-SpecialisationDePriseEnCharge pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-specialite-ordinale"
      },
      "name" : "JDV ROR - Spécialité Ordinale (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R38-SpecialiteOrdinale pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-statut-capacite"
      },
      "name" : "JDV ROR - Statut de Capacité (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R330-StatutCapacite pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-finess-statut-juridique"
      },
      "name" : "JDV ROR - Statut Juridique FINESS (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R72-FinessStatutJuridique pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-surspecialite-transversale"
      },
      "name" : "JDV ROR - Surspécialité Transversale (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R359-SurspecialiteTransversale pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-temporalite"
      },
      "name" : "JDV ROR - Temporalité (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R331-Temporalite pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-temporalite-accueil"
      },
      "name" : "JDV ROR - Temporalité d'Accueil (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R240-TemporaliteAccueil pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-type-habitation"
      },
      "name" : "JDV ROR - Type d'Habitation (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R242-TypeHabitation pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-type-crise"
      },
      "name" : "JDV ROR - Type de Crise (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R336-TypeCrise pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-type-fermeture-capacite"
      },
      "name" : "JDV ROR - Type de Fermeture de Capacité (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R333-TypeFermetureCapacite pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-type-lit-supplementaire"
      },
      "name" : "JDV ROR - Type de Lit Supplémentaire (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R334-TypeLitSupplementaire pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-type-savoir-faire"
      },
      "name" : "JDV ROR - Type de Savoir-Faire (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R04-TypeSavoirFaire pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-type-source"
      },
      "name" : "JDV ROR - Type de Source (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R335-TypeSource pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-type-tarif"
      },
      "name" : "JDV ROR - Type de Tarif (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R246-TypeTarif pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-type-organisation-interne"
      },
      "name" : "JDV ROR - Type Organisation Interne (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R207-TypeOrganisationInterne pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-unite-prix"
      },
      "name" : "JDV ROR - Unité de Prix (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R228-UnitePrix pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/jdv-ror-equipement"
      },
      "name" : "JDV ROR - Équipement (provisoire)",
      "description" : "Jeu de valeurs provisoire incluant tous les codes de TRE_R212-Equipement pour le contexte ROR. En attente de création officielle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-activite-operationnelle"
      },
      "name" : "ROR - Activité Opérationnelle",
      "description" : "Ensemble cohérent d'actions et de pratiques mises en œuvre pour participer au rétablissement ou à l'entretien de la Santé d'une personne dans le contexte ROR. Les activités opérationnelles peuvent être regroupées au sein de familles d'activités.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-capacite-savoir-faire"
      },
      "name" : "ROR - Capacité (Savoir-Faire)",
      "description" : "Spécialisation ROR de la CapaciteSavoirfaire du MOS. Reconnaissance par l'ordre d'un diplôme de capacité, complétant les savoir-faire principaux.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-capacite-accueil-operationnelle"
      },
      "name" : "ROR - Capacité d'Accueil Opérationnelle",
      "description" : "Précise la CapacitePriseCharge par une série d'enregistrements indiquant la quantité de lits (ou places) pour un statut et une temporalité donnée. Le cumul des enregistrements donne une vision complète de la capacité d'un lieu.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-capacite-habitation"
      },
      "name" : "ROR - Capacité d'Habitation",
      "description" : "Spécialisation ROR de la CapaciteHabitation du MOS. Décrit un type d'habitation adapté à la réalisation d'une offre et le nombre d'habitations associées.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-capacite-prise-charge"
      },
      "name" : "ROR - Capacité de Prise en Charge",
      "description" : "Spécialisation ROR de la CapacitePriseCharge du MOS. Indique l'affectation des lits d'une zone d'hébergement, notamment dans le cadre d'une gestion de crise.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-competence"
      },
      "name" : "ROR - Compétence",
      "description" : "Spécialisation ROR de la Competence du MOS. Titre délivré par l'ordre national des médecins aux praticiens ayant débuté leurs études médicales avant la réforme de 1982.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-competence-exclusive"
      },
      "name" : "ROR - Compétence Exclusive",
      "description" : "Spécialisation ROR de la CompetenceExclusive du MOS. Compétence exercée à titre exclusif, incompatible avec l'exercice d'une spécialité.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-desc-non-qualifiant"
      },
      "name" : "ROR - DESC Non Qualifiant",
      "description" : "Spécialisation ROR du DESCNonQualifiant du MOS. Diplôme d'études spécialisées complémentaires de groupe I, valable en complément de la spécialité.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-droit-exercice-complementaire"
      },
      "name" : "ROR - Droit d'Exercice Complémentaire",
      "description" : "Spécialisation ROR du DroitExerciceComplementaire du MOS. Droit d'exercice dans une spécialité définie par un DESC de médecine du groupe I.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-entite-geographique"
      },
      "name" : "ROR - Entité Géographique",
      "description" : "Spécialisation ROR de l'EntiteGeographique du MOS. Correspond à un établissement ou lieu d'exercice dans le contexte du Répertoire Opérationnel des Ressources.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-entite-juridique"
      },
      "name" : "ROR - Entité Juridique",
      "description" : "Spécialisation ROR de l'EntiteJuridique du MOS. Correspond à la notion de personne morale dans le contexte du Répertoire Opérationnel des Ressources.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-exercice-professionnel"
      },
      "name" : "ROR - Exercice Professionnel",
      "description" : "Spécialisation ROR de l'ExerciceProfessionnel du MOS. Informations décrivant la profession exercée et l'identité d'exercice d'un professionnel.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-forfait-socle-hebergement"
      },
      "name" : "ROR - Forfait Socle Hébergement",
      "description" : "Tarif journalier et par personne (majoritairement appliqué par l'établissement) pour un type d'hébergement donné. Inclut obligatoirement les prestations définies dans le décret n°2015-1868. Ce tarif peut être modulable pour les personnes bénéficiaires de l'aide sociale.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-lieu-realisation-offre"
      },
      "name" : "ROR - Lieu de Réalisation de l'Offre",
      "description" : "Spécialisation ROR du LieuRealisationOffre du MOS. Espace disposant d'un ensemble de ressources pour réaliser une offre. Lorsque les ressources sont mobiles, le lieu correspond au lieu administratif où est organisée la prise en charge.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-limite-caracteristique-equipement"
      },
      "name" : "ROR - Limite de Caractéristique d'Équipement",
      "description" : "Précise les limites que peut supporter l'équipement le plus tolérant parmi les équipements spécifiques de même type dans cette organisation. Par exemple, si une organisation possède 3 tables de bloc opératoire pouvant accueillir des patients d'un poids maximum de 180 kg, 190 kg et 200 kg, seule la valeur limite de 200 kg sera identifiée dans cette classe.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-metadonnee"
      },
      "name" : "ROR - Métadonnée",
      "description" : "Informations relatives à la gestion des classes et des données du ROR. Permet aux applications consommatrices de se synchroniser en identifiant les créations, modifications et suppressions d'objets.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-offre-operationnelle"
      },
      "name" : "ROR - Offre Opérationnelle",
      "description" : "Spécialisation ROR de l'OffreOperationnelle du MOS. Correspond aux prestations que peut réaliser une structure pour répondre au besoin de santé d'une personne dans le contexte ROR.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-organisation-interne"
      },
      "name" : "ROR - Organisation Interne",
      "description" : "Spécialisation ROR de l'OrganisationInterne du MOS. Classe abstraite décrivant l'organisation opérationnelle interne d'une EG (pôles, services, unités fonctionnelles).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-orientation-particuliere"
      },
      "name" : "ROR - Orientation Particulière",
      "description" : "Spécialisation ROR de l'OrientationParticuliere du MOS. Orientation d'exercice : acupuncture ou homéopathie.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-patientele"
      },
      "name" : "ROR - Patientèle",
      "description" : "Spécialisation ROR de la Patientele du MOS. Ensemble de personnes répondant à des critères leur permettant de bénéficier de la prestation décrite.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-personne-physique"
      },
      "name" : "ROR - Personne Physique",
      "description" : "Spécialisation ROR de la PersonnePhysique du MOS. Individu titulaire de droits et d'obligations caractérisé par une identité civile, dans le contexte ROR.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-professionnel"
      },
      "name" : "ROR - Professionnel",
      "description" : "Spécialisation ROR du Professionnel du MOS. Données d'identification pérennes d'une personne physique travaillant dans les domaines sanitaire, médico-social et social.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-pole"
      },
      "name" : "ROR - Pôle",
      "description" : "Spécialisation ROR du PoleActivite du MOS. Pôle d'activité au sens de la loi HPST, art.13. Organisation interne de premier niveau regroupant des structures internes.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-qualification-pac"
      },
      "name" : "ROR - Qualification PAC",
      "description" : "Spécialisation ROR de la QualificationPAC du MOS. Qualification de praticien adjoint contractuel autorisant à exercer en établissement sans qualification ordinale.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-savoir-faire"
      },
      "name" : "ROR - Savoir-Faire",
      "description" : "Spécialisation ROR du SavoirFaire du MOS. Prérogatives d'exercice d'un professionnel reconnues par une autorité d'enregistrement (spécialités, compétences, etc.).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-situation-operationnelle"
      },
      "name" : "ROR - Situation Opérationnelle",
      "description" : "Spécialisation ROR de la SituationOperationnelle du MOS. Caractérise les conditions d'exercice du professionnel dans le cadre de l'offre décrite.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-specialite"
      },
      "name" : "ROR - Spécialité",
      "description" : "Spécialisation ROR de la Specialite du MOS. Spécialité médicale ou odontologique reconnue par une autorité d'enregistrement.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-structure-interne"
      },
      "name" : "ROR - Structure Interne",
      "description" : "Spécialisation ROR de la StructureInterne du MOS. Service, unité, centre ou département au sein d'un pôle. Synonymes : service, unité, centre, institut, département.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-supplement-tarif-hebergement"
      },
      "name" : "ROR - Supplément Tarif Hébergement",
      "description" : "Caractéristiques des lieux d'hébergement en SSR qui entraînent le paiement d'un complément au tarif de base de l'hébergement.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-surspecialite-transversale"
      },
      "name" : "ROR - Surspécialité Transversale",
      "description" : "Spécialisation ROR de la SurspecialiteTransversale du MOS. Droit d'exercice complémentaire au sein de la spécialité du médecin, acquis par une formation spécialisée transversale (FST).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-tarif"
      },
      "name" : "ROR - Tarif",
      "description" : "Classe abstraite contenant les attributs communs aux classes décrivant les prix des prestations et services fournis par l'établissement dans le contexte ROR. Un type de tarif s'applique à une catégorie de services pour lesquels l'entité géographique a fixé un prix.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-tarif-accueil-de-jour"
      },
      "name" : "ROR - Tarif Accueil de Jour",
      "description" : "Tarif journalier et par personne appliqué par l'établissement pour un accueil de jour.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-tarif-aides-humaines"
      },
      "name" : "ROR - Tarif Aides Humaines",
      "description" : "Tarif horaire ou forfaitaire (avec charges) des intervenants à domicile.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-tarif-dependance"
      },
      "name" : "ROR - Tarif Dépendance",
      "description" : "Tarif correspondant au niveau de dépendance de la personne âgée accueillie. Il y a 3 niveaux de tarifs selon le GIR.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-tarif-portage-repas"
      },
      "name" : "ROR - Tarif Portage Repas",
      "description" : "Tarif unitaire ou forfaitaire (avec charges) d'un service de livraison de repas à domicile. Les conditions tarifaires précisent s'il s'agit d'un tarif aide sociale.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-tarif-prestation-supplementaire"
      },
      "name" : "ROR - Tarif Prestation Supplémentaire",
      "description" : "Tarifs des principales prestations supplémentaires qui ne sont pas comprises dans le tarif hébergement de l'établissement et qui peuvent avoir un impact sur l'orientation. Les attributs DOIVENT être mutuellement exclusifs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-unite-fonctionnelle"
      },
      "name" : "ROR - Unité Fonctionnelle",
      "description" : "Spécialisation ROR de l'UniteFonctionnelle du MOS. Plus petite unité compatible avec les contraintes de gestion présentant une activité médicale homogène.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ror-equipement-specifique"
      },
      "name" : "ROR - Équipement Spécifique",
      "description" : "Spécialisation ROR de l'EquipementSpecifique du MOS. Ressource matérielle discriminante pour la réalisation d'une prestation, propre à la structure ou mise à disposition via convention (sur site).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Basic"
      }],
      "reference" : {
        "reference" : "Basic/ror-requirements-classes-communes"
      },
      "name" : "Règles de gestion - Classes Communes",
      "description" : "Règles de gestion relatives aux classes communes (Contact, Telecommunication, Metadonnee)",
      "exampleBoolean" : false,
      "groupingId" : "ReglesDéGestion"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Basic"
      }],
      "reference" : {
        "reference" : "Basic/ror-requirements-offre-operationnelle"
      },
      "name" : "Règles de gestion - Offre Opérationnelle",
      "description" : "Règles de gestion relatives aux classes OffreOperationnelle, ActiviteOperationnelle et Patientele",
      "exampleBoolean" : false,
      "groupingId" : "ReglesDéGestion"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Basic"
      }],
      "reference" : {
        "reference" : "Basic/ror-requirements-organisation"
      },
      "name" : "Règles de gestion - Organisation",
      "description" : "Règles de gestion relatives aux classes Organisation (OrganisationInterne, Pole, StructureInterne, UniteFonctionnelle)",
      "exampleBoolean" : false,
      "groupingId" : "ReglesDéGestion"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Basic"
      }],
      "reference" : {
        "reference" : "Basic/ror-requirements-professionnel"
      },
      "name" : "Règles de gestion - Professionnel Ressource",
      "description" : "Règles de gestion relatives aux classes Professionnel et SituationOperationnelle",
      "exampleBoolean" : false,
      "groupingId" : "ReglesDéGestion"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Basic"
      }],
      "reference" : {
        "reference" : "Basic/ror-requirements-ressources-operationnelles"
      },
      "name" : "Règles de gestion - Ressources Opérationnelles",
      "description" : "Règles de gestion relatives aux classes Ressources Opérationnelles du modèle d'exposition ROR",
      "exampleBoolean" : false,
      "groupingId" : "ReglesDéGestion"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Basic"
      }],
      "reference" : {
        "reference" : "Basic/ror-requirements-structure"
      },
      "name" : "Règles de gestion - Structure",
      "description" : "Règles de gestion relatives aux classes EntiteJuridique et EntiteGeographique",
      "exampleBoolean" : false,
      "groupingId" : "ReglesDéGestion"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Basic"
      }],
      "reference" : {
        "reference" : "Basic/ror-requirements-tarif"
      },
      "name" : "Règles de gestion - Tarif",
      "description" : "Règles de gestion relatives aux classes Tarif du modèle d'exposition ROR",
      "exampleBoolean" : false,
      "groupingId" : "ReglesDéGestion"
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Accueil",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "avantages-ml.html"
        }],
        "nameUrl" : "avantages-ml.html",
        "title" : "Pourquoi le Modèle Logique HL7 ?",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "classes-communes.html"
        }],
        "nameUrl" : "classes-communes.html",
        "title" : "Classes Communes",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "structure.html"
        }],
        "nameUrl" : "structure.html",
        "title" : "Structure",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "organisation.html"
        }],
        "nameUrl" : "organisation.html",
        "title" : "Organisation",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "offre-operationnelle.html"
        }],
        "nameUrl" : "offre-operationnelle.html",
        "title" : "Offre Opérationnelle",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "tarif.html"
        }],
        "nameUrl" : "tarif.html",
        "title" : "Tarif",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "ressources-operationnelles.html"
        }],
        "nameUrl" : "ressources-operationnelles.html",
        "title" : "Ressources Opérationnelles",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "professionnel.html"
        }],
        "nameUrl" : "professionnel.html",
        "title" : "Professionnel Ressource",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "regles-de-gestion.html"
        }],
        "nameUrl" : "regles-de-gestion.html",
        "title" : "Règles de gestion",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "change-log.html"
        }],
        "nameUrl" : "change-log.html",
        "title" : "Historique des versions",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/assets"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
