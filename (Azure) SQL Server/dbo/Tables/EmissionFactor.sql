CREATE TABLE [dbo].[EmissionFactor] (
    [emissionfactorId]          UNIQUEIDENTIFIER DEFAULT ('NEWID()') NOT NULL,
    [createdOn]                 DATETIME         NULL,
    [modifiedOn]                DATETIME         NULL,
    [statecode]                 INT              NOT NULL,
    [statuscode]                INT              NULL,
    [importSequenceNumber]      INT              NULL,
    [overriddenCreatedOn]       DATETIME         NULL,
    [timeZoneRuleVersionNumber] INT              NULL,
    [UTCConversionTimeZoneCode] INT              NULL,
    [name]                      NVARCHAR (100)   NULL,
    [calculationlibraryId]      UNIQUEIDENTIFIER NOT NULL,
    [biogenicco2factor]         DECIMAL (14, 2)  NULL,
    [biogenicco2factorunit]     UNIQUEIDENTIFIER NOT NULL,
    [ch4]                       DECIMAL (14, 2)  NULL,
    [ch4unit]                   UNIQUEIDENTIFIER NOT NULL,
    [co2]                       DECIMAL (14, 2)  NULL,
    [co2e]                      DECIMAL (14, 2)  NULL,
    [co2eunit]                  UNIQUEIDENTIFIER NOT NULL,
    [co2unit]                   UNIQUEIDENTIFIER NOT NULL,
    [description]               NVARCHAR (250)   NULL,
    [documentationreference]    NVARCHAR (250)   NULL,
    [heatcontent]               DECIMAL (14, 2)  NULL,
    [heatcontentunit]           UNIQUEIDENTIFIER NOT NULL,
    [hfcs]                      DECIMAL (14, 2)  NULL,
    [hfcsunit]                  UNIQUEIDENTIFIER NOT NULL,
    [isbiofuel]                 BIT              NULL,
    [n2o]                       DECIMAL (14, 2)  NULL,
    [n2ounit]                   UNIQUEIDENTIFIER NOT NULL,
    [identifier]                NVARCHAR (100)   NULL,
    [nf3]                       DECIMAL (14, 2)  NULL,
    [nf3unit]                   UNIQUEIDENTIFIER NOT NULL,
    [otherghgs]                 DECIMAL (14, 2)  NULL,
    [otherghgsunit]             UNIQUEIDENTIFIER NOT NULL,
    [pfcs]                      DECIMAL (14, 2)  NULL,
    [pfcsunit]                  UNIQUEIDENTIFIER NOT NULL,
    [sf6]                       DECIMAL (14, 2)  NULL,
    [sf6unit]                   UNIQUEIDENTIFIER NOT NULL,
    [origincorrelationid]       NVARCHAR (100)   NULL,
    [subtype]                   NVARCHAR (100)   NULL,
    [type]                      NVARCHAR (100)   NULL,
    [unit]                      UNIQUEIDENTIFIER NOT NULL,
    PRIMARY KEY CLUSTERED ([emissionfactorId] ASC),
    FOREIGN KEY ([biogenicco2factorunit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([calculationlibraryId]) REFERENCES [dbo].[FactorLibrary] ([calculationlibraryId]),
    FOREIGN KEY ([ch4unit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([co2eunit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([co2unit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([heatcontentunit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([hfcsunit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([n2ounit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([nf3unit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([otherghgsunit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([pfcsunit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([sf6unit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([unit]) REFERENCES [dbo].[Unit] ([unitId])
);


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Greenhouse gases associated with emissions that are not allocated in an individual category.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'otherghgs';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The type of the emission factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'type';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was modified.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'modifiedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for the unit associated with the emission.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'otherghgsunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Status of the EmissionFactor. Codes are: Active: 0, Inactive: 1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'statecode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The unit for the input data for the emission factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'unit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The amount of perfluorocarbons factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'pfcs';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'An optional identifier to correlate record with data origin.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'origincorrelationid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The amount of nitrogen trifluoride factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'nf3';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for entity instances', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'emissionfactorId';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The sub-type of the emission factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'subtype';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The unit for the NF3 factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'nf3unit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'createdOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Indicates if the type of fuel is biofuel or not.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'isbiofuel';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Time zone code that was in use when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'UTCConversionTimeZoneCode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The name of the custom entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'name';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The amount of the N2O factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'n2o';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The unit for SF6 factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'sf6unit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = '	Unique identifier for Factor Library associated with Emission Factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'calculationlibraryId';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for the unit associated with the emission.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'n2ounit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The amount of the biogenic CO2 factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'biogenicco2factor';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The unit for the biogenic CO2 factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'biogenicco2factorunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The amount of the CH4 factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'ch4';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The unit for the CH4 amount.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'ch4unit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Identifier for the emission factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'identifier';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The amount of the CO2 factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'co2';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = '	The amount of the CO2 equivalent factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'co2e';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for the unit associated with the emission.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'co2eunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Reason for the status of the EmissionFactor. Codes are: Active: 1, Inactive: 2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'statuscode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The unit for the CO2 factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'co2unit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional description that provides additional detail about the entity or attribute.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'description';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The documentation reference for the emission factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'documentationreference';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The amount of the heat content factor. (Deprecated)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'heatcontent';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Sequence number of the import that created this record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'importSequenceNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The unit for the perfluorocarbons factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'pfcsunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The unit for the heat content factor. (Deprecated)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'heatcontentunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time that the record was migrated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'overriddenCreatedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The amount of hydrofluorocarbons factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'hfcs';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The unit for the hydrofluorocarbons factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'hfcsunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'For internal use only.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'timeZoneRuleVersionNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The amount of sulfur hexafluoride factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionFactor', @level2type = N'COLUMN', @level2name = N'sf6';


GO

