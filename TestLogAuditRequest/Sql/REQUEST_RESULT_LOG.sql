﻿
CREATE TABLE [dbo].[REQUEST_RESULT_LOG](
	[ID] [uniqueidentifier] NOT NULL,
	[REQUEST_TRACE_IDENTIFIER] [nvarchar](128) NULL,
	[REQUEST_METHOD] [nvarchar](50) NULL,
	[REQUEST_PATH] [nvarchar](max) NULL,
	[RESPONSE_STATUS_CODE] [bigint] NULL,
	[EXCEPTION_MESSAGE] [nvarchar](max) NULL,
	[USER_ID] [bigint] NULL,
	[TIMESTAMP] [date] NOT NULL,
 CONSTRAINT [PK_REQUEST_RESULT_LOG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[REQUEST_RESULT_LOG] ADD  CONSTRAINT [DF_REQUEST_RESULT_LOG_ID]  DEFAULT (newid()) FOR [ID]
GO

ALTER TABLE [dbo].[REQUEST_RESULT_LOG] ADD  CONSTRAINT [DF_REQUEST_RESULT_LOG_TIMESTAMP]  DEFAULT (getdate()) FOR [TIMESTAMP]
GO


