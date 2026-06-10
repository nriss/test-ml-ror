Logical: RORLimiteCaracteristiqueEquipement
Parent: $Base
Id: ror-limite-caracteristique-equipement
Title: "ROR - Limite de Caractéristique d'Équipement"
Description: "Précise les limites que peut supporter l'équipement le plus tolérant parmi les équipements spécifiques de même type dans cette organisation. Par exemple, si une organisation possède 3 tables de bloc opératoire pouvant accueillir des patients d'un poids maximum de 180 kg, 190 kg et 200 kg, seule la valeur limite de 200 kg sera identifiée dans cette classe."
Characteristics: #can-be-target

* ^status = #draft

* typeCaracteristique 1..1 code "Type de caractéristique de l'équipement" "Indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée."
* typeCaracteristique from $TRE-R340-TypeCaracteristiqueEquipement (required)

* valeurLimite 1..1 Quantity "Valeur limite de la caractéristique" "Correspond à la valeur extrême associée à une caractéristique de l'équipement."
