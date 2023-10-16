select 
	e.nome as empregado,
    e.sexo as genero,
    format((datediff(now(), e.dt_nascimento)/365), 0) as idade_empregado,
    e.civil as relacionamento,
    e.salario as renda,
    d.sexo as genero_dependente,
    format((datediff(now(), d.dt_nascimento)/365), 0) as idade_dependente
from empregado e
left join dependente d
on e.cod_emp = d.cod_emp;