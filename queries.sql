-- Realiza soma das mensalidades dos alunos
select sum(mensalidade) as total_mensalidades from alunos;


-- Encontra aluno com maior mensalidade
select nome, mensalidade as mensalidade_maxima from alunos
where mensalidade = (select max(mensalidade) from alunos);


-- -- Encontra aluno com menor mensalidade
select nome, mensalidade as mensalidade_maxima from alunos
where mensalidade = (select min(mensalidade) from alunos);


-- Consulta que lista o nome dos professores e o respectivo salário de cada um
select c.nome, c.salario from contratados c
inner join professores p on p.contratado_id = c.id
order by c.salario desc;


-- Consulta que lista média salarial por unidade
select ua.nome, avg(c.salario) as media_salarial
from contratados c
inner join unidade_academica as ua on c.unidade_id = ua.id
group by ua.nome;


-- Listar professor por id da turma
select c.nome from contratados c
inner join professores p on c.id = p.contratado_id
inner join turmas t on p.id = t.professor_id
where t.id = 3;


-- Listar alunos por id da turma
select a.nome from alunos a
inner join matriculas_alunos ma on a.id = ma.aluno_id
where ma.turma_id = 5;


-- Listar quantidade de alunos por turma
select t.nome, count(ma.aluno_id) as numero_alunos 
from turmas t
inner join matriculas_alunos ma on t.id = ma.turma_id 
group by t.nome;


-- Listar disciplinas ministradas por professor localizado pelo id
select d.nome 
from disciplinas d
inner join turmas t on d.id = t.disciplina_id 
inner join professores p on t.professor_id = p.id 
where p.id = 1;


-- Retorna todos os contratados e cada dependente
select c.nome, coalesce(d.nome, 'Sem dependente') nome_dependente
from contratados c
left join dependentes d on c.id = d.contratado_id;

