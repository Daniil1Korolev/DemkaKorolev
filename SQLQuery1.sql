	set ansi_nulls on
	go
	set ansi_padding on
	go
	set quoted_identifier on
	go


	Create database [uchetremont]
	go

	use [uchetremont]
	go


	Create table [dbo].[Zayavka]
	(
	[ID_Zayavka] [int] not null identity(1,1),
	[Number_Zayavka] [int] not null,
	[Data_dobavlen] [date] not null,
	[Devices_ID] [int] not null,
	[Klient_ID] [int] not null,
	[Status_ID] [int] not null,
	constraint [PK_Zayavka] primary key clustered
	([ID_Zayavka] ASC) on [PRIMARY])
	go

		insert into [dbo].[Zayavka] ([Number_Zayavka], [Data_dobavlen], [Devices_ID], [Klient_ID], [Status_ID])
	values (44444,'2023-03-22',1,1,1)
	go
		
	select*from [dbo].[Zayavka]
	go
	-----------------------------------------------------------------
	Create table [dbo].[Klient]
	(
	[ID_Klient] [int] not null identity(1,1),
	[Login_Klient] [varchar] (30),
	[Password_Klient] [varchar] (30),
	constraint [PK_Klient] primary key clustered
	([ID_Klient] ASC) on [PRIMARY],
	constraint [UQ_Login_Klient] unique ([Login_Klient]),
	constraint [CH_Login_Klient] check (len([Login_Klient])>=4),
	constraint [CH_Password_Klient] check (len([Password_Klient])>=4),
	)
	go


	insert into [dbo].[Klient] ([Login_Klient], [Password_Klient])
	values ('Login', 'Password')
	go

	select*from [dbo].[Klient]
	go
	-----------------------------------------------------------------
	Create table [dbo].[Status]
	(
	[ID_Status] [int] not null identity(1,1),
	[Type_Status] [varchar] (20),
	constraint [PK_Status] primary key clustered
	([ID_Status] ASC) on [PRIMARY])
	go

	insert into [dbo].[Status] ([Type_Status])
	values ('Выполнено'),
	('В ожидании'),
	('В работе')
	go
	-----------------------------------------------------------------
	Create table [dbo].[Devices]
	(
	[ID_Devices] [int] not null identity(1,1),
	[Type_Problem] [varchar] (30),
	[Problem] [varchar] (150),
	constraint [PK_Devices] primary key clustered
	([ID_Devices] ASC) on [PRIMARY])
	go
	
	insert into [dbo].[Devices] ([Type_Problem], [Problem])
	values ('Поломка станка', 'Поломалось все на свете, помогите и спасите')
	go
			
	-----------------------------------------------------------------
	Create table [dbo].[Sotrudnik]
	(
	[ID_Sotrudnik] [int] not null identity(1,1),
	[Login_Sotr] [varchar] (30),
	[Password_Sotr] [varchar] (30),
	constraint [PK_Sotrudnik] primary key clustered
	([ID_Sotrudnik] ASC) on [PRIMARY],
	constraint [UQ_Login_Sotr] unique ([Login_Sotr]),
	constraint [CH_Login_Sotr] check (len([Login_Sotr])>=4),
	constraint [CH_Password_Sotr] check (len([Password_Sotr])>=4),
	)
	go
	
	
	insert into [dbo].[Sotrudnik] ([Login_Sotr], [Password_Sotr])
	values ('Login', 'Password')
	go
			
			
	




