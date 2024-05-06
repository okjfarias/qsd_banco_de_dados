<div align="center">
    <img title="Ada" src="https://ada-site-frontend.s3.sa-east-1.amazonaws.com/home/header-logo.svg"/>
</div>

<div>
  <h2>Projeto: Hierarquia de Pessoas da Universidade</h2>
  <p>
    Este projeto foi realizado como parte de um módulo de banco de dados do treinamento da Ada Tech. O objetivo era aplicar os conceitos aprendidos durante o módulo em um projeto prático.
  </p>
  
  <h2>Sobre o Projeto</h2>
  
  O projeto implementa um banco de dados para gerenciar a hierarquia de pessoas em uma universidade. O banco de dados inclui alunos, professores, funcionários, contratados e seus dependentes.
  
  <h2>Estrutura do Banco de Dados</h2>
  
  O banco de dados é composto pelas seguintes tabelas:
  
  - `Matriculas`: Armazena os números de matrícula.
  - `Alunos`: Armazena informações sobre os alunos, incluindo nome, e-mail, mensalidade e data de admissão.
  - `Unidade_Academica`: Armazena informações sobre as unidades acadêmicas, incluindo o nome.
  - `Contratados`: Armazena informações sobre os contratados, incluindo nome, e-mail, salário, data de início na unidade e número de matrícula.
  - `Professores`: Armazena informações sobre os professores, incluindo a formação.
  - `Funcionarios`: Armazena informações sobre os funcionários, incluindo a função.
  - `Dependentes`: Armazena informações sobre os dependentes dos contratados, incluindo nome, CPF, grau de parentesco e data de nascimento.
  - `Disciplinas`: Armazena informações sobre as disciplinas, incluindo o codcred, nome, descrição e quantidade de créditos.
  - `Turmas`: Armazena informações sobre as turmas, incluindo nome e horário.
  - `Matriculas_Alunos`: Armazena informações sobre as matrículas dos alunos nas turmas.

  Existem alguns pontos importantes que eu gostaria de destacar sobre a estrutura do banco de dados que criei. Primeiramente, eu criei a tabela Matriculas com o objetivo de resolver a questão da duplicidade do número de matrículas.
  Isso foi feito sem a necessidade de tornar as matrículas uma chave primária. Além disso, implementei uma função que incrementa automaticamente o número de matrícula sempre que novos dados são inseridos nas tabelas Aluno ou Contratados.
  
  Em segundo lugar, utilizei o princípio de herança na tabela Contratados para evitar duplicidade no banco de dados. Isso significa que tanto os Professores quanto os Funcionarios são considerados Contratados,
  mas cada um tem suas próprias características e atributos únicos.

  Por fim, adicionei uma restrição na tabela Matriculas_Alunos para prevenir que um aluno se matricule duas vezes na mesma turma durante o mesmo semestre. Isso garante a integridade dos dados e evita confusões no registro das matrículas.

  Essas medidas foram tomadas para garantir a eficiência e a precisão dos dados armazenados neste banco de dados que criei.
</div>
