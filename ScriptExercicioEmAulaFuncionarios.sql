DROP TABLE FUNCIONARIOS;

-- Criar uma tabela Funcionarios, com os campos (Nome, Telefone, Email e DataContratacao);
CREATE TABLE FUNCIONARIOS(
	NOME VARCHAR(50),
	TELEFONE VARCHAR(11),
	EMAIL VARCHAR(100),
	DATA_CONTRATACAO DATE
);

--Editar a tabela Funcionarios para adicionar o campo Enedereco;
ALTER TABLE FUNCIONARIOS ADD COLUMN ENDERECO VARCHAR(150);

--Editar a tabela Funcionarios para excluir o campo DataContratação;
ALTER TABLE FUNCIONARIOS DROP COLUMN DATA_CONTRATACAO ;

--Excluir a tabela Funcionarios;
DROP TABLE FUNCIONARIOS


--Criar uma tabela setor , com os campos (ID (pk), Nome);
CREATE TABLE SETOR (
	ID SERIAL PRIMARY KEY, 
	NOME VARCHAR (30)
);

--Editar a tabela Funcionarios para adicionar o campo Id_Setor e ID;
ALTER TABLE FUNCIONARIOS ADD COLUMN ID_SETOR INT;
ALTER TABLE FUNCIONARIOS ADD COLUMN ID SERIAL;


--Editar a tabela Funcionarios para adicionar uma PK para a coluna ID;
ALTER TABLE FUNCIONARIOS ADD CONSTRAINT PK_ID PRIMARY KEY (ID)

--Editar a tabela Funcionarios para adicionar uma fk de Id da tabela setor;
ALTER TABLE FUNCIONARIOS ADD CONSTRAINT FK_SETOR_ID FOREIGN KEY (ID_SETOR) REFERENCES SETOR (ID)


