use master
go
Create database [dbTarefas]
go

USE [dbTarefas]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Projeto](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](60) NOT NULL,
	[CodUsuario] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projeto_Membros](
	[CodMembro] [int] NOT NULL,
	[CodProjeto] [int] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Projeto_Tarefas](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[CodProjeto] [int] NOT NULL,
	[Descricao] [varchar](300) NOT NULL,
	[isConcluida] [bit] NULL,
	[CodResponsavel] [int] NULL,
	[DataLimite] [datetime] NULL,
	[DataConclusao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](80) NOT NULL,
	[Email] [varchar](80) NOT NULL,
	[Usuario] [varchar](20) NOT NULL,
	[Senha] [varchar](30) NOT NULL,
	[Telefone] [varchar](20) NOT NULL,
	[Foto] [varbinary](max) NULL,
 CONSTRAINT [PK__Usuario__06370DAD2D839856] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
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

INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel], [DataLimite], [DataConclusao]) VALUES (1, 1, N'Pesquisa de hotéis', 0, 1, CAST(N'2018-06-11 00:00:00.000' AS DateTime), CAST(N'2018-06-14 00:00:00.000' AS DateTime))
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel], [DataLimite], [DataConclusao]) VALUES (2, 1, N'Pesquisa de pontos turísticos', 1, 3, CAST(N'2018-06-15 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel], [DataLimite], [DataConclusao]) VALUES (3, 1, N'Agendamento do Hotel', 0, 2, CAST(N'2018-06-11 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel], [DataLimite], [DataConclusao]) VALUES (4, 2, N'Busca de parcerias', 0, 2, CAST(N'2018-06-15 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel], [DataLimite], [DataConclusao]) VALUES (5, 2, N'Definição de escopo', 1, 1, CAST(N'2018-06-11 00:00:00.000' AS DateTime), CAST(N'2018-06-11 00:00:00.000' AS DateTime))
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel], [DataLimite], [DataConclusao]) VALUES (6, 2, N'Criação do protótipo', 0, 3, CAST(N'2018-06-15 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel], [DataLimite], [DataConclusao]) VALUES (7, 2, N'Realização de Testes', 1, 1, CAST(N'2018-06-11 00:00:00.000' AS DateTime), CAST(N'2018-06-11 00:00:00.000' AS DateTime))
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel], [DataLimite], [DataConclusao]) VALUES (8, 2, N'Criação do relatório de testes', 0, 3, CAST(N'2018-06-11 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel], [DataLimite], [DataConclusao]) VALUES (9, 3, N'Briefing com cliente', 1, 2, CAST(N'2018-06-14 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel], [DataLimite], [DataConclusao]) VALUES (10, 3, N'Especificações do site', 0, 2, CAST(N'2018-06-15 00:00:00.000' AS DateTime), CAST(N'2018-06-15 00:00:00.000' AS DateTime))
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel], [DataLimite], [DataConclusao]) VALUES (11, 3, N'Estrutura de Marketing', 0, 3, CAST(N'2018-06-11 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel], [DataLimite], [DataConclusao]) VALUES (12, 3, N'Plano de Gerenciamento do Projeto', 0, 1, CAST(N'2018-06-11 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel], [DataLimite], [DataConclusao]) VALUES (13, 3, N'Criação do Site', 0, 1, CAST(N'2018-06-14 00:00:00.000' AS DateTime), CAST(N'2018-06-11 00:00:00.000' AS DateTime))
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel], [DataLimite], [DataConclusao]) VALUES (14, 3, N'Treinamento dos usuários que farão atualização do site', 0, 2, CAST(N'2018-06-11 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel], [DataLimite], [DataConclusao]) VALUES (15, 3, N'Lançamento', 1, 3, CAST(N'2018-06-14 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel], [DataLimite], [DataConclusao]) VALUES (16, 3, N'Definição do Projeto', 0, 3, CAST(N'2018-06-15 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel], [DataLimite], [DataConclusao]) VALUES (17, 3, N'Planejamento do Projeto', 1, 2, CAST(N'2018-06-11 00:00:00.000' AS DateTime), CAST(N'2018-06-13 00:00:00.000' AS DateTime))
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel], [DataLimite], [DataConclusao]) VALUES (18, 3, N'Construção da Alvenaria', 0, 1, CAST(N'2018-06-15 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel], [DataLimite], [DataConclusao]) VALUES (19, 3, N'Pisos e azulejos', 0, 2, CAST(N'2018-06-14 00:00:00.000' AS DateTime), CAST(N'2018-06-11 00:00:00.000' AS DateTime))
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel], [DataLimite], [DataConclusao]) VALUES (20, 3, N'Hidráulica e Elétrica', 0, 1, CAST(N'2018-06-11 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Projeto_Tarefas] ([Codigo], [CodProjeto], [Descricao], [isConcluida], [CodResponsavel], [DataLimite], [DataConclusao]) VALUES (21, 3, N'Pintura', 1, 3, CAST(N'2018-06-14 00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Projeto_Tarefas] OFF
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([Codigo], [Nome], [Email], [Usuario], [Senha], [Telefone], [Foto]) VALUES (1, N'Javier P Charity', N'javier@dayrep.com', N'javierP', N'hdf89fh2', N'524217843', NULL)
INSERT [dbo].[Usuario] ([Codigo], [Nome], [Email], [Usuario], [Senha], [Telefone], [Foto]) VALUES (2, N'Sasa Wongnin', N'sasawon@gmail.com', N'sasawon1', N'09fh29', N'13526774', NULL)
INSERT [dbo].[Usuario] ([Codigo], [Nome], [Email], [Usuario], [Senha], [Telefone], [Foto]) VALUES (3, N'Liup Sechoi', N'liuliu@gmail.com', N'liuliu', N'91jd1d', N'18244144', NULL)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
ALTER TABLE [dbo].[Projeto]  WITH CHECK ADD  CONSTRAINT [FK__Projeto__CodUsua__1273C1CD] FOREIGN KEY([CodUsuario])
REFERENCES [dbo].[Usuario] ([Codigo])
GO
ALTER TABLE [dbo].[Projeto] CHECK CONSTRAINT [FK__Projeto__CodUsua__1273C1CD]
GO
ALTER TABLE [dbo].[Projeto_Membros]  WITH CHECK ADD  CONSTRAINT [FK__Projeto_M__CodMe__182C9B23] FOREIGN KEY([CodMembro])
REFERENCES [dbo].[Usuario] ([Codigo])
GO
ALTER TABLE [dbo].[Projeto_Membros] CHECK CONSTRAINT [FK__Projeto_M__CodMe__182C9B23]
GO
ALTER TABLE [dbo].[Projeto_Membros]  WITH CHECK ADD FOREIGN KEY([CodProjeto])
REFERENCES [dbo].[Projeto] ([Codigo])
GO
ALTER TABLE [dbo].[Projeto_Tarefas]  WITH CHECK ADD  CONSTRAINT [FK__Projeto_T__CodRe__164452B1] FOREIGN KEY([CodResponsavel])
REFERENCES [dbo].[Usuario] ([Codigo])
GO
ALTER TABLE [dbo].[Projeto_Tarefas] CHECK CONSTRAINT [FK__Projeto_T__CodRe__164452B1]
GO
ALTER TABLE [dbo].[Projeto_Tarefas]  WITH CHECK ADD FOREIGN KEY([CodProjeto])
REFERENCES [dbo].[Projeto] ([Codigo])
GO
