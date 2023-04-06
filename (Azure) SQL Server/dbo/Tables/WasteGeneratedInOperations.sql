CREATE TABLE [dbo].[WasteGeneratedInOperations] (
    [wastegeneratedinoperationsId] UNIQUEIDENTIFIER DEFAULT ('NEWID()') NOT NULL,
    [TTLInSeconds]                 INT              NULL,
    [partitionId]                  NVARCHAR (100)   NULL,
    [createdOn]                    DATETIME         NULL,
    [modifiedOn]                   DATETIME         NULL,
    [importSequenceNumber]         INT              NULL,
    [overriddenCreatedOn]          DATETIME         NULL,
    [name]                         NVARCHAR (100)   NULL,
    [consumptionenddate]           DATETIME         NULL,
    [consumptionstartdate]         DATETIME         NULL,
    [cost]                         DECIMAL (14, 2)  NULL,
    [costunit]                     UNIQUEIDENTIFIER NOT NULL,
    [dataqualitytype]              INT              NULL,
    [description]                  NVARCHAR (100)   NULL,
    [disposalmethodid]             UNIQUEIDENTIFIER NOT NULL,
    [distance]                     DECIMAL (14, 2)  NULL,
    [distanceunit]                 UNIQUEIDENTIFIER NOT NULL,
    [evidence]                     NVARCHAR (250)   NULL,
    [facilityid]                   UNIQUEIDENTIFIER NOT NULL,
    [fuelquantity]                 DECIMAL (14, 2)  NULL,
    [fuelquantityunit]             UNIQUEIDENTIFIER NOT NULL,
    [fueltypeid]                   UNIQUEIDENTIFIER NOT NULL,
    [industrialprocesstypeid]      UNIQUEIDENTIFIER NOT NULL,
    [materialid]                   UNIQUEIDENTIFIER NOT NULL,
    [meternumber]                  NVARCHAR (100)   NULL,
    [organizationalunitid]         UNIQUEIDENTIFIER NOT NULL,
    [origincorrelationid]          NVARCHAR (100)   NULL,
    [quantity]                     DECIMAL (14, 2)  NULL,
    [quantityunit]                 UNIQUEIDENTIFIER NOT NULL,
    [spendtypeid]                  UNIQUEIDENTIFIER NOT NULL,
    [transactiondate]              DATETIME         NULL,
    [transportmode]                UNIQUEIDENTIFIER NOT NULL,
    [valuechainpartnerid]          UNIQUEIDENTIFIER NOT NULL,
    [wastequantity]                DECIMAL (14, 2)  NULL,
    [wastequantityunit]            UNIQUEIDENTIFIER NOT NULL,
    PRIMARY KEY CLUSTERED ([wastegeneratedinoperationsId] ASC),
    FOREIGN KEY ([costunit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([disposalmethodid]) REFERENCES [dbo].[DisposalMethod] ([disposalmethodId]),
    FOREIGN KEY ([distanceunit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([facilityid]) REFERENCES [dbo].[Facility] ([facilityId]),
    FOREIGN KEY ([fuelquantityunit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([fueltypeid]) REFERENCES [dbo].[FuelType] ([fueltypeId]),
    FOREIGN KEY ([industrialprocesstypeid]) REFERENCES [dbo].[IndustrialProcessType] ([industrialprocesstypeId]),
    FOREIGN KEY ([materialid]) REFERENCES [dbo].[Material] ([materialId]),
    FOREIGN KEY ([organizationalunitid]) REFERENCES [dbo].[OrganizationalUnit] ([sustainabilityorganizationalunitId]),
    FOREIGN KEY ([quantityunit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([spendtypeid]) REFERENCES [dbo].[SpendType] ([spendtypeId]),
    FOREIGN KEY ([transportmode]) REFERENCES [dbo].[TransportMode] ([transportmodeId]),
    FOREIGN KEY ([valuechainpartnerid]) REFERENCES [dbo].[ValueChainPartner] ([valuechainpartnerId]),
    FOREIGN KEY ([wastequantityunit]) REFERENCES [dbo].[Unit] ([unitId])
);


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unit associated with the quantity field.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'quantityunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Type of industrial process used to track and associate with activity data.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'industrialprocesstypeid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Quantity associated with distance activity which contributes to mobile combustion or supply chain travel.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'distance';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier of the fuel consumption data associated with combustion or supply chain fuel usage.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'fuelquantity';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Logical partition id. A logical partition consists of a set of records with same partition id.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'partitionId';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The name of the custom entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'name';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time that the record was migrated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'overriddenCreatedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Quantity of waste to be used in calculation', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'wastequantity';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Time to live in seconds.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'TTLInSeconds';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for the organizational unit associated with business travel.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'organizationalunitid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unit associated with the cost quantity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'costunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = '	Date associated with the actual date when the transaction occurred.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'transactiondate';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = '	Cost associated with activity data.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'cost';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for entity instances', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'wastegeneratedinoperationsId';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for Facility associated with business travel.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'facilityid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Generic quanity field associated with activity entities.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'quantity';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Sequence number of the import that created this record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'importSequenceNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Field representing meter number for purchased energy entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'meternumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier of the fuel type associated with combustion or supply chain fuel usage.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'fueltypeid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Method of waste disposal, such as compost or recycle.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'disposalmethodid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Start date of activity consumption.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'consumptionstartdate';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Reference to value chain partner or supplier associated with the transaction.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'valuechainpartnerid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional field where evidence can be linked to an entity or attribute, if required.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'evidence';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for the spend type associated with the capital good.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'spendtypeid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier of the unit associated with fuel data.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'fuelquantityunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was modified.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'modifiedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional description to give additional detail to the entity or attribute.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'description';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for the unit associated with distance.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'distanceunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'createdOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'End date of activity consumption.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'consumptionenddate';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unit associated with quantity of waste. Generally mass or volume.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'wastequantityunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'An optional identifier to correlate record with data origin.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'origincorrelationid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Material of waste, such as aluminum.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'materialid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = '	The transport mode that corresponds to this transportation and distribution activity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'transportmode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WasteGeneratedInOperations', @level2type = N'COLUMN', @level2name = N'dataqualitytype';


GO

