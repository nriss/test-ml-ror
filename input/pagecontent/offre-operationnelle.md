
<div style="background-color: #fff9e6; border-left: 4px solid #ff9800; padding: 12px 16px; margin-bottom: 16px;">
Cette section est transversale : elle décrit les prestations de soins qu'une structure peut réaliser, intéressant aussi bien les professionnels de santé que les développeurs.
</div>

La section **Offre Opérationnelle** décrit les prestations qu'une structure peut réaliser pour répondre au besoin de santé d'une personne. C'est le cœur fonctionnel du ROR : l'offre opérationnelle permet d'orienter les patients vers les établissements adaptés à leurs besoins.

### Donnée pivot

L'**identifiantOffre** est l'identifiant de l'offre opérationnelle, unique et persistant au niveau national, généré par une instance régionale du ROR ou par le ROR national. Lorsqu'il est généré par une instance régionale, il est de la forme `code INSEE régional / code interne ROR`.

---

### Diagramme

{% include svg-interactive-styles.html %}

<div class="figure svg-wrap" style="width:100%;">
  <div class="btn-group-vertical position-absolute top-0 end-0 p-2 svg-controls">
    <button class="btn btn-light btn-sm svg-zoom-in" title="Zoom avant">🔍+</button>
    <button class="btn btn-light btn-sm svg-zoom-out" title="Zoom arrière">🔍−</button>
    <button class="btn btn-light btn-sm svg-zoom-reset" title="Réinitialiser">↻</button>
    <button class="btn btn-light btn-sm svg-fullscreen" title="Plein écran">⛶</button>
  </div>
  <p style="margin: 0; padding: 0;">
    {%include OffreOperationnelle.svg%}
  </p>
</div>

{% include svg-interactive-script.html %}

---

### Modèles logiques

| Modèle ROR | Héritage MOS | Description |
|---|---|---|
| [ROROffreOperationnelle](StructureDefinition-ror-offre-operationnelle.html) | OffreOperationnelle | Prestation de soins réalisable par une structure |
| [RORActiviteOperationnelle](StructureDefinition-ror-activite-operationnelle.html) | Base | Activité opérationnelle exercée dans le cadre de l'offre |
| [RORPatientele](StructureDefinition-ror-patientele.html) | Patientele | Description de la patientèle cible de l'offre |

---

### ROROffreOperationnelle
L'**Offre Opérationnelle** décrit les prestations que peut réaliser une structure. Elle est rattachée à une Organisation Interne et peut être réalisée par un ou plusieurs professionnels de santé.

**Règles de gestion :**
- `RG_EXP_010` : Une offre DOIT être renseignée avec un et un seul `champActivite`, qui est invariable.
- `RG_EXP_011` : Une offre opérationnelle DOIT être renseignée avec un seul `modePriseEnCharge`, qui est invariable. Le changement de mode de prise en charge implique la création d'une nouvelle offre.
- `RG_EXP_028` : Une offre opérationnelle ne peut pas avoir plusieurs types d'offre relevant de champs d'activité différents.
- `RG_EXP_035` : Lors de la diffusion d'une unité élémentaire, l'indicateur `uniteSensible` a la valeur par défaut : `false` (l'unité ne revêt pas de caractère sensible et confidentiel).
- `RG_EXP_039` : Dans une unité sensible, le niveau de confidentialité des contacts doit être positionné à la valeur « très restreint ».
- `RG_EXP_042` : Pour un transfert d'une offre d'un établissement vers un autre, l'identifiant de l'offre transférée NE DOIT PAS changer.
- `RG_EXP_043` : La date de fermeture est obligatoire lorsqu'un type de fermeture est renseigné, sinon elle n'est jamais renseignée.
- `RG_EXP_044` : Lorsqu'un niveau de structure ou d'organisation est fermé, tous les niveaux inférieurs ainsi que toutes les offres opérationnelles qui lui sont rattachées sont également fermés avec le même type, la même date de fermeture et, le cas échéant, la même date de réouverture prévisionnelle.
- `RG_EXP_045` : La date de réouverture peut être renseignée lorsque le type de fermeture est « Fermeture temporaire », sinon elle n'est jamais renseignée.
- `RG_EXP_046` : La date de réouverture est remise à nulle lorsque l'offre est ouverte de nouveau.
- `RG_EXP_047` : Lorsqu'une offre opérationnelle est fermée, les ressources de type `statutCapacite` « disponible » doivent être à 0.

**Règles liées aux horaires :**
- `RG_EXP_014` : Les horaires transmis DOIVENT inclure au minimum une période (date début, date fin) ou un jour de semaine.
- `RG_EXP_015` : Si les horaires sont transmis sans période, ils s'appliquent aux jours de la semaine à partir du jour de la semaine de lecture de l'information dans le ROR. Il s'agit d'information sur une semaine glissante.
- `RG_EXP_016` : Les horaires de jours de semaine RESTENT les horaires de référence semaine après semaine TANT QU'aucun nouvel horaire n'est récupéré d'un ROR.
- `RG_EXP_017` : Les horaires portant sur une période (date début, date fin) DOIVENT être transmis si la période est en cours ou à venir lors de la lecture de l'information dans le ROR.
- `RG_EXP_018` : Les horaires portant sur une période échue (date de fin antérieure à la date du jour) lors de la lecture de l'information dans le ROR NE DOIVENT PAS être transmis.

{% include StructureDefinition-ror-offre-operationnelle-class-table.xhtml %}

---

### RORActiviteOperationnelle
L'**Activité Opérationnelle** caractérise l'activité exercée dans le cadre d'une offre opérationnelle.

**Règles de gestion :**
- `RG_EXP_007` : La `familleActiviteOperationnelle` DOIT être renseignée pour toute instance de la classe Activité Opérationnelle liée à une offre dont le `champActivite` est « médico-social ».

{% include StructureDefinition-ror-activite-operationnelle-class-table.xhtml %}

---

### RORPatientele
La **Patientèle** décrit les caractéristiques de la population cible de l'offre opérationnelle.

**Règles de gestion :**
- `RG_EXP_008` : Si le `champActivite` de l'offre est « médico-social », le public pris en charge (`publicPrisEnCharge`) DOIT être renseigné dans l'instance de la classe Patientèle.
- `RG_EXP_009` : Chaque instance de la zone d'intervention DOIT être composée par des instances de `DivisionTerritoriale` de type Commune.
- `RG_EXP_048` : L'unité de mesure (`Mesure/uniteMesure`) des attributs `ageMin` et `ageMax` accepte uniquement les valeurs suivantes : `a` (année), `mo` (mois), `wk` (semaine), `d` (jour).

{% include StructureDefinition-ror-patientele-class-table.xhtml %}
