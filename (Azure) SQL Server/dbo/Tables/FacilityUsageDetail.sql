CREATE TABLE [dbo].[FacilityUsageDetail] (
    [facilityannualdetailId]    UNIQUEIDENTIFIER DEFAULT ('NEWID()') NOT NULL,
    [createdOn]                 DATETIME         NULL,
    [modifiedOn]                DATETIME         NULL,
    [statecode]                 INT              NOT NULL,
    [statuscode]                INT              NULL,
    [importSequenceNumber]      INT              NULL,
    [overriddenCreatedOn]       DATETIME         NULL,
    [timeZoneRuleVersionNumber] INT              NULL,
    [UTCConversionTimeZoneCode] INT              NULL,
    [year]                      NVARCHAR (100)   NULL,
    [area]                      INT              NULL,
    [areaunit]                  UNIQUEIDENTIFIER NOT NULL,
    [headcount]                 INT              NULL,
    [name]                      NVARCHAR (100)   NULL,
    [origincorrelationid]       NVARCHAR (100)   NULL,
    [activeperiodend]           DATETIME         NULL,
    [activeperiodstart]         DATETIME         NULL,
    [description]               NVARCHAR (500)   NULL,
    [facilityusagedetails]      NVARCHAR (100)   NULL,
    [leasedorowned]             INT              DEFAULT ('Leased: 575440000, Owned: 575440001') NULL,
    [lessee]                    NVARCHAR (100)   NULL,
    [lessor]                    NVARCHAR (100)   NULL,
    [percentusage]              DECIMAL (14, 2)  NULL,
    PRIMARY KEY CLUSTERED ([facilityannualdetailId] ASC),
    FOREIGN KEY ([areaunit]) REFERENCES [dbo].[Unit] ([unitId])
);


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The name of the custom entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUsageDetail', @level2type = N'COLUMN', @level2name = N'name';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was modified.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUsageDetail', @level2type = N'COLUMN', @level2name = N'modifiedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Usage of facility start', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUsageDetail', @level2type = N'COLUMN', @level2name = N'activeperiodstart';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = '	The physical space contained in a facility.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUsageDetail', @level2type = N'COLUMN', @level2name = N'area';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'For internal use only.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUsageDetail', @level2type = N'COLUMN', @level2name = N'timeZoneRuleVersionNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Classification of leased or owned facility', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUsageDetail', @level2type = N'COLUMN', @level2name = N'leasedorowned';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unit of measure used to describe the area of a space.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUsageDetail', @level2type = N'COLUMN', @level2name = N'areaunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Optional description that provides additional detail about the entity or attribute.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUsageDetail', @level2type = N'COLUMN', @level2name = N'description';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Time zone code that was in use when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUsageDetail', @level2type = N'COLUMN', @level2name = N'UTCConversionTimeZoneCode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Name of the lessee', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUsageDetail', @level2type = N'COLUMN', @level2name = N'lessee';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Sequence number of the import that created this record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUsageDetail', @level2type = N'COLUMN', @level2name = N'importSequenceNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for entity instances', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUsageDetail', @level2type = N'COLUMN', @level2name = N'facilityannualdetailId';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUsageDetail', @level2type = N'COLUMN', @level2name = N'createdOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Details regarding facility usage', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUsageDetail', @level2type = N'COLUMN', @level2name = N'facilityusagedetails';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time that the record was migrated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUsageDetail', @level2type = N'COLUMN', @level2name = N'overriddenCreatedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Name of the lessor of the facility', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUsageDetail', @level2type = N'COLUMN', @level2name = N'lessor';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'An optional identifier to correlate record with data origin.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUsageDetail', @level2type = N'COLUMN', @level2name = N'origincorrelationid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Status of the FacilityUsageDetail. Codes are: Active: 0, Inactive: 1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUsageDetail', @level2type = N'COLUMN', @level2name = N'statecode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Reason for the status of the FacilityUsageDetail. Codes are: Active: 1, Inactive: 2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUsageDetail', @level2type = N'COLUMN', @level2name = N'statuscode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Percent of facility used for operations', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUsageDetail', @level2type = N'COLUMN', @level2name = N'percentusage';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Usage of facility end', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUsageDetail', @level2type = N'COLUMN', @level2name = N'activeperiodend';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The number of people who are employed at a given facility.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUsageDetail', @level2type = N'COLUMN', @level2name = N'headcount';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The name of the custom entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'FacilityUsageDetail', @level2type = N'COLUMN', @level2name = N'year';


GO

