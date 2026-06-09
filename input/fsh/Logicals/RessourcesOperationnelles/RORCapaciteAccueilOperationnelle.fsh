Logical: RORCapaciteAccueilOperationnelle
Parent: $Base
Id: ror-capacite-accueil-operationnelle
Title: "ROR - Capacité d'Accueil Opérationnelle"
Description: "Précise la CapacitePriseCharge par une série d'enregistrements indiquant la quantité de lits (ou places) pour un statut et une temporalité donnée. Le cumul des enregistrements donne une vision complète de la capacité d'un lieu."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Capacité d'accueil opérationnelle (lits/places) dans le contexte ROR"
* . ^definition = "Précise la CapacitePriseCharge par des enregistrements quantitatifs de lits ou places pour un statut et une temporalité donnée."

* natureCapacite 1..1 Coding "Indique si la capacité est exprimée en lits ou en places." "Indique si la capacité est exprimée en lits ou en places."
* natureCapacite from $TRE-R329-NatureCapacite (required)
* statutCapacite 1..1 Coding "Caractérise la capacité d'accueil et précise le statut des lits décrits." "Caractérise la capacité d'accueil et précise le statut des lits décrits."
* statutCapacite from $TRE-R330-StatutCapacite (required)
* temporaliteCapacite 1..1 Coding "Indique le moment où cette capacité sera effective (situation immédiate ou prospective)." "Indique le moment où cette capacité sera effective."
* temporaliteCapacite from $TRE-R331-Temporalite (required)
* nombreCapacite 1..1 integer "Quantité de lits ou places de la capacité exprimée." "Quantité de lits ou places de la capacité exprimée."
* typeSourceCapacite 1..1 Coding "Indique quel type de source est à l'origine de l'information de capacité." "Indique quel type de source est à l'origine de l'information de capacité."
* typeSourceCapacite from $TRE-R335-TypeSource (required)
* dateMAJCapacite 1..1 dateTime "Date à laquelle la capacité d'accueil a été mise à jour dans la source." "Date à laquelle la capacité d'accueil a été mise à jour dans la source."
* genreCapaciteDispo 0..1 Coding "Genre des patients pouvant être installés dans des lits disponibles." "Genre des patients pouvant être installés dans des lits disponibles."
* genreCapaciteDispo from $TRE-R332-GenreCapacite (required)
* typeFermetureCapacite 0..1 Coding "Statut des lits fermés permettant d'identifier lesquels peuvent être réactivés." "Statut des lits fermés."
* typeFermetureCapacite from $TRE-R333-TypeFermetureCapacite (required)
* typeLitSupplementaire 0..1 Coding "Statut des lits supplémentaires identifiant lesquels sont déjà mobilisés." "Statut des lits supplémentaires."
* typeLitSupplementaire from $TRE-R334-TypeLitSupplementaire (required)
* typeCrise 0..1 Coding "Type de crise permettant de mobiliser le nombre de lits supplémentaires décrits." "Type de crise permettant de mobiliser les lits supplémentaires."
* typeCrise from $TRE-R336-TypeCrise (required)
* metadonnee 1..1 https://interop.esante.gouv.fr/ig/fhir/test-ror/StructureDefinition/ror-metadonnee "Informations relatives à la gestion des données de capacité dans le ROR." "Informations relatives à la gestion des données de capacité dans le ROR."
