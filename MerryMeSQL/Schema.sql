USE [MerryMeSQL]
GO
/****** Object:  Table [dbo].[Email]    Script Date: 5/4/2015 08:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Email](
	[IdEmail] [int] IDENTITY(1,1) NOT NULL,
	[Man] [nchar](100) NULL,
	[Women] [nchar](100) NULL,
	[IsApproved] [bit] NOT NULL CONSTRAINT [DF_Email_IsApproved]  DEFAULT ((0)),
	[IsSented] [bit] NOT NULL CONSTRAINT [DF_Email_IsSented]  DEFAULT ((0)),
 CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED 
(
	[IdEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Holiday]    Script Date: 5/4/2015 08:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Holiday](
	[HolidayId] [int] IDENTITY(1,1) NOT NULL,
	[StartDay] [datetime2](7) NULL,
	[EndDay] [datetime2](7) NULL,
	[Information] [nchar](1024) NULL,
 CONSTRAINT [PK_Holidays] PRIMARY KEY CLUSTERED 
(
	[HolidayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Залы]    Script Date: 5/4/2015 08:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Залы](
	[Код] [int] NULL,
	[Наименование] [nvarchar](25) NULL,
	[Начало_работы] [datetime] NULL,
	[Окончание_работы] [datetime] NULL,
	[Норма_времени_на_регистрацию] [datetime] NULL,
	[Понедельник] [bit] NULL,
	[Вторник] [bit] NULL,
	[Среда] [bit] NULL,
	[Четверг] [bit] NULL,
	[Пятница] [bit] NULL,
	[Суббота] [bit] NULL,
	[Воскресенье] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Имена]    Script Date: 5/4/2015 08:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Имена](
	[Имя] [nvarchar](50) NULL,
	[Пол] [nvarchar](1) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Место регистрации]    Script Date: 5/4/2015 08:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Место регистрации](
	[Код] [int] NULL,
	[Наименование] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Обращения]    Script Date: 5/4/2015 08:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Обращения](
	[Код] [int] NULL,
	[Наименование] [nvarchar](30) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Общие]    Script Date: 5/4/2015 08:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Общие](
	[Счетчик] [int] IDENTITY(1,1) NOT NULL,
	[Название_учреждения] [nvarchar](100) NULL,
	[Должность_подписывающего] [nvarchar](100) NULL,
	[ФИО_подписывающего] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Отчества]    Script Date: 5/4/2015 08:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Отчества](
	[Отчество] [nvarchar](50) NULL,
	[Пол] [nvarchar](1) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[По умолчанию]    Script Date: 5/4/2015 08:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[По умолчанию](
	[Код_обращения] [int] NULL,
	[Код_места_регистрации] [int] NULL,
	[Код_специалиста] [int] NULL,
	[Все] [bit] NULL,
	[Автосохранение] [bit] NULL,
	[Количество_автосохранений] [tinyint] NULL,
	[Путь_для_автосохранения] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Регистрация]    Script Date: 5/4/2015 08:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Регистрация](
	[Регистрационный_номер] [nvarchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Регистрация браков]    Script Date: 5/4/2015 08:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Регистрация браков](
	[Счетчик] [int] IDENTITY(1,1) NOT NULL,
	[Дата_обращения] [datetime2](7) NULL,
	[Код_зала] [int] NULL,
	[Код_обращения] [int] NULL,
	[Код_места_регистрации] [int] NULL,
	[Код_специалиста] [int] NULL,
	[Фамилия_жениха] [nvarchar](50) NULL,
	[Имя_жениха] [nvarchar](50) NULL,
	[Отчество_жениха] [nvarchar](50) NULL,
	[Идентификационный_номер_жениха] [nvarchar](14) NULL,
	[Номер_телефона_жениха] [nvarchar](20) NULL,
	[Фамилия_невесты] [nvarchar](50) NULL,
	[Имя_невесты] [nvarchar](50) NULL,
	[Отчество_невесты] [nvarchar](50) NULL,
	[Идентификационный_номер_невесты] [nvarchar](14) NULL,
	[Номер_телефона_невесты] [nvarchar](20) NULL,
	[Дата_регистрации_брака] [datetime2](7) NULL,
	[Время_регистрации_брака] [datetime2](7) NULL,
	[Подано_заявление] [bit] NULL,
	[Примечание] [nvarchar](255) NULL,
	[email] [nvarchar](50) NULL,
	[Спланировано] [bit] NULL,
	[EmailLink] [int] NULL,
	[BaseLink] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Регистрация браков журнал]    Script Date: 5/4/2015 08:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Регистрация браков журнал](
	[Счетчик] [int] NULL,
	[Дата_обращения] [datetime2](7) NULL,
	[Код_зала] [int] NULL,
	[Код_обращения] [int] NULL,
	[Код_места_регистрации] [int] NULL,
	[Код_специалиста] [int] NULL,
	[Фамилия_жениха] [nvarchar](50) NULL,
	[Имя_жениха] [nvarchar](50) NULL,
	[Отчество_жениха] [nvarchar](50) NULL,
	[Идентификационный_номер_жениха] [nvarchar](14) NULL,
	[Номер_телефона_жениха] [nvarchar](20) NULL,
	[Фамилия_невесты] [nvarchar](50) NULL,
	[Имя_невесты] [nvarchar](50) NULL,
	[Отчество_невесты] [nvarchar](50) NULL,
	[Идентификационный_номер_невесты] [nvarchar](14) NULL,
	[Номер_телефона_невесты] [nvarchar](20) NULL,
	[Дата_регистрации_брака] [datetime2](7) NULL,
	[Время_регистрации_брака] [datetime2](7) NULL,
	[Подано_заявление] [bit] NULL,
	[Примечание] [nvarchar](255) NULL,
	[email] [nvarchar](50) NULL,
	[Спланировано] [bit] NULL,
	[EmailLink] [int] NULL,
	[BaseLink] [int] NULL,
	[Дата_транзакции] [datetime2](7) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Специалисты]    Script Date: 5/4/2015 08:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Специалисты](
	[Код] [int] NULL,
	[Специалист] [nvarchar](50) NULL,
	[Должность] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Учетные записи]    Script Date: 5/4/2015 08:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Учетные записи](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Учетная_запись] [nvarchar](50) NULL,
	[Пароль] [nvarchar](50) NULL,
	[Подтверждение_пароля] [nvarchar](50) NULL,
	[Код_специалиста] [int] NULL,
	[ФИО] [nvarchar](50) NULL,
	[Дата_рождения] [datetime] NULL,
	[Тип_учетной_записи] [nvarchar](15) NULL
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[Room]    Script Date: 5/4/2015 08:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Room]
AS
SELECT        Код AS Id, Наименование AS Name
FROM            dbo.Залы


GO
ALTER TABLE [dbo].[Регистрация браков журнал] ADD  DEFAULT ((1)) FOR [BaseLink]
GO
ALTER TABLE [dbo].[Регистрация браков журнал] ADD  CONSTRAINT [DF__Регистрац__Дата___6FE99F9F_Регистрация браков журнал]  DEFAULT (getdate()) FOR [Дата_транзакции]
GO
/****** Object:  StoredProcedure [dbo].[GetAllRooms]    Script Date: 5/4/2015 08:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Artsiom Marozau
-- Create date: 26,04,2015
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[GetAllRooms] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	select *
	FROM [MerryMeSQL].[dbo].[Room] with (nolock)
	 
END


GO
/****** Object:  StoredProcedure [dbo].[GetFreeTime]    Script Date: 5/4/2015 08:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Artsiom Marozau
-- Create date: 4/18/2015
-- Description:	Select free time for room by date
-- =============================================
CREATE PROCEDURE [dbo].[GetFreeTime] 
	-- Add the parameters for the stored procedure here
	@date varchar(20) = null, 
	@roomId int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT convert(time, [Время_регистрации_брака]) as FreeTime
	FROM [MerryMeSQL].[dbo].[Регистрация браков]
	WHERE convert(date, [Дата_регистрации_брака]) = @date
	AND [Код_зала] = @roomId
	AND [Дата_обращения] is null

END


GO
/****** Object:  StoredProcedure [dbo].[GetHolidaysForMonth]    Script Date: 5/4/2015 08:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Artsiom Marozau
-- Create date: 2015/04/21
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[GetHolidaysForMonth] 
	-- Add the parameters for the stored procedure here
	@year int = 0, 
	@month int = 0
AS
BEGIN
	SET NOCOUNT ON;

	SELECT *
	from [MerryMeSQL].[dbo].[Holiday]
	where
	MONTH([EndDay]) = @month
	or @month between MONTH([StartDay]) and MONTH([EndDay])
END


GO
/****** Object:  StoredProcedure [dbo].[GetRoomById]    Script Date: 5/4/2015 08:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Artsiom Marozau
-- Create date: 26.04.2015
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[GetRoomById] 
	-- Add the parameters for the stored procedure here
	@roomId int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select *
	FROM [MerryMeSQL].[dbo].[Room] with (nolock)
	where id = @roomId

END


GO
/****** Object:  StoredProcedure [dbo].[GetSheduleRoom]    Script Date: 5/4/2015 08:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Artsiom Marozau
-- Create date: 4/19/2015
-- Description:	Get shedule for room
-- =============================================
CREATE PROCEDURE [dbo].[GetSheduleRoom] 
	-- Add the parameters for the stored procedure here
	@roomId int = 0, 
	@date varchar(20) = null
AS
BEGIN
	SET NOCOUNT ON;

    SELECT [Время_регистрации_брака] as RegisterTime,  
	(CASE 
		WHEN [Дата_обращения] is null THEN convert(bit, 0) ELSE convert(bit,1)
	END) as IsFree
	FROM [MerryMeSQL].[dbo].[Регистрация браков]
	WHERE convert(date, [Дата_регистрации_брака]) = @date
	AND [Код_зала] = @roomId
END


GO
/****** Object:  StoredProcedure [dbo].[GetStatistic]    Script Date: 5/4/2015 08:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Artsiom Marozau
-- Create date: 2015/04/20
-- Description:	Select statistic for period
-- =============================================
CREATE PROCEDURE [dbo].[GetStatistic] 
	-- Add the parameters for the stored procedure here
	@startDate date = null, 
	@endDate date = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN TRAN tr

	declare @validDays int;
	declare @allDays int;
	declare @retVal int;

	set @allDays = (select count(*)
	from [MerryMeSQL].[dbo].[Регистрация браков]
	where convert(date, [Дата_регистрации_брака]) between @startDate and @endDate)

	set @validDays =(select count(*)
	from [MerryMeSQL].[dbo].[Регистрация браков]
	where convert(date, [Дата_регистрации_брака]) between @startDate and @endDate
	and [Дата_обращения] is null)

	if (@allDays = 0)
	begin
		set @retVal = 100;
	end
	else
	begin
		set @retVal = (@validDays * 100 / @allDays);	
	end
	
	COMMIT TRAN tr
	
	RETURN @retVal;
	
END


GO
/****** Object:  StoredProcedure [dbo].[GetStatisticForAllDaysInMonth]    Script Date: 5/4/2015 08:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Artsiom Marozau
-- Create date: 4/27/2015
-- Description:	Statistic for all days in moth
-- =============================================
CREATE PROCEDURE [dbo].[GetStatisticForAllDaysInMonth] 
	-- Add the parameters for the stored procedure here
	@firstDayOfMoth date = null	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN TRAN TR

	declare @lastDayOfMoth date;
	declare @index date;
	declare @nextIndex date;
	declare @statistic table
	(
		ForDate date,
		Counted int
	)

	set @index = @firstDayOfMoth;
	set @lastDayOfMoth = DATEADD(month, 1, @firstDayOfMoth);
	DECLARE	@mothStat int;

	While(DATEDIFF (day, @index , 	@lastDayOfMoth) > 0)
	Begin
		
		set @nextIndex = dateadd(day, 1, @index);

		EXEC	@mothStat = [dbo].[GetStatistic]
		@startDate = @index,
		@endDate = @nextIndex

		insert into @statistic(ForDate,Counted )
		values (@index, @mothStat);

		set @index = @nextIndex;

	End
	
	select Counted as statistic
	from @statistic;

	COMMIT TRAN TR

END


GO
/****** Object:  StoredProcedure [dbo].[GetStatisticForMonthInYear]    Script Date: 5/4/2015 08:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Artsiom Marozau
-- Create date: 4/27/2015
-- Description:	Statistic for all month in year
-- =============================================
CREATE PROCEDURE [dbo].[GetStatisticForMonthInYear]
	-- Add the parameters for the stored procedure here
	@firstDayOfMoth date = null	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN TRAN TR

	declare @lastDayOfMoth date;
	declare @index date;
	declare @nextIndex date;
	declare @statistic table
	(
		ForDate date,
		Counted int
	)

	set @index = @firstDayOfMoth;
	set @lastDayOfMoth = DATEADD(year, 1, @firstDayOfMoth);
	DECLARE	@mothStat int;

	While(DATEDIFF (month, @index , 	@lastDayOfMoth) > 0)
	Begin
		
		set @nextIndex = dateadd(month, 1, @index);

		EXEC	@mothStat = [dbo].[GetStatistic]
		@startDate = @index,
		@endDate = @nextIndex

		insert into @statistic(ForDate,Counted )
		values (@index, @mothStat);

		set @index = @nextIndex;

	End

	select Counted as statistic
	from @statistic;

	COMMIT TRAN TR

END


GO
/****** Object:  StoredProcedure [dbo].[open_data_source]    Script Date: 5/4/2015 08:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Включить распределенные нерегламентированные запросы 
--для выполнения запросов к базам на других серверах SQL 
--(для локального сервера, использовать конструкцию opendatasource)
--ВЫПОЛНИТЬ ПОСЛЕДОВАТЕЛЬНО 
/*
EXEC sp_configure 'show advanced option', 1
GO
RECONFIGURE WITH OVERRIDE
GO
EXEC sp_configure 'Ad Hoc Distributed Queries', 1
GO
RECONFIGURE WITH OVERRIDE
GO
EXEC sp_configure 'show advanced option', 1
GO
RECONFIGURE WITH OVERRIDE
GO
*/
/*
--SET XACT_ABORT ON 
--Если выполнена инструкция SET XACT_ABORT ON и инструкция языка Transact-SQL вызывает ошибку, 
--вся транзакция завершается и выполняется ее откат.
select * from  
opendatasource ('sqlncli','data source=MerryMeSQL.mssql.somee.com;user id=ZagsUser;pwd=Pass;')
 .MerryMeSQL.dbo.test_table_base_2
*/

