use schule;
-- Aufgabe 5-1

select L.Nachname, L.Kürzel,S.Bezeichnung
from lehrer L join ausübung A on L.ID_Lehrer = A.ID_Lehrer
    join amt S on  A.ID_Amt = S.ID_Amt;

