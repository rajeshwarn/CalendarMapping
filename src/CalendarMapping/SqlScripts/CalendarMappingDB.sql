USE [CalendarMapping]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/6/2016 2:08:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 10/6/2016 2:08:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/6/2016 2:08:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/6/2016 2:08:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/6/2016 2:08:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/6/2016 2:08:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/6/2016 2:08:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 10/6/2016 2:08:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Calendars]    Script Date: 10/6/2016 2:08:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calendars](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[PrivacyStatus] [bit] NOT NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Calendars] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Events]    Script Date: 10/6/2016 2:08:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
	[CalendarId] [int] NULL,
	[EndingDateTime] [datetime2](7) NOT NULL,
	[StartingDateTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FavoriteCalendars]    Script Date: 10/6/2016 2:08:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FavoriteCalendars](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CalendarId] [int] NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_FavoriteCalendars] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160923032434_InitialDB', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160923034215_NamesToUserAndCreateEvents', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160923135507_AddUserToEvent', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160923145401_SeparateDateAndTimeInEvents', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160929003054_CalendarModel', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160930033008_ChangeDateTimeForEvents', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20161005234423_FavoriteCalendarsTable', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20161005235837_EditFavoriteCalendarsConstructor', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20161006202807_ForeignKeyToFC', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20161006204400_FavCalendarsToDBContext', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20161006205327_CreateNewFavoriteCalendarObject', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20161006205604_FCNameChange', N'1.0.0-rtm-21431')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'0bb99f37-3d9b-46ad-8750-ed6fcfae6d9c', N'ad7d67f0-e4b3-4806-ae81-66a681ae44e2', N'AccountHolder', N'ACCOUNTHOLDER')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'3bb72cfe-8fd3-432a-9c53-81d0f0deec9e', N'd27b8aa3-68f7-4dca-8f20-a22f82d168a6', N'SiteBoss', N'SITEBOSS')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'4d8ba986-7b9d-43a3-a283-562ea99d96d5', N'e5f5a5db-bc8c-493a-b820-8f079d87f431', N'Organization', N'ORGANIZATION')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1e24830b-22d4-48f3-aa09-b3311e552e72', N'0bb99f37-3d9b-46ad-8750-ed6fcfae6d9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1e24830b-22d4-48f3-aa09-b3311e552e72', N'3bb72cfe-8fd3-432a-9c53-81d0f0deec9e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'78d8ff03-938f-4320-940f-d5f7691e72d4', N'0bb99f37-3d9b-46ad-8750-ed6fcfae6d9c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8866f9cb-996c-4c9a-b6a8-fd7ba774a11d', N'0bb99f37-3d9b-46ad-8750-ed6fcfae6d9c')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'1e24830b-22d4-48f3-aa09-b3311e552e72', 0, N'559aeea1-8682-4ed1-8026-5ad896e2b45d', NULL, 0, 1, NULL, NULL, N'EPICODUSADMIN', N'AQAAAAEAACcQAAAAECXh6pseA1d6AGo+rsQMVKkYdMTFLsivbxOZo2HP9rhVEW05XjRKT/rHBCGg5onP1g==', NULL, 0, N'802a0b1f-c49e-4ca7-bcd0-7aaf7b8c69ef', 0, N'EpicodusAdmin', N'Example First', N'Example Last')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'78d8ff03-938f-4320-940f-d5f7691e72d4', 0, N'79fcdafb-8b2f-4561-81da-f0ae75b4dfce', N'example@gmail.com', 0, 1, NULL, N'EXAMPLE@GMAIL.COM', N'TESTCAT', N'AQAAAAEAACcQAAAAEJN6WmNTbe24ETby7QRBmd4bTZmOJXNA2go9VzMvbcL9cOsCqEutaOxz2EXi8mQrew==', N'555-555-5555', 0, N'6b9dbc56-dbee-47c9-a654-971802ddb52c', 0, N'TestCat', N'Rubab', N'Shah')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [FirstName], [LastName]) VALUES (N'8866f9cb-996c-4c9a-b6a8-fd7ba774a11d', 0, N'18f918d3-3d36-4791-92bf-da8ce4dfd86c', N'exampletest@gmail.com', 0, 1, NULL, N'EXAMPLETEST@GMAIL.COM', N'TESTUSER', N'AQAAAAEAACcQAAAAEObAg+lPQ7f7s0eMRN1nO7Y4UW47Bl8fu2iThNLxPvl0WeMx0nKkLaOzt62lQBGslg==', N'555-555-5555', 0, N'0824e1f3-f73a-411f-9d91-cf82e85f4129', 0, N'TestUser', N'Jane', N'Doe')
