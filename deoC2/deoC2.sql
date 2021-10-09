/* C2 */

INSERT INTO Fabrika
(pib_f, br_s_f, komp, lok)
VALUES
(1003345123, 5, 'BMW', 'Djerdja Molnara 3');
INSERT INTO Fabrika
(pib_f, br_s_f, komp, lok)
VALUES
(1006345123, 8, 'Volkswagen', 'Kornelija Stankovica 2');
INSERT INTO Fabrika
(pib_f, br_s_f, komp, lok)
VALUES
(1003345124, 6, 'Mercedes-Benz', 'Djerdja Molnara 6');
INSERT INTO Fabrika
(pib_f, br_s_f, komp, lok)
VALUES
(1003345125, 9, 'General Motors', 'Andje Rankovic 7');
INSERT INTO Fabrika
(pib_f, br_s_f, komp, lok)
VALUES
(1003345128, 10, 'Peugeot', 'Pancevacka 33');
INSERT INTO Fabrika
(pib_f, br_s_f, komp, lok)
VALUES
(1003345129, 6, 'Renault', 'Rumenacka 28');
INSERT INTO Fabrika
(pib_f, br_s_f, komp, lok)
VALUES
(1003345322, 5, 'BMW', 'Vrsacka 22');
INSERT INTO Fabrika
(pib_f, br_s_f, komp, lok)
VALUES
(1003145123, 5, 'Toyota', 'Djerdja Molnara 8');
INSERT INTO Fabrika
(pib_f, br_s_f, komp, lok)
VALUES
(1003305124, 8, 'Honda', 'Djerdja Molnara 11');
INSERT INTO Fabrika
(pib_f, br_s_f, komp, lok)
VALUES
(8003345121, 12, 'Volvo', 'Kisacka 12');
INSERT INTO Fabrika
(pib_f, br_s_f, komp, lok)
VALUES
(1223345123, 5, 'BMW', 'Djerdja Molnara 29');
INSERT INTO Fabrika
(pib_f, br_s_f, komp, lok)
VALUES
(1003388123, 5, 'BMW', 'Djerdja Molnara 31');


/* ##################################### */


INSERT INTO SektorFabrike
(id_sf, pib_f, br_z, nam_sf, dr_sf)
VALUES
(1, 1003345123, 23, 'sektor za elektroniku', 'Igor Pantelic');
INSERT INTO SektorFabrike
(id_sf, pib_f, br_z, nam_sf, dr_sf)
VALUES
(2, 1003345124, 32, 'sektor za zavrsnu obradu', 'Milan Radic');
INSERT INTO SektorFabrike
(id_sf, pib_f, br_z, nam_sf, dr_sf)
VALUES
(3, 1006345123, 35, 'sektor za karoseriju', 'Isidora Knezevic');
INSERT INTO SektorFabrike
(id_sf, pib_f, br_z, nam_sf, dr_sf)
VALUES
(4, 1003345125, 18, 'sektor za zavrsnu obradu', 'Petar Volf');
INSERT INTO SektorFabrike
(id_sf, pib_f, br_z, nam_sf, dr_sf)
VALUES
(5, 1003345123, 13, 'sektor za enterijer', 'Igor Pavlov');
INSERT INTO SektorFabrike
(id_sf, pib_f, br_z, nam_sf, dr_sf)
VALUES
(6, 1003345125, 15, 'sektor za elektroniku', 'Andrej Horvat');
INSERT INTO SektorFabrike
(id_sf, pib_f, br_z, nam_sf, dr_sf)
VALUES
(7, 1003345125, 23, 'sektor za elektroniku', 'Milutin Milic');
INSERT INTO SektorFabrike
(id_sf, pib_f, br_z, nam_sf, dr_sf)
VALUES
(8, 1003345124, 23, 'sektor za zavrsnu obradu', 'Andjela Rankovic');
INSERT INTO SektorFabrike
(id_sf, pib_f, br_z, nam_sf, dr_sf)
VALUES
(9, 1003345124, 10, 'sektor za karoseriju', 'Jovan Ivanovic');
INSERT INTO SektorFabrike
(id_sf, pib_f, br_z, nam_sf, dr_sf)
VALUES
(10, 1006345123, 15, 'sektor za enterijer', 'Radivoj Gelic');
INSERT INTO SektorFabrike
(id_sf, pib_f, br_z, nam_sf, dr_sf)
VALUES
(11, 1006345123, 20, 'sektor za zavrsnu obradu', 'Marko Stankovic');
INSERT INTO SektorFabrike
(id_sf, pib_f, br_z, nam_sf, dr_sf)
VALUES
(12, 1006345123, 21, 'sektor za zavrsnu obradu', 'Ilija Stefanovic');


