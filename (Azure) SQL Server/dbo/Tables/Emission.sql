CREATE TABLE [dbo].[Emission] (
    [emissionId]           UNIQUEIDENTIFIER DEFAULT ('NEWID()') NOT NULL,
    [TLInSeconds]          INT              NULL,
    [partitionId]          NVARCHAR (100)   NULL,
    [createdOn]            DATETIME         NULL,
    [modifiedOn]           DATETIME         NULL,
    [importSequenceNumber] INT              NULL,
    [overriddenCreatedOn]  DATETIME         NULL,
    [name]                 NVARCHAR (100)   NULL,
    [activity]             NVARCHAR (255)   NULL,
    [activityentityname]   NVARCHAR (100)   NULL,
    [activityid]           NVARCHAR (100)   NULL,
    [activityname]         NVARCHAR (255)   NULL,
    [calculationdate]      DATETIME         NULL,
    [category]             NVARCHAR (255)   NULL,
    [ch4]                  DECIMAL (14, 2)  NULL,
    [ch4unit]              UNIQUEIDENTIFIER NOT NULL,
    [co2]                  DECIMAL (14, 2)  NULL,
    [co2e]                 DECIMAL (14, 2)  NULL,
    [co2emt]               DECIMAL (14, 2)  NULL,
    [co2eunit]             UNIQUEIDENTIFIER NOT NULL,
    [co2unit]              UNIQUEIDENTIFIER NOT NULL,
    [consumptionenddate]   DATETIME         NULL,
    [consumptionstartdate] DATETIME         NULL,
    [countryisocode]       NVARCHAR (3)     NULL,
    [emissionsource]       NVARCHAR (255)   NULL,
    [emissionsourcev2]     UNIQUEIDENTIFIER NOT NULL,
    [facilityid]           UNIQUEIDENTIFIER NOT NULL,
    [hfcs]                 DECIMAL (14, 2)  NULL,
    [hfcsunit]             UNIQUEIDENTIFIER NOT NULL,
    [isbiogenic]           BIT              NULL,
    [ismarketbased]        BIT              NULL,
    [latitude]             NVARCHAR (100)   NULL,
    [longitude]            NVARCHAR (100)   NULL,
    [n2o]                  DECIMAL (14, 2)  NULL,
    [n2ounit]              UNIQUEIDENTIFIER NOT NULL,
    [nf3]                  DECIMAL (14, 2)  NULL,
    [nf3unit]              UNIQUEIDENTIFIER NOT NULL,
    [organizationalunitid] UNIQUEIDENTIFIER NOT NULL,
    [otherghgs]            DECIMAL (14, 2)  NULL,
    [otherghgsunit]        UNIQUEIDENTIFIER NOT NULL,
    [pfcs]                 DECIMAL (14, 2)  NULL,
    [pfcsunit]             UNIQUEIDENTIFIER NOT NULL,
    [scope]                INT              NULL,
    [sf6]                  DECIMAL (14, 2)  NULL,
    [sf6unit]              UNIQUEIDENTIFIER NOT NULL,
    [origincorrelationid]  NVARCHAR (100)   NULL,
    [transactiondate]      DATETIME         NULL,
    [calculationlibrary]   UNIQUEIDENTIFIER NOT NULL,
    [emissionfactor]       UNIQUEIDENTIFIER NOT NULL,
    [emissionlookup]       UNIQUEIDENTIFIER NOT NULL,
    [actualquantity]       DECIMAL (14, 2)  NULL,
    [actualquantityunit]   UNIQUEIDENTIFIER NOT NULL,
    PRIMARY KEY CLUSTERED ([emissionId] ASC),
    FOREIGN KEY ([actualquantityunit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([calculationlibrary]) REFERENCES [dbo].[FactorLibrary] ([calculationlibraryId]),
    FOREIGN KEY ([ch4unit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([co2eunit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([co2unit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([emissionfactor]) REFERENCES [dbo].[EmissionFactor] ([emissionfactorId]),
    FOREIGN KEY ([emissionlookup]) REFERENCES [dbo].[FactorMapping] ([emissionlookupId]),
    FOREIGN KEY ([emissionsourcev2]) REFERENCES [dbo].[EmissionsSource] ([emissionsourceId]),
    FOREIGN KEY ([facilityid]) REFERENCES [dbo].[Facility] ([facilityId]),
    FOREIGN KEY ([hfcsunit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([n2ounit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([nf3unit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([organizationalunitid]) REFERENCES [dbo].[OrganizationalUnit] ([sustainabilityorganizationalunitId]),
    FOREIGN KEY ([otherghgsunit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([pfcsunit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([sf6unit]) REFERENCES [dbo].[Unit] ([unitId])
);


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The amount of hydrofluorocarbons factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'hfcs';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date calculation occurred', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'calculationdate';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The amount of nitrogen trifluoride factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'nf3';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The name of the custom entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'name';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The amount of perfluorocarbons factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'pfcs';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'This information can make it easier to submit reports for public disclosure.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'latitude';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = '	Date associated with the actual date when the transaction occurred.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'transactiondate';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Emissions Source (Internal)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'emissionsource';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The unit for the CH4 amount.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'ch4unit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Sequence number of the import that created this record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'importSequenceNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'End date of activity consumption.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'consumptionenddate';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The amount of the CO2 equivalent factor in metric tons.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'co2emt';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The unit for the NF3 factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'nf3unit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = '	Emission factor library used for emission calculations.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'calculationlibrary';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Actual quantity unit used for emission calculation.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'actualquantityunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The unit for SF6 factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'sf6unit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The amount of the CH4 factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'ch4';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for the unit associated with the emission.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'n2ounit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Indicates if emission calculation is market-based or considered a "net" calculation.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'ismarketbased';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The three letter ISO code of the country/region.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'countryisocode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Logical partition id. A logical partition consists of a set of records with same partition id.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'partitionId';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = '	Internal reference used to map an entity to the corresponding record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'activityentityname';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The unit for the CO2 factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'co2unit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = '	The amount of the CO2 equivalent factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'co2e';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for the unit associated with the emission.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'otherghgsunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'An optional identifier to correlate record with data origin.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'origincorrelationid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for entity instances', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'emissionId';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The amount of the CO2 factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'co2';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Factor mapping used for emission calculations.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'emissionlookup';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Start date of activity consumption.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'consumptionstartdate';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for the unit associated with the emission.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'co2eunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Indicates if it is a biogenic emission, or emission from a natural source.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'isbiogenic';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The amount of the N2O factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'n2o';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The amount of sulfur hexafluoride factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'sf6';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time that the record was migrated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'overriddenCreatedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Actual quantity used for emission calculation.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'actualquantity';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Category or reference data used for reporting purposes and populated during the calculation process.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'activityname';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Greenhouse gases associated with emissions that are not allocated in an individual category.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'otherghgs';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for the facility associated with mobile combustion.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'facilityid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was modified.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'modifiedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The unit for the perfluorocarbons factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'pfcsunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Internal reference used to map the entity to the corresponding record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'activityid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The unit for the hydrofluorocarbons factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'hfcsunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'createdOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'This information can make it easier to submit reports for public disclosure.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'longitude';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Emission factor used for emission calculations.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'emissionfactor';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Scope 3 category number.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'category';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Time to live in seconds.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'TLInSeconds';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Emissions source reference.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'emissionsourcev2';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Emission scope as defined by the Greenhouse Gas Protocol. Scopes are: Scope 1: 700610000, Scope 2: 700610001, Scope 3: 700610002', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'scope';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier of the activity linked to the emission.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'activity';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for the organizational unit associated with the emission..', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Emission', @level2type = N'COLUMN', @level2name = N'organizationalunitid';


GO

