# Classes Communes - Modèle d'exposition du ROR dérivant du MOS (POC) v0.1.0

## Classes Communes

Cette section est destinée aux développeurs et intégrateurs. Elle décrit les classes transverses utilisées dans tous les modèles logiques ROR.

Les **Classes Communes** regroupent les éléments partagés par l'ensemble des modèles logiques ROR. Elles se divisent en deux catégories :

1. **RORMetadonnee**: classe spécifique au ROR, présente dans toutes les classes du modèle.
1. **Classes communes MOS**: classes héritées du MOS, utilisées pour la description des lieux, contacts, adresses et horaires.

-------

### Diagramme

classDiagram class Meta["RORMetadonnee"] { dateCreation : dateTime [1..1] dateMiseJour : dateTime [1..1] identifiant : Identifier [0..1] commentaire : string [0..1] regionSource : Coding [0..1] modeleSaisie : Identifier [0..1] } note for Meta "Présente dans toutes\nles classes ROR (1..1)" class Contact["Contact"] class Adresse["Adresse"] class MSS["BoiteLettreMSS"] class Horaire["Horaire"] class Lieu["Lieu"] class DT["DivisionTerritoriale"] class Tel["Telecommunication"] click Meta href "StructureDefinition-ror-metadonnee.html" "RORMetadonnee" cssClass "Contact,Adresse,MSS,Horaire,Lieu,DT,Tel" mosClass classDef mosClass fill:#D3D3D3,stroke:#888,color:#333

-------

### RORMetadonnee

La **Métadonnée** est présente dans toutes les classes du modèle ROR (`metadonnee 1..1`). Elle permet de tracer les informations de gestion des données : date de création, date de mise à jour, identifiant de la donnée, commentaire, région source et modèle de saisie.

**Règle :** La métadonnée est obligatoire (`1..1`) sur toutes les classes du modèle ROR. Elle permet notamment d'identifier la région source de la donnée et de gérer les mises à jour dans le contexte d'un système fédéré.

-------

### Classes communes héritées du MOS

Les classes suivantes sont définies dans le [MOS (Modèle des Objets de Santé)](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/) et réutilisées dans les modèles ROR sans redéfinition.

| | |
| :--- | :--- |
| [Adresse](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Adresse.html) | Adresse postale des Entités Géographiques, Lieux de réalisation |
| [Contact](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Contact.html) | Contacts des Entités Géographiques et Organisations Internes |
| [BoiteLettreMSS](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-BoiteLettreMSS.html) | Messagerie sécurisée de santé des professionnels |
| [Horaire](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Horaire.html) | Horaires d'ouverture des Offres Opérationnelles et Lieux |
| [Lieu](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Lieu.html) | Lieu géographique (parent de`RORLieuRealisationOffre`) |
| [DivisionTerritoriale](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-DivisionTerritoriale.html) | Zone géographique d'intervention d'une offre |
| [Telecommunication](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Telecommunication.html) | Coordonnées téléphoniques et numériques |

Ces classes sont documentées dans le MOS et ne sont pas redéfinies dans cet IG. Se référer à la documentation MOS pour le détail de leurs attributs.

### Règles de gestion sur la classe Contact

* `RG_EXP_032` : Lors de la création d'un objet Contact, le niveau de confidentialité a la valeur par défaut « restreint ».
* `RG_EXP_034` : Le niveau de confidentialité de l'objet Télécommunication doit être plus restrictif ou égal au niveau de confidentialité de l'objet Contact auquel il est rattaché.
* `RG_EXP_039` : Dans une unité sensible, le niveau de confidentialité des contacts doit être positionné à la valeur « très restreint ».
* `RG_EXP_040` : Si l'attribut `natureContact` est renseigné dans l'objet Contact, alors il ne doit pas y avoir de `nom` de contact ni de `fonctionContact`.
* `RG_EXP_041` : Si l'attribut `fonctionContact` est renseigné dans l'objet Contact, alors il doit y avoir un `nom` de contact et il ne doit pas y avoir de `natureContact`.

