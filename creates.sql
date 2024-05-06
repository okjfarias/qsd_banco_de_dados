-- Projeto: Hierarquia de Pessoas da Universidade
-- Aluno: João Victor dos Reis Farias



-- Criação das tabelas
create table Matriculas (
	num_matricula SERIAL primary key
);

create table Alunos (
	id SERIAL primary key,
	nome VARCHAR(100) not null,
	email VARCHAR(100) unique not null,
	mensalidade NUMERIC(10, 2),
	data_admissao TIMESTAMP default DATE_TRUNC('minute', CURRENT_TIMESTAMP),
	num_matricula int references Matriculas(num_matricula)
);

create table Unidade_Academica (
	id SERIAL primary key,
	nome VARCHAR(100) unique not null
);

create table Contratados (
 	id SERIAL primary key,
 	nome VARCHAR(100) not null,
 	email VARCHAR(100) unique not null,
 	salario NUMERIC(10, 2) not null,
 	inicio_unidade TIMESTAMP default DATE_TRUNC('minute', CURRENT_TIMESTAMP),
 	num_matricula int references Matriculas(num_matricula),
 	unidade_id int references Unidade_Academica(id)
 );
 
create table Professores (
	id SERIAL primary key,
	formacao VARCHAR(100) not null,
	contratado_id int references Contratados(id)
);

create table Funcionarios (
	id SERIAL primary key,
	funcao VARCHAR(100) not null,
	contratado_id int references Contratados(id)
);

create table Dependentes (
	id SERIAL primary key,
	nome VARCHAR(100) not null,
	cpf VARCHAR(14) unique not null,
	grau_parentesco VARCHAR(50) not null,
	data_nascimento DATE not null,
	contratado_id int unique references Contratados(id)
);

create table Disciplinas (
	id SERIAL primary key,
	codcred VARCHAR(10) unique not null,
	nome VARCHAR(100) not null,
	descricao text,
	qtd_credito INT not null
);

create table Turmas (
	id SERIAL primary key,
	nome VARCHAR(100),
	horario TIME not null,
	professor_id int references Professores(id),
	disciplina_id int references Disciplinas(id)
);

create table Matriculas_Alunos (
	id SERIAL primary key,
	semestre INT not null,
	aluno_id INT references Alunos(id),
	turma_id INT references Turmas(id),
	constraint matricula_unica unique (turma_id, aluno_id, semestre)
);



-- Criação da função de gatilho
create or replace function insert_matricula() returns trigger as $$
begin
   new.num_matricula := nextval('matriculas_num_matricula_seq');
   insert into matriculas (num_matricula) values (new.num_matricula);
   return new;
end;
$$ language plpgsql;

-- Criação dos gatilhos
create trigger insert_matricula_alunos
before insert on alunos
for each row execute procedure insert_matricula();

create trigger insert_matricula_contratados
before insert on contratados
for each row execute procedure insert_matricula();
