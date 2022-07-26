CREATE DATABASE [UosManagementStest];
GO

USE [UosManagementStest]
GO
/****** Object:  Table [dbo].[__ViewCache]    Script Date: 23.05.2022 10:56:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__ViewCache](
	[ConceptualModelContainerName] [varchar](255) NOT NULL,
	[StoreModelContainerName] [varchar](255) NOT NULL,
	[ViewDefinitions] [nvarchar](max) NULL,
	[LastUpdated] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ConceptualModelContainerName] ASC,
	[StoreModelContainerName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[department]    Script Date: 23.05.2022 10:56:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[department](
	[id] [uniqueidentifier] NOT NULL,
	[parent_id] [uniqueidentifier] NULL,
	[manager_id] [uniqueidentifier] NULL,
	[name] [nvarchar](max) NOT NULL,
	[display_name] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[when_changed] [datetime] NOT NULL,
	[hris_id] [nvarchar](max) NOT NULL,
	[status] [int] NOT NULL,
	[start_date] [datetime] NOT NULL,
	[last_sync_datetime] [datetime] NOT NULL,
	[serialized_deps_tree] [xml] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[event]    Script Date: 23.05.2022 10:56:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[event](
	[id] [uniqueidentifier] NOT NULL,
	[parent_id] [uniqueidentifier] NULL,
	[event_type] [int] NOT NULL,
	[event_datetime] [datetime] NOT NULL,
	[event_payload] [nvarchar](max) NULL,
	[event_status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[functional_department]    Script Date: 23.05.2022 10:56:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[functional_department](
	[id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[display_name] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[parent_id] [uniqueidentifier] NULL,
	[manager_id] [uniqueidentifier] NULL,
	[when_changed] [datetime] NOT NULL,
	[hris_id] [nvarchar](max) NOT NULL,
	[status] [int] NOT NULL,
	[start_date] [datetime] NOT NULL,
	[last_sync_datetime] [datetime] NOT NULL,
	[serialized_deps_tree] [xml] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[location]    Script Date: 23.05.2022 10:56:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[location](
	[id] [uniqueidentifier] NOT NULL,
	[value] [nvarchar](max) NOT NULL,
	[when_changed] [datetime] NOT NULL,
	[hris_id] [nvarchar](max) NOT NULL,
	[last_sync_datetime] [datetime] NOT NULL,
	[status] [int] NOT NULL,
	[hris_id_unique] [nvarchar](300) NOT NULL,
	[hris_id_short] [nvarchar](300) NULL,
	[hris_id_full] [nvarchar](300) NULL,
	[timezone] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[partner]    Script Date: 23.05.2022 10:56:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[partner](
	[id] [uniqueidentifier] NOT NULL,
	[rid] [nvarchar](max) NOT NULL,
	[when_changed] [datetime] NOT NULL,
	[first_name] [nvarchar](max) NULL,
	[last_name] [nvarchar](max) NULL,
	[name] [nvarchar](max) NULL,
	[display_name] [nvarchar](max) NULL,
	[login] [nvarchar](max) NOT NULL,
	[phone] [nvarchar](max) NULL,
	[mobile_phone] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[when_expired] [datetime] NULL,
	[company] [nvarchar](max) NULL,
	[position] [nvarchar](max) NULL,
	[owner_id] [uniqueidentifier] NULL,
	[is_disabled] [bit] NOT NULL,
	[partner_status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[partner_image]    Script Date: 23.05.2022 10:56:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[partner_image](
	[user_id] [uniqueidentifier] NOT NULL,
	[image] [varbinary](max) NULL,
	[image_hash] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[refresh_token]    Script Date: 23.05.2022 10:56:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refresh_token](
	[id] [uniqueidentifier] NOT NULL,
	[user_id] [uniqueidentifier] NOT NULL,
	[issued_utc] [datetimeoffset](7) NOT NULL,
	[expires_utc] [datetimeoffset](7) NOT NULL,
	[protected_ticket] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 23.05.2022 10:56:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id] [uniqueidentifier] NOT NULL,
	[user_id] [uniqueidentifier] NOT NULL,
	[role_type] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchemaVersions]    Script Date: 23.05.2022 10:56:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchemaVersions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ScriptName] [nvarchar](255) NOT NULL,
	[Applied] [datetime] NOT NULL,
 CONSTRAINT [PK_SchemaVersions_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 23.05.2022 10:56:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [uniqueidentifier] NOT NULL,
	[location_id] [uniqueidentifier] NOT NULL,
	[manager_id] [uniqueidentifier] NULL,
	[salary_manager_id] [uniqueidentifier] NULL,
	[salary_manager_string] [nvarchar](max) NULL,
	[name] [nvarchar](max) NOT NULL,
	[alternative_name] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[is_shift_worker] [bit] NULL,
	[is_final_salary_manager] [bit] NULL,
	[birthday_date] [datetime] NULL,
	[first_day_of_work] [datetime] NULL,
	[when_expired] [datetime] NULL,
	[when_changed] [datetime] NOT NULL,
	[rid] [nvarchar](max) NOT NULL,
	[table_number] [nvarchar](10) NULL,
	[functional_department_id] [uniqueidentifier] NULL,
	[login] [nvarchar](max) NOT NULL,
	[is_disabled] [bit] NOT NULL,
	[indirect_manager_id] [uniqueidentifier] NULL,
	[employee_status] [int] NOT NULL,
	[contract_end_date] [datetime] NULL,
	[hris_id] [nvarchar](max) NULL,
	[active_directory_id] [uniqueidentifier] NOT NULL,
	[last_sync_datetime] [datetime] NOT NULL,
	[display_name] [nvarchar](max) NULL,
	[first_name] [nvarchar](max) NULL,
	[last_name] [nvarchar](max) NULL,
	[position] [nvarchar](max) NULL,
	[country] [nvarchar](max) NULL,
	[company] [nvarchar](max) NULL,
	[room] [nvarchar](max) NULL,
	[cost_center] [nvarchar](max) NULL,
	[mobile_phone] [nvarchar](max) NULL,
	[game_product] [nvarchar](max) NULL,
	[city] [nvarchar](max) NULL,
	[phone] [nvarchar](max) NULL,
	[skype] [nvarchar](max) NULL,
	[organizational_department_id] [uniqueidentifier] NULL,
	[hiring_manager_business_partner_id] [uniqueidentifier] NULL,
	[first_day_of_seniority] [datetime] NULL,
	[is_cost_center_owner] [bit] NOT NULL,
	[timezone] [nvarchar](max) NULL,
	[employee_class] [int] NULL,
	[contract_start_date] [datetime] NULL,
	[last_name_phonetic] [nvarchar](max) NULL,
	[first_name_phonetic] [nvarchar](max) NULL,
	[company_id] [nvarchar](50) NOT NULL,
	[secure_mobile] [nvarchar](20) NULL,
	[has_no_company_account] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_absence]    Script Date: 23.05.2022 10:56:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_absence](
	[id] [uniqueidentifier] NOT NULL,
	[external_id] [nvarchar](100) NOT NULL,
	[status] [int] NOT NULL,
	[user_id] [uniqueidentifier] NOT NULL,
	[start_date_local] [date] NOT NULL,
	[start_time_local] [time](0) NULL,
	[end_date_local] [date] NOT NULL,
	[end_time_local] [time](0) NULL,
	[metadata] [nvarchar](max) NULL,
 CONSTRAINT [PK_employee_absence] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_image]    Script Date: 23.05.2022 10:56:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_image](
	[user_id] [uniqueidentifier] NOT NULL,
	[image] [varbinary](max) NULL,
	[image_hash] [nvarchar](30) NULL,
	[hris_id] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[department] ADD  DEFAULT ('id') FOR [hris_id]
GO
ALTER TABLE [dbo].[department] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[department] ADD  DEFAULT (getdate()) FOR [start_date]
GO
ALTER TABLE [dbo].[department] ADD  DEFAULT (getutcdate()) FOR [last_sync_datetime]
GO
ALTER TABLE [dbo].[event] ADD  DEFAULT (getutcdate()) FOR [event_datetime]
GO
ALTER TABLE [dbo].[functional_department] ADD  DEFAULT ('id') FOR [hris_id]
GO
ALTER TABLE [dbo].[functional_department] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[functional_department] ADD  DEFAULT (getdate()) FOR [start_date]
GO
ALTER TABLE [dbo].[functional_department] ADD  DEFAULT (getutcdate()) FOR [last_sync_datetime]
GO
ALTER TABLE [dbo].[location] ADD  DEFAULT ('id') FOR [hris_id]
GO
ALTER TABLE [dbo].[location] ADD  DEFAULT (getutcdate()) FOR [last_sync_datetime]
GO
ALTER TABLE [dbo].[location] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[location] ADD  DEFAULT ('') FOR [hris_id_unique]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ((0)) FOR [employee_status]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [active_directory_id]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (getutcdate()) FOR [last_sync_datetime]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ((0)) FOR [is_cost_center_owner]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ('') FOR [company_id]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ((0)) FOR [has_no_company_account]
GO
ALTER TABLE [dbo].[department]  WITH CHECK ADD  CONSTRAINT [Department_Lead] FOREIGN KEY([manager_id])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[department] CHECK CONSTRAINT [Department_Lead]
GO
ALTER TABLE [dbo].[department]  WITH CHECK ADD  CONSTRAINT [Department_ParentDepartment] FOREIGN KEY([parent_id])
REFERENCES [dbo].[department] ([id])
GO
ALTER TABLE [dbo].[department] CHECK CONSTRAINT [Department_ParentDepartment]
GO
ALTER TABLE [dbo].[functional_department]  WITH CHECK ADD  CONSTRAINT [FunctionalDepartment_Lead] FOREIGN KEY([manager_id])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[functional_department] CHECK CONSTRAINT [FunctionalDepartment_Lead]
GO
ALTER TABLE [dbo].[functional_department]  WITH CHECK ADD  CONSTRAINT [FunctionalDepartment_ParentDepartment] FOREIGN KEY([parent_id])
REFERENCES [dbo].[functional_department] ([id])
GO
ALTER TABLE [dbo].[functional_department] CHECK CONSTRAINT [FunctionalDepartment_ParentDepartment]
GO
ALTER TABLE [dbo].[partner]  WITH CHECK ADD  CONSTRAINT [PartnerUser_Owner] FOREIGN KEY([owner_id])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[partner] CHECK CONSTRAINT [PartnerUser_Owner]
GO
ALTER TABLE [dbo].[partner_image]  WITH CHECK ADD  CONSTRAINT [PartnerUserPhoto_Person] FOREIGN KEY([user_id])
REFERENCES [dbo].[partner] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[partner_image] CHECK CONSTRAINT [PartnerUserPhoto_Person]
GO
ALTER TABLE [dbo].[role]  WITH CHECK ADD  CONSTRAINT [Role_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[role] CHECK CONSTRAINT [Role_User]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FunctionalDepartment_People] FOREIGN KEY([functional_department_id])
REFERENCES [dbo].[functional_department] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FunctionalDepartment_People]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [User_HiringManagerBusinessPartner] FOREIGN KEY([hiring_manager_business_partner_id])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [User_HiringManagerBusinessPartner]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [User_IndirectManager] FOREIGN KEY([indirect_manager_id])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [User_IndirectManager]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [User_Location] FOREIGN KEY([location_id])
REFERENCES [dbo].[location] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [User_Location]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [User_Manager] FOREIGN KEY([manager_id])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [User_Manager]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [User_OrganizationalDepartment] FOREIGN KEY([organizational_department_id])
REFERENCES [dbo].[department] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [User_OrganizationalDepartment]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [User_SalaryManager] FOREIGN KEY([salary_manager_id])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [User_SalaryManager]
GO
ALTER TABLE [dbo].[user_absence]  WITH CHECK ADD  CONSTRAINT [FK_user_absence_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user_absence] CHECK CONSTRAINT [FK_user_absence_user]
GO
ALTER TABLE [dbo].[user_image]  WITH CHECK ADD  CONSTRAINT [UserPhoto_Person] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user_image] CHECK CONSTRAINT [UserPhoto_Person]
GO
