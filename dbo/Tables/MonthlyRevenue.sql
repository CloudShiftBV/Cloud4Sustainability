CREATE TABLE [dbo].[MonthlyRevenue] (
    [organizationalunitrevenueId]      UNIQUEIDENTIFIER DEFAULT ('NEWID()') NOT NULL,
    [createdOn]                        DATETIME         NULL,
    [modifiedOn]                       DATETIME         NULL,
    [statecode]                        INT              NOT NULL,
    [statuscode]                       INT              NULL,
    [importSequenceNumber]             INT              NULL,
    [overriddenCreatedOn]              DATETIME         NULL,
    [timeZoneRuleVersionNumber]        INT              NULL,
    [UTCConversionTimeZoneCode]        INT              NULL,
    [year]                             NVARCHAR (100)   NULL,
    [amount]                           DECIMAL (14, 2)  NULL,
    [amount_Base]                      DECIMAL (14, 2)  NULL,
    [month]                            INT              NULL,
    [origincorrelationid]              NVARCHAR (100)   NULL,
    [sustainabilityorganizationalunit] UNIQUEIDENTIFIER NULL,
    PRIMARY KEY CLUSTERED ([organizationalunitrevenueId] ASC),
    FOREIGN KEY ([sustainabilityorganizationalunit]) REFERENCES [dbo].[OrganizationalUnit] ([sustainabilityorganizationalunitId])
);


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Revenue amount for a defined year, month, and currency.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MonthlyRevenue', @level2type = N'COLUMN', @level2name = N'amount';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Reason for the status of the Monthly Revenue. Codes are: Active: 1, Inactive: 2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MonthlyRevenue', @level2type = N'COLUMN', @level2name = N'statuscode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Sequence number of the import that created this record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MonthlyRevenue', @level2type = N'COLUMN', @level2name = N'importSequenceNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for the organizational unit associated with the monthly revenue.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MonthlyRevenue', @level2type = N'COLUMN', @level2name = N'sustainabilityorganizationalunit';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was modified.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MonthlyRevenue', @level2type = N'COLUMN', @level2name = N'modifiedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Status of the Monthly Revenue. Codes are: Active: 0, Inactive: 1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MonthlyRevenue', @level2type = N'COLUMN', @level2name = N'statecode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The name of the custom entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MonthlyRevenue', @level2type = N'COLUMN', @level2name = N'year';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for entity instances', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MonthlyRevenue', @level2type = N'COLUMN', @level2name = N'organizationalunitrevenueId';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'For internal use only.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MonthlyRevenue', @level2type = N'COLUMN', @level2name = N'timeZoneRuleVersionNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Time zone code that was in use when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MonthlyRevenue', @level2type = N'COLUMN', @level2name = N'UTCConversionTimeZoneCode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MonthlyRevenue', @level2type = N'COLUMN', @level2name = N'createdOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'An optional identifier to correlate record with data origin.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MonthlyRevenue', @level2type = N'COLUMN', @level2name = N'origincorrelationid';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = '	Value of the Revenue in base currency.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MonthlyRevenue', @level2type = N'COLUMN', @level2name = N'amount_Base';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The month associated to the revenue defined for a business unit. Months are: January: 700610000, February: 700610001, March: 700610002, April: 700610003, May: 700610004, June: 700610005, July: 700610006, August: 700610007, September: 700610008, October: 700610009, November: 700610010, December: 700610011 ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MonthlyRevenue', @level2type = N'COLUMN', @level2name = N'month';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time that the record was migrated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MonthlyRevenue', @level2type = N'COLUMN', @level2name = N'overriddenCreatedOn';


GO

