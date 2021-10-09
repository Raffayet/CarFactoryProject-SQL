/* C1 */

CREATE TABLE Fabrika(
pib_f integer not null,
br_s_f integer not null,
komp varchar2(30),
lok varchar2(30),
CONSTRAINT Fabrika_PK PRIMARY KEY(pib_f),
CONSTRAINT Fabrika_CH CHECK(br_s_f > 3),
CONSTRAINT Fabrika_UK UNIQUE(lok)
);


CREATE TABLE SektorFabrike(
id_sf integer not null,
pib_f integer not null,
br_z integer not null,
nam_sf varchar2(30),
dr_sf varchar2(40),
CONSTRAINT SektorFabrike_PK PRIMARY KEY(id_sf, pib_f),
CONSTRAINT SektorFabrike_CH CHECK(br_z > 1),
CONSTRAINT SektorFabrike_UK UNIQUE(dr_sf),
CONSTRAINT SektorFabrike_FK FOREIGN KEY(pib_f) REFERENCES Fabrika(pib_f)
);

CREATE TABLE Masina(
id_m integer not null,
id_sektor integer not null,
pib_f integer not null,
cena_m integer not null,
nam_mas varchar2(30),
pr varchar2(30),
god_pr integer not null,
CONSTRAINT Masina_PK PRIMARY KEY(id_m, id_sektor, pib_f),
CONSTRAINT Masina_FK FOREIGN KEY(id_sektor, pib_f) REFERENCES SektorFabrike(id_sf, pib_f),
CONSTRAINT Masina_FK1 FOREIGN KEY(pib_f) REFERENCES Fabrika(pib_f),
CONSTRAINT Masina_CH CHECK(god_pr > 2005)
);

CREATE TABLE DobavljacRobe(
pib integer not null,
naz varchar2(30),
k_t integer not null,
vr_rb varchar2(30),
sed varchar2(30),
CONSTRAINT DobavljacRobe_PK PRIMARY KEY(pib),
CONSTRAINT DobavljacRobe_UK UNIQUE(naz),
CONSTRAINT DobavljacRobe_UK1 UNIQUE(k_t),
CONSTRAINT DobavljacRobe_UK2 UNIQUE(sed)
);

CREATE TABLE PotpisanUgovor(
pib_f integer not null,
pib integer not null,
id_sektora integer not null,
datum_ugovora date, /* ubaciti datum ugovora */
CONSTRAINT PotpisanUgovor_PK PRIMARY KEY (pib_f, pib),
CONSTRAINT PotpisanUgovor_FK FOREIGN KEY (pib_f) REFERENCES Fabrika(pib_f),
CONSTRAINT PotpisanUgovor_FK1 FOREIGN KEY (pib) REFERENCES DobavljacRobe(pib),
CONSTRAINT PotpisanUgovor_FK2 FOREIGN KEY (id_sektora, pib_f) REFERENCES SektorFabrike(id_sf, pib_f)
);