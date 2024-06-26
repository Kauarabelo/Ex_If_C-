use master
go
create database dbTarefas
go
use dbTarefas
go
create table Usuario(
	Codigo int identity(1,1) primary key,
	Nome varchar(80) not null,
	Email varchar(80) not null,
	Usuario varchar(20) not null,
	Senha varchar(30)  null,
	Telefone varchar(20) not null,
	Foto varbinary(max) null,
)

CREATE TABLE Projeto(
	Codigo int identity(1,1) primary key,
	Nome varchar(60) not null,
	CodUsuario int not null,
	NaoPertube bit not null DEFAULT(0),
	foreign key (CodUsuario) references Usuario(Codigo)
)

CREATE TABLE Projeto_Tarefas(
	Codigo int identity(1,1) primary key,
	CodProjeto int not null,
	CodResponsavel int,
	Descricao varchar(300) not null,
	isConcluida bit,
	isFazendo bit,	
	Cor varchar(100),
	DataConclusao datetime,
	foreign key (CodProjeto) references Projeto(Codigo),
	foreign key (CodResponsavel) references Usuario(Codigo)
)

CREATE TABLE Notificacoes(
	Codigo int identity(1,1) primary key,
	Texto varchar(300) not null,
	Data datetime not null,
	CodProjeto int,
	CodUsuario int not null,
	isFechada bit,
	foreign key (CodUsuario) references Usuario(Codigo),
	foreign key (CodProjeto) references Projeto(Codigo)
)

CREATE TABLE Projeto_Membros(	
	CodMembro int not null,
	CodProjeto int not null,	
	foreign key (CodMembro) references Usuario(Codigo),
	foreign key (CodProjeto) references Projeto(Codigo),
	Constraint PK_ProjetoMembro Primary Key (CodMembro,CodProjeto)
)

CREATE TABLE Items_Favoritos(	
	CodUsuario int not null,
	CodTarefa int not null,
	foreign key (CodUsuario) references Usuario(Codigo),
	foreign key (CodTarefa) references Projeto_Tarefas(Codigo),
	Constraint PK_ItemFavorito Primary Key (CodUsuario,CodTarefa)
)

create table Alarme(
	Codigo int identity(1,1) primary key,
	CodTarefa int not null,
	CodUsuario int not null,
	Data date,
	Hora time,
	Repeticao char(1) check (Repeticao IN ('N', 'D', 'S', 'M'))	
	--N: Nunca repetir
	--D: Repetir todos os dias
	--S: Repetir toda semana
	--M: Repetir todo mês

	foreign key (CodUsuario) references Usuario(Codigo),
	foreign key (CodTarefa) references Projeto_Tarefas(Codigo)
)

create table Tarefas_SubTarefas(
	Codigo int identity(1,1) primary key,
	Texto varchar(100),
	CodTarefa int not null,
	isConcluida bit,
	isFazendo bit
	foreign key (CodTarefa) references Projeto_Tarefas(Codigo)
)


create table Tarefas_Comentarios(
	Codigo int identity(1,1) primary key,
	CodUsuario int not null,
	CodTarefa int not null,
	Comentario varchar(300) not null,
	Data datetime not null,
		foreign key (CodUsuario) references Usuario(Codigo),
	foreign key (CodTarefa) references Projeto_Tarefas(Codigo)
)

create table Tarefas_Anexos(
	Codigo int identity(1,1) primary key,
	CodTarefa int not null,
	NomeArquivo varchar(120) not null
	foreign key (CodTarefa) references Projeto_Tarefas(Codigo)
)

create table HistoricoModificacoes (
	Codigo int identity(1,1) primary key,
	CodTarefa int not null,
	CodUsuario int not null,
	Data datetime not null,
	Texto varchar(200) not null,
	foreign key (CodUsuario) references Usuario(Codigo),
	foreign key (CodTarefa) references Projeto_Tarefas(Codigo)
)

SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([Codigo], [Nome], [Email], [Usuario], [Senha], [Telefone], [Foto]) VALUES (1, N'Javier P Charity', N'javier@dayrep.com', N'javierP', N'hdf89fh2', N'524217843', NULL)
INSERT [dbo].[Usuario] ([Codigo], [Nome], [Email], [Usuario], [Senha], [Telefone], [Foto]) VALUES (2, N'Sasa Wongnin', N'sasawon@gmail.com', N'sasawon1', N'09fh29', N'13526774', NULL)
INSERT [dbo].[Usuario] ([Codigo], [Nome], [Email], [Usuario], [Senha], [Telefone], [Foto]) VALUES (3, N'Liup Sechoi', N'liuliu@gmail.com', N'liuliu', N'91jd1d', N'18244144', NULL)
SET IDENTITY_INSERT [dbo].[Usuario] OFF



SET IDENTITY_INSERT [dbo].[Projeto] ON 

