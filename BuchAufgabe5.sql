use schule;
-- Aufgabe 5-1

select L.Nachname, L.Kürzel,S.Bezeichnung
from lehrer L join ausübung A on L.ID_Lehrer = A.ID_Lehrer
    join amt S on  A.ID_Amt = S.ID_Amt;

-- Aufgabe 5-2
select L.Nachname,L.Kürzel, S.Nachname, K.Bezeichnung
from klasse K join lehrer L on K.ID_Lehrer = L.ID_Lehrer
    join schüler S on K.ID_Schüler=S.ID_Schüler;
