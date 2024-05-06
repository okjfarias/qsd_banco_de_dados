
-- Inserção de dados nas tabelas do banco de dados
INSERT INTO Unidade_Academica (nome) VALUES 
('Unidade de Ciências Exatas'), ('Unidade de Ciências Humanas'), ('Unidade de Ciências Biológicas'), 
('Unidade de Ciências Sociais Aplicadas'), ('Unidade de Ciências da Saúde'), 
('Unidade de Ciências Agrárias'), ('Unidade de Ciências da Terra'), 
('Unidade de Ciências Ambientais'), ('Unidade de Ciências da Informação'), 
('Unidade de Ciências da Comunicação');


INSERT INTO Alunos (nome, email, mensalidade) VALUES 
('João Silva', 'joao.silva@email.com', 500.00),
('Maria Santos', 'maria.santos@email.com', 600.00),
('Ana Pereira', 'ana.pereira@email.com', 550.00),
('Pedro Costa', 'pedro.costa@email.com', 650.00),
('Lucas Oliveira', 'lucas.oliveira@email.com', 700.00),
('Julia Ferreira', 'julia.ferreira@email.com', 750.00),
('Gabriel Souza', 'gabriel.souza@email.com', 800.00),
('Laura Rodrigues', 'laura.rodrigues@email.com', 850.00),
('Rafael Almeida', 'rafael.almeida@email.com', 900.00),
('Carla Lima', 'carla.lima@email.com', 950.00);


INSERT INTO Contratados (nome, email, salario, unidade_id) VALUES 
('Roberto Silva', 'roberto.silva@email.com', 5000.00, 1),
('Fernanda Santos', 'fernanda.santos@email.com', 6000.00, 2),
('Bruna Pereira', 'bruna.pereira@email.com', 5500.00, 3),
('Carlos Costa', 'carlos.costa@email.com', 6500.00, 4),
('Rodrigo Oliveira', 'rodrigo.oliveira@email.com', 7000.00, 5),
('Patricia Ferreira', 'patricia.ferreira@email.com', 7500.00, 6),
('Guilherme Souza', 'guilherme.souza@email.com', 8000.00, 7),
('Beatriz Rodrigues', 'beatriz.rodrigues@email.com', 8500.00, 8),
('Renato Almeida', 'renato.almeida@email.com', 9000.00, 9),
('Daniela Lima', 'daniela.lima@email.com', 9500.00, 10),
('Roberto Carlos', 'roberto.carlos@email.com', 5100.00, 1),
('Fernanda Montenegro', 'fernanda.montenegro@email.com', 6200.00, 2),
('Bruna Marquezine', 'bruna.marquezine@email.com', 5600.00, 3),
('Carlos Drummond', 'carlos.drummond@email.com', 6600.00, 4),
('Rodrigo Santoro', 'rodrigo.santoro@email.com', 7100.00, 5),
('Patricia Pillar', 'patricia.pillar@email.com', 7600.00, 6),
('Guilherme Fontes', 'guilherme.fontes@email.com', 8100.00, 7),
('Beatriz Segall', 'beatriz.segall@email.com', 8600.00, 8),
('Renato Aragão', 'renato.aragao@email.com', 9100.00, 9),
('Daniela Mercury', 'daniela.mercury@email.com', 9600.00, 10);


INSERT INTO Professores (formacao, contratado_id) VALUES 
('Doutorado em Ciências da Computação', 1),
('Mestrado em Matemática', 2),
('Doutorado em Física', 3),
('Mestrado em Química', 4),
('Doutorado em Biologia', 5),
('Mestrado em Geografia', 6),
('Doutorado em História', 7),
('Mestrado em Filosofia', 8),
('Doutorado em Sociologia', 9),
('Mestrado em Psicologia', 10);


INSERT INTO Funcionarios (funcao, contratado_id) VALUES 
('Secretário', 11),
('Bibliotecário', 12),
('Técnico de Laboratório', 13),
('Auxiliar Administrativo', 14),
('Zelador', 15),
('Cozinheiro', 16),
('Jardineiro', 17),
('Motorista', 18),
('Recepcionista', 19),
('Auxiliar de Serviços Gerais', 20);


INSERT INTO Dependentes (nome, cpf, grau_parentesco, data_nascimento, contratado_id) VALUES 
('Pedro Silva', '111.111.111-11', 'Filho', '2005-01-01', 1),
('Ana Santos', '222.222.222-22', 'Filha', '2007-02-02', 2),
('Lucas Pereira', '333.333.333-33', 'Filho', '2009-03-03', 3),
('Julia Costa', '444.444.444-44', 'Filha', '2011-04-04', 4),
('Gabriel Oliveira', '555.555.555-55', 'Filho', '2013-05-05', 5),
('Laura Ferreira', '666.666.666-66', 'Filha', '2015-06-06', 6),
('Rafael Souza', '777.777.777-77', 'Filho', '2017-07-07', 7),
('Carla Rodrigues', '888.888.888-88', 'Filha', '2019-08-08', 8),
('João Almeida', '999.999.999-99', 'Filho', '2021-09-09', 9),
('Maria Lima', '000.000.000-00', 'Filha', '2023-10-10', 10);


INSERT INTO Disciplinas (codcred, nome, descricao, qtd_credito) VALUES 
('DCC001', 'Introdução à Programação', 'Conceitos básicos de programação', 4),
('MAT001', 'Cálculo I', 'Introdução ao cálculo diferencial e integral', 4),
('FIS001', 'Física I', 'Estudo da mecânica clássica', 4),
('QUI001', 'Química Geral', 'Estudo dos fundamentos da química', 4),
('BIO001', 'Biologia Celular', 'Estudo da célula e suas funções', 4),
('GEO001', 'Geografia Física', 'Estudo dos aspectos físicos do espaço geográfico', 4),
('HIS001', 'História Antiga', 'Estudo da história das civilizações antigas', 4),
('FIL001', 'Introdução à Filosofia', 'Estudo dos conceitos fundamentais da filosofia', 4),
('SOC001', 'Introdução à Sociologia', 'Estudo dos conceitos fundamentais da sociologia', 4),
('PSI001', 'Psicologia Geral', 'Estudo dos conceitos fundamentais da psicologia', 4);


INSERT INTO Turmas (nome, horario, professor_id, disciplina_id) VALUES 
('Turma A', '08:00:00', 1, 1),
('Turma B', '10:00:00', 2, 2),
('Turma C', '13:00:00', 3, 3),
('Turma D', '15:00:00', 4, 4),
('Turma E', '08:00:00', 5, 5),
('Turma F', '10:00:00', 6, 6),
('Turma G', '13:00:00', 7, 7),
('Turma H', '15:00:00', 8, 8),
('Turma I', '08:00:00', 9, 9),
('Turma J', '10:00:00', 10, 10);


INSERT INTO Matriculas_Alunos (semestre, aluno_id, turma_id) VALUES 
(2, 1, 1),
(2, 2, 2),
(2, 3, 3),
(2, 4, 4),
(2, 5, 5),
(2, 6, 6),
(2, 7, 7),
(2, 8, 8),
(2, 9, 9),
(2, 10, 10);