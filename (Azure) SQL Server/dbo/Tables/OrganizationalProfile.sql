CREATE TABLE [dbo].[OrganizationalProfile] (
    [organizationalprofileId]   UNIQUEIDENTIFIER DEFAULT ('NEWID()') NOT NULL,
    [createdOn]                 DATETIME         NULL,
    [modifiedOn]                DATETIME         NULL,
    [statecode]                 INT              NOT NULL,
    [statuscode]                INT              NULL,
    [importSequenceNumber]      INT              NULL,
    [overriddenCreatedOn]       DATETIME         NULL,
    [timeZoneRuleVersionNumber] INT              NULL,
    [UTCConversionTimeZoneCode] INT              NULL,
    [name]                      NVARCHAR (100)   NULL,
    [addressline1]              NVARCHAR (100)   NULL,
    [addressline2]              NVARCHAR (100)   NULL,
    [city]                      NVARCHAR (100)   NULL,
    [companyProfileLogoBase64]  NVARCHAR (MAX)   NULL,
    [countryisocode]            NVARCHAR (3)     NULL,
    [latitude]                  NVARCHAR (100)   NULL,
    [longitude]                 NVARCHAR (100)   NULL,
    [postalcode]                NVARCHAR (100)   NULL,
    [reportingstartday]         INT              NULL,
    [reportingstartmonth]       INT              NULL,
    [stateprovince]             NVARCHAR (100)   NULL,
    PRIMARY KEY CLUSTERED ([organizationalprofileId] ASC)
);


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time that the record was migrated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalProfile', @level2type = N'COLUMN', @level2name = N'overriddenCreatedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Status of the OrganizationalProfile. Codes are: Active: 0, Inactive: 1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalProfile', @level2type = N'COLUMN', @level2name = N'statecode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Unique identifier for entity instances', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalProfile', @level2type = N'COLUMN', @level2name = N'organizationalprofileId';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The name of the custom entity.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalProfile', @level2type = N'COLUMN', @level2name = N'name';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = '	The three letter ISO code of the country/region.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalProfile', @level2type = N'COLUMN', @level2name = N'countryisocode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Day of the month. Days are: 1: 700610000, 2: 700610001, 3: 700610002, 4: 700610003, 5: 700610004, 6: 700610005, 7: 700610006, 8: 700610007, 9: 700610008, 10: 700610009, 11: 700610010, 12: 700610011, 13: 700610012, 14: 700610013, 15: 700610014, 16: 700610015, 17: 700610016, 18: 700610017, 19: 700610018, 20: 700610019, 21: 700610020, 22: 700610021, 23: 700610022, 24: 700610023, 25: 700610024, 26: 700610025, 27: 700610026, 28: 700610027, 29: 700610028, 30: 700610029, 31: 700610030', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalProfile', @level2type = N'COLUMN', @level2name = N'reportingstartday';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The state or province in which the organization resides.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalProfile', @level2type = N'COLUMN', @level2name = N'stateprovince';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = '	The logo representing a company or organization.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalProfile', @level2type = N'COLUMN', @level2name = N'companyProfileLogoBase64';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Time zone code that was in use when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalProfile', @level2type = N'COLUMN', @level2name = N'UTCConversionTimeZoneCode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Secondary street address information.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalProfile', @level2type = N'COLUMN', @level2name = N'addressline2';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'This information can make it easier to submit reports for public disclosure.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalProfile', @level2type = N'COLUMN', @level2name = N'longitude';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'This information can make it easier to submit reports for public disclosure.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalProfile', @level2type = N'COLUMN', @level2name = N'latitude';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = '	The street address, including the number and street name of the facility.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalProfile', @level2type = N'COLUMN', @level2name = N'addressline1';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was modified.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalProfile', @level2type = N'COLUMN', @level2name = N'modifiedOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Sequence number of the import that created this record.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalProfile', @level2type = N'COLUMN', @level2name = N'importSequenceNumber';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Date and time when the record was created.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalProfile', @level2type = N'COLUMN', @level2name = N'createdOn';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'Reason for the status of the OrganizationalProfile. Codes are: Active: 1, Inactive: 2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalProfile', @level2type = N'COLUMN', @level2name = N'statuscode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The city in which the organization resides.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalProfile', @level2type = N'COLUMN', @level2name = N'city';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The month in which reporting begins for a given organization. Months are: January: 700610000, February: 700610001, March: 700610002, April: 700610003, May: 700610004, June: 700610005, July: 700610006, August: 700610007, September: 700610008, October: 700610009, November: 700610010, December: 700610011 ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalProfile', @level2type = N'COLUMN', @level2name = N'reportingstartmonth';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'The zip or postal code in which the organization resides.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalProfile', @level2type = N'COLUMN', @level2name = N'postalcode';


GO

EXECUTE sp_addextendedproperty @name = N'Column_Description', @value = 'For internal use only.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'OrganizationalProfile', @level2type = N'COLUMN', @level2name = N'timeZoneRuleVersionNumber';


GO

