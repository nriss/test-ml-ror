Logical: RORActiviteOperationnelle
Parent: $Base
Id: ror-activite-operationnelle
Title: "ROR - Activité Opérationnelle"
Description: "Ensemble cohérent d'actions et de pratiques mises en œuvre pour participer au rétablissement ou à l'entretien de la Santé d'une personne dans le contexte ROR. Les activités opérationnelles peuvent être regroupées au sein de familles d'activités."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Activité opérationnelle dans le contexte ROR"
* . ^definition = "Ensemble cohérent d'actions et de pratiques mises en œuvre pour répondre aux besoins de santé d'une personne."

* activiteOperationnelle 1..1 Coding "Une activité opérationnelle est un ensemble cohérent d'actions et de pratiques mises en œuvre pour répondre aux besoins de Santé de la personne. Elle peut être d'ordre sanitaire, social ou médico-social." "Une activité opérationnelle est un ensemble cohérent d'actions et de pratiques mises en œuvre pour répondre aux besoins de Santé de la personne."
* activiteOperationnelle from $TRE-R211-ActiviteOperationnelle (required)
* familleActiviteOperationnelle 0..1 Coding "Regroupement cohérent d'activités délivrées dans le cadre d'une prestation, répondant à un besoin de la personne. Dans le secteur médico-social, correspond au niveau 4 des prestations de la nomenclature SERAFIN." "Regroupement cohérent d'activités délivrées dans le cadre d'une prestation."
* familleActiviteOperationnelle from $JDV-J51-FamilleActiviteOperationnelle-ROR (required)
* metadonnee 1..1 https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee "Informations relatives à la gestion des données de l'activité opérationnelle dans le ROR." "Informations relatives à la gestion des données de l'activité opérationnelle dans le ROR."