/* ##################################### */


INSERT INTO Masina
(id_m, id_sektor, pib_f, pr, god_pr, nam_mas, cena_m)
VALUES
(1, 2, 1003345124, 'Rethink Robotics', 2017, 'izrada enterijera', 7000);
INSERT INTO Masina
(id_m, id_sektor, pib_f, pr, god_pr, nam_mas, cena_m)
VALUES
(2, 2, 1003345124, 'Rockwell Automation', 2015, 'izrada elektronike', 5000);
INSERT INTO Masina
(id_m, id_sektor, pib_f, pr, god_pr, nam_mas, cena_m)
VALUES
(3, 1, 1003345123, 'Kuka', 2017, 'izrada enterijera', 6500);
INSERT INTO Masina
(id_m, id_sektor, pib_f, pr, god_pr, nam_mas, cena_m)
VALUES
(4, 5, 1003345123, 'Rethink Robotics', 2017, 'zavrsna obrada', 8000);
INSERT INTO Masina
(id_m, id_sektor, pib_f, pr, god_pr, nam_mas, cena_m)
VALUES
(5, 5, 1003345123, 'Acieta', 2016, 'izrada enterijera', 5000);
INSERT INTO Masina
(id_m, id_sektor, pib_f, pr, god_pr, nam_mas, cena_m)
VALUES
(6, 1, 1003345123, 'Acieta', 2010, 'izrada karoserije', 3000);
INSERT INTO Masina
(id_m, id_sektor, pib_f, pr, god_pr, nam_mas, cena_m)
VALUES
(7, 3, 1006345123, 'Kuka', 2011, 'izrada karoserije', 2000);
INSERT INTO Masina
(id_m, id_sektor, pib_f, pr, god_pr, nam_mas, cena_m)
VALUES
(8, 7, 1003345125, 'Kuka', 2014, 'izrada enterijera', 6000);
INSERT INTO Masina
(id_m, id_sektor, pib_f, pr, god_pr, nam_mas, cena_m)
VALUES
(9, 2, 1003345124, 'Rockwell Automation', 2013, 'izrada karoserije', 7500);
INSERT INTO Masina
(id_m, id_sektor, pib_f, pr, god_pr, nam_mas, cena_m)
VALUES
(10, 9, 1003345124, 'Rethink Robotics', 2020, 'zavrsna obrada', 13000);
INSERT INTO Masina
(id_m, id_sektor, pib_f, pr, god_pr, nam_mas, cena_m)
VALUES
(11, 11, 1006345123, 'Rockwell Automation', 2019, 'izrada enterijera', 13000);
INSERT INTO Masina
(id_m, id_sektor, pib_f, pr, god_pr, nam_mas, cena_m)
VALUES
(12, 9, 1003345124,  'Kuka', 2021, 'zavrsna obrada', 15000);
INSERT INTO Masina
(id_m, id_sektor, pib_f, pr, god_pr, nam_mas, cena_m)
VALUES
(13, 4, 1003345125, 'Kuka', 2011, 'izrada enterijera', 11000);
INSERT INTO Masina
(id_m, id_sektor, pib_f, pr, god_pr, nam_mas, cena_m)
VALUES
(14, 6, 1003345125, 'Acieta', 2012, 'zavrsna obrada', 11000);
INSERT INTO Masina
(id_m, id_sektor, pib_f, pr, god_pr, nam_mas, cena_m)
VALUES
(15, 7, 1003345125, 'Acieta', 2021, 'izrada elektronike', 31000);
INSERT INTO Masina
(id_m, id_sektor, pib_f, pr, god_pr, nam_mas, cena_m)
VALUES
(16, 8, 1003345124, 'Kuka', 2015, 'zavrsna obrada', 12000);
INSERT INTO Masina
(id_m, id_sektor, pib_f, pr, god_pr, nam_mas, cena_m)
VALUES
(17, 10, 1006345123, 'Acieta', 2020, 'izrada elektronike', 18000);
INSERT INTO Masina
(id_m, id_sektor, pib_f, pr, god_pr, nam_mas, cena_m)
VALUES
(18, 12, 1006345123, 'Kuka', 2021, 'izrada elektronike', 30000);


