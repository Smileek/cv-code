USE [CurriculumVitae]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/****** Object:  Table [dbo].[JobExperiences]    Script Date: 13.10.2021 11:12:50 ******/
CREATE TABLE [dbo].[JobExperiences](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Candidate_ID] [int] NOT NULL,
	[Company] [nvarchar](128) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[Role] [nvarchar](256) NULL,
	[Responsibilities] [nvarchar](2048) NULL,
 CONSTRAINT [PK_JobExperiences] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Technologies]    Script Date: 13.10.2021 11:12:50 ******/
CREATE TABLE [dbo].[Technologies](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_Technologies] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[JobExperience_Technology]    Script Date: 13.10.2021 11:12:50 ******/
CREATE TABLE [dbo].[JobExperience_Technology](
	[JobExperience_ID] [int] NOT NULL,
	[Technology_ID] [int] NOT NULL,
 CONSTRAINT [PK_JobExperience_Technology] PRIMARY KEY CLUSTERED 
(
	[JobExperience_ID] ASC,
	[Technology_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Educations]    Script Date: 13.10.2021 11:12:50 ******/
CREATE TABLE [dbo].[Educations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Candidate_ID] [int] NOT NULL,
	[School] [nvarchar](128) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[Degree] [nvarchar](32) NULL,
	[Field] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_Educations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Candidate_Language]    Script Date: 13.10.2021 11:12:50 ******/
CREATE TABLE [dbo].[Candidate_Language](
	[Candidate_ID] [int] NOT NULL,
	[Language_ID] [int] NOT NULL,
	[Level] [nvarchar](32) NULL,
 CONSTRAINT [PK_Candidate_Language] PRIMARY KEY CLUSTERED 
(
	[Candidate_ID] ASC,
	[Language_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Candidate_Skill]    Script Date: 13.10.2021 11:12:50 ******/
CREATE TABLE [dbo].[Candidate_Skill](
	[Candidate_ID] [int] NOT NULL,
	[Skill_ID] [int] NOT NULL,
 CONSTRAINT [PK_Candidate_Skill] PRIMARY KEY CLUSTERED 
(
	[Candidate_ID] ASC,
	[Skill_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Candidates]    Script Date: 13.10.2021 11:12:50 ******/
CREATE TABLE [dbo].[Candidates](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](64) NOT NULL,
	[LastName] [nvarchar](64) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Citizenship] [nchar](2) NULL,
	[CountryOfResidence] [nvarchar](64) NULL,
	[About] [nvarchar](2048) NULL,
	[DesiredPosition] [nvarchar](128) NULL,
 CONSTRAINT [PK_Candidates] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Contacts]    Script Date: 13.10.2021 11:12:50 ******/
CREATE TABLE [dbo].[Contacts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Candidate_ID] [int] NOT NULL,
	[Type] [nvarchar](32) NOT NULL,
	[Data] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Languages]    Script Date: 13.10.2021 11:12:50 ******/
CREATE TABLE [dbo].[Languages](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Skills]    Script Date: 13.10.2021 11:12:50 ******/
CREATE TABLE [dbo].[Skills](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



/****** Foreign Keys ******/

ALTER TABLE [dbo].[Candidate_Language]  WITH CHECK ADD  CONSTRAINT [FK_Candidate_Language_Candidates] FOREIGN KEY([Candidate_ID])
REFERENCES [dbo].[Candidates] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Candidate_Language] CHECK CONSTRAINT [FK_Candidate_Language_Candidates]
GO
ALTER TABLE [dbo].[Candidate_Language]  WITH CHECK ADD  CONSTRAINT [FK_Candidate_Language_Languages] FOREIGN KEY([Language_ID])
REFERENCES [dbo].[Languages] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Candidate_Language] CHECK CONSTRAINT [FK_Candidate_Language_Languages]
GO
ALTER TABLE [dbo].[Candidate_Skill]  WITH CHECK ADD  CONSTRAINT [FK_Candidate_Skill_Candidates] FOREIGN KEY([Candidate_ID])
REFERENCES [dbo].[Candidates] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Candidate_Skill] CHECK CONSTRAINT [FK_Candidate_Skill_Candidates]
GO
ALTER TABLE [dbo].[Candidate_Skill]  WITH CHECK ADD  CONSTRAINT [FK_Candidate_Skill_Skills] FOREIGN KEY([Skill_ID])
REFERENCES [dbo].[Skills] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Candidate_Skill] CHECK CONSTRAINT [FK_Candidate_Skill_Skills]
GO
ALTER TABLE [dbo].[Contacts]  WITH CHECK ADD  CONSTRAINT [FK_Contacts_Candidates] FOREIGN KEY([Candidate_ID])
REFERENCES [dbo].[Candidates] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Contacts] CHECK CONSTRAINT [FK_Contacts_Candidates]
GO
ALTER TABLE [dbo].[Educations]  WITH CHECK ADD  CONSTRAINT [FK_Educations_Candidates] FOREIGN KEY([Candidate_ID])
REFERENCES [dbo].[Candidates] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Educations] CHECK CONSTRAINT [FK_Educations_Candidates]
GO
ALTER TABLE [dbo].[JobExperience_Technology]  WITH CHECK ADD  CONSTRAINT [FK_JobExperience_Technology_JobExperiences] FOREIGN KEY([JobExperience_ID])
REFERENCES [dbo].[JobExperiences] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobExperience_Technology] CHECK CONSTRAINT [FK_JobExperience_Technology_JobExperiences]
GO
ALTER TABLE [dbo].[JobExperience_Technology]  WITH CHECK ADD  CONSTRAINT [FK_JobExperience_Technology_Technologies] FOREIGN KEY([Technology_ID])
REFERENCES [dbo].[Technologies] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobExperience_Technology] CHECK CONSTRAINT [FK_JobExperience_Technology_Technologies]
GO
ALTER TABLE [dbo].[JobExperiences]  WITH CHECK ADD  CONSTRAINT [FK_JobExperiences_Candidates] FOREIGN KEY([Candidate_ID])
REFERENCES [dbo].[Candidates] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobExperiences] CHECK CONSTRAINT [FK_JobExperiences_Candidates]
GO