CREATE PROCEDURE [dbo].[open_data_source]
AS
BEGIN
PRINT ''
--sp_configure 'show advanced options', 1
--RECONFIGURE
--sp_configure 'Ad Hoc Distributed Queries', 1
--RECONFIGURE
END


GO
/****** Object:  StoredProcedure [dbo].[RegisterMarriage]    Script Date: 5/4/2015 08:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Artsiom Marozau
-- Create date: 2015-04-20
-- Description:	Register marriage
-- =============================================
CREATE PROCEDURE [dbo].[RegisterMarriage] 
	-- Add the parameters for the stored procedure here
	@regDateTime DateTime
	,@roomId int = 0
	,@mName varchar(50) = ''
	,@mLastName varchar(50) = ''
	,@mMidleName varchar(50) = ''
	,@mTelNum varchar(50) = ''
	,@mPassportId varchar(50) = ''
	,@mEmail varchar(50) = ''
	,@wName varchar(50) = ''
	,@wLastName varchar(50) = ''
	,@wMidleName varchar(50) = ''
	,@wTelNum varchar(50) = ''
	,@wPassportId varchar(50) = ''
	,@wEmail varchar(50) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @submitDate datetime;
	set @submitDate = getdate();

	DECLARE @regDate date;
	DECLARE @regTime time;

	set @regDate = convert(date, @regDateTime);
	set @regTime = convert(time, @regDateTime);

	declare @idMarriage int;
	
	BEGIN TRAN tr

	if @wPassportId is not null 
	AND exists (select *
	from [MerryMeSQL].[dbo].[Регистрация браков]
	where 
	[Идентификационный_номер_невесты] = @wPassportId
	AND [Дата_регистрации_брака] > @submitDate)
	BEGIN
		ROLLBACK TRAN;
		THROW  50000, N'Дубликат паспортных данных невесты', 1;		
	END

	if @mPassportId is not null
	and exists (select *
	from [MerryMeSQL].[dbo].[Регистрация браков]
	where 
	([Идентификационный_номер_жениха] = @mPassportId)
	AND [Дата_регистрации_брака] > @submitDate)
	BEGIN
		ROLLBACK TRAN;
		THROW  50000, N'Дубликат паспортных данных мужа', 1;		
	END

	if (@mPassportId is null 
	AND @wPassportId is null)
	Begin
		ROLLBACK TRAN;
		THROW  50000, N'Нужно указать паспортные данные хотя бы одного брачующегося', 1;		
	End

	select @idMarriage = [Счетчик]
	from [MerryMeSQL].[dbo].[Регистрация браков]
	where 
	[Код_зала] = @roomId
	AND convert(date, [Дата_регистрации_брака]) = @regDate
	AND convert(time, [Время_регистрации_брака]) = @regTime;

	IF (@idMarriage is null)
	BEGIN
		ROLLBACK TRAN;
		THROW  50000, N'Это время занято', 1;
	END

	insert into [MerryMeSQL].[dbo].[Email] ([Man], [Women])
	values (@mEmail, @wEmail);

	declare @emailLink int;
	set @emailLink = SCOPE_IDENTITY();

	UPDATE [MerryMeSQL].[dbo].[Регистрация браков]
	SET
		[Дата_обращения] = @submitDate
		,[Код_обращения] = 5--ссылка на таблицу Обращения
		,[Код_места_регистрации] = 1--ссылка на таблицу Место регистрации

		,[Фамилия_жениха] = @mLastName
		,[Имя_жениха] = @mName
		,[Отчество_жениха] = @mMidleName
		,[Номер_телефона_жениха] = @mTelNum
		,[Идентификационный_номер_жениха] = @mPassportId

		,[Фамилия_невесты] = @wLastName
		,[Имя_невесты] = @wName
		,[Отчество_невесты] = @wMidleName
		,[Номер_телефона_невесты] = @wTelNum
		,[Идентификационный_номер_невесты] =@wPassportId

		,[EmailLink] = @emailLink

	WHERE [Счетчик] = @idMarriage;

	COMMIT TRAN tr

END


GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Залы"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 314
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Room'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Room'
GO
