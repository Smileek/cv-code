USE [CurriculumVitae]
GO

SET IDENTITY_INSERT [dbo].[Candidates] ON 

INSERT [dbo].[Candidates] ([ID], [FirstName], [LastName], [BirthDate], [Citizenship], [CountryOfResidence], [About], [DesiredPosition]) VALUES (1, N'Andrei', N'Sieedugin', CAST(N'1988-01-30' AS Date), N'RU', N'Russia', N'Product manager with 5+ years of experience providing both UX/UI and technical solutions. Big fan of easy-to-use products. Able to understand both business and IT departments, and help them understand each other. Former software developer. SQL enthusiast.', N'Product Manager • SQL Data Analyst')

SET IDENTITY_INSERT [dbo].[Candidates] OFF
GO

SET IDENTITY_INSERT [dbo].[Languages] ON 

INSERT [dbo].[Languages] ([ID], [Name]) VALUES (1, N'English')
INSERT [dbo].[Languages] ([ID], [Name]) VALUES (2, N'Russian')

SET IDENTITY_INSERT [dbo].[Languages] OFF
GO

INSERT [dbo].[Candidate_Language] ([Candidate_ID], [Language_ID], [Level]) VALUES (1, 1, N'Fluent')
INSERT [dbo].[Candidate_Language] ([Candidate_ID], [Language_ID], [Level]) VALUES (1, 2, N'Native')
GO

SET IDENTITY_INSERT [dbo].[Skills] ON 

INSERT [dbo].[Skills] ([ID], [Name]) VALUES (1, N'Product Management')
INSERT [dbo].[Skills] ([ID], [Name]) VALUES (2, N'SQL')
INSERT [dbo].[Skills] ([ID], [Name]) VALUES (3, N'Analytical Skills')
INSERT [dbo].[Skills] ([ID], [Name]) VALUES (4, N'Roadmapping')
INSERT [dbo].[Skills] ([ID], [Name]) VALUES (5, N'Product Requirements')
INSERT [dbo].[Skills] ([ID], [Name]) VALUES (6, N'Software Development')

SET IDENTITY_INSERT [dbo].[Skills] OFF
GO

INSERT [dbo].[Candidate_Skill] ([Candidate_ID], [Skill_ID]) VALUES (1, 1)
INSERT [dbo].[Candidate_Skill] ([Candidate_ID], [Skill_ID]) VALUES (1, 2)
INSERT [dbo].[Candidate_Skill] ([Candidate_ID], [Skill_ID]) VALUES (1, 3)
INSERT [dbo].[Candidate_Skill] ([Candidate_ID], [Skill_ID]) VALUES (1, 4)
INSERT [dbo].[Candidate_Skill] ([Candidate_ID], [Skill_ID]) VALUES (1, 5)
INSERT [dbo].[Candidate_Skill] ([Candidate_ID], [Skill_ID]) VALUES (1, 6)
GO

SET IDENTITY_INSERT [dbo].[Educations] ON 

INSERT [dbo].[Educations] ([ID], [Candidate_ID], [School], [StartDate], [EndDate], [Degree], [Field]) VALUES (1, 1, N'Penza State University', CAST(N'2004-09-01' AS Date), CAST(N'2009-07-01' AS Date), N'BS', N'Computer Science, Information Systems and Technologies')

SET IDENTITY_INSERT [dbo].[Educations] OFF
GO

SET IDENTITY_INSERT [dbo].[JobExperiences] ON 

