---Filtrar dependentes---
---Tarefa 1---

select c.nome COLABORADOR,d.nome DEPENDENTE,d.data_nascimento DATA_NASCIMENTO
from dependente d
inner join colaborador c on d.colaborador=c.matricula
WHERE extract(month from d.data_nascimento) in (4,5,6) --OR extract(month from d.data_nascimento) in (6) 
OR d.nome like '%h%'
order by c.nome,d.nome

---Tarefa 2---
select nome,salario from colaborador
where salario =(select max(salario)from colaborador)

commit

---Tarefa 3---
  
select matricula,nome,salario,
Case 
    when salario <=3000 then 'Junior'
    when salario <=6000 then 'Plano'
    when salario <=20000 then 'Sênio'
    else 
    'Corpo Diretor'
    end  Senioridade
    from colaborador 
    order by Senioridade,nome

---Tarefa 4---

select d.nome as Departamento,p.nome as Projeto,count(colaborador) as QTD_Colaboradores
from colaborador c
inner join departamento d on c.departamento=d.sigla
inner join atribuicao a on c.matricula=a.colaborador
inner join projeto  p on a.projeto=p.id
group by d.nome,p.nome
order by d.nome,p.nome
