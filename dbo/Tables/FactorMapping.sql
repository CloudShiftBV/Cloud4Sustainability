CREATE TABLE [dbo].[FactorMapping] (
    [emissionlookupId]          UNIQUEIDENTIFIER DEFAULT ('NEWID()') NOT NULL,
    [createdOn]                 DATETIME         NULL,
    [modifiedOn]                DATETIME         NULL,
    [statecode]                 INT              NOT NULL,
    [statuscode]                INT              NULL,
    [importSequenceNumber]      INT              NULL,
    [overriddenCreatedOn]       DATETIME         NULL,
    [timeZoneRuleVersionNumber] INT              NULL,
    [UTCConversionTimeZoneCode] INT              NULL,
    [name]                      NVARCHAR (100)   NULL,
    [calculationlibraryid]      UNIQUEIDENTIFIER NOT NULL,
    [description]               NVARCHAR (500)   NULL,
    [factorid]                  UNIQUEIDENTIFIER DEFAULT ('NEWID()') NOT NULL,
    [factoridType]              NVARCHAR (100)   NULL,
    [referencedata4id]          UNIQUEIDENTIFIER NULL,
    [referencedata4idType]      NVARCHAR (100)   NULL,
    [referencedataid]           UNIQUEIDENTIFIER NULL,
    [referencedataidType]       NVARCHAR (100)   NULL,
    [referencedata3id]          UNIQUEIDENTIFIER NULL,
    [referencedata3idType]      NVARCHAR (100)   NULL,
    [referencedata2id]          UNIQUEIDENTIFIER NULL,
    [referencedata2idType]      NVARCHAR (100)   NULL,
    [origincorrelationid]       NVARCHAR (100)   NULL,
    PRIMARY KEY CLUSTERED ([emissionlookupId] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Sequence number of the import that created this record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactorMapping', @level2type = N'COLUMN', @level2name = N'importSequenceNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactorMapping', @level2type = N'COLUMN', @level2name = N'referencedata2idType';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'An optional identifier to correlate record with data origin.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactorMapping', @level2type = N'COLUMN', @level2name = N'origincorrelationid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactorMapping', @level2type = N'COLUMN', @level2name = N'referencedata2id';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactorMapping', @level2type = N'COLUMN', @level2name = N'referencedataidType';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Reason for the status of the FactorMapping. Codes are: Active: 1, Inactive: 2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactorMapping', @level2type = N'COLUMN', @level2name = N'statuscode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactorMapping', @level2type = N'COLUMN', @level2name = N'referencedata3idType';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactorMapping', @level2type = N'COLUMN', @level2name = N'referencedata3id';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactorMapping', @level2type = N'COLUMN', @level2name = N'referencedata4idType';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactorMapping', @level2type = N'COLUMN', @level2name = N'referencedataid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'For internal use only.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactorMapping', @level2type = N'COLUMN', @level2name = N'timeZoneRuleVersionNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time that the record was migrated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactorMapping', @level2type = N'COLUMN', @level2name = N'overriddenCreatedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Factor library to which the lookup belongs.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactorMapping', @level2type = N'COLUMN', @level2name = N'calculationlibraryid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactorMapping', @level2type = N'COLUMN', @level2name = N'createdOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The name of the custom entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactorMapping', @level2type = N'COLUMN', @level2name = N'name';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for entity instances', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactorMapping', @level2type = N'COLUMN', @level2name = N'emissionlookupId';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Time zone code that was in use when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactorMapping', @level2type = N'COLUMN', @level2name = N'UTCConversionTimeZoneCode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactorMapping', @level2type = N'COLUMN', @level2name = N'referencedata4id';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Status of the FactorMapping. Codes are: Active: 0, Inactive: 1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactorMapping', @level2type = N'COLUMN', @level2name = N'statecode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier of the factor associated with the factor mapping.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactorMapping', @level2type = N'COLUMN', @level2name = N'factoridType';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was modified.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactorMapping', @level2type = N'COLUMN', @level2name = N'modifiedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier of the factor associated with the factor mapping.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactorMapping', @level2type = N'COLUMN', @level2name = N'factorid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional description that provides additional detail about the entity or attribute.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FactorMapping', @level2type = N'COLUMN', @level2name = N'description';


GO

