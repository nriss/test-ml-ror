ValueSet: VS_RorSecteurActivite
Id: vs-ror-secteur-activite
Title: "ROR - Secteur d'activité (restreint)"
Description: """Restriction du ValueSet MOS `secteurActivite-vs` aux secteurs d'activité couverts par le périmètre du ROR.

Le ValueSet MOS de référence inclut l'ensemble des secteurs définis dans la TRE_R02-SecteurActivite (transports sanitaires, hôpitaux militaires, etc.). Cette restriction ne retient que les secteurs effectivement répertoriés dans le ROR."""

* ^status = #draft
* ^experimental = true
* ^copyright = "ANS"

// Secteurs retenus dans le périmètre ROR
* https://mos.esante.gouv.fr/NOS/TRE_R02-SecteurActivite/FHIR/TRE-R02-SecteurActivite#SA07 "Etablissement de santé privé d'intérêt collectif"
* https://mos.esante.gouv.fr/NOS/TRE_R02-SecteurActivite/FHIR/TRE-R02-SecteurActivite#SA08 "Etablissement de santé privé lucratif"
* https://mos.esante.gouv.fr/NOS/TRE_R02-SecteurActivite/FHIR/TRE-R02-SecteurActivite#SA09 "Etablissement public de santé"
* https://mos.esante.gouv.fr/NOS/TRE_R02-SecteurActivite/FHIR/TRE-R02-SecteurActivite#SA25 "Laboratoire de biologie médicale"
* https://mos.esante.gouv.fr/NOS/TRE_R02-SecteurActivite/FHIR/TRE-R02-SecteurActivite#SA29 "Cabinets et cliniques vétérinaires"
* https://mos.esante.gouv.fr/NOS/TRE_R02-SecteurActivite/FHIR/TRE-R02-SecteurActivite#SA33 "Etablissement et service social et médico-social"
* https://mos.esante.gouv.fr/NOS/TRE_R02-SecteurActivite/FHIR/TRE-R02-SecteurActivite#SA52 "Maison de santé"

// Exclus du ROR : transports sanitaires (SA10), hôpitaux militaires (SA02),
// médecine du travail (SA16), etc.
