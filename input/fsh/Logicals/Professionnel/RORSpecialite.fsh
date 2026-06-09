Logical: RORSpecialite
Parent: $MOS-Specialite
Id: ror-specialite
Title: "ROR - Spécialité"
Description: "Spécialisation ROR de la Specialite du MOS. Spécialité médicale ou odontologique reconnue par une autorité d'enregistrement."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Spécialité ordinale dans le contexte ROR"
* . ^definition = "Spécialisation ROR de la Specialite du MOS."

// Contraintes ROR sur éléments hérités du MOS
* specialite from $TRE-R38-SpecialiteOrdinale (required)
