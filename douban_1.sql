/****** Object:  Database [douban_db]    Script Date: 2019/11/28 9:58:08 ******/
CREATE DATABASE [douban_db]
 ON  PRIMARY 
( NAME = N'douban_db', FILENAME = N'C:\Users\Barry\Desktop\douban_db.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'douban_db_log', FILENAME = N'C:\Users\Barry\Desktop\douban_db_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [douban_db] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [douban_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [douban_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [douban_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [douban_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [douban_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [douban_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [douban_db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [douban_db] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [douban_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [douban_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [douban_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [douban_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [douban_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [douban_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [douban_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [douban_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [douban_db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [douban_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [douban_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [douban_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [douban_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [douban_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [douban_db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [douban_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [douban_db] SET RECOVERY FULL 
GO
ALTER DATABASE [douban_db] SET  MULTI_USER 
GO
ALTER DATABASE [douban_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [douban_db] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'douban_db', N'ON'
GO
USE [douban_db]
GO
/****** Object:  Table [dbo].[usr]    Script Date: 12/02/2019 12:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usr](
	[usr_id] [int] IDENTITY(1,1) NOT NULL,
	[usr_account] [varchar](16) NOT NULL,
	[usr_nickname] [varchar](16) NOT NULL,
	[usr_passwd] [varchar](16) NOT NULL,
 CONSTRAINT [PK_usr] PRIMARY KEY CLUSTERED 
(
	[usr_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[type]    Script Date: 12/02/2019 12:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[type](
	[type_id] [int] IDENTITY(1,1) NOT NULL,
	[type_name] [varchar](32) NOT NULL,
 CONSTRAINT [PK_type] PRIMARY KEY CLUSTERED 
(
	[type_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[topics]    Script Date: 12/02/2019 12:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[topics](
	[topics_id] [int] IDENTITY(1,1) NOT NULL,
	[topics_content] [varchar](32) NULL,
 CONSTRAINT [PK_topics] PRIMARY KEY CLUSTERED 
(
	[topics_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[scriptwriter]    Script Date: 12/02/2019 12:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[scriptwriter](
	[scriptwriter_id] [int] IDENTITY(1,1) NOT NULL,
	[scriptwriter_name] [varchar](32) NOT NULL,
 CONSTRAINT [PK_scriptwriter] PRIMARY KEY CLUSTERED 
(
	[scriptwriter_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[script]    Script Date: 12/02/2019 12:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[script](
	[scriptwriter_id] [int] IDENTITY(1,1) NOT NULL,
	[movie_id] [int] NOT NULL,
 CONSTRAINT [PK_script] PRIMARY KEY CLUSTERED 
(
	[scriptwriter_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[responding]    Script Date: 12/02/2019 12:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[responding](
	[respond_id] [int] IDENTITY(1,1) NOT NULL,
	[promulgator] [varchar](32) NOT NULL,
	[release_time] [timestamp] NOT NULL,
	[respond_content] [varchar](400) NULL,
	[discuss_id] [int] NOT NULL,
 CONSTRAINT [PK_responding] PRIMARY KEY CLUSTERED 
(
	[respond_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[region]    Script Date: 12/02/2019 12:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[region](
	[region_id] [int] IDENTITY(1,1) NOT NULL,
	[region_name] [varchar](32) NOT NULL,
 CONSTRAINT [PK_region] PRIMARY KEY CLUSTERED 
(
	[region_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[movie_language]    Script Date: 12/02/2019 12:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movie_language](
	[language_id] [int] IDENTITY(1,1) NOT NULL,
	[movie_id] [int] NOT NULL,
 CONSTRAINT [PK_movie_language] PRIMARY KEY CLUSTERED 
(
	[language_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movie]    Script Date: 12/02/2019 12:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[movie](
	[movie_id] [int] IDENTITY(1,1) NOT NULL,
	[movie_name] [varchar](32) NOT NULL,
	[release_date] [date] NOT NULL,
	[movie_time] [timestamp] NOT NULL,
	[movie_introduction] [varchar](400) NOT NULL,
 CONSTRAINT [PK_movie] PRIMARY KEY CLUSTERED 
(
	[movie_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[location]    Script Date: 12/02/2019 12:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[location](
	[region_id] [int] IDENTITY(1,1) NOT NULL,
	[movie_id] [int] NOT NULL,
 CONSTRAINT [PK_location] PRIMARY KEY CLUSTERED 
(
	[region_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[language]    Script Date: 12/02/2019 12:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[language](
	[language_id] [int] IDENTITY(1,1) NOT NULL,
	[language_name] [varchar](32) NOT NULL,
 CONSTRAINT [PK_language] PRIMARY KEY CLUSTERED 
(
	[language_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[label]    Script Date: 12/02/2019 12:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[label](
	[lab_id] [int] IDENTITY(1,1) NOT NULL,
	[com_id] [int] NULL,
	[lab_comment] [varchar](16) NULL,
 CONSTRAINT [PK_label] PRIMARY KEY CLUSTERED 
(
	[lab_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[filmcriticing]    Script Date: 12/02/2019 12:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[filmcriticing](
	[filmcritic _id] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[filmcritic]    Script Date: 12/02/2019 12:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[filmcritic](
	[filmcritic _id] [int] IDENTITY(1,1) NOT NULL,
	[topics_id] [int] NOT NULL,
 CONSTRAINT [PK_filmcritic] PRIMARY KEY CLUSTERED 
(
	[filmcritic _id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[discussion]    Script Date: 12/02/2019 12:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[discussion](
	[discuss_id] [int] IDENTITY(1,1) NOT NULL,
	[discuss_topic] [varchar](32) NOT NULL,
	[promulgator] [varchar](32) NOT NULL,
	[release_time] [timestamp] NOT NULL,
	[discuss_content] [varchar](400) NULL,
 CONSTRAINT [PK_discussion] PRIMARY KEY CLUSTERED 
(
	[discuss_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[discuss]    Script Date: 12/02/2019 12:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[discuss](
	[discuss_id] [int] IDENTITY(1,1) NOT NULL,
	[movie_id] [int] NOT NULL,
	[relation_id] [int] NOT NULL,
 CONSTRAINT [PK_discuss_1] PRIMARY KEY CLUSTERED 
(
	[relation_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[director]    Script Date: 12/02/2019 12:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[director](
	[director_id] [int] IDENTITY(1,1) NOT NULL,
	[director_name] [varchar](32) NOT NULL,
 CONSTRAINT [PK_director] PRIMARY KEY CLUSTERED 
(
	[director_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[direct]    Script Date: 12/02/2019 12:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[direct](
	[director_id] [int] IDENTITY(1,1) NOT NULL,
	[movie_id] [int] NOT NULL,
	[relation_id] [int] NOT NULL,
 CONSTRAINT [PK_direct_1] PRIMARY KEY CLUSTERED 
(
	[relation_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 12/02/2019 12:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comment](
	[com_id] [int] IDENTITY(1,1) NOT NULL,
	[mov_id] [int] NOT NULL,
	[usr_id] [int] NOT NULL,
	[com_seen] [tinyint] NOT NULL,
	[com_star] [tinyint] NULL,
	[com_content] [varchar](16) NULL,
	[com_time] [timestamp] NULL,
	[relation_id] [int] NOT NULL,
 CONSTRAINT [PK_comment_1] PRIMARY KEY CLUSTERED 
(
	[relation_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[classify]    Script Date: 12/02/2019 12:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classify](
	[type_id] [int] IDENTITY(1,1) NOT NULL,
	[movie_id] [int] NOT NULL,
	[relation_id] [int] NOT NULL,
 CONSTRAINT [PK_classify_1] PRIMARY KEY CLUSTERED 
(
	[relation_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[browsing]    Script Date: 12/02/2019 12:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[browsing](
	[browse _id] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[browse]    Script Date: 12/02/2019 12:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[browse](
	[browse _id] [int] IDENTITY(1,1) NOT NULL,
	[topics_id] [int] NULL,
	[relation_id] [int] NOT NULL,
 CONSTRAINT [PK_browse_1] PRIMARY KEY CLUSTERED 
(
	[relation_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[awards]    Script Date: 12/02/2019 12:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[awards](
	[awards_id] [int] IDENTITY(1,1) NOT NULL,
	[movie_id] [int] NOT NULL,
	[relation_id] [int] NOT NULL,
 CONSTRAINT [PK_awards_1] PRIMARY KEY CLUSTERED 
(
	[relation_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[awarding]    Script Date: 12/02/2019 12:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[awarding](
	[awards_id] [int] IDENTITY(1,1) NOT NULL,
	[awards_name] [varchar](32) NOT NULL,
	[activities] [varchar](32) NULL,
	[award_object] [varchar](32) NULL,
 CONSTRAINT [PK_awarding] PRIMARY KEY CLUSTERED 
(
	[awards_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[actor]    Script Date: 12/02/2019 12:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[actor](
	[actor_id] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[act]    Script Date: 12/02/2019 12:44:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[act](
	[actor_id] [int] IDENTITY(1,1) NOT NULL,
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
