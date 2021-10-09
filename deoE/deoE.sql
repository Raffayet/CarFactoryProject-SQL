
/* E */

/* Primer trigera koji zabranjuje brisanje vrednosti obelezja namene masine.
Ukoliko je u pitanju dodavanje nove torke, za vrednost obelezja namene masine 
omoguciti samo "izrada enterijera" i to samo onih masina koje su proizvedene 
posle 2018. godine. Ukoliko je u pitanju izmena vrednosti 
obelezja namene masine, omoguciti samo "izrada enterijera" i "izrada elektronike" */


create or replace 
trigger trg_nam_mas
before insert or delete or update of nam_mas, god_pr 
on Masina
for each row
declare 
    greska1 exception;
    greska2 exception;
    greska3 exception;
    greska4 exception;
begin
    if inserting then
        if (:new.nam_mas != 'izrada enterijera') then
            raise greska1;
        end if;
        
        if (:new.god_pr <= 2018) then
            raise greska2;
        end if;
        
    elsif updating then
        if (:new.nam_mas != 'izrada enterijera') and (:new.nam_mas != 'izrada elektronike') then
            raise greska3;
        end if;
    
    elsif deleting then
        raise greska4;
    end if;
    exception
        when greska1 then raise_application_error(-20000, 'Greska! Nova namena mora biti izrada enterijera!');
        when greska2 then raise_application_error(-20000, 'Greska! Nova masina mora biti proizvedena posle 2018. godine');
        when greska3 then raise_application_error(-20000, 'Greska! Namena masine moze da se menja u izradu enterijera ili u izradu elektronike!');
        when greska4 then raise_application_error(-20000, 'Greska! Ne moze se brisati masina!');
end trg_nam_mas;
/


insert into Masina(id_m, id_sektor, cena_m, nam_mas, pr, god_pr, pib_f)         /* trigger test1 */
values(54, 2, 2500, 'izrada karoserije', 'ff', 2019, 1006345123);

insert into Masina(id_m, id_sektor, cena_m, nam_mas, pr, god_pr, pib_f)         /* trigger test2 */
values(54, 2, 2500, 'izrada enterijera', 'ff', 2016, 1006345123);

insert into Masina(id_m, id_sektor, cena_m, nam_mas, pr, god_pr, pib_f)         /* trigger test3 */
values(54, 2, 9000, 'izrada enterijera', 'Miovanovic.inc', 2020, 1003345124);

update Masina                                                                   /* trigger test 4 */
set nam_mas = 'izrada karoserije'
where nam_mas = 'izrada enterijera';

update Masina                                                                   /* trigger test 5 */
set nam_mas = 'izrada elektronike'
where nam_mas = 'izrada enterijera';

delete from Masina where nam_mas = 'zavrsna obrada';                            /* trigger test 6 */
