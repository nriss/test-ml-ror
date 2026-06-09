Logical: ROROrientationParticuliere
Parent: $MOS-OrientationParticuliere
Id: ror-orientation-particuliere
Title: "ROR - Orientation Particulière"
Description: "Spécialisation ROR de l'OrientationParticuliere du MOS. Orientation d'exercice : acupuncture ou homéopathie."
Characteristics: #can-be-target

* ^status = #draft
* . ^short = "Orientation particulière dans le contexte ROR"
* . ^definition = "Spécialisation ROR de l'OrientationParticuliere du MOS."

* orientationParticuliere from $TRE-G13-OrientationParticuliere (required)
