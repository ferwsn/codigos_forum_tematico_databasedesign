	CREATE DATABASE forum_tematico;
	GO
	USE forum_tematico;
	GO
	CREATE TABLE funcionario (
		id_funcionario INT PRIMARY KEY IDENTITY(1,1),
		nome VARCHAR(100),
		ramal VARCHAR(10),
		salario DECIMAL(10,2),
		dados_bancarios VARCHAR(150),
		endereco_completo VARCHAR(250),
		id_equipe INT
	);
	GO
	CREATE TABLE telefone_funcionario (
		id_tf INT PRIMARY KEY IDENTITY(1,1),
		id_funcionario INT,
		tipo_telefone VARCHAR(20),
		numero VARCHAR(20)
	);
	GO
	CREATE TABLE email_funcionario (
		id_tf INT PRIMARY KEY IDENTITY(1,1),
		id_funcionario INT,
		email VARCHAR(100)
	);
	GO
	CREATE TABLE status_projeto (
		id_sp INT,
		nome_status VARCHAR(50)
	);
	GO
	CREATE TABLE projeto (
		id_projeto INT PRIMARY KEY IDENTITY(1,1),
		descricao VARCHAR(255),
		url_desenhos VARCHAR(255),
		url_orcamento VARCHAR(255),
		data_aprovacao_orcamento DATE,
		data_inicio_desenvolvimento DATE,
		data_previsao_termino DATE,
		data_montagem DATE,
		data_termino DATE,
		id_cliente INT,
		id_status INT,
		id_equipe_desenvolvimento INT,
		id_equipe_montagem INT
	);
	GO
	CREATE TABLE cliente (
		id_cliente INT PRIMARY KEY IDENTITY(1,1),
		nome VARCHAR(100),
		cnpj_cpf VARCHAR(20),
		inscricao_estadual_rg VARCHAR(20),
		endereco_completo VARCHAR(200)
	);
	GO
	CREATE TABLE telefone_cliente (
		id_telefone_cliente INT PRIMARY KEY IDENTITY(1,1),
		id_cliente INT,
		tipo_telefone VARCHAR(20),
		numero VARCHAR(20)
	);
	GO
	CREATE TABLE email_cliente (
		id_email_cliente INT PRIMARY KEY IDENTITY(1,1),
		id_cliente INT,
		email_cliente VARCHAR(100)
	);
	GO
	CREATE TABLE equipe (
		id_equipe INT PRIMARY KEY IDENTITY(1,1),
		titulo VARCHAR(50),
		setor VARCHAR(50)
	);
	GO