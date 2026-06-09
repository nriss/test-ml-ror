### Classes Communes

<div style="background-color: #e8f4f8; border-left: 4px solid #0077be; padding: 12px 16px; margin-bottom: 16px;">
Cette section est destinée aux développeurs et intégrateurs. Elle décrit les classes transverses utilisées dans tous les modèles logiques ROR.
</div>

Les **Classes Communes** regroupent les éléments partagés par l'ensemble des modèles logiques ROR. Elles se divisent en deux catégories :

1. **RORMetadonnee** : classe spécifique au ROR, présente dans toutes les classes du modèle.
2. **Classes communes MOS** : classes héritées du MOS, utilisées pour la description des lieux, contacts, adresses et horaires.

---

#### Diagramme

{% include svg-interactive-styles.html %}

<div class="figure svg-wrap" style="width:100%;">
  <div class="btn-group-vertical position-absolute top-0 end-0 p-2 svg-controls">
    <button class="btn btn-light btn-sm svg-zoom-in" title="Zoom avant">🔍+</button>
    <button class="btn btn-light btn-sm svg-zoom-out" title="Zoom arrière">🔍−</button>
    <button class="btn btn-light btn-sm svg-zoom-reset" title="Réinitialiser">↻</button>
    <button class="btn btn-light btn-sm svg-fullscreen" title="Plein écran">⛶</button>
  </div>
  <p style="margin: 0; padding: 0;">
    {%include ClassesCommunes.svg%}
  </p>
</div>

{% include svg-interactive-script.html %}

---

#### RORMetadonnee

La **Métadonnée** est présente dans toutes les classes du modèle ROR (`metadonnee 1..1`). Elle permet de tracer les informations de gestion des données : date de création, date de mise à jour, identifiant de la donnée, commentaire, région source et modèle de saisie.

**Règle :** La métadonnée est obligatoire (`1..1`) sur toutes les classes du modèle ROR. Elle permet notamment d'identifier la région source de la donnée et de gérer les mises à jour dans le contexte d'un système fédéré.

{% include StructureDefinition-ror-metadonnee-dict.xhtml %}

---

#### Classes communes héritées du MOS

Les classes suivantes sont définies dans le [MOS (Modèle des Objets de Santé)](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/) et réutilisées dans les modèles ROR sans redéfinition.

| Classe MOS | Utilisation dans le ROR |
|---|---|
| [Adresse](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Adresse.html) | Adresse postale des Entités Géographiques, Lieux de réalisation |
| [Contact](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Contact.html) | Contacts des Entités Géographiques et Organisations Internes |
| [BoiteLettreMSS](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-BoiteLettreMSS.html) | Messagerie sécurisée de santé des professionnels |
| [Horaire](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Horaire.html) | Horaires d'ouverture des Offres Opérationnelles et Lieux |
| [Lieu](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Lieu.html) | Lieu géographique (parent de `RORLieuRealisationOffre`) |
| [DivisionTerritoriale](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-DivisionTerritoriale.html) | Zone géographique d'intervention d'une offre |
| [Telecommunication](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Telecommunication.html) | Coordonnées téléphoniques et numériques |

Ces classes sont documentées dans le MOS et ne sont pas redéfinies dans cet IG. Se référer à la documentation MOS pour le détail de leurs attributs.

#### Règles de gestion sur la classe Contact

- `RG_EXP_032` : Lors de la création d'un objet Contact, le niveau de confidentialité a la valeur par défaut « restreint ».
- `RG_EXP_034` : Le niveau de confidentialité de l'objet Télécommunication doit être plus restrictif ou égal au niveau de confidentialité de l'objet Contact auquel il est rattaché.
- `RG_EXP_039` : Dans une unité sensible, le niveau de confidentialité des contacts doit être positionné à la valeur « très restreint ».
- `RG_EXP_040` : Si l'attribut `natureContact` est renseigné dans l'objet Contact, alors il ne doit pas y avoir de `nom` de contact ni de `fonctionContact`.
- `RG_EXP_041` : Si l'attribut `fonctionContact` est renseigné dans l'objet Contact, alors il doit y avoir un `nom` de contact et il ne doit pas y avoir de `natureContact`.