/* ##################################### */


INSERT INTO DobavljacRobe
(pib, naz, k_t, vr_rb, sed)
VALUES
(9852213140, 'Bosch', 0613009980, 'elektornika', 'Rumenacka 1');
INSERT INTO DobavljacRobe
(pib, naz, k_t, vr_rb, sed)
VALUES
(9852213141, 'Continental', 0613009981, 'koza', 'Rumenacka 2');
INSERT INTO DobavljacRobe
(pib, naz, k_t, vr_rb, sed)
VALUES
(9852213142, 'Friedrichshafen', 0613009982, 'celik', 'Rumenacka 3');
INSERT INTO DobavljacRobe
(pib, naz, k_t, vr_rb, sed)
VALUES
(9852213143, 'Mahle', 0613009983, 'aluminijum', 'Rumenacka 4');
INSERT INTO DobavljacRobe
(pib, naz, k_t, vr_rb, sed)
VALUES
(9852213144, 'Schaeffler', 0613009984, 'elektornika', 'Rumenacka 5');
INSERT INTO DobavljacRobe
(pib, naz, k_t, vr_rb, sed)
VALUES
(9852213145, 'Thyssenkrupp ', 0613009985, 'elektornika', 'Rumenacka 6');
INSERT INTO DobavljacRobe
(pib, naz, k_t, vr_rb, sed)
VALUES
(9852213146, 'Hella KG Hueck', 0613009986, 'koza', 'Rumenacka 7');
INSERT INTO DobavljacRobe
(pib, naz, k_t, vr_rb, sed)
VALUES
(9852213147, 'Brose', 0613009987, 'elektornika', 'Rumenacka 8');
INSERT INTO DobavljacRobe
(pib, naz, k_t, vr_rb, sed)
VALUES
(9852213148, 'Magna International Inc.', 0613009988, 'koza', 'Rumenacka 9');
INSERT INTO DobavljacRobe
(pib, naz, k_t, vr_rb, sed)
VALUES
(9852213149, 'Flex-N-Gate Corp.', 0613009989, 'celik', 'Rumenacka 10');
INSERT INTO DobavljacRobe
(pib, naz, k_t, vr_rb, sed)
VALUES
(9852213244, 'ZF North America Inc', 0623009988, 'elektornika', 'Rumenacka 11');
INSERT INTO DobavljacRobe
(pib, naz, k_t, vr_rb, sed)
VALUES
(9852213344, 'Panasonic Automotive Systems', 0633009988, 'aluminijum', 'Rumenacka 12');


/* ##################################### */


INSERT INTO PotpisanUgovor
(pib_f, pib, id_sektora)
VALUES
(1003345123, 9852213143, 1);
INSERT INTO PotpisanUgovor
(pib_f, pib, id_sektora)
VALUES
(1003345124, 9852213141, 2);
INSERT INTO PotpisanUgovor
(pib_f, pib, id_sektora)
VALUES
(1003345125, 9852213142, 7);
INSERT INTO PotpisanUgovor
(pib_f, pib, id_sektora)
VALUES
(1003345123, 9852213141, 1);
INSERT INTO PotpisanUgovor
(pib_f, pib, id_sektora)
VALUES
(1003345124, 9852213144, 2);
INSERT INTO PotpisanUgovor
(pib_f, pib, id_sektora)
VALUES
(1003345125, 9852213145, 4);
INSERT INTO PotpisanUgovor
(pib_f, pib, id_sektora)
VALUES
(1003345123, 9852213146, 5);
INSERT INTO PotpisanUgovor
(pib_f, pib, id_sektora)
VALUES
(1003345125, 9852213147, 6);
INSERT INTO PotpisanUgovor
(pib_f, pib, id_sektora)
VALUES
(1003345123, 9852213148, 1);
INSERT INTO PotpisanUgovor
(pib_f, pib, id_sektora)
VALUES
(1003345124, 9852213149, 8);