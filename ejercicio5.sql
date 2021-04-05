select n.sigla,
case when p.depto='02' then avg(n.notaFinal) else 0 end LP,
case when p.depto='03' then avg(n.notaFinal) else 0 end CB,
case when p.depto='01' then avg(n.notaFinal) else 0 end SC
from persona as p,nota as n
where p.ci = n.ci
GROUP by n.sigla