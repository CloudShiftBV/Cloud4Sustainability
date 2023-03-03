CREATE TABLE [dbo].[EstimationFactor] (
    [estimationfactorId]        UNIQUEIDENTIFIER DEFAULT ('NEWID()') NOT NULL,
    [createdOn]                 DATETIME         NULL,
    [modifiedOn]                DATETIME         NULL,
    [statecode]                 INT              NOT NULL,
    [statuscode]                INT              NULL,
    [importSequenceNumber]      INT              NULL,
    [overriddenCreatedOn]       DATETIME         NULL,
    [timeZoneRuleVersionNumber] INT              NULL,
    [UTCConversionTimeZoneCode] INT              NULL,
    [name]                      NVARCHAR (100)   NULL,
    [description]               NVARCHAR (250)   NULL,
    [documentationreference]    NVARCHAR (255)   NULL,
    [factorlibrary]             UNIQUEIDENTIFIER NULL,
    [factorvalue]               DECIMAL (14, 2)  NULL,
    [factorvalueunit]           UNIQUEIDENTIFIER NULL,
    [origincorrelationid]       NVARCHAR (100)   NULL,
    [subtype]                   NVARCHAR (100)   NULL,
    [type]                      NVARCHAR (100)   NULL,
    [unit]                      UNIQUEIDENTIFIER NOT NULL,
    PRIMARY KEY CLUSTERED ([estimationfactorId] ASC),
    FOREIGN KEY ([factorlibrary]) REFERENCES [dbo].[FactorLibrary] ([calculationlibraryId]),
    FOREIGN KEY ([factorvalueunit]) REFERENCES [dbo].[Unit] ([unitId]),
    FOREIGN KEY ([unit]) REFERENCES [dbo].[Unit] ([unitId])
);


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Sequence number of the import that created this record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EstimationFactor', @level2type = N'COLUMN', @level2name = N'importSequenceNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was modified.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EstimationFactor', @level2type = N'COLUMN', @level2name = N'modifiedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Factor value for the estimation factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EstimationFactor', @level2type = N'COLUMN', @level2name = N'factorvalue';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Time zone code that was in use when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EstimationFactor', @level2type = N'COLUMN', @level2name = N'UTCConversionTimeZoneCode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Reason for the status of the EstimationFactor. Codes are: Active: 1, Inactive: 2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EstimationFactor', @level2type = N'COLUMN', @level2name = N'statuscode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EstimationFactor', @level2type = N'COLUMN', @level2name = N'createdOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The type of the emission factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EstimationFactor', @level2type = N'COLUMN', @level2name = N'type';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'For internal use only.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EstimationFactor', @level2type = N'COLUMN', @level2name = N'timeZoneRuleVersionNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'An optional identifier to correlate record with data origin.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EstimationFactor', @level2type = N'COLUMN', @level2name = N'origincorrelationid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional description that provides additional detail about the entity or attribute.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EstimationFactor', @level2type = N'COLUMN', @level2name = N'description';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unit of the factor value associated with the estimation factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EstimationFactor', @level2type = N'COLUMN', @level2name = N'factorvalueunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The name of the custom entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EstimationFactor', @level2type = N'COLUMN', @level2name = N'name';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Library associated with the estimation factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EstimationFactor', @level2type = N'COLUMN', @level2name = N'factorlibrary';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The unit for the input data for the emission factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EstimationFactor', @level2type = N'COLUMN', @level2name = N'unit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The documentation reference for the estimation factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EstimationFactor', @level2type = N'COLUMN', @level2name = N'documentationreference';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The sub-type of the emission factor.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EstimationFactor', @level2type = N'COLUMN', @level2name = N'subtype';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Status of the EstimationFactor. Codes are: Active: 0, Inactive: 1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EstimationFactor', @level2type = N'COLUMN', @level2name = N'statecode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for entity instances', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EstimationFactor', @level2type = N'COLUMN', @level2name = N'estimationfactorId';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time that the record was migrated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EstimationFactor', @level2type = N'COLUMN', @level2name = N'overriddenCreatedOn';


GO

