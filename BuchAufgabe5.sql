use schule;
-- Aufgabe 5-1

select L.Nachname, L.Kürzel,S.Bezeichnung
from lehrer L join ausübung A on L.ID_Lehrer = A.ID_Lehrer
    join amt S on  A.ID_Amt = S.ID_Amt;

-- Aufgabe 5-2
select L.Nachname,L.Kürzel, S.Nachname, K.Bezeichnung
from klasse K join lehrer L on K.ID_Lehrer = L.ID_Lehrer
    join schüler S on K.ID_Schüler=S.ID_Schüler;

-- Aufgabe 5-3
select F.Kürzel, L.Kürzel,P.Datum,P.Gewichtung
from lehrer L join lehrt LE on L.ID_Lehrer = LE.ID_Lehrer
join fach F on LE.ID_Fach = F.ID_Fach
join prüfung P on P.ID_Fach=F.ID_Fach;

select F.Kürzel, L.Kürzel,P.Datum,P.Gewichtung
from prüfung P join fach F on P.ID_Fach = F.ID_Fach
    join lehrer L on P.ID_Lehrer = L.ID_Lehrer;

-- Aufgabe 5-4
select  L.Kürzel, K.Bezeichnung, F.Kürzel
from unterrichten un join klasse K on un.ID_Klasse =K.ID_Klasse
join lehrer L on un.ID_Lehrer = L.ID_Lehrer
join fach F on un.ID_Fach = F.ID_Fach;

-- Aufgabe 5-5
select L.Nachname, L.Kürzel, F.Bezeichnung
from lehrt LE join lehrer L on L.ID_Lehrer = LE.ID_Lehrer
join fach F on LE.ID_Fach = F.ID_Fach;

-- Aufgabe 5-6
select L.Kürzel, F.Bezeichnung 'vor.bezeichnung', F1.Bezeichnung 'Nach.bezeichnung'
from fach F join vorraussetzen vo on F.ID_Fach = vo.ID_Fach_ist_Vorraussetzung
join fach F1 on vo.ID_Fach_hat_Vorraussetzung = F1.ID_Fach
join lehrt LE on LE.ID_Fach = F.ID_Fach
join lehrer L on LE.ID_Lehrer=l.ID_Lehrer order by f.Bezeichnung asc ;

-- Aufgabe 5-7
select S.Vorname, K.Bezeichnung
from schüler S left join klasse K on S.ID_Klasse = K.ID_Klasse;
