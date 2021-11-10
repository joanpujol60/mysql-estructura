select * from vendes where codi_client = '7';
select codi_empleat, codi_ullera, count(*) from vendes group by codi_empleat, codi_ullera order by codi_empleat, codi_ullera;
select proveidors.nom, vendes.codi_ullera, count(*) from proveidors, vendes, ulleres where vendes.codi_ullera = ulleres.codi and ulleres.codi_proveidor = proveidors.codi group by vendes.codi_ullera order by proveidors.nom, vendes.codi_ullera;
