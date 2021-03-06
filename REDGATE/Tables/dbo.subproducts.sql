CREATE TABLE [dbo].[subproducts]
(
[sku_preNAV] [bigint] NOT NULL IDENTITY(1, 1),
[stocklevel] [numeric] (18, 0) NOT NULL CONSTRAINT [DF_subproducts_stocklevel] DEFAULT ((0)),
[parentsku] [bigint] NOT NULL CONSTRAINT [DF_subproducts_parentsku] DEFAULT ((0)),
[ordershow] [int] NOT NULL CONSTRAINT [DF_subproducts_ordershow] DEFAULT ((0)),
[stock_code] [nvarchar] (100) COLLATE Latin1_General_100_CI_AS NOT NULL CONSTRAINT [DF_subproducts_stock_code] DEFAULT (''),
[name] [nvarchar] (500) COLLATE Latin1_General_100_CI_AS NOT NULL CONSTRAINT [DF_subproducts_name] DEFAULT (''),
[price] [decimal] (18, 2) NOT NULL CONSTRAINT [DF_subproducts_price] DEFAULT ((0)),
[rrp] [decimal] (18, 2) NOT NULL CONSTRAINT [DF_subproducts_rrp] DEFAULT ((0)),
[stock_total] [bigint] NOT NULL CONSTRAINT [DF_subproducts_stock_total] DEFAULT ((0)),
[barcode] [nvarchar] (150) COLLATE Latin1_General_100_CI_AS NOT NULL CONSTRAINT [DF_subproducts_barcode] DEFAULT (''),
[skin] [nvarchar] (50) COLLATE Latin1_General_100_CI_AS NOT NULL CONSTRAINT [DF_subproducts_skin] DEFAULT (''),
[lifecycle] [int] NOT NULL CONSTRAINT [DF_subproducts_lifecycle] DEFAULT ((0)),
[option1] [nvarchar] (150) COLLATE Latin1_General_100_CI_AS NOT NULL CONSTRAINT [DF_subproducts_option1] DEFAULT (''),
[option2] [nvarchar] (150) COLLATE Latin1_General_100_CI_AS NOT NULL CONSTRAINT [DF_subproducts_option11] DEFAULT (''),
[weight] [numeric] (18, 0) NOT NULL CONSTRAINT [DF_subproducts_weight] DEFAULT ((0)),
[active] [tinyint] NOT NULL CONSTRAINT [DF_subproducts_lifecycle1] DEFAULT ((0)),
[reorderpoint] [int] NOT NULL CONSTRAINT [DF_subproducts_reorderpoint] DEFAULT ((0)),
[cost] [decimal] (18, 4) NOT NULL CONSTRAINT [DF_subproducts_price1] DEFAULT ((0)),
[dateadded] [smalldatetime] NOT NULL CONSTRAINT [DF_subproducts_dateadded] DEFAULT (getdate()),
[seourl] [nvarchar] (250) COLLATE Latin1_General_100_CI_AS NOT NULL CONSTRAINT [DF_subproducts_seourl] DEFAULT (''),
[barcode2] [nvarchar] (150) COLLATE Latin1_General_100_CI_AS NOT NULL CONSTRAINT [DF_subproducts_barcode1] DEFAULT (''),
[status] [tinyint] NOT NULL CONSTRAINT [DF_subproducts_status] DEFAULT ((1)),
[manucode] [nvarchar] (50) COLLATE Latin1_General_100_CI_AS NOT NULL CONSTRAINT [DF_subproducts_manucode] DEFAULT (''),
[stockqty] [tinyint] NOT NULL CONSTRAINT [DF_subproducts_stockqty] DEFAULT ((1)),
[stockparent] [bigint] NOT NULL CONSTRAINT [DF_subproducts_stockparent] DEFAULT ((0)),
[swatch] [nvarchar] (150) COLLATE Latin1_General_100_CI_AS NOT NULL CONSTRAINT [DF_subproducts_swatch] DEFAULT (''),
[bin] [nvarchar] (20) COLLATE Latin1_General_100_CI_AS NOT NULL CONSTRAINT [DF_subproducts_bin] DEFAULT (''),
[barcode3] [nvarchar] (30) COLLATE Latin1_General_100_CI_AS NOT NULL CONSTRAINT [DF_subproducts_barcode3] DEFAULT (''),
[barcode4] [nvarchar] (30) COLLATE Latin1_General_100_CI_AS NOT NULL CONSTRAINT [DF_subproducts_barcode4] DEFAULT (''),
[stock_note] [nvarchar] (8) COLLATE Latin1_General_100_CI_AS NULL,
[lastmodified] [datetime] NULL,
[swatch_rgb] [int] NULL,
[swatch_group] [int] NULL,
[margin_ok_date] [datetime] NULL,
[margin_ok_user] [int] NULL,
[subscription] [bit] NOT NULL CONSTRAINT [DF__subproduc__subsc__2D27B809] DEFAULT ((0)),
[sku] [bigint] NOT NULL,
[ems_datetime_modified] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[subproducts] ADD CONSTRAINT [PK_subproducts_sku] PRIMARY KEY CLUSTERED  ([sku]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Test_Create_Then_Disale] ON [dbo].[subproducts] ([parentsku]) ON [PRIMARY]
GO
ALTER INDEX [Test_Create_Then_Disale] ON [dbo].[subproducts] DISABLE
GO
