USE [douban_db]
GO
/****** Object:  Table [dbo].[usr]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usr](
	[usr_id] [int] NOT NULL,
	[usr_account] [varchar](16) NOT NULL,
	[usr_nickname] [varchar](32) NOT NULL,
	[usr_passwd] [varchar](16) NOT NULL,
	[usr_accnt_type] [varchar](16) NULL,
 CONSTRAINT [PK_usr] PRIMARY KEY CLUSTERED 
(
	[usr_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[type]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[type](
	[type_id] [int] NOT NULL,
	[type_name] [varchar](32) NOT NULL,
 CONSTRAINT [PK_type] PRIMARY KEY CLUSTERED 
(
	[type_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[seen]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[seen](
	[relation_id] [int] NOT NULL,
	[usr_id] [int] NOT NULL,
	[movie_id] [int] NOT NULL,
 CONSTRAINT [PK_seen] PRIMARY KEY CLUSTERED 
(
	[relation_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[scriptwriter]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[scriptwriter](
	[scriptwriter_id] [int] NOT NULL,
	[scriptwriter_name] [varchar](32) NOT NULL,
 CONSTRAINT [PK_scriptwriter] PRIMARY KEY CLUSTERED 
(
	[scriptwriter_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[script]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[script](
	[scriptwriter_id] [int] NOT NULL,
	[movie_id] [int] NOT NULL,
	[relation_id] [int] NOT NULL,
 CONSTRAINT [PK_script_1] PRIMARY KEY CLUSTERED 
(
	[relation_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[responding]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[responding](
	[respond_id] [int] NOT NULL,
	[promulgator] [varchar](32) NOT NULL,
	[release_time] [date] NOT NULL,
	[respond_content] [varchar](512) NULL,
	[discuss_id] [int] NOT NULL,
 CONSTRAINT [PK_responding] PRIMARY KEY CLUSTERED 
(
	[respond_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[region]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[region](
	[region_id] [int] NOT NULL,
	[region_name] [varchar](32) NOT NULL,
 CONSTRAINT [PK_region] PRIMARY KEY CLUSTERED 
(
	[region_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[realation]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[realation](
	[relation_id] [int] NOT NULL,
	[usr_id_A] [int] NOT NULL,
	[usr_id_B] [int] NOT NULL,
 CONSTRAINT [PK_realation] PRIMARY KEY CLUSTERED 
(
	[relation_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movie_language]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movie_language](
	[language_id] [int] NOT NULL,
	[movie_id] [int] NOT NULL,
	[relation_id] [int] NOT NULL,
 CONSTRAINT [PK_movie_language_1] PRIMARY KEY CLUSTERED 
(
	[relation_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movie]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[movie](
	[movie_id] [int] NOT NULL,
	[movie_name] [varchar](32) NOT NULL,
	[release_date] [date] NOT NULL,
	[movie_time] [int] NOT NULL,
	[movie_introduction] [varchar](512) NOT NULL,
	[movie_IMDb] [nchar](32) NULL,
	[movie_online] [tinyint] NOT NULL,
 CONSTRAINT [PK_movie] PRIMARY KEY CLUSTERED 
(
	[movie_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[memgroup]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[memgroup](
	[group_id] [int] NOT NULL,
	[group_name] [varchar](50) NOT NULL,
	[movie_id] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[location]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[location](
	[region_id] [int] NOT NULL,
	[movie_id] [int] NOT NULL,
	[relation_id] [int] NOT NULL,
 CONSTRAINT [PK_location_1] PRIMARY KEY CLUSTERED 
(
	[relation_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[language]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[language](
	[language_id] [int] NOT NULL,
	[language_name] [varchar](32) NOT NULL,
 CONSTRAINT [PK_language] PRIMARY KEY CLUSTERED 
(
	[language_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[label]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[label](
	[lab_id] [int] NOT NULL,
	[lab_comment] [varchar](16) NULL,
 CONSTRAINT [PK_label] PRIMARY KEY CLUSTERED 
(
	[lab_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[judge]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[judge](
	[judge_id] [int] NOT NULL,
	[usr_id] [int] NOT NULL,
	[com_id] [int] NOT NULL,
	[judge_content] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[group_relation]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[group_relation](
	[relation_id] [int] NOT NULL,
	[usr_id] [int] NOT NULL,
	[group_id] [int] NOT NULL,
 CONSTRAINT [PK_group_relation] PRIMARY KEY CLUSTERED 
(
	[relation_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[filmcriticing]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[filmcriticing](
	[filmcritic _id] [int] NOT NULL,
	[filmcritic _ content] [varchar](100) NULL,
	[promulgator] [varchar](32) NULL,
	[release_time] [timestamp] NULL,
 CONSTRAINT [PK_filmcriticing] PRIMARY KEY CLUSTERED 
(
	[filmcritic _id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[filmcritic]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[filmcritic](
	[filmcritic _id] [int] NOT NULL,
	[topics_id] [int] NOT NULL,
 CONSTRAINT [PK_filmcritic] PRIMARY KEY CLUSTERED 
(
	[filmcritic _id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[discussion]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[discussion](
	[discuss_id] [int] NOT NULL,
	[discuss_topic] [varchar](32) NOT NULL,
	[promulgator] [varchar](32) NOT NULL,
	[release_time] [date] NOT NULL,
	[discuss_content] [varchar](400) NULL,
	[group_id] [int] NOT NULL,
 CONSTRAINT [PK_discussion] PRIMARY KEY CLUSTERED 
(
	[discuss_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[director]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[director](
	[director_id] [int] NOT NULL,
	[director_name] [varchar](32) NOT NULL,
 CONSTRAINT [PK_director] PRIMARY KEY CLUSTERED 
(
	[director_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[direct]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[direct](
	[director_id] [int] NOT NULL,
	[movie_id] [int] NOT NULL,
	[relation_id] [int] NOT NULL,
 CONSTRAINT [PK_direct_1] PRIMARY KEY CLUSTERED 
(
	[relation_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comment](
	[com_id] [int] NOT NULL,
	[mov_id] [int] NOT NULL,
	[usr_id] [int] NOT NULL,
	[com_seen] [tinyint] NOT NULL,
	[com_star] [tinyint] NULL,
	[com_content] [varchar](16) NULL,
	[com_time] [date] NULL,
	[relation_id] [int] NOT NULL,
 CONSTRAINT [PK_comment_1] PRIMARY KEY CLUSTERED 
(
	[relation_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[com_lab]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[com_lab](
	[relation_id] [int] NOT NULL,
	[lab_id] [int] NOT NULL,
	[com_id] [int] NOT NULL,
 CONSTRAINT [PK_com_lab] PRIMARY KEY CLUSTERED 
(
	[relation_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[classify]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classify](
	[type_id] [int] NOT NULL,
	[movie_id] [int] NOT NULL,
	[relation_id] [int] NOT NULL,
 CONSTRAINT [PK_classify_1] PRIMARY KEY CLUSTERED 
(
	[relation_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[browsing]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[browsing](
	[browse _id] [int] NOT NULL,
	[browse _content] [varchar](100) NOT NULL,
	[browser] [varchar](32) NOT NULL,
	[browse_time] [varchar](10) NULL,
 CONSTRAINT [PK_browsing] PRIMARY KEY CLUSTERED 
(
	[browse _id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[browse]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[browse](
	[browse _id] [int] NOT NULL,
	[topics_id] [int] NULL,
	[relation_id] [int] NOT NULL,
 CONSTRAINT [PK_browse_1] PRIMARY KEY CLUSTERED 
(
	[relation_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[awarding]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[awarding](
	[awards_id] [int] NOT NULL,
	[awards_name] [varchar](32) NOT NULL,
	[activities] [varchar](32) NULL,
	[award_object] [varchar](32) NULL,
	[movie_id] [int] NOT NULL,
 CONSTRAINT [PK_awarding] PRIMARY KEY CLUSTERED 
(
	[awards_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[actor]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[actor](
	[actor_id] [int] NOT NULL,
	[actor_name] [varchar](32) NOT NULL,
	[is_star] [tinyint] NOT NULL,
 CONSTRAINT [PK_actor] PRIMARY KEY CLUSTERED 
(
	[actor_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[act]    Script Date: 12/28/2019 08:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[act](
	[actor_id] [int] NOT NULL,
	[movie_id] [int] NOT NULL,
	[role_name] [varchar](32) NOT NULL,
	[relation_id] [int] NOT NULL,
 CONSTRAINT [PK_act_1] PRIMARY KEY CLUSTERED 
(
	[relation_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
