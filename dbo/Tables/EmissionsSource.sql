CREATE TABLE [dbo].[EmissionsSource] (
    [emissionsourceId]          UNIQUEIDENTIFIER DEFAULT ('NEWID()') NOT NULL,
    [createdOn]                 DATETIME         NULL,
    [modifiedOn]                DATETIME         NULL,
    [statecode]                 INT              NOT NULL,
    [statuscode]                INT              NULL,
    [importSequenceNumber]      INT              NULL,
    [overriddenCreatedOn]       DATETIME         NULL,
    [timeZoneRuleVersionNumber] INT              NULL,
    [UTCConversionTimeZoneCode] INT              NULL,
    [name]                      NVARCHAR (100)   NULL,
    [activitytypedatafield]     NVARCHAR (100)   NULL,
    [description]               NVARCHAR (250)   NULL,
    [entityname]                NVARCHAR (100)   NULL,
    [isactive]                  BIT              NULL,
    [parentemissionsource]      UNIQUEIDENTIFIER NOT NULL,
    [scope]                     INT              NULL,
    [sourcedatafield]           NVARCHAR (100)   NULL,
    [sourcedatafield2]          NVARCHAR (100)   NULL,
    [sourcedatavalue]           NVARCHAR (100)   NULL,
    [sourcedatavalue2]          NVARCHAR (100)   NULL,
    [sourceviewid]              NVARCHAR (100)   NULL,
    PRIMARY KEY CLUSTERED ([emissionsourceId] ASC),
    FOREIGN KEY ([parentemissionsource]) REFERENCES [dbo].[EmissionsSource] ([emissionsourceId])
);


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Reason for the status of the EmissionsSource. Codes are: Active: 1, Inactive: 2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionsSource', @level2type = N'COLUMN', @level2name = N'statuscode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = '	Optional entity for additional views', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionsSource', @level2type = N'COLUMN', @level2name = N'sourceviewid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Internal reference assigned during import.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionsSource', @level2type = N'COLUMN', @level2name = N'isactive';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Industry standard terminology as defined by the GHG Protocol', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionsSource', @level2type = N'COLUMN', @level2name = N'name';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'For internal use only.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionsSource', @level2type = N'COLUMN', @level2name = N'timeZoneRuleVersionNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The value of source data (Source data field 2).', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionsSource', @level2type = N'COLUMN', @level2name = N'sourcedatavalue2';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Internal reference used to map an entity to the corresponding record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionsSource', @level2type = N'COLUMN', @level2name = N'entityname';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Status of the EmissionsSource. Codes are: Active: 0, Inactive: 1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionsSource', @level2type = N'COLUMN', @level2name = N'statecode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Time zone code that was in use when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionsSource', @level2type = N'COLUMN', @level2name = N'UTCConversionTimeZoneCode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional field entity for additional views.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionsSource', @level2type = N'COLUMN', @level2name = N'sourcedatafield';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time that the record was migrated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionsSource', @level2type = N'COLUMN', @level2name = N'overriddenCreatedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionsSource', @level2type = N'COLUMN', @level2name = N'createdOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The value of source data.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionsSource', @level2type = N'COLUMN', @level2name = N'sourcedatavalue';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional description that provides additional detail about the entity or attribute.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionsSource', @level2type = N'COLUMN', @level2name = N'description';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Emission scope as defined by the Greenhouse Gas Protocol. Scopes are: Scope 1: 700610000, Scope 2: 700610001, Scope 3: 700610002', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionsSource', @level2type = N'COLUMN', @level2name = N'scope';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was modified.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionsSource', @level2type = N'COLUMN', @level2name = N'modifiedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Second optional field entity for additional views.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionsSource', @level2type = N'COLUMN', @level2name = N'sourcedatafield2';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Sequence number of the import that created this record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionsSource', @level2type = N'COLUMN', @level2name = N'importSequenceNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for entity instances', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionsSource', @level2type = N'COLUMN', @level2name = N'emissionsourceId';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional description that provides additional detail about the entity or attribute.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionsSource', @level2type = N'COLUMN', @level2name = N'activitytypedatafield';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Lookup to the parent emission source', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmissionsSource', @level2type = N'COLUMN', @level2name = N'parentemissionsource';


GO

