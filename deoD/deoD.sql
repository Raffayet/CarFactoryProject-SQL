
/* D */

/* Izlistati id_m, cenu i namenu masine cija je cena veca od 10000 eur ili se nalazi u sektoru fabrike 3 ili se nalazi u sektoru 5*/

select id_m, cena_m, nam_mas from Masina
where id_m in (select id_m from Masina where id_sektor = 3) or id_m in (select id_m from Masina where id_sektor = 5)
union
select id_m, cena_m, nam_mas from Masina
where cena_m > 10000;

/* Izlistati id_m, cenu i namenu masine cija je cena veca od 10000 eur i nalazi se u sektoru fabrike 3 ili 4 ili 5 ili 6*/

select id_m, cena_m, nam_mas from Masina
where id_m in (select id_m from Masina where id_sektor = 3) or id_m in (select id_m from Masina where id_sektor = 4)
or id_m in (select id_m from Masina where id_sektor = 5) or id_m in (select id_m from Masina where id_sektor = 6)
intersect
select id_m, cena_m, nam_mas from Masina
where cena_m > 10000;

/* Izlistati id_m, cenu i namenu masine koji se nalaze u sektoru fabrike 3 ili 4 ili 5 ili 6 a ne kostaju vise od 10000 eur*/

select id_m, cena_m, nam_mas from Masina
where id_m in (select id_m from Masina where id_sektor = 3) or id_m in (select id_m from Masina where id_sektor = 4)
or id_m in (select id_m from Masina where id_sektor = 5) or id_m in (select id_m from Masina where id_sektor = 6)
minus
select id_m, cena_m, nam_mas from Masina
where cena_m > 10000;

/* Prikazati id_m i namenu masine one fabrike koja ima dobavljaca sa potpisanim ugovorom ciji je naziv: Bosch */

select id_m, nam_mas
from Masina m inner join PotpisanUgovor pu on m.pib_f = pu.pib_f
inner join DobavljacRobe dr on pu.pib = dr.pib
where dr.naz = 'Bosch';


/* Za svaki sektor fabrike prikazati id sektora i broj masina unutar tog sektora koje imaju vise od jedne masine */

select id_sf, count(id_sektor)
from  Masina m, SektorFabrike sf
where m.id_sektor = sf.id_sf
group by id_sf
having count(id_sektor) > 1;

/* Prikazati za svaku masinu id_m, namenu, i njen udeo 
u ukupnoj ceni masina u sektoru fabrike u kom se nalazi (verzija 1)*/

with cenainfo as (
select sf.id_sf, sum(m.cena_m) as ukupna_cena
from Masina m full outer join SektorFabrike sf on m.id_sektor = sf.id_sf group by sf.id_sf)
select m.id_m, m.nam_mas, m.cena_m/ci.ukupna_cena udeo
from Masina m, SektorFabrike sf, cenainfo ci
where m.id_sektor = sf.id_sf and sf.id_sf = ci.id_sf;

/* Prikazati za svaku masinu id_m, namenu, i njen udeo 
u ukupnoj ceni masina u sektoru fabrike u kom se nalazi (verzija 2)*/

with cenainfo as (
select sf.id_sf, sum(m.cena_m) as ukupna_cena
from Masina m, SektorFabrike sf where m.id_sektor = sf.id_sf group by sf.id_sf)
select m.id_m, m.nam_mas, m.cena_m/ci.ukupna_cena udeo
from Masina m, SektorFabrike sf, cenainfo ci
where m.id_sektor = sf.id_sf and sf.id_sf = ci.id_sf;


/* Napraviti pogled koji ?e za sve sektore fabrika prikazati id_sf i ukupnu cenu masina
unutar tih sektora. */

create or replace view ukupna_cena_po_sektorima
(id_sf, u_cena) as
select sf.id_sf, nvl(SUM(m.cena_m), 0)
from SektorFabrike sf full outer join Masina m
on sf.id_sf = m.id_sektor
group by sf.id_sf;

rollback;