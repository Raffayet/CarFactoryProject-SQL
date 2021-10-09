/*  F  */

/* Napisati PL/SQL blok koji ce najpre omoguciti unos pib-a zeljene 
fabrike za dalji rad. Potom, preuzeti samo one torke iz tabele 
SektorFabrike, ciji se sektor nalazi u okviru date fabrike,
uredjene u opadaju?em redosledu id_sektora, i 
prebaciti ih u PL/SQL tabelarnu kolekciju. Uz svaku preuzetu 
torku iz tabele SektorFabrike, treba inicijalizovati novu kolekciju koja 
ce sadržati skup svih identifikacionih brojeva masina, koji se 
nalaze u tom sektoru fabrike. Zatim treba, redom, prikazati 
sve torke iz kolekcije sektora fabrika, a uz svaku torku iz kolekcije 
sektora fabrika treba prikazati identifikacione brojeve svih masina koje se 
nalaze u tom sektoru fabrike. */

ACCEPT v_zeljena_fabrika PROMPT 'Unesite PIB zeljene fabrike: '; 

DECLARE
    TYPE T_ID_Masina IS TABLE OF
    Masina.id_m%TYPE INDEX BY BINARY_INTEGER;
    TYPE T_SektorFabrike IS RECORD (
        PodaciSF SektorFabrike%ROWTYPE,
        Masine T_ID_Masina
    );
    TYPE T_Sektori IS TABLE OF
    T_SektorFabrike INDEX BY BINARY_INTEGER;
    
    TabelaSektora T_Sektori;
    i BINARY_INTEGER:=0;
    j BINARY_INTEGER:=1;
    
    cursor spisak_sektora_fabrika(p_pib_f Fabrika.pib_f%TYPE) is
    select * from SektorFabrike s where s.pib_f = p_pib_f
    order by s.id_sf desc;
    cursor spisak_masina(p_id_f SektorFabrike.id_sf%TYPE) is 
    select id_m from Masina m where m.id_sektor = p_id_f;
BEGIN
    FOR rec IN spisak_sektora_fabrika(&&v_zeljena_fabrika) LOOP
        TabelaSektora(i).PodaciSF:=rec; 
        FOR rec1 IN spisak_masina(rec.id_sf) LOOP
            TabelaSektora(i).Masine(j):=rec1.id_m; 
            j:=j+1;
        END LOOP;
        i:=i+1;
    END LOOP;
    i:= TabelaSektora.FIRST;
    WHILE i<=TabelaSektora.LAST LOOP
        DBMS_OUTPUT.PUT_LINE('Id sektora: ' || TabelaSektora(i).PodaciSF.id_sf);
        DBMS_OUTPUT.PUT_LINE('Broj zaposlenih: ' || TabelaSektora(i).PodaciSF.br_z);
        DBMS_OUTPUT.PUT_LINE('Namena sektora: ' || TabelaSektora(i).PodaciSF.nam_sf);
        DBMS_OUTPUT.PUT_LINE('Direktor sektora: ' || TabelaSektora(i).PodaciSF.dr_sf);
        DBMS_OUTPUT.PUT_LINE('');
        IF TabelaSektora(i).Masine.COUNT != 0 THEN
            DBMS_OUTPUT.PUT_LINE('Masine: ');
            DBMS_OUTPUT.PUT_LINE('');
            j:= TabelaSektora(i).Masine.FIRST; 
            WHILE j<=TabelaSektora(i).Masine.LAST LOOP
                DBMS_OUTPUT.PUT_LINE('Identifikacioni broj masine: ' || TabelaSektora(i).Masine(j));
                j:= TabelaSektora(i).Masine.NEXT(j);
            END LOOP; 
        ELSE 
            DBMS_OUTPUT.PUT_LINE('Nijedna masina se ne nalazi u sektoru "' || TabelaSektora(i).PodaciSF.id_sf || '".');
        END IF; 
        i:=TabelaSektora.NEXT(i);
        DBMS_OUTPUT.PUT_LINE('');
    END LOOP;
END;