INSERT [dbo].[Projeto] ([Codigo], [Nome], [CodUsuario]) VALUES (1, N'Viagem para Colômbia', 1)
INSERT [dbo].[Projeto] ([Codigo], [Nome], [CodUsuario]) VALUES (2, N'Projeto Integrador - XRight', 2)
INSERT [dbo].[Projeto] ([Codigo], [Nome], [CodUsuario]) VALUES (3, N'Construção do Site IPlock', 1)
INSERT [dbo].[Projeto] ([Codigo], [Nome], [CodUsuario]) VALUES (4, N'Reforma do prédio SENAI - São Carlos', 3)
SET IDENTITY_INSERT [dbo].[Projeto] OFF

INSERT [dbo].[Projeto_Membros] ([CodMembro], [CodProjeto]) VALUES (1, 1)
INSERT [dbo].[Projeto_Membros] ([CodMembro], [CodProjeto]) VALUES (1, 2)
INSERT [dbo].[Projeto_Membros] ([CodMembro], [CodProjeto]) VALUES (1, 3)
INSERT [dbo].[Projeto_Membros] ([CodMembro], [CodProjeto]) VALUES (1, 4)
INSERT [dbo].[Projeto_Membros] ([CodMembro], [CodProjeto]) VALUES (2, 1)
INSERT [dbo].[Projeto_Membros] ([CodMembro], [CodProjeto]) VALUES (2, 2)
INSERT [dbo].[Projeto_Membros] ([CodMembro], [CodProjeto]) VALUES (2, 3)
INSERT [dbo].[Projeto_Membros] ([CodMembro], [CodProjeto]) VALUES (2, 4)
INSERT [dbo].[Projeto_Membros] ([CodMembro], [CodProjeto]) VALUES (3, 1)
INSERT [dbo].[Projeto_Membros] ([CodMembro], [CodProjeto]) VALUES (3, 2)
INSERT [dbo].[Projeto_Membros] ([CodMembro], [CodProjeto]) VALUES (3, 3)
INSERT [dbo].[Projeto_Membros] ([CodMembro], [CodProjeto]) VALUES (3, 4)


SET IDENTITY_INSERT [dbo].[Projeto_Tarefas] ON 

INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel], [DataConclusao]) VALUES (1, 1, N'Pesquisa de hotéis', 1, 1, CAST(N'2018-06-14 00:00:00.000' AS DateTime))
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel],  [DataConclusao]) VALUES (2, 1, N'Pesquisa de pontos turísticos', 0, 3, NULL)
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel],  [DataConclusao]) VALUES (3, 1, N'Agendamento do Hotel', 0, 2, NULL)
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel],  [DataConclusao]) VALUES (4, 2, N'Busca de parcerias', 0, 2, NULL)
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel],  [DataConclusao]) VALUES (5, 2, N'Definição de escopo', 1, 1, CAST(N'2018-06-11 00:00:00.000' AS DateTime))
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel],  [DataConclusao]) VALUES (6, 2, N'Criação do protótipo', 0, 3, NULL)
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel],  [DataConclusao]) VALUES (7, 2, N'Realização de Testes', 1, 1, CAST(N'2018-06-11 00:00:00.000' AS DateTime))
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel],  [DataConclusao]) VALUES (8, 2, N'Criação do relatório de testes', 0, 3, NULL)
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel],  [DataConclusao]) VALUES (9, 3, N'Briefing com cliente', 1, 2, NULL)
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel],  [DataConclusao]) VALUES (10, 3, N'Especificações do site', 1, 2, CAST(N'2018-06-15 00:00:00.000' AS DateTime))
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel],  [DataConclusao]) VALUES (11, 3, N'Estrutura de Marketing', 0, 3, NULL)
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel],  [DataConclusao]) VALUES (12, 3, N'Plano de Gerenciamento do Projeto', 0, 1, NULL)
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel],  [DataConclusao]) VALUES (13, 3, N'Criação do Site', 1, 1, CAST(N'2018-06-11 00:00:00.000' AS DateTime))
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel],  [DataConclusao]) VALUES (14, 3, N'Treinamento dos usuários que farão atualização do site', 1, 2, NULL)
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel],  [DataConclusao]) VALUES (15, 3, N'Lançamento', 0, 3, NULL)
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel],  [DataConclusao]) VALUES (16, 3, N'Definição do Projeto', 0, 3, NULL)
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel],  [DataConclusao]) VALUES (17, 3, N'Planejamento do Projeto', 1, 2,CAST(N'2018-06-13 00:00:00.000' AS DateTime))
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel],  [DataConclusao]) VALUES (18, 3, N'Construção da Alvenaria', 0, 1, NULL)
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel],  [DataConclusao]) VALUES (19, 3, N'Pisos e azulejos', 1, 2, CAST(N'2018-06-11 00:00:00.000' AS DateTime))
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel],  [DataConclusao]) VALUES (20, 3, N'Hidráulica e Elétrica', 0, 1, NULL)
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel],  [DataConclusao]) VALUES (21, 3, N'Pintura', 0, 3, NULL)
SET IDENTITY_INSERT [dbo].[Projeto_Tarefas] OFF