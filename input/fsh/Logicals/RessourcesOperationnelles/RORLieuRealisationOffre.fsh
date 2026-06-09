Logical: RORLieuRealisationOffre
Parent: $MOS-LieuRealisationOffre
Id: ror-lieu-realisation-offre
Title: "ROR - Lieu de Réalisation de l'Offre"
Description: "Spécialisation ROR du LieuRealisationOffre du MOS. Espace disposant d'un ensemble de ressources pour réaliser une offre. Lorsque les ressources sont mobiles, le lieu correspond au lieu administratif où est organisée la prise en charge."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Lieu de réalisation de l'offre dans le contexte ROR"
* . ^definition = "Spécialisation ROR du LieuRealisationOffre du MOS."

// Élément additionnel propre au ROR
* commentaire 0..1 string "Commentaire permettant de donner des informations complémentaires sur le lieu." "Commentaire permettant de donner des informations complémentaires sur le lieu."
* metadonnee 1..1 https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee "Informations relatives à la gestion des données du lieu de réalisation dans le ROR." "Informations relatives à la gestion des données du lieu de réalisation dans le ROR."
