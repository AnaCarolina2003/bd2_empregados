select 
	locate(" ", e.nome) as tamanho_nome, # conta o espaço final também, então subtrair por 1 para ter o tamanho do nome
    reverse(e.nome) as inverso_nome,
    char_length(e.nome) as tamanho_total,
    insert(e.nome, locate(" ", e.nome), 0, " -MEIO- ") as editado_nome,
    substring(e.nome, locate(" ", e.nome)) as sobrenome_nome_empregado,
    substring(d.nome, locate(" ", d.nome)) as sobrenome_nome_dependente,
    substring_index(e.nome, " ", 1) as primeiro_nome,
    substring_index(d.nome, " ", 1) as primeiro_nome_dependente
from empregado e
inner join dependente d
on e.cod_emp = d.cod_dep;