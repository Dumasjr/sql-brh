---1 - insert
INSERT INTO  papel (id, nome) VALUES (8, 'Especialista de Negócios');
select * from papel;

 ------2 - insert -------
INSERT INTO  projeto (id, nome, responsavel, inicio, fim) VALUES (5, 'BI', 'D123', to_date('2024-01-01', 'yyyy-mm-dd'), to_date('2024-12-31', 'yyyy-mm-dd'));
select * from projeto;
  
 ------3 - insert ------- ok
 INSERT INTO  endereco (cep, uf, cidade, bairro) VALUES ('82222-200', 'GO', 'GOIAS', 'Águas Limpa');
 select * from endereco;
  
 ------4 departamento - insert ------- 
INSERT INTO  colaborador (matricula, nome, cpf, salario, departamento, cep, logradouro, complemento_endereco) VALUES ('A124', 'Fulano de Tal', '487.685.380-97', '58666', 'DEPDT', '82222-200', 'Avenida das Oliveiras', 'Casa 1');
select * from colaborador where matricula='A124';
------5 - insert -------  
INSERT INTO  departamento (sigla, nome, chefe, departamento_superior) VALUES ('DEPDT', 'Departamento de Desenvolvimento Tecnologico', 'A124', 'DIR');
select * from departamento where sigla='DEPDT'
 ------6 - insert ------- 
INSERT INTO  email_colaborador (colaborador, email, tipo) VALUES ('A124', 'fulano.tal@brh.com', 'T');
INSERT INTO  email_colaborador (colaborador, email, tipo) VALUES ('A124', 'fulano@email.com', 'P');
select * from email_colaborador where colaborador='A124';
------7 - insert ------- 
INSERT INTO  telefone_colaborador (colaborador, numero, tipo) VALUES ('A124', '(61) 99999-9999', 'M');
INSERT INTO  telefone_colaborador (colaborador, numero, tipo) VALUES ('A124', '(61) 3030-4040', 'R');
select * from telefone_colaborador where colaborador='A124';

------8 - insert ------- 
INSERT INTO  dependente (cpf, colaborador, nome, parentesco, data_nascimento) VALUES ('154.472.662-78', 'A124', 'Filha Beltrana de Tal', 'Filho(a)', to_date('2006-10-27', 'yyyy-mm-dd'));
INSERT INTO  dependente (cpf, colaborador, nome, parentesco, data_nascimento) VALUES ('065.372.562-78', 'A124', 'Esposa Cicrana de Tal', 'Cônjuge', to_date('1980-10-27', 'yyyy-mm-dd'));
select * from dependente where colaborador='A124'
------8 - insert ------- 

commit 