INSERT [dbo].[JobExperiences] ([ID], [Candidate_ID], [Company], [StartDate], [EndDate], [Role], [Responsibilities]) VALUES (1, 1, N'Smartway', CAST(N'2018-04-18' AS Date), CAST(N'2021-08-01' AS Date), N'Chief Product Officer', N'• Introduced solutions that tripled the sales growth two years in a row in 2018 and 2019
• Managed to make Smartway the only business travel service in Russia to grow during the pandemic crisis of 2020
• Launched mobile apps for iOS and Android
• Redesigned the web application
• Managed the process of business integration with airlines and Global Distribution Systems
• Introduced analytics in both web and mobile apps
• Added 50+ middle-to-large new features')
INSERT [dbo].[JobExperiences] ([ID], [Candidate_ID], [Company], [StartDate], [EndDate], [Role], [Responsibilities]) VALUES (2, 1, N'FunCorp', CAST(N'2016-01-01' AS Date), CAST(N'2018-03-31' AS Date), N'Product Manager / Lead Product Manager', N'• Launched 20+ new features to iFunny, one of the top 10 most popular entertainment apps in the US
• Successfully completed the very first i18n and L10n project in the company
• Redesigned the content management system and added new search tools to meet the requirements of the editorial team')
INSERT [dbo].[JobExperiences] ([ID], [Candidate_ID], [Company], [StartDate], [EndDate], [Role], [Responsibilities]) VALUES (3, 1, N'FunCorp', CAST(N'2013-10-15' AS Date), CAST(N'2015-12-31' AS Date), N'Android Developer', NULL)
INSERT [dbo].[JobExperiences] ([ID], [Candidate_ID], [Company], [StartDate], [EndDate], [Role], [Responsibilities]) VALUES (4, 1, N'Moe Delo', CAST(N'2010-12-06' AS Date), CAST(N'2013-10-04' AS Date), N'Full Stack Web Developer / IT Project Manager', NULL)
INSERT [dbo].[JobExperiences] ([ID], [Candidate_ID], [Company], [StartDate], [EndDate], [Role], [Responsibilities]) VALUES (5, 1, N'Cryptosoft', CAST(N'2006-12-15' AS Date), CAST(N'2010-04-01' AS Date), N'Software Developer', NULL)

SET IDENTITY_INSERT [dbo].[JobExperiences] OFF
GO

SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([ID], [Candidate_ID], [Type], [Data]) VALUES (1, 1, N'Location', N'Kaliningrad, Russia (UTC+2)')
INSERT [dbo].[Contacts] ([ID], [Candidate_ID], [Type], [Data]) VALUES (2, 1, N'Email', N'smile.ek@gmail.com')
INSERT [dbo].[Contacts] ([ID], [Candidate_ID], [Type], [Data]) VALUES (3, 1, N'LinkedIn', N'@smileek')

SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO

SET IDENTITY_INSERT [dbo].[Technologies] ON 

INSERT [dbo].[Technologies] ([ID], [Name]) VALUES (1, N'MS SQL')
INSERT [dbo].[Technologies] ([ID], [Name]) VALUES (2, N'PostgreSQL')
INSERT [dbo].[Technologies] ([ID], [Name]) VALUES (3, N'MongoDB')
INSERT [dbo].[Technologies] ([ID], [Name]) VALUES (4, N'Tableau')
INSERT [dbo].[Technologies] ([ID], [Name]) VALUES (5, N'SQLite')
INSERT [dbo].[Technologies] ([ID], [Name]) VALUES (6, N'Oracle')

SET IDENTITY_INSERT [dbo].[Technologies] OFF
GO

INSERT [dbo].[JobExperience_Technology] ([JobExperience_ID], [Technology_ID]) VALUES (1, 1)
INSERT [dbo].[JobExperience_Technology] ([JobExperience_ID], [Technology_ID]) VALUES (1, 2)
INSERT [dbo].[JobExperience_Technology] ([JobExperience_ID], [Technology_ID]) VALUES (1, 3)
INSERT [dbo].[JobExperience_Technology] ([JobExperience_ID], [Technology_ID]) VALUES (2, 2)
INSERT [dbo].[JobExperience_Technology] ([JobExperience_ID], [Technology_ID]) VALUES (2, 4)
INSERT [dbo].[JobExperience_Technology] ([JobExperience_ID], [Technology_ID]) VALUES (3, 5)
INSERT [dbo].[JobExperience_Technology] ([JobExperience_ID], [Technology_ID]) VALUES (4, 1)
INSERT [dbo].[JobExperience_Technology] ([JobExperience_ID], [Technology_ID]) VALUES (4, 3)
INSERT [dbo].[JobExperience_Technology] ([JobExperience_ID], [Technology_ID]) VALUES (5, 6)
GO