CREATE TABLE [dbo].[PurchasedEnergy] (
    [purchasedenergyId]           UNIQUEIDENTIFIER DEFAULT ('NEWID()') NOT NULL,
    [TTLInSeconds]                INT              NULL,
    [partitionId]                 NVARCHAR (100)   NULL,
    [createdOn]                   DATETIME         NULL,
    [modifiedOn]                  DATETIME         NULL,
    [importSequenceNumber]        INT              NULL,
    [overriddenCreatedOn]         DATETIME         NULL,
    [name]                        NVARCHAR (100)   NULL,
    [consumptionenddate]          DATETIME         NULL,
    [consumptionstartdate]        DATETIME         NULL,
    [contractualinstrumenttypeid] UNIQUEIDENTIFIER NOT NULL,
    [cost]                        DECIMAL (14, 2)  NULL,
    [costunit]                    UNIQUEIDENTIFIER NOT NULL,
    [dataqualitytype]             INT              NULL,
    [description]                 NVARCHAR (100)   NULL,
    [energyprovidername]          NVARCHAR (100)   NULL,
    [energytype]                  INT              NULL,
    [evidence]                    NVARCHAR (250)   NULL,
    [facilityid]                  UNIQUEIDENTIFIER NOT NULL,
    [facilityusagedetailid]       UNIQUEIDENTIFIER NOT NULL,
    [isrenewable]                 BIT              NULL,
    [leasedassetcategory]         INT              NULL,
    [meternumber]                 NVARCHAR (100)   NULL,
    [organizationalunitid]        UNIQUEIDENTIFIER NOT NULL,
    [quantity]                    DECIMAL (14, 2)  NULL,
    [quantityunit]                UNIQUEIDENTIFIER NOT NULL,
    [origincorrelationid]         NVARCHAR (100)   NULL,
    [transactiondate]             DATETIME         NULL,
    [spendtypeid]                 UNIQUEIDENTIFIER NOT NULL,
    [valuechainpartnerid]         UNIQUEIDENTIFIER NOT NULL,
    [goodsquantity]               DECIMAL (14, 2)  NULL,
    [goodsunit]                   UNIQUEIDENTIFIER NOT NULL,
    PRIMARY KEY CLUSTERED ([purchasedenergyId] ASC),
    FOREIGN KEY ([contractualinstrumenttypeid]) REFERENCES [dbo].[ContractualInstrumentType] ([contractualinstrumenttypeId]),
    FOREIGN KEY ([costunit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([facilityid]) REFERENCES [dbo].[Facility] ([facilityId]),
    FOREIGN KEY ([facilityusagedetailid]) REFERENCES [dbo].[FacilityUsageDetail] ([facilityannualdetailId]),
    FOREIGN KEY ([goodsunit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([organizationalunitid]) REFERENCES [dbo].[OrganizationalUnit] ([sustainabilityorganizationalunitId]),
    FOREIGN KEY ([quantityunit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([spendtypeid]) REFERENCES [dbo].[SpendType] ([spendtypeId]),
    FOREIGN KEY ([valuechainpartnerid]) REFERENCES [dbo].[ValueChainPartner] ([valuechainpartnerId])
);


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Field representing meter number for purchased energy entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'meternumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'End date of activity consumption.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'consumptionenddate';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for entity instances', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'purchasedenergyId';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = '	Date associated with the actual date when the transaction occurred.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'transactiondate';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'An optional identifier to correlate record with data origin.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'origincorrelationid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The unit of measurement for the goods quantity in record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'goodsunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional description to give additional detail to the entity or attribute.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'description';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for Facility associated with business travel.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'facilityid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = '	Cost associated with activity data.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'cost';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Sequence number of the import that created this record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'importSequenceNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = '	The facility usage detail associated with this fugitive emission', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'facilityusagedetailid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unit associated with the cost quantity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'costunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Start date of activity consumption.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'consumptionstartdate';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for the spend type associated with the capital good.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'spendtypeid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time that the record was migrated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'overriddenCreatedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Name of the energy provider.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'energyprovidername';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for the organizational unit associated with business travel.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'organizationalunitid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'createdOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Identifier used to determine if the source electric energy is renewable or not.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'isrenewable';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Reference to value chain partner or supplier associated with the transaction.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'valuechainpartnerid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'dataqualitytype';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was modified.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'modifiedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Energy sub-category within Scope 2 emissions. Energy sub-category are: Electricity: 700610000, Steam: 700610001, Heating: 700610002, Cooling: 700610003', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'energytype';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Time to live in seconds.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'TTLInSeconds';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Generic quanity field associated with activity entities.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'quantity';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Indicator of classification of category. An empty value means this activity is in scope 1. Categories are: Scope 3 category 8: 700610000, Scope 3 category 13: 700610001', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'leasedassetcategory';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Logical partition id. A logical partition consists of a set of records with same partition id.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'partitionId';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for the contractual instrument type associated with the purchased energy.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'contractualinstrumenttypeid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The name of the custom entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'name';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unit associated with the quantity field.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'quantityunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The amount of goods associated with this record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'goodsquantity';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional field where evidence can be linked to an entity or attribute, if required.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PurchasedEnergy', @level2type = N'COLUMN', @level2name = N'evidence';


GO

