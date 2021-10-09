/* C3 */

alter table Masina add marka varchar2(20); /* izmena definicije */

UPDATE Masina
SET marka = 'BMW' 
WHERE id_m = 1; 

UPDATE Masina
Set cena_m = 13000
WHERE nam_mas = 'izrada enterijera';

select * from Masina;            /* sluzi samo za proveru izmenjenih vrednosti */

COMMIT;
/* ubaciti delete i promenu tipa atributa */
UPDATE Masina
Set cena_m = 15000
WHERE nam_mas = 'izrada karoserije';

ROLLBACK;                   /* vracanje selektovane vrednosti na prethodno stanje */


SELECT id_sf Identifikacioni_broj, br_z Broj_zaposlenih, nam_sf Namena_sektora,
dr_sf Direktor_sektora, pib_f PIB
FROM SektorFabrike
WHERE dr_sf LIKE 'R%';                  /* primer prostog upita */  