SET IDENTITY_INSERT [dbo].[Calendars] ON 

INSERT [dbo].[Calendars] ([Id], [Name], [PrivacyStatus], [UserId]) VALUES (2, N'Rubab''s Calendar', 1, N'78d8ff03-938f-4320-940f-d5f7691e72d4')
INSERT [dbo].[Calendars] ([Id], [Name], [PrivacyStatus], [UserId]) VALUES (3, N'Volunteering', 0, N'8866f9cb-996c-4c9a-b6a8-fd7ba774a11d')
INSERT [dbo].[Calendars] ([Id], [Name], [PrivacyStatus], [UserId]) VALUES (8, N'Parties', 1, N'8866f9cb-996c-4c9a-b6a8-fd7ba774a11d')
SET IDENTITY_INSERT [dbo].[Calendars] OFF
SET IDENTITY_INSERT [dbo].[Events] ON 

INSERT [dbo].[Events] ([Id], [Address], [Description], [UserId], [CalendarId], [EndingDateTime], [StartingDateTime]) VALUES (10, N'1930 SW 4th Ave Portland, OR 97201', N'OHS Volunteer Party!!', N'8866f9cb-996c-4c9a-b6a8-fd7ba774a11d', 3, CAST(N'2016-10-01T20:30:00.0000000' AS DateTime2), CAST(N'2016-10-01T18:00:00.0000000' AS DateTime2))
INSERT [dbo].[Events] ([Id], [Address], [Description], [UserId], [CalendarId], [EndingDateTime], [StartingDateTime]) VALUES (12, N'301 SW Lincoln St. Portland, OR 97201', N'Dog walking', N'8866f9cb-996c-4c9a-b6a8-fd7ba774a11d', 3, CAST(N'2016-09-30T13:00:00.0000000' AS DateTime2), CAST(N'2016-09-30T12:00:00.0000000' AS DateTime2))
INSERT [dbo].[Events] ([Id], [Address], [Description], [UserId], [CalendarId], [EndingDateTime], [StartingDateTime]) VALUES (13, N'1219 SW Park Ave, Portland, OR 97205', N'Cat harness training', N'8866f9cb-996c-4c9a-b6a8-fd7ba774a11d', 3, CAST(N'2016-10-11T20:00:00.0000000' AS DateTime2), CAST(N'2016-10-10T08:00:00.0000000' AS DateTime2))
INSERT [dbo].[Events] ([Id], [Address], [Description], [UserId], [CalendarId], [EndingDateTime], [StartingDateTime]) VALUES (15, N'222 SW Clay St, Portland, OR 97201', N'Best friend''s birthday party!!', N'8866f9cb-996c-4c9a-b6a8-fd7ba774a11d', 8, CAST(N'2016-09-30T22:00:00.0000000' AS DateTime2), CAST(N'2016-09-30T12:00:00.0000000' AS DateTime2))
INSERT [dbo].[Events] ([Id], [Address], [Description], [UserId], [CalendarId], [EndingDateTime], [StartingDateTime]) VALUES (16, N'1221 SW 4th Ave, Portland, OR 97204', N'Email internship companies', N'8866f9cb-996c-4c9a-b6a8-fd7ba774a11d', 3, CAST(N'2016-10-05T17:00:00.0000000' AS DateTime2), CAST(N'2016-10-05T08:00:00.0000000' AS DateTime2))
INSERT [dbo].[Events] ([Id], [Address], [Description], [UserId], [CalendarId], [EndingDateTime], [StartingDateTime]) VALUES (17, N'1945 SE Water Ave, Portland, OR 97214', N'Finish cover letters', N'8866f9cb-996c-4c9a-b6a8-fd7ba774a11d', 3, CAST(N'2016-10-04T11:00:00.0000000' AS DateTime2), CAST(N'2016-10-04T10:00:00.0000000' AS DateTime2))
INSERT [dbo].[Events] ([Id], [Address], [Description], [UserId], [CalendarId], [EndingDateTime], [StartingDateTime]) VALUES (18, N'616 SW Broadway, Portland, OR 97205', N'Get phone fixed at Verizon store', N'8866f9cb-996c-4c9a-b6a8-fd7ba774a11d', 3, CAST(N'2016-10-06T18:00:00.0000000' AS DateTime2), CAST(N'2016-10-06T17:00:00.0000000' AS DateTime2))
INSERT [dbo].[Events] ([Id], [Address], [Description], [UserId], [CalendarId], [EndingDateTime], [StartingDateTime]) VALUES (19, N'1825 SW Broadway, Portland, OR 97232', N'Finish independent project', N'8866f9cb-996c-4c9a-b6a8-fd7ba774a11d', 3, CAST(N'2016-10-03T22:00:00.0000000' AS DateTime2), CAST(N'2016-10-03T20:00:00.0000000' AS DateTime2))
INSERT [dbo].[Events] ([Id], [Address], [Description], [UserId], [CalendarId], [EndingDateTime], [StartingDateTime]) VALUES (20, N'1844 SW Morrison St, Portland, OR 97205', N'Timbers Game!!', N'8866f9cb-996c-4c9a-b6a8-fd7ba774a11d', 3, CAST(N'2016-10-07T19:30:00.0000000' AS DateTime2), CAST(N'2016-10-07T17:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Events] OFF
SET IDENTITY_INSERT [dbo].[FavoriteCalendars] ON 

INSERT [dbo].[FavoriteCalendars] ([Id], [CalendarId], [UserId]) VALUES (1, 3, N'8866f9cb-996c-4c9a-b6a8-fd7ba774a11d')
SET IDENTITY_INSERT [dbo].[FavoriteCalendars] OFF
ALTER TABLE [dbo].[Events] ADD  DEFAULT ('0001-01-01T00:00:00.000') FOR [EndingDateTime]
GO
ALTER TABLE [dbo].[Events] ADD  DEFAULT ('0001-01-01T00:00:00.000') FOR [StartingDateTime]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Calendars]  WITH CHECK ADD  CONSTRAINT [FK_Calendars_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Calendars] CHECK CONSTRAINT [FK_Calendars_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_Calendars_CalendarId] FOREIGN KEY([CalendarId])
REFERENCES [dbo].[Calendars] ([Id])
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_Calendars_CalendarId]
GO
ALTER TABLE [dbo].[FavoriteCalendars]  WITH CHECK ADD  CONSTRAINT [FK_FavoriteCalendars_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[FavoriteCalendars] CHECK CONSTRAINT [FK_FavoriteCalendars_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[FavoriteCalendars]  WITH CHECK ADD  CONSTRAINT [FK_FavoriteCalendars_Calendars_CalendarId] FOREIGN KEY([CalendarId])
REFERENCES [dbo].[Calendars] ([Id])
GO
ALTER TABLE [dbo].[FavoriteCalendars] CHECK CONSTRAINT [FK_FavoriteCalendars_Calendars_CalendarId]
GO
