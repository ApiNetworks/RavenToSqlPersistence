USE [Uplift]
GO

IF (NOT EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'NSB7_ProgramOccurrenceSaga'))
BEGIN
    -- 1) select * from [dbo].[NSB7_ProgramOccurrenceSaga]
	CREATE TABLE [dbo].[NSB7_ProgramOccurrenceSaga](
		[Id] [uniqueidentifier] NOT NULL,
		[Metadata] [nvarchar](max) NOT NULL,
		[Data] [nvarchar](max) NOT NULL,
		[PersistenceVersion] [varchar](23) NOT NULL,
		[SagaTypeVersion] [varchar](23) NOT NULL,
		[Concurrency] [int] NOT NULL,
		[Correlation_ProgramOccurrenceGuid] [uniqueidentifier] NULL,
	PRIMARY KEY CLUSTERED 
	( [Id] ASC ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY] ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

	/*
	truncate table NSB7_ProgramOccurrenceSaga 
	*/
END

IF (NOT EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'NSB7_ContractOccurrenceSaga'))
BEGIN

	-- 2) select * from [dbo].[NSB7_ContractOccurrenceSaga]
	CREATE TABLE [dbo].[NSB7_ContractOccurrenceSaga](
		[Id] [uniqueidentifier] NOT NULL,
		[Metadata] [nvarchar](max) NOT NULL,
		[Data] [nvarchar](max) NOT NULL,
		[PersistenceVersion] [varchar](23) NOT NULL,
		[SagaTypeVersion] [varchar](23) NOT NULL,
		[Concurrency] [int] NOT NULL,
		[Correlation_ContractOccurrenceGuid] [uniqueidentifier] NULL,
	PRIMARY KEY CLUSTERED 
	( [Id] ASC ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY] ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

	/*
	truncate table NSB7_ContractOccurrenceSaga 
	*/

END

IF (NOT EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'NSB7_DraftContractSaga'))
BEGIN
	-- 3) select * from [dbo].[NSB7_DraftContractSaga]
	CREATE TABLE [dbo].[NSB7_DraftContractSaga](
		[Id] [uniqueidentifier] NOT NULL,
		[Metadata] [nvarchar](max) NOT NULL,
		[Data] [nvarchar](max) NOT NULL,
		[PersistenceVersion] [varchar](23) NOT NULL,
		[SagaTypeVersion] [varchar](23) NOT NULL,
		[Concurrency] [int] NOT NULL,
		[Correlation_DraftContractGuid] [uniqueidentifier] NULL,
	PRIMARY KEY CLUSTERED 
	( [Id] ASC ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

	/*
	truncate table NSB7_DraftContractSaga 
	*/
END


IF (NOT EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'NSB7_DraftProgramSaga'))
BEGIN

	-- 4) select * from [dbo].[NSB7_DraftProgramSaga]
	CREATE TABLE [dbo].[NSB7_DraftProgramSaga](
		[Id] [uniqueidentifier] NOT NULL,
		[Metadata] [nvarchar](max) NOT NULL,
		[Data] [nvarchar](max) NOT NULL,
		[PersistenceVersion] [varchar](23) NOT NULL,
		[SagaTypeVersion] [varchar](23) NOT NULL,
		[Concurrency] [int] NOT NULL,
		[Correlation_DraftProgramGuid] [uniqueidentifier] NULL,
	PRIMARY KEY CLUSTERED 
	( [Id] ASC ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY] ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

	/*
	truncate table NSB7_DraftProgramSaga 
	*/

END

IF (NOT EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'NSB7_GlobalUpliftSagas'))
BEGIN
	-- 5) select * from [dbo].[NSB7_GlobalUpliftSagas]
	CREATE TABLE [dbo].[NSB7_GlobalUpliftSagas](
		[Id] [uniqueidentifier] NOT NULL,
		[Metadata] [nvarchar](max) NOT NULL,
		[Data] [nvarchar](max) NOT NULL,
		[PersistenceVersion] [varchar](23) NOT NULL,
		[SagaTypeVersion] [varchar](23) NOT NULL,
		[Concurrency] [int] NOT NULL,
		[Correlation_UpliftSessionKey] [uniqueidentifier] NULL,
	PRIMARY KEY CLUSTERED 
	(	[Id] ASC ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY] ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

	/*
	truncate table [NSB7_GlobalUpliftSagas] 
	*/

END

IF (NOT EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'NSB7_IncrementalDraftProgramInventorySagas'))
BEGIN

	-- 6) select * from [dbo].[NSB7_IncrementalDraftProgramInventorySagas]
	CREATE TABLE [dbo].[NSB7_IncrementalDraftProgramInventorySagas](
		[Id] [uniqueidentifier] NOT NULL,
		[Metadata] [nvarchar](max) NOT NULL,
		[Data] [nvarchar](max) NOT NULL,
		[PersistenceVersion] [varchar](23) NOT NULL,
		[SagaTypeVersion] [varchar](23) NOT NULL,
		[Concurrency] [int] NOT NULL,
		[Correlation_ProgramOccurrenceGuid] [uniqueidentifier] NULL,
	PRIMARY KEY CLUSTERED 
	(	[Id] ASC ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY] ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

	/*
	truncate table [NSB7_IncrementalDraftProgramInventorySagas] 
	*/

END


IF (NOT EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'NSB7_NegotiationSessionSagas'))
BEGIN

	-- 7) select * from [dbo].[NSB7_NegotiationSessionSagas]
	CREATE TABLE [dbo].[NSB7_NegotiationSessionSagas](
		[Id] [uniqueidentifier] NOT NULL,
		[Metadata] [nvarchar](max) NOT NULL,
		[Data] [nvarchar](max) NOT NULL,
		[PersistenceVersion] [varchar](23) NOT NULL,
		[SagaTypeVersion] [varchar](23) NOT NULL,
		[Concurrency] [int] NOT NULL,
		[Correlation_MessageGuid] [uniqueidentifier] NULL,
	PRIMARY KEY CLUSTERED 
	(	[Id] ASC ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY] ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

	/*
	truncate table [NSB7_NegotiationSessionSagas] 
	*/

END

IF (NOT EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'NSB7_NonUnionDraftProgramBudgetSagas'))
BEGIN

	-- 8) select * from [dbo].[NSB7_NonUnionDraftProgramBudgetSagas]
	CREATE TABLE [dbo].[NSB7_NonUnionDraftProgramBudgetSagas](
		[Id] [uniqueidentifier] NOT NULL,
		[Metadata] [nvarchar](max) NOT NULL,
		[Data] [nvarchar](max) NOT NULL,
		[PersistenceVersion] [varchar](23) NOT NULL,
		[SagaTypeVersion] [varchar](23) NOT NULL,
		[Concurrency] [int] NOT NULL,
		[Correlation_NonUnionDraftProgramBudgetKey] [uniqueidentifier] NULL,
	PRIMARY KEY CLUSTERED 
	(	[Id] ASC ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY] ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

	/*
	truncate table [NSB7_NonUnionDraftProgramBudgetSagas] 
	*/

END


IF (NOT EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'NSB7_NonUnionIncrementalDraftProgramBudgetSagas'))
BEGIN

	-- 9) select * from [dbo].[NSB7_NonUnionIncrementalDraftProgramBudgetSagas]
	CREATE TABLE [dbo].[NSB7_NonUnionIncrementalDraftProgramBudgetSagas](
		[Id] [uniqueidentifier] NOT NULL,
		[Metadata] [nvarchar](max) NOT NULL,
		[Data] [nvarchar](max) NOT NULL,
		[PersistenceVersion] [varchar](23) NOT NULL,
		[SagaTypeVersion] [varchar](23) NOT NULL,
		[Concurrency] [int] NOT NULL,
		[Correlation_NonUnionIncrementalDraftProgramBudgetKey] [uniqueidentifier] NULL,
	PRIMARY KEY CLUSTERED 
	(	[Id] ASC ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY] ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

	/*
	truncate table [NSB7_NonUnionIncrementalDraftProgramBudgetSagas] 
	*/

END


IF (NOT EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'NSB7_NotificationSessionSaga'))
BEGIN

	-- 10) select * from [dbo].[NSB7_NotificationSessionSaga]
	CREATE TABLE [dbo].[NSB7_NotificationSessionSaga](
		[Id] [uniqueidentifier] NOT NULL,
		[Metadata] [nvarchar](max) NOT NULL,
		[Data] [nvarchar](max) NOT NULL,
		[PersistenceVersion] [varchar](23) NOT NULL,
		[SagaTypeVersion] [varchar](23) NOT NULL,
		[Concurrency] [int] NOT NULL,
		[Correlation_MessageGuid] [uniqueidentifier] NULL,
	PRIMARY KEY CLUSTERED 
	(	[Id] ASC ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY] ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

	/*
	truncate table [NSB7_NotificationSessionSaga] 
	*/

END


IF (NOT EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'NSB7_ProgramBudgetProgramOccurrenceSagas'))
BEGIN

	-- 11) select * from [dbo].[NSB7_ProgramBudgetProgramOccurrenceSagas]
	CREATE TABLE [dbo].[NSB7_ProgramBudgetProgramOccurrenceSagas](
		[Id] [uniqueidentifier] NOT NULL,
		[Metadata] [nvarchar](max) NOT NULL,
		[Data] [nvarchar](max) NOT NULL,
		[PersistenceVersion] [varchar](23) NOT NULL,
		[SagaTypeVersion] [varchar](23) NOT NULL,
		[Concurrency] [int] NOT NULL,
		[Correlation_ProgramOccurrenceGuid] [uniqueidentifier] NULL,
	PRIMARY KEY CLUSTERED 
	(	[Id] ASC ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY] ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

	/*
	truncate table NSB7_ProgramBudgetProgramOccurrenceSagas
	*/

END


-- SagaUniqueIdentities
--CREATE TABLE [dbo].[NSB7_SagaUniqueIdentities](
--	[Id] [uniqueidentifier] NOT NULL,
--	[Metadata] [nvarchar](max) NOT NULL,
--	[Data] [nvarchar](max) NOT NULL,
--	[PersistenceVersion] [varchar](23) NOT NULL,
--	[SagaTypeVersion] [varchar](23) NOT NULL,
--	[Concurrency] [int] NOT NULL,
--	[Correlation_ProgramOccurrenceGuid] [uniqueidentifier] NULL,
--PRIMARY KEY CLUSTERED 
--(	[Id] ASC ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY] ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
--GO

/*
truncate table SagaUniqueIdentities
*/


IF (NOT EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'NSB7_UnionDraftProgramBudgetSagas'))
BEGIN

	-- 12) select * from [dbo].[NSB7_UnionDraftProgramBudgetSagas]
	CREATE TABLE [dbo].[NSB7_UnionDraftProgramBudgetSagas](
		[Id] [uniqueidentifier] NOT NULL,
		[Metadata] [nvarchar](max) NOT NULL,
		[Data] [nvarchar](max) NOT NULL,
		[PersistenceVersion] [varchar](23) NOT NULL,
		[SagaTypeVersion] [varchar](23) NOT NULL,
		[Concurrency] [int] NOT NULL,
		[Correlation_UnionDraftProgramBudgetKey] [uniqueidentifier] NULL,
	PRIMARY KEY CLUSTERED 
	(	[Id] ASC ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY] ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

	/*
	truncate table [NSB7_UnionDraftProgramBudgetSagas]
	*/

END



IF (NOT EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'NSB7_UnionIncrementalDraftProgramBudgetSagas'))
BEGIN

	-- 13) select * from [dbo].[NSB7_UnionIncrementalDraftProgramBudgetSagas]
	CREATE TABLE [dbo].[NSB7_UnionIncrementalDraftProgramBudgetSagas](
		[Id] [uniqueidentifier] NOT NULL,
		[Metadata] [nvarchar](max) NOT NULL,
		[Data] [nvarchar](max) NOT NULL,
		[PersistenceVersion] [varchar](23) NOT NULL,
		[SagaTypeVersion] [varchar](23) NOT NULL,
		[Concurrency] [int] NOT NULL,
		[Correlation_UnionIncrementalDraftProgramBudgetKey] [uniqueidentifier] NULL,
	PRIMARY KEY CLUSTERED 
	(	[Id] ASC ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY] ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

	/*
	truncate table [NSB7_UnionIncrementalDraftProgramBudgetSagas]
	*/

END


IF (NOT EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'NSB7_VendorCentralRatesSagas'))
BEGIN

	-- 14) select * from [dbo].[NSB7_VendorCentralRatesSagas]
	CREATE TABLE [dbo].[NSB7_VendorCentralRatesSagas](
		[Id] [uniqueidentifier] NOT NULL,
		[Metadata] [nvarchar](max) NOT NULL,
		[Data] [nvarchar](max) NOT NULL,
		[PersistenceVersion] [varchar](23) NOT NULL,
		[SagaTypeVersion] [varchar](23) NOT NULL,
		[Concurrency] [int] NOT NULL,
		[Correlation_PeriodGuid] [uniqueidentifier] NULL,
	PRIMARY KEY CLUSTERED 
	(	[Id] ASC ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY] ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

	/*
	truncate table [NSB7_VendorCentralRatesSagas]
	*/

END


select * from [dbo].[NSB7_ProgramOccurrenceSaga]
select * from [dbo].[NSB7_ContractOccurrenceSaga]
select * from [dbo].[NSB7_DraftContractSaga]
select * from [dbo].[NSB7_DraftProgramSaga]
select * from [dbo].[NSB7_GlobalUpliftSagas]
select * from [dbo].[NSB7_IncrementalDraftProgramInventorySagas]
select * from [dbo].[NSB7_NegotiationSessionSagas]
select * from [dbo].[NSB7_NonUnionDraftProgramBudgetSagas]
select * from [dbo].[NSB7_NonUnionIncrementalDraftProgramBudgetSagas]
select * from [dbo].[NSB7_NotificationSessionSaga]
select * from [dbo].[NSB7_ProgramBudgetProgramOccurrenceSagas]
select * from [dbo].[NSB7_UnionDraftProgramBudgetSagas]
select * from [dbo].[NSB7_UnionIncrementalDraftProgramBudgetSagas]
select * from [dbo].[NSB7_VendorCentralRatesSagas]

select count(1), 'NSB7_ProgramOccurrenceSaga' from [dbo].[NSB7_ProgramOccurrenceSaga] UNION ALL
select count(1), 'NSB7_ContractOccurrenceSaga' from [dbo].[NSB7_ContractOccurrenceSaga] UNION ALL
select count(1), 'NSB7_DraftContractSaga' from [dbo].[NSB7_DraftContractSaga] UNION ALL
select count(1), 'NSB7_DraftProgramSaga' from [dbo].[NSB7_DraftProgramSaga] UNION ALL
select count(1), 'NSB7_GlobalUpliftSagas' from [dbo].[NSB7_GlobalUpliftSagas] UNION ALL
select count(1), 'NSB7_IncrementalDraftProgramInventorySagas' from [dbo].[NSB7_IncrementalDraftProgramInventorySagas] UNION ALL
select count(1), 'NSB7_NegotiationSessionSagas' from [dbo].[NSB7_NegotiationSessionSagas] UNION ALL
select count(1), 'NSB7_NonUnionDraftProgramBudgetSagas' from [dbo].[NSB7_NonUnionDraftProgramBudgetSagas] UNION ALL
select count(1), 'NSB7_NonUnionIncrementalDraftProgramBudgetSagas' from [dbo].[NSB7_NonUnionIncrementalDraftProgramBudgetSagas] UNION ALL
select count(1), 'NSB7_NotificationSessionSaga' from [dbo].[NSB7_NotificationSessionSaga] UNION ALL
select count(1), 'NSB7_ProgramBudgetProgramOccurrenceSagas' from [dbo].[NSB7_ProgramBudgetProgramOccurrenceSagas] UNION ALL
select count(1), 'NSB7_UnionDraftProgramBudgetSagas' from [dbo].[NSB7_UnionDraftProgramBudgetSagas] UNION ALL
select count(1), 'NSB7_UnionIncrementalDraftProgramBudgetSagas' from [dbo].[NSB7_UnionIncrementalDraftProgramBudgetSagas] 
select count(1), 'NSB7_VendorCentralRatesSagas' from [dbo].[NSB7_VendorCentralRatesSagas]

truncate table NSB7_ProgramOccurrenceSaga 
truncate table NSB7_ContractOccurrenceSaga 
truncate table NSB7_DraftContractSaga 
truncate table NSB7_DraftProgramSaga 
truncate table NSB7_GlobalUpliftSagas 
truncate table NSB7_IncrementalDraftProgramInventorySagas
truncate table NSB7_NegotiationSessionSagas
truncate table NSB7_NonUnionDraftProgramBudgetSagas 
truncate table NSB7_NonUnionIncrementalDraftProgramBudgetSagas
truncate table NSB7_NotificationSessionSaga
truncate table NSB7_ProgramBudgetProgramOccurrenceSagas
truncate table NSB7_UnionDraftProgramBudgetSagas
truncate table NSB7_UnionIncrementalDraftProgramBudgetSagas
truncate table NSB7_VendorCentralRatesSagas