/****** Functions & Stored Procedures ******/

/****** Object:  UserDefinedFunction [dbo].[GetMonthAndYear]    Script Date: 13.10.2021 11:12:50 ******/
CREATE FUNCTION [dbo].[GetMonthAndYear] (@Date date)
RETURNS NCHAR(8)
AS
BEGIN
RETURN ISNULL(LEFT(CAST(DATENAME(MONTH, @Date) AS NVARCHAR), 3) + ' ' + CAST(DATEPART(YEAR, @Date) AS NVARCHAR), 'Now')
END
GO


/****** Object:  UserDefinedFunction [dbo].[GetJobExperience]    Script Date: 13.10.2021 11:12:50 ******/
CREATE FUNCTION [dbo].[GetJobExperience] (@JobExperienceId INT)
RETURNS TABLE
AS
RETURN
(
	SELECT 1 AS [Num], [Role] AS [Text] 
		FROM JobExperiences WHERE ID = @JobExperienceId
	UNION
	SELECT 2, Company + ' | ' + 
		dbo.GetMonthAndYear(StartDate) + ' – ' + 
		dbo.GetMonthAndYear(EndDate)
		FROM JobExperiences WHERE ID = @JobExperienceId
	UNION
	SELECT 3, '(' + STRING_AGG([Name], ' / ') + ')'
		FROM JobExperiences AS j 
		INNER JOIN JobExperience_Technology AS jt ON j.ID = jt.JobExperience_ID
		INNER JOIN Technologies AS t ON jt.Technology_ID = t.ID
		WHERE j.ID = @JobExperienceId
	UNION
	SELECT 4, Responsibilities
		FROM JobExperiences WHERE ID = @JobExperienceId AND Responsibilities IS NOT NULL
	UNION
	SELECT 5, ''
)
GO


/****** Object:  UserDefinedFunction [dbo].[GetEducation]    Script Date: 13.10.2021 11:12:50 ******/
CREATE FUNCTION [dbo].[GetEducation] (@EducationId INT)
RETURNS TABLE
AS
RETURN
(
	SELECT 1 AS [Num], Degree + ', ' + Field AS [Text]
		FROM Educations WHERE ID = @EducationId
	UNION
	SELECT 2, School + ' | ' + 
		CAST(DATEPART(YEAR, StartDate) AS NVARCHAR) + ' – ' + 
		ISNULL(CAST(DATEPART(YEAR, EndDate) AS NVARCHAR), 'Now') 
		FROM Educations WHERE ID = @EducationId
	UNION
	SELECT 3, ''
)
GO

/****** Object:  StoredProcedure [dbo].[GetCV]    Script Date: 13.10.2021 11:12:50 ******/
CREATE PROCEDURE [dbo].[GetCV] (@CandidateId INT)
AS
BEGIN
DECLARE @NewLine NCHAR(2) = NCHAR(13) + NCHAR(10)

DECLARE @CV AS TABLE ([Text] NVARCHAR(2048))

INSERT INTO @CV
SELECT FirstName + ' ' + LastName FROM Candidates WHERE ID = @CandidateId

INSERT INTO @CV
SELECT DesiredPosition FROM Candidates WHERE ID = @CandidateId

INSERT INTO @CV
VALUES (''), ('ABOUT ME')

INSERT INTO @CV
SELECT About FROM Candidates WHERE ID = @CandidateId

INSERT INTO @CV
VALUES (''), (''), ('WORK EXPERIENCE')

INSERT INTO @CV
SELECT [Text] FROM JobExperiences
CROSS APPLY dbo.GetJobExperience(ID)
WHERE Candidate_ID = @CandidateId
ORDER BY StartDate DESC, Num ASC

INSERT INTO @CV
VALUES (''), ('EDUCATION')

INSERT INTO @CV
SELECT [Text] FROM Educations
CROSS APPLY dbo.GetEducation(ID)
WHERE Candidate_ID = @CandidateId
ORDER BY StartDate DESC, Num ASC


INSERT INTO @CV
VALUES (''), ('SKILLS')

INSERT INTO @CV
SELECT s.[Name] FROM Candidates AS c
INNER JOIN Candidate_Skill AS cs ON c.ID = cs.Candidate_ID
INNER JOIN Skills AS s ON cs.Skill_ID = s.ID
WHERE c.ID = @CandidateId


INSERT INTO @CV
VALUES (''), (''), ('LANGUAGES')

INSERT INTO @CV
SELECT l.[Name] + ' (' + cl.[Level] + ')' FROM Candidates AS c
INNER JOIN Candidate_Language AS cl ON c.ID = cl.Candidate_ID
INNER JOIN Languages AS l ON cl.Language_ID = l.ID
WHERE c.ID = @CandidateId


INSERT INTO @CV
VALUES (''), ('')

INSERT INTO @CV
SELECT [Type] + ': ' + [Data] FROM Contacts WHERE Candidate_ID = @CandidateId

SELECT * FROM @CV
END
GO