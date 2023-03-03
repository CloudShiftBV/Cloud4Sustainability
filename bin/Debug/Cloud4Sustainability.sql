CREATE TABLE [AccommodationType] (
  [accommodationtypeId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [description] nvarchar(250),
  [origincorrelationid] nvarchar(100)
)
GO

CREATE TABLE [BusinessTravel] (
  [businesstravelId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [TTLInSeconds] int,
  [partitionId] nvarchar(100),
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [name] nvarchar(100),
  [accommodationtypeid] uniqueidentifier NOT NULL,
  [businesstraveltypeid] uniqueidentifier NOT NULL,
  [consumptionenddate] dateTime,
  [consumptionstartdate] dateTime,
  [cost] decimal(14,2),
  [costunit] uniqueidentifier NOT NULL,
  [dataqualitytype] int,
  [description] nvarchar(100),
  [destinationcountryisocode] nvarchar(3),
  [distance] decimal(14,2),
  [distanceunit] uniqueidentifier NOT NULL,
  [evidence] nvarchar(250),
  [facilityid] uniqueidentifier NOT NULL,
  [fuelquantity] decimal(14,2),
  [fuelquantityunit] uniqueidentifier NOT NULL,
  [fueltypeid] uniqueidentifier NOT NULL,
  [industrialprocesstypeid] uniqueidentifier NOT NULL,
  [nightstay] decimal(14,2),
  [nightstayunit] uniqueidentifier NOT NULL,
  [organizationalunitid] uniqueidentifier NOT NULL,
  [quantity] decimal(14,2),
  [quantityunit] uniqueidentifier NOT NULL,
  [origincorrelationid] nvarchar(100),
  [transactiondate] dateTime,
  [valuechainpartnerid] uniqueidentifier NOT NULL,
  [vehicletype] uniqueidentifier NOT NULL
)
GO

CREATE TABLE [BusinessTravelType] (
  [businesstraveltypeId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [description] nvarchar(250),
  [origincorrelationid] nvarchar(100)
)
GO

CREATE TABLE [CapitalGood] (
  [capitalgoodId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [TTLInSeconds] int,
  [partitionId] nvarchar(100),
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [name] nvarchar(100),
  [consumptionenddate] dateTime,
  [consumptionstartdate] dateTime,
  [cost] decimal(14,2),
  [costunit] uniqueidentifier NOT NULL,
  [dataqualitytype] int,
  [description] nvarchar(100),
  [evidence] nvarchar(250),
  [facilityid] uniqueidentifier NOT NULL,
  [industrialprocesstypeid] uniqueidentifier NOT NULL,
  [organizationalunitid] uniqueidentifier NOT NULL,
  [quantity] decimal(14,2),
  [quantityunit] uniqueidentifier NOT NULL,
  [origincorrelationid] nvarchar(100),
  [transactiondate] dateTime,
  [spendtypeid] uniqueidentifier NOT NULL,
  [valuechainpartnerid] uniqueidentifier NOT NULL
)
GO

CREATE TABLE [ContractualInstrumentType] (
  [contractualinstrumenttypeId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [description] nvarchar(250),
  [energysource] int,
  [origincorrelationid] nvarchar(100),
  [valuechainpartnerid] uniqueidentifier NOT NULL
)
GO

CREATE TABLE [CountryRegionMapping] (
  [countryregionmappingId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [countryisocode] nvarchar(3),
  [region] nvarchar(100),
  [origincorrelationid] nvarchar(100)
)
GO

CREATE TABLE [DisposalMethod] (
  [disposalmethodId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [description] nvarchar(250),
  [origincorrelationid] nvarchar(100)
)
GO

CREATE TABLE [Emission] (
  [emissionId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [TLInSeconds] int,
  [partitionId] nvarchar(100),
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [name] nvarchar(100),
  [activity] nvarchar(255),
  [activityentityname] nvarchar(100),
  [activityid] nvarchar(100),
  [activityname] nvarchar(255),
  [calculationdate] dateTime,
  [category] nvarchar(255),
  [ch4] decimal(14,2),
  [ch4unit] uniqueidentifier NOT NULL,
  [co2] decimal(14,2),
  [co2e] decimal(14,2),
  [co2emt] decimal(14,2),
  [co2eunit] uniqueidentifier NOT NULL,
  [co2unit] uniqueidentifier NOT NULL,
  [consumptionenddate] dateTime,
  [consumptionstartdate] dateTime,
  [countryisocode] nvarchar(3),
  [emissionsource] nvarchar(255),
  [emissionsourcev2] uniqueidentifier NOT NULL,
  [facilityid] uniqueidentifier NOT NULL,
  [hfcs] decimal(14,2),
  [hfcsunit] uniqueidentifier NOT NULL,
  [isbiogenic] bit,
  [ismarketbased] bit,
  [latitude] nvarchar(100),
  [longitude] nvarchar(100),
  [n2o] decimal(14,2),
  [n2ounit] uniqueidentifier NOT NULL,
  [nf3] decimal(14,2),
  [nf3unit] uniqueidentifier NOT NULL,
  [organizationalunitid] uniqueidentifier NOT NULL,
  [otherghgs] decimal(14,2),
  [otherghgsunit] uniqueidentifier NOT NULL,
  [pfcs] decimal(14,2),
  [pfcsunit] uniqueidentifier NOT NULL,
  [scope] int,
  [sf6] decimal(14,2),
  [sf6unit] uniqueidentifier NOT NULL,
  [origincorrelationid] nvarchar(100),
  [transactiondate] dateTime,
  [calculationlibrary] uniqueidentifier NOT NULL,
  [emissionfactor] uniqueidentifier NOT NULL,
  [emissionlookup] uniqueidentifier NOT NULL,
  [actualquantity] decimal(14,2),
  [actualquantityunit] uniqueidentifier NOT NULL
)
GO

CREATE TABLE [EmissionFactor] (
  [emissionfactorId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [calculationlibraryId] uniqueidentifier NOT NULL,
  [biogenicco2factor] decimal(14,2),
  [biogenicco2factorunit] uniqueidentifier NOT NULL,
  [ch4] decimal(14,2),
  [ch4unit] uniqueidentifier NOT NULL,
  [co2] decimal(14,2),
  [co2e] decimal(14,2),
  [co2eunit] uniqueidentifier NOT NULL,
  [co2unit] uniqueidentifier NOT NULL,
  [description] nvarchar(250),
  [documentationreference] nvarchar(250),
  [heatcontent] decimal(14,2),
  [heatcontentunit] uniqueidentifier NOT NULL,
  [hfcs] decimal(14,2),
  [hfcsunit] uniqueidentifier NOT NULL,
  [isbiofuel] bit,
  [n2o] decimal(14,2),
  [n2ounit] uniqueidentifier NOT NULL,
  [identifier] nvarchar(100),
  [nf3] decimal(14,2),
  [nf3unit] uniqueidentifier NOT NULL,
  [otherghgs] decimal(14,2),
  [otherghgsunit] uniqueidentifier NOT NULL,
  [pfcs] decimal(14,2),
  [pfcsunit] uniqueidentifier NOT NULL,
  [sf6] decimal(14,2),
  [sf6unit] uniqueidentifier NOT NULL,
  [origincorrelationid] nvarchar(100),
  [subtype] nvarchar(100),
  [type] nvarchar(100),
  [unit] uniqueidentifier NOT NULL
)
GO

CREATE TABLE [EmissionsSource] (
  [emissionsourceId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [activitytypedatafield] nvarchar(100),
  [description] nvarchar(250),
  [entityname] nvarchar(100),
  [isactive] bit,
  [parentemissionsource] uniqueidentifier NOT NULL,
  [scope] int,
  [sourcedatafield] nvarchar(100),
  [sourcedatafield2] nvarchar(100),
  [sourcedatavalue] nvarchar(100),
  [sourcedatavalue2] nvarchar(100),
  [sourceviewid] nvarchar(100)
)
GO

CREATE TABLE [EstimationFactor] (
  [estimationfactorId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [description] nvarchar(250),
  [documentationreference] nvarchar(255),
  [factorlibrary] uniqueidentifier,
  [factorvalue] decimal(14,2),
  [factorvalueunit] uniqueidentifier,
  [origincorrelationid] nvarchar(100),
  [subtype] nvarchar(100),
  [type] nvarchar(100),
  [unit] uniqueidentifier NOT NULL
)
GO

CREATE TABLE [Facility] (
  [facilityId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [addresscity] nvarchar(100),
  [addresscountryisocode] nvarchar(3),
  [addresscounty] nvarchar(100),
  [addressstateprovince] nvarchar(100),
  [addressstreet1] nvarchar(250),
  [addressstreet2] nvarchar(250),
  [addresszippostalcode] nvarchar(20),
  [latitude] nvarchar(100),
  [longitude] nvarchar(100),
  [origincorrelationid] nvarchar(100)
)
GO

CREATE TABLE [FacilityUsageDetail] (
  [facilityannualdetailId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [year] nvarchar(100),
  [area] int,
  [areaunit] uniqueidentifier NOT NULL,
  [headcount] int,
  [name] nvarchar(100),
  [origincorrelationid] nvarchar(100),
  [activeperiodend] dateTime,
  [activeperiodstart] dateTime,
  [description] nvarchar(500),
  [facilityusagedetails] nvarchar(100),
  [leasedorowned] int DEFAULT 'Leased: 575440000, Owned: 575440001',
  [lessee] nvarchar(100),
  [lessor] nvarchar(100),
  [percentusage] decimal(14,2)
)
GO

CREATE TABLE [FactorLibrary] (
  [calculationlibraryId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [description] nvarchar(500),
  [documentationreference] nvarchar(255),
  [librarytype] int,
  [origincorrelationid] nvarchar(100),
  [version] nvarchar(100),
  [year] nvarchar(100),
  [type] int
)
GO

CREATE TABLE [FactorMapping] (
  [emissionlookupId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [calculationlibraryid] uniqueidentifier NOT NULL,
  [description] nvarchar(500),
  [factorid] uniqueidentifier NOT NULL DEFAULT 'NEWID()',
  [factoridType] nvarchar(100),
  [referencedata4id] uniqueidentifier,
  [referencedata4idType] nvarchar(100),
  [referencedataid] uniqueidentifier,
  [referencedataidType] nvarchar(100),
  [referencedata3id] uniqueidentifier,
  [referencedata3idType] nvarchar(100),
  [referencedata2id] uniqueidentifier,
  [referencedata2idType] nvarchar(100),
  [origincorrelationid] nvarchar(100)
)
GO

CREATE TABLE [FuelType] (
  [fueltypeId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [description] nvarchar(250),
  [origincorrelationid] nvarchar(100)
)
GO

CREATE TABLE [FugitiveEmission] (
  [fugitiveemissionId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [TTLInSeconds] int,
  [partitionId] nvarchar(100),
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [name] nvarchar(100),
  [consumptionenddate] dateTime,
  [consumptionstartdate] dateTime,
  [cost] decimal(14,2),
  [costunit] uniqueidentifier NOT NULL,
  [dataqualitytype] int,
  [description] nvarchar(100),
  [evidence] nvarchar(250),
  [facilityid] uniqueidentifier NOT NULL,
  [facilityusagedetailid] uniqueidentifier NOT NULL,
  [greenhousegas] uniqueidentifier NOT NULL,
  [industrialprocesstypeid] uniqueidentifier NOT NULL,
  [leasedassetcategory] int,
  [organizationalunitid] uniqueidentifier NOT NULL,
  [quantity] decimal(14,2),
  [quantityunit] uniqueidentifier NOT NULL,
  [origincorrelationid] nvarchar(100),
  [transactiondate] dateTime,
  [spendtypeid] uniqueidentifier NOT NULL,
  [valuechainpartnerid] uniqueidentifier NOT NULL,
  [goodsquantity] decimal(14,2),
  [goodsunit] uniqueidentifier NOT NULL
)
GO

CREATE TABLE [GreenhouseGas] (
  [greenhousegasId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [category] int,
  [datafield] nvarchar(100),
  [description] nvarchar(500),
  [gwpfactor] decimal(14,2)
)
GO

CREATE TABLE [IndustrialProcess] (
  [industrialprocessId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [TTLInSeconds] int,
  [partitionId] nvarchar(100),
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [name] nvarchar(100),
  [consumptionenddate] dateTime,
  [consumptionstartdate] dateTime,
  [cost] decimal(14,2),
  [costunit] uniqueidentifier NOT NULL,
  [dataqualitytype] int,
  [description] nvarchar(100),
  [evidence] nvarchar(250),
  [facilityid] uniqueidentifier NOT NULL,
  [industrialprocesstypeid] uniqueidentifier NOT NULL,
  [organizationalunitid] uniqueidentifier NOT NULL,
  [quantity] decimal(14,2),
  [quantityunit] uniqueidentifier NOT NULL,
  [origincorrelationid] nvarchar(100),
  [transactiondate] dateTime
)
GO

CREATE TABLE [IndustrialProcessType] (
  [industrialprocesstypeId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [description] nvarchar(250),
  [origincorrelationid] nvarchar(100)
)
GO

CREATE TABLE [Industry] (
  [industryId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [industrynum] nvarchar(10)
)
GO

CREATE TABLE [IndustryClassification] (
  [industryclassificationId] uniqueidentifier PRIMARY KEY NOT NULL,
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [industrynum] nvarchar(10),
  [industryname] nvarchar(200),
  [organizationalprofile] uniqueidentifier NOT NULL,
  [subindustryid] uniqueidentifier,
  [subindustryname] nvarchar(200)
)
GO

CREATE TABLE [Material] (
  [materialId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [description] nvarchar(250),
  [origincorrelationid] nvarchar(100)
)
GO

CREATE TABLE [MobileCombustion] (
  [mobilecombustionId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [TTLInSeconds] int,
  [partitionId] nvarchar(100),
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [name] nvarchar(100),
  [consumptionenddate] dateTime,
  [consumptionstartdate] dateTime,
  [cost] decimal(14,2),
  [costunit] uniqueidentifier NOT NULL,
  [dataqualitytype] int,
  [description] nvarchar(100),
  [distance] decimal(14,2),
  [distanceunit] uniqueidentifier NOT NULL,
  [evidence] nvarchar(250),
  [facilityid] uniqueidentifier NOT NULL,
  [facilityusagedetailid] uniqueidentifier NOT NULL,
  [fuelquantity] decimal(14,2),
  [fuelquantityunit] uniqueidentifier NOT NULL,
  [fueltypeid] uniqueidentifier NOT NULL,
  [industrialprocesstypeid] uniqueidentifier NOT NULL,
  [leasedassetcategory] int,
  [organizationalunitid] uniqueidentifier NOT NULL,
  [quantity] decimal(14,2),
  [quantityunit] uniqueidentifier NOT NULL,
  [origincorrelationid] nvarchar(100),
  [transactiondate] dateTime,
  [vehicletype] uniqueidentifier NOT NULL,
  [spendtypeid] uniqueidentifier NOT NULL,
  [valuechainpartnerid] uniqueidentifier NOT NULL,
  [goodsquantity] decimal(14,2),
  [goodsunit] uniqueidentifier NOT NULL
)
GO

CREATE TABLE [MonthlyRevenue] (
  [organizationalunitrevenueId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [year] nvarchar(100),
  [amount] decimal(14,2),
  [amount_Base] decimal(14,2),
  [month] int,
  [origincorrelationid] nvarchar(100),
  [sustainabilityorganizationalunit] uniqueidentifier
)
GO

CREATE TABLE [OrganizationalHierarchy] (
  [sustainabilityorganizationalhierarchyId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [effectiveenddatedateTime] dateTime,
  [effectivestartdate] dateTime,
  [organizationalunitid] uniqueidentifier NOT NULL,
  [parentid] uniqueidentifier NOT NULL,
  [origincorrelationid] nvarchar(100)
)
GO

CREATE TABLE [OrganizationalProfile] (
  [organizationalprofileId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [addressline1] nvarchar(100),
  [addressline2] nvarchar(100),
  [city] nvarchar(100),
  [companyProfileLogoBase64] nvarchar(max),
  [countryisocode] nvarchar(3),
  [latitude] nvarchar(100),
  [longitude] nvarchar(100),
  [postalcode] nvarchar(100),
  [reportingstartday] int,
  [reportingstartmonth] int,
  [stateprovince] nvarchar(100)
)
GO

CREATE TABLE [OrganizationalUnit] (
  [sustainabilityorganizationalunitId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [addresscity] nvarchar(100),
  [addresscountryisocode] nvarchar(3),
  [addresscounty] nvarchar(100),
  [addressstateprovince] nvarchar(100),
  [addressstreet1] nvarchar(250),
  [addressstreet2] nvarchar(250),
  [addresszippostalcode] nvarchar(20),
  [description] nvarchar(100),
  [latitude] nvarchar(100),
  [longitude] nvarchar(100),
  [organizationalunittype] int,
  [origincorrelationid] nvarchar(100)
)
GO

CREATE TABLE [PurchasedEnergy] (
  [purchasedenergyId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [TTLInSeconds] int,
  [partitionId] nvarchar(100),
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [name] nvarchar(100),
  [consumptionenddate] dateTime,
  [consumptionstartdate] dateTime,
  [contractualinstrumenttypeid] uniqueidentifier NOT NULL,
  [cost] decimal(14,2),
  [costunit] uniqueidentifier NOT NULL,
  [dataqualitytype] int,
  [description] nvarchar(100),
  [energyprovidername] nvarchar(100),
  [energytype] int,
  [evidence] nvarchar(250),
  [facilityid] uniqueidentifier NOT NULL,
  [facilityusagedetailid] uniqueidentifier NOT NULL,
  [isrenewable] bit,
  [leasedassetcategory] int,
  [meternumber] nvarchar(100),
  [organizationalunitid] uniqueidentifier NOT NULL,
  [quantity] decimal(14,2),
  [quantityunit] uniqueidentifier NOT NULL,
  [origincorrelationid] nvarchar(100),
  [transactiondate] dateTime,
  [spendtypeid] uniqueidentifier NOT NULL,
  [valuechainpartnerid] uniqueidentifier NOT NULL,
  [goodsquantity] decimal(14,2),
  [goodsunit] uniqueidentifier NOT NULL
)
GO

CREATE TABLE [PurchasedGoodAndService] (
  [purchasedgoodandserviceId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [TTLInSeconds] int,
  [partitionId] nvarchar(100),
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [name] nvarchar(100),
  [consumptionenddate] dateTime,
  [consumptionstartdate] dateTime,
  [cost] decimal(14,2),
  [costunit] uniqueidentifier NOT NULL,
  [dataqualitytype] int,
  [description] nvarchar(100),
  [evidence] nvarchar(250),
  [facilityid] uniqueidentifier NOT NULL,
  [goodsquantity] decimal(14,2),
  [goodsunit] uniqueidentifier NOT NULL,
  [organizationalunittype] int,
  [organizationalunitid] uniqueidentifier NOT NULL,
  [quantity] decimal(14,2),
  [quantityunit] uniqueidentifier NOT NULL,
  [origincorrelationid] nvarchar(100),
  [transactiondate] dateTime,
  [spendtypeid] uniqueidentifier NOT NULL,
  [valuechainpartnerid] uniqueidentifier NOT NULL
)
GO

CREATE TABLE [SpendType] (
  [spendtypeId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [description] nvarchar(250),
  [origincorrelationid] nvarchar(100),
  [emissionsourceid] uniqueidentifier NOT NULL,
  [subtype] nvarchar(100),
  [type] nvarchar(100)
)
GO

CREATE TABLE [StationaryCombustion] (
  [stationarycombustionId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [TTLInSeconds] int,
  [partitionId] nvarchar(100),
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [name] nvarchar(100),
  [consumptionenddate] dateTime,
  [consumptionstartdate] dateTime,
  [cost] decimal(14,2),
  [costunit] uniqueidentifier NOT NULL,
  [dataqualitytype] int,
  [description] nvarchar(100),
  [distance] decimal(14,2),
  [distanceunit] uniqueidentifier NOT NULL,
  [evidence] nvarchar(250),
  [facilityid] uniqueidentifier NOT NULL,
  [facilityusagedetailid] uniqueidentifier NOT NULL,
  [fueltypeid] uniqueidentifier NOT NULL,
  [industrialprocesstypeid] uniqueidentifier NOT NULL,
  [leasedassetcategory] int,
  [meternumber] nvarchar(100),
  [organizationalunitid] uniqueidentifier NOT NULL,
  [quantity] decimal(14,2),
  [quantityunit] uniqueidentifier NOT NULL,
  [origincorrelationid] nvarchar(100),
  [transactiondate] dateTime,
  [fuelquantity] decimal(14,2),
  [fuelquantityunit] uniqueidentifier NOT NULL,
  [goodsquantity] decimal(14,2),
  [goodsunit] uniqueidentifier NOT NULL,
  [spendtypeid] uniqueidentifier NOT NULL,
  [valuechainpartnerid] uniqueidentifier NOT NULL
)
GO

CREATE TABLE [Subindustry] (
  [subindustryId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [industry] uniqueidentifier NOT NULL,
  [subindustrynum] nvarchar(10)
)
GO

CREATE TABLE [TransportMode] (
  [transportmodeId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [description] nvarchar(250),
  [isSharedLoad] bit,
  [origincorrelationid] nvarchar(100)
)
GO

CREATE TABLE [TransportationAndDistribution] (
  [transportationanddistributionId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [TTLInSeconds] int,
  [partitionId] nvarchar(100),
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [name] nvarchar(100),
  [consumptionenddate] dateTime,
  [consumptionstartdate] dateTime,
  [cost] decimal(14,2),
  [costunit] uniqueidentifier NOT NULL,
  [dataqualitytype] int,
  [description] nvarchar(100),
  [distance] decimal(14,2),
  [distanceunit] uniqueidentifier NOT NULL,
  [evidence] nvarchar(250),
  [facilityid] uniqueidentifier NOT NULL,
  [fuelquantity] decimal(14,2),
  [fuelquantityunit] uniqueidentifier NOT NULL,
  [fueltypeid] uniqueidentifier NOT NULL,
  [goodsquantity] decimal(14,2),
  [goodsunit] uniqueidentifier NOT NULL,
  [industrialprocesstypeid] uniqueidentifier NOT NULL,
  [organizationalunitid] uniqueidentifier NOT NULL,
  [quantity] decimal(14,2),
  [quantityunit] uniqueidentifier NOT NULL,
  [origincorrelationid] nvarchar(100),
  [transactiondate] dateTime,
  [transportationanddistributiontype] int,
  [transportmode] uniqueidentifier NOT NULL,
  [vehicletype] uniqueidentifier NOT NULL,
  [spendtypeid] uniqueidentifier NOT NULL,
  [valuechainpartnerid] uniqueidentifier NOT NULL
)
GO

CREATE TABLE [Unit] (
  [unitId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [baseunit] uniqueidentifier,
  [conversionfactor] decimal(14,2),
  [isbaseunit] bit,
  [shouldValidateCreate] bit,
  [unitgroup] uniqueidentifier NOT NULL
)
GO

CREATE TABLE [UnitGroup] (
  [unitgroupId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [baseunit] uniqueidentifier,
  [description] nvarchar(250),
  [reportingunit] uniqueidentifier NOT NULL
)
GO

CREATE TABLE [ValueChainPartner] (
  [valuechainpartnerId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [addresscity] nvarchar(100),
  [addresscountryisocode] nvarchar(3),
  [addresscounty] nvarchar(100),
  [addressstateprovince] nvarchar(100),
  [addressstreet1] nvarchar(250),
  [addressstreet2] nvarchar(250),
  [addresszippostalcode] nvarchar(20),
  [companyregistrationnumber] nvarchar(100),
  [description] nvarchar(100),
  [origincorrelationid] nvarchar(100)
)
GO

CREATE TABLE [VehicleType] (
  [vehicletypeId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [statecode] int NOT NULL,
  [statuscode] int,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [timeZoneRuleVersionNumber] int,
  [UTCConversionTimeZoneCode] int,
  [name] nvarchar(100),
  [description] nvarchar(250),
  [isonroad] bit,
  [origincorrelationid] nvarchar(100)
)
GO

CREATE TABLE [WasteGeneratedInOperations] (
  [wastegeneratedinoperationsId] uniqueidentifier PRIMARY KEY NOT NULL DEFAULT 'NEWID()',
  [TTLInSeconds] int,
  [partitionId] nvarchar(100),
  [createdOn] dateTime,
  [modifiedOn] dateTime,
  [importSequenceNumber] int,
  [overriddenCreatedOn] dateTime,
  [name] nvarchar(100),
  [consumptionenddate] dateTime,
  [consumptionstartdate] dateTime,
  [cost] decimal(14,2),
  [costunit] uniqueidentifier NOT NULL,
  [dataqualitytype] int,
  [description] nvarchar(100),
  [disposalmethodid] uniqueidentifier NOT NULL,
  [distance] decimal(14,2),
  [distanceunit] uniqueidentifier NOT NULL,
  [evidence] nvarchar(250),
  [facilityid] uniqueidentifier NOT NULL,
  [fuelquantity] decimal(14,2),
  [fuelquantityunit] uniqueidentifier NOT NULL,
  [fueltypeid] uniqueidentifier NOT NULL,
  [industrialprocesstypeid] uniqueidentifier NOT NULL,
  [materialid] uniqueidentifier NOT NULL,
  [meternumber] nvarchar(100),
  [organizationalunitid] uniqueidentifier NOT NULL,
  [origincorrelationid] nvarchar(100),
  [quantity] decimal(14,2),
  [quantityunit] uniqueidentifier NOT NULL,
  [spendtypeid] uniqueidentifier NOT NULL,
  [transactiondate] dateTime,
  [transportmode] uniqueidentifier NOT NULL,
  [valuechainpartnerid] uniqueidentifier NOT NULL,
  [wastequantity] decimal(14,2),
  [wastequantityunit] uniqueidentifier NOT NULL
)
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'AccommodationType',
@level2type = N'Column', @level2name = 'accommodationtypeId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'AccommodationType',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'AccommodationType',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the Accommodation type. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'AccommodationType',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the Accommodation type. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'AccommodationType',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'AccommodationType',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'AccommodationType',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'AccommodationType',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'AccommodationType',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'AccommodationType',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Description of the accommodation type.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'AccommodationType',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'AccommodationType',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'businesstravelId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time to live in seconds.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'TTLInSeconds';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Logical partition id. A logical partition consists of a set of records with same partition id.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'partitionId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier associated with the accommodation type related to business travel.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'accommodationtypeid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier related to the business travel type. Used to identify emission factors.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'businesstraveltypeid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'End date of activity consumption.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'consumptionenddate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Start date of activity consumption.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'consumptionstartdate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Cost associated with activity data.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'cost';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unit associated with the cost quantity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'costunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'dataqualitytype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description to give additional detail to the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ISO code for the destination country/region.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'destinationcountryisocode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Quantity associated with distance activity which contributes to mobile combustion or supply chain travel.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'distance';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the unit associated with distance.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'distanceunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional field where evidence can be linked to an entity or attribute, if required.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'evidence';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for Facility associated with business travel.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'facilityid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier of the fuel consumption data associated with combustion or supply chain fuel usage.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'fuelquantity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier of the unit associated with fuel data.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'fuelquantityunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier of the fuel type associated with combustion or supply chain fuel usage.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'fueltypeid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Type of industrial process used to track and associate with activity data.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'industrialprocesstypeid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Number of nights in hotel for business travel accounting.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'nightstay';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unit associated with nights stay for business travel.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'nightstayunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the organizational unit associated with business travel.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'organizationalunitid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Generic quanity field associated with activity entities.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'quantity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unit associated with the quantity field.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'quantityunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Date associated with the actual date when the transaction occurred.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'transactiondate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reference to value chain partner or supplier associated with the transaction.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'valuechainpartnerid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the vehicle type associated with combustion or supply chain transportation activities.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravel',
@level2type = N'Column', @level2name = 'vehicletype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravelType',
@level2type = N'Column', @level2name = 'businesstraveltypeId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravelType',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravelType',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the BusinessTravelType. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravelType',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the BusinessTravelType. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravelType',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravelType',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravelType',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravelType',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravelType',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravelType',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description that provides additional detail about the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravelType',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'BusinessTravelType',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CapitalGood',
@level2type = N'Column', @level2name = 'capitalgoodId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time to live in seconds.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CapitalGood',
@level2type = N'Column', @level2name = 'TTLInSeconds';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Logical partition id. A logical partition consists of a set of records with same partition id.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CapitalGood',
@level2type = N'Column', @level2name = 'partitionId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CapitalGood',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CapitalGood',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CapitalGood',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CapitalGood',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CapitalGood',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'End date of activity consumption.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CapitalGood',
@level2type = N'Column', @level2name = 'consumptionenddate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Start date of activity consumption.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CapitalGood',
@level2type = N'Column', @level2name = 'consumptionstartdate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Cost associated with activity data.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CapitalGood',
@level2type = N'Column', @level2name = 'cost';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unit associated with the cost quantity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CapitalGood',
@level2type = N'Column', @level2name = 'costunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CapitalGood',
@level2type = N'Column', @level2name = 'dataqualitytype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description to give additional detail to the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CapitalGood',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional field where evidence can be linked to an entity or attribute, if required.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CapitalGood',
@level2type = N'Column', @level2name = 'evidence';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for Facility associated with business travel.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CapitalGood',
@level2type = N'Column', @level2name = 'facilityid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Type of industrial process used to track and associate with activity data.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CapitalGood',
@level2type = N'Column', @level2name = 'industrialprocesstypeid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the organizational unit associated with business travel.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CapitalGood',
@level2type = N'Column', @level2name = 'organizationalunitid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Generic quanity field associated with activity entities.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CapitalGood',
@level2type = N'Column', @level2name = 'quantity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unit associated with the quantity field.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CapitalGood',
@level2type = N'Column', @level2name = 'quantityunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CapitalGood',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Date associated with the actual date when the transaction occurred.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CapitalGood',
@level2type = N'Column', @level2name = 'transactiondate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the spend type associated with the capital good.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CapitalGood',
@level2type = N'Column', @level2name = 'spendtypeid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reference to value chain partner or supplier associated with the transaction.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CapitalGood',
@level2type = N'Column', @level2name = 'valuechainpartnerid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ContractualInstrumentType',
@level2type = N'Column', @level2name = 'contractualinstrumenttypeId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ContractualInstrumentType',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ContractualInstrumentType',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the ContractualInstrumentType. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ContractualInstrumentType',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the ContractualInstrumentType. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ContractualInstrumentType',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ContractualInstrumentType',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ContractualInstrumentType',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ContractualInstrumentType',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ContractualInstrumentType',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ContractualInstrumentType',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description that provides additional detail about the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ContractualInstrumentType',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Primary source used to generate the selected energy type. Sources are: Solar: 700610000, Wind: 700610001, Nuclear: 700610002, Hydro: 700610003, Other: 700610004',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ContractualInstrumentType',
@level2type = N'Column', @level2name = 'energysource';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ContractualInstrumentType',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reference to value chain partner or supplier associated with the transaction.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ContractualInstrumentType',
@level2type = N'Column', @level2name = 'valuechainpartnerid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CountryRegionMapping',
@level2type = N'Column', @level2name = 'countryregionmappingId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CountryRegionMapping',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CountryRegionMapping',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the CountryRegionMapping. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CountryRegionMapping',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the CountryRegionMapping. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CountryRegionMapping',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CountryRegionMapping',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CountryRegionMapping',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CountryRegionMapping',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CountryRegionMapping',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CountryRegionMapping',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ISO code of the country/region mapped to a group (region).',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CountryRegionMapping',
@level2type = N'Column', @level2name = 'countryisocode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Name of the group mapped to the country/region.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CountryRegionMapping',
@level2type = N'Column', @level2name = 'region';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'CountryRegionMapping',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'DisposalMethod',
@level2type = N'Column', @level2name = 'disposalmethodId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'DisposalMethod',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'DisposalMethod',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the DisposalMethode. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'DisposalMethod',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the DisposalMethod. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'DisposalMethod',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'DisposalMethod',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'DisposalMethod',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'DisposalMethod',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'DisposalMethod',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'DisposalMethod',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description that provides additional detail about the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'DisposalMethod',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'DisposalMethod',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'emissionId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time to live in seconds.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'TLInSeconds';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Logical partition id. A logical partition consists of a set of records with same partition id.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'partitionId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier of the activity linked to the emission.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'activity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Internal reference used to map an entity to the corresponding record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'activityentityname';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Internal reference used to map the entity to the corresponding record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'activityid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Category or reference data used for reporting purposes and populated during the calculation process.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'activityname';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date calculation occurred',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'calculationdate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Scope 3 category number.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'category';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The amount of the CH₄ factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'ch4';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The unit for the CH₄ amount.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'ch4unit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The amount of the CO₂ factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'co2';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	The amount of the CO₂ equivalent factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'co2e';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The amount of the CO₂ equivalent factor in metric tons.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'co2emt';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the unit associated with the emission.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'co2eunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The unit for the CO₂ factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'co2unit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'End date of activity consumption.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'consumptionenddate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Start date of activity consumption.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'consumptionstartdate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The three letter ISO code of the country/region.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'countryisocode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Emissions Source (Internal)',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'emissionsource';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Emissions source reference.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'emissionsourcev2';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the facility associated with mobile combustion.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'facilityid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The amount of hydrofluorocarbons factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'hfcs';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The unit for the hydrofluorocarbons factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'hfcsunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicates if it is a biogenic emission, or emission from a natural source.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'isbiogenic';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicates if emission calculation is market-based or considered a "net" calculation.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'ismarketbased';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'This information can make it easier to submit reports for public disclosure.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'latitude';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'This information can make it easier to submit reports for public disclosure.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'longitude';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The amount of the N₂O factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'n2o';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the unit associated with the emission.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'n2ounit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The amount of nitrogen trifluoride factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'nf3';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The unit for the NF₃ factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'nf3unit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the organizational unit associated with the emission..',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'organizationalunitid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Greenhouse gases associated with emissions that are not allocated in an individual category.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'otherghgs';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the unit associated with the emission.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'otherghgsunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The amount of perfluorocarbons factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'pfcs';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The unit for the perfluorocarbons factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'pfcsunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Emission scope as defined by the Greenhouse Gas Protocol. Scopes are: Scope 1: 700610000, Scope 2: 700610001, Scope 3: 700610002',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'scope';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The amount of sulfur hexafluoride factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'sf6';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The unit for SF₆ factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'sf6unit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Date associated with the actual date when the transaction occurred.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'transactiondate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Emission factor library used for emission calculations.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'calculationlibrary';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Emission factor used for emission calculations.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'emissionfactor';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Factor mapping used for emission calculations.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'emissionlookup';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Actual quantity used for emission calculation.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'actualquantity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Actual quantity unit used for emission calculation.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Emission',
@level2type = N'Column', @level2name = 'actualquantityunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'emissionfactorId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the EmissionFactor. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the EmissionFactor. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Unique identifier for Factor Library associated with Emission Factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'calculationlibraryId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The amount of the biogenic CO₂ factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'biogenicco2factor';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The unit for the biogenic CO₂ factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'biogenicco2factorunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The amount of the CH₄ factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'ch4';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The unit for the CH₄ amount.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'ch4unit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The amount of the CO₂ factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'co2';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	The amount of the CO₂ equivalent factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'co2e';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the unit associated with the emission.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'co2eunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The unit for the CO₂ factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'co2unit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description that provides additional detail about the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The documentation reference for the emission factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'documentationreference';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The amount of the heat content factor. (Deprecated)',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'heatcontent';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The unit for the heat content factor. (Deprecated)',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'heatcontentunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The amount of hydrofluorocarbons factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'hfcs';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The unit for the hydrofluorocarbons factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'hfcsunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicates if the type of fuel is biofuel or not.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'isbiofuel';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The amount of the N₂O factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'n2o';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the unit associated with the emission.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'n2ounit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Identifier for the emission factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'identifier';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The amount of nitrogen trifluoride factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'nf3';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The unit for the NF₃ factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'nf3unit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Greenhouse gases associated with emissions that are not allocated in an individual category.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'otherghgs';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the unit associated with the emission.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'otherghgsunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The amount of perfluorocarbons factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'pfcs';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The unit for the perfluorocarbons factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'pfcsunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The amount of sulfur hexafluoride factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'sf6';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The unit for SF₆ factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'sf6unit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The sub-type of the emission factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'subtype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The type of the emission factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'type';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The unit for the input data for the emission factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionFactor',
@level2type = N'Column', @level2name = 'unit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionsSource',
@level2type = N'Column', @level2name = 'emissionsourceId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionsSource',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionsSource',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the EmissionsSource. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionsSource',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the EmissionsSource. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionsSource',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionsSource',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionsSource',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionsSource',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionsSource',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Industry standard terminology as defined by the GHG Protocol',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionsSource',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description that provides additional detail about the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionsSource',
@level2type = N'Column', @level2name = 'activitytypedatafield';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description that provides additional detail about the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionsSource',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Internal reference used to map an entity to the corresponding record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionsSource',
@level2type = N'Column', @level2name = 'entityname';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Internal reference assigned during import.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionsSource',
@level2type = N'Column', @level2name = 'isactive';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Lookup to the parent emission source',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionsSource',
@level2type = N'Column', @level2name = 'parentemissionsource';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Emission scope as defined by the Greenhouse Gas Protocol. Scopes are: Scope 1: 700610000, Scope 2: 700610001, Scope 3: 700610002',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionsSource',
@level2type = N'Column', @level2name = 'scope';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional field entity for additional views.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionsSource',
@level2type = N'Column', @level2name = 'sourcedatafield';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Second optional field entity for additional views.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionsSource',
@level2type = N'Column', @level2name = 'sourcedatafield2';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The value of source data.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionsSource',
@level2type = N'Column', @level2name = 'sourcedatavalue';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The value of source data (Source data field 2).',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionsSource',
@level2type = N'Column', @level2name = 'sourcedatavalue2';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Optional entity for additional views',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EmissionsSource',
@level2type = N'Column', @level2name = 'sourceviewid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EstimationFactor',
@level2type = N'Column', @level2name = 'estimationfactorId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EstimationFactor',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EstimationFactor',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the EstimationFactor. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EstimationFactor',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the EstimationFactor. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EstimationFactor',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EstimationFactor',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EstimationFactor',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EstimationFactor',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EstimationFactor',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EstimationFactor',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description that provides additional detail about the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EstimationFactor',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The documentation reference for the estimation factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EstimationFactor',
@level2type = N'Column', @level2name = 'documentationreference';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Library associated with the estimation factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EstimationFactor',
@level2type = N'Column', @level2name = 'factorlibrary';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Factor value for the estimation factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EstimationFactor',
@level2type = N'Column', @level2name = 'factorvalue';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unit of the factor value associated with the estimation factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EstimationFactor',
@level2type = N'Column', @level2name = 'factorvalueunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EstimationFactor',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The sub-type of the emission factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EstimationFactor',
@level2type = N'Column', @level2name = 'subtype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The type of the emission factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EstimationFactor',
@level2type = N'Column', @level2name = 'type';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The unit for the input data for the emission factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EstimationFactor',
@level2type = N'Column', @level2name = 'unit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Facility',
@level2type = N'Column', @level2name = 'facilityId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Facility',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Facility',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the Facility. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Facility',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the Facility. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Facility',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Facility',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Facility',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Facility',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Facility',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Facility',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The city in which the facility resides.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Facility',
@level2type = N'Column', @level2name = 'addresscity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The three letter ISO code of the country/region.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Facility',
@level2type = N'Column', @level2name = 'addresscountryisocode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The county/region in which the facility resides.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Facility',
@level2type = N'Column', @level2name = 'addresscounty';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The state or province in which the facility resides.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Facility',
@level2type = N'Column', @level2name = 'addressstateprovince';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The street address including the number and street name of the facility.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Facility',
@level2type = N'Column', @level2name = 'addressstreet1';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Secondary street address information.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Facility',
@level2type = N'Column', @level2name = 'addressstreet2';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The zip or postal code in which the facility resides.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Facility',
@level2type = N'Column', @level2name = 'addresszippostalcode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'This information can make it easier to submit reports for public disclosure.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Facility',
@level2type = N'Column', @level2name = 'latitude';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'This information can make it easier to submit reports for public disclosure.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Facility',
@level2type = N'Column', @level2name = 'longitude';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Facility',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FacilityUsageDetail',
@level2type = N'Column', @level2name = 'facilityannualdetailId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FacilityUsageDetail',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FacilityUsageDetail',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the FacilityUsageDetail. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FacilityUsageDetail',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the FacilityUsageDetail. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FacilityUsageDetail',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FacilityUsageDetail',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FacilityUsageDetail',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FacilityUsageDetail',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FacilityUsageDetail',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FacilityUsageDetail',
@level2type = N'Column', @level2name = 'year';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	The physical space contained in a facility.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FacilityUsageDetail',
@level2type = N'Column', @level2name = 'area';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unit of measure used to describe the area of a space.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FacilityUsageDetail',
@level2type = N'Column', @level2name = 'areaunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The number of people who are employed at a given facility.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FacilityUsageDetail',
@level2type = N'Column', @level2name = 'headcount';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FacilityUsageDetail',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FacilityUsageDetail',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Usage of facility end',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FacilityUsageDetail',
@level2type = N'Column', @level2name = 'activeperiodend';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Usage of facility start',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FacilityUsageDetail',
@level2type = N'Column', @level2name = 'activeperiodstart';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description that provides additional detail about the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FacilityUsageDetail',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Details regarding facility usage',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FacilityUsageDetail',
@level2type = N'Column', @level2name = 'facilityusagedetails';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Classification of leased or owned facility',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FacilityUsageDetail',
@level2type = N'Column', @level2name = 'leasedorowned';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Name of the lessee',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FacilityUsageDetail',
@level2type = N'Column', @level2name = 'lessee';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Name of the lessor of the facility',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FacilityUsageDetail',
@level2type = N'Column', @level2name = 'lessor';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Percent of facility used for operations',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FacilityUsageDetail',
@level2type = N'Column', @level2name = 'percentusage';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorLibrary',
@level2type = N'Column', @level2name = 'calculationlibraryId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorLibrary',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorLibrary',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the FacilityUsageDetail. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorLibrary',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the FacilityUsageDetail. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorLibrary',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorLibrary',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorLibrary',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorLibrary',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorLibrary',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorLibrary',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description that provides additional detail about the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorLibrary',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The documentation reference for the factor library.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorLibrary',
@level2type = N'Column', @level2name = 'documentationreference';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Factor library type: estimation or emission. Libraries are: Emission factor library: 192350000, Estimation factor library: 192350001',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorLibrary',
@level2type = N'Column', @level2name = 'librarytype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorLibrary',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The version of the library.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorLibrary',
@level2type = N'Column', @level2name = 'version';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorLibrary',
@level2type = N'Column', @level2name = 'year';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Strings indicating the type of factor library. Types are: Custom: 700610000, Demo: 700610001, Standard: 700610002',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorLibrary',
@level2type = N'Column', @level2name = 'type';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorMapping',
@level2type = N'Column', @level2name = 'emissionlookupId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorMapping',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorMapping',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the FactorMapping. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorMapping',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the FactorMapping. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorMapping',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorMapping',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorMapping',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorMapping',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorMapping',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorMapping',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Factor library to which the lookup belongs.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorMapping',
@level2type = N'Column', @level2name = 'calculationlibraryid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description that provides additional detail about the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorMapping',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier of the factor associated with the factor mapping.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorMapping',
@level2type = N'Column', @level2name = 'factorid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier of the factor associated with the factor mapping.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorMapping',
@level2type = N'Column', @level2name = 'factoridType';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorMapping',
@level2type = N'Column', @level2name = 'referencedata4id';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorMapping',
@level2type = N'Column', @level2name = 'referencedata4idType';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorMapping',
@level2type = N'Column', @level2name = 'referencedataid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorMapping',
@level2type = N'Column', @level2name = 'referencedataidType';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorMapping',
@level2type = N'Column', @level2name = 'referencedata3id';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorMapping',
@level2type = N'Column', @level2name = 'referencedata3idType';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorMapping',
@level2type = N'Column', @level2name = 'referencedata2id';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorMapping',
@level2type = N'Column', @level2name = 'referencedata2idType';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FactorMapping',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FuelType',
@level2type = N'Column', @level2name = 'fueltypeId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FuelType',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FuelType',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the FuelType. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FuelType',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the FuelType. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FuelType',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FuelType',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FuelType',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FuelType',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FuelType',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FuelType',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description that provides additional detail about the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FuelType',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FuelType',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'fugitiveemissionId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time to live in seconds.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'TTLInSeconds';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Logical partition id. A logical partition consists of a set of records with same partition id.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'partitionId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'End date of activity consumption.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'consumptionenddate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Start date of activity consumption.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'consumptionstartdate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Cost associated with activity data.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'cost';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unit associated with the cost quantity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'costunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'dataqualitytype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description to give additional detail to the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional field where evidence can be linked to an entity or attribute, if required.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'evidence';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for Facility associated with business travel.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'facilityid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	The facility usage detail associated with this fugitive emission',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'facilityusagedetailid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Unique identifier for the greenhouse gas associated with the fugitive emission.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'greenhousegas';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Type of industrial process used to track and associate with activity data.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'industrialprocesstypeid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicator of classification of category. An empty value means this activity is in scope 1. Categories are: Scope 3 category 8: 700610000, Scope 3 category 13: 700610001',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'leasedassetcategory';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the organizational unit associated with business travel.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'organizationalunitid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Generic quanity field associated with activity entities.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'quantity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unit associated with the quantity field.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'quantityunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Date associated with the actual date when the transaction occurred.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'transactiondate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the spend type associated with the capital good.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'spendtypeid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reference to value chain partner or supplier associated with the transaction.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'valuechainpartnerid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The amount of goods associated with this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'goodsquantity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The unit of measurement for the goods quantity in record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FugitiveEmission',
@level2type = N'Column', @level2name = 'goodsunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'GreenhouseGas',
@level2type = N'Column', @level2name = 'greenhousegasId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'GreenhouseGas',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'GreenhouseGas',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the GreenhouseGas. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'GreenhouseGas',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the GreenhouseGas. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'GreenhouseGas',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'GreenhouseGas',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'GreenhouseGas',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'GreenhouseGas',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'GreenhouseGas',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'GreenhouseGas',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The category of greenhouse gas. Categories are: Perfluorocarbons (PFC): 700610000, 	Hydrofluorocarbons (HFC): 700610001, Sulfur Hexafluoride (SF₆): 700610002, 	Nitrogen Trifluoride (NF₃): 700610003, Non Fluorinated: 700610004',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'GreenhouseGas',
@level2type = N'Column', @level2name = 'category';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional field entity for additional views.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'GreenhouseGas',
@level2type = N'Column', @level2name = 'datafield';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description that provides additional detail about the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'GreenhouseGas',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Global warming potential factor.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'GreenhouseGas',
@level2type = N'Column', @level2name = 'gwpfactor';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcess',
@level2type = N'Column', @level2name = 'industrialprocessId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time to live in seconds.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcess',
@level2type = N'Column', @level2name = 'TTLInSeconds';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Logical partition id. A logical partition consists of a set of records with same partition id.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcess',
@level2type = N'Column', @level2name = 'partitionId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcess',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcess',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcess',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcess',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcess',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'End date of activity consumption.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcess',
@level2type = N'Column', @level2name = 'consumptionenddate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Start date of activity consumption.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcess',
@level2type = N'Column', @level2name = 'consumptionstartdate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Cost associated with activity data.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcess',
@level2type = N'Column', @level2name = 'cost';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unit associated with the cost quantity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcess',
@level2type = N'Column', @level2name = 'costunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcess',
@level2type = N'Column', @level2name = 'dataqualitytype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description to give additional detail to the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcess',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional field where evidence can be linked to an entity or attribute, if required.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcess',
@level2type = N'Column', @level2name = 'evidence';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for Facility associated with business travel.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcess',
@level2type = N'Column', @level2name = 'facilityid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Type of industrial process used to track and associate with activity data.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcess',
@level2type = N'Column', @level2name = 'industrialprocesstypeid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the organizational unit associated with business travel.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcess',
@level2type = N'Column', @level2name = 'organizationalunitid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Generic quanity field associated with activity entities.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcess',
@level2type = N'Column', @level2name = 'quantity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unit associated with the quantity field.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcess',
@level2type = N'Column', @level2name = 'quantityunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcess',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Date associated with the actual date when the transaction occurred.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcess',
@level2type = N'Column', @level2name = 'transactiondate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcessType',
@level2type = N'Column', @level2name = 'industrialprocesstypeId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcessType',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcessType',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the IndustrialProcessType. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcessType',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the IndustrialProcessType. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcessType',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcessType',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcessType',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcessType',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcessType',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcessType',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description that provides additional detail about the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcessType',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustrialProcessType',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Industry',
@level2type = N'Column', @level2name = 'industryId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Industry',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Industry',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the Industry. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Industry',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the Industry. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Industry',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Industry',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Industry',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Industry',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Industry',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Industry',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Contains the mapping to the industry classification code in the form of a range.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Industry',
@level2type = N'Column', @level2name = 'industrynum';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustryClassification',
@level2type = N'Column', @level2name = 'industryclassificationId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustryClassification',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustryClassification',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the IndustryClassification. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustryClassification',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the IndustryClassification. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustryClassification',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustryClassification',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustryClassification',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustryClassification',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustryClassification',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustryClassification',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Contains the mapping to the industry classification code in the form of a range.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustryClassification',
@level2type = N'Column', @level2name = 'industrynum';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Name of the industry.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustryClassification',
@level2type = N'Column', @level2name = 'industryname';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for Organizational Profile associated with Industry Classification.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustryClassification',
@level2type = N'Column', @level2name = 'organizationalprofile';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Subindustry classification code.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustryClassification',
@level2type = N'Column', @level2name = 'subindustryid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Name of the subindustry.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'IndustryClassification',
@level2type = N'Column', @level2name = 'subindustryname';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Material',
@level2type = N'Column', @level2name = 'materialId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Material',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Material',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the Material. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Material',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Reason for the status of the Material. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Material',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Material',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Material',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Material',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Material',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Material',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description that provides additional detail about the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Material',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Material',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'mobilecombustionId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time to live in seconds.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'TTLInSeconds';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Logical partition id. A logical partition consists of a set of records with same partition id.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'partitionId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'End date of activity consumption.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'consumptionenddate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Start date of activity consumption.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'consumptionstartdate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Cost associated with activity data.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'cost';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unit associated with the cost quantity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'costunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'dataqualitytype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description to give additional detail to the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Quantity associated with distance activity which contributes to mobile combustion or supply chain travel.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'distance';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the unit associated with distance.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'distanceunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional field where evidence can be linked to an entity or attribute, if required.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'evidence';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for Facility associated with business travel.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'facilityid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	The facility usage detail associated with this fugitive emission',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'facilityusagedetailid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier of the fuel consumption data associated with combustion or supply chain fuel usage.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'fuelquantity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier of the unit associated with fuel data.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'fuelquantityunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier of the fuel type associated with combustion or supply chain fuel usage.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'fueltypeid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Type of industrial process used to track and associate with activity data.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'industrialprocesstypeid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicator of classification of category. An empty value means this activity is in scope 1. Categories are: Scope 3 category 8: 700610000, Scope 3 category 13: 700610001',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'leasedassetcategory';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the organizational unit associated with business travel.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'organizationalunitid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Generic quanity field associated with activity entities.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'quantity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unit associated with the quantity field.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'quantityunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Date associated with the actual date when the transaction occurred.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'transactiondate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the vehicle type associated with combustion or supply chain transportation activities.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'vehicletype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the spend type associated with the capital good.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'spendtypeid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reference to value chain partner or supplier associated with the transaction.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'valuechainpartnerid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The amount of goods associated with this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'goodsquantity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The unit of measurement for the goods quantity in record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MobileCombustion',
@level2type = N'Column', @level2name = 'goodsunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MonthlyRevenue',
@level2type = N'Column', @level2name = 'organizationalunitrevenueId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MonthlyRevenue',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MonthlyRevenue',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the Monthly Revenue. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MonthlyRevenue',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the Monthly Revenue. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MonthlyRevenue',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MonthlyRevenue',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MonthlyRevenue',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MonthlyRevenue',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MonthlyRevenue',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MonthlyRevenue',
@level2type = N'Column', @level2name = 'year';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Revenue amount for a defined year, month, and currency.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MonthlyRevenue',
@level2type = N'Column', @level2name = 'amount';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Value of the Revenue in base currency.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MonthlyRevenue',
@level2type = N'Column', @level2name = 'amount_Base';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The month associated to the revenue defined for a business unit. Months are: January: 700610000, February: 700610001, March: 700610002, April: 700610003, May: 700610004, June: 700610005, July: 700610006, August: 700610007, September: 700610008, October: 700610009, November: 700610010, December: 700610011 ',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MonthlyRevenue',
@level2type = N'Column', @level2name = 'month';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MonthlyRevenue',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the organizational unit associated with the monthly revenue.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'MonthlyRevenue',
@level2type = N'Column', @level2name = 'sustainabilityorganizationalunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalHierarchy',
@level2type = N'Column', @level2name = 'sustainabilityorganizationalhierarchyId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalHierarchy',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalHierarchy',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the OrganizationalHierarchy. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalHierarchy',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the OrganizationalHierarchy. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalHierarchy',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalHierarchy',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalHierarchy',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalHierarchy',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalHierarchy',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalHierarchy',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The date which represents the end of the reporting period.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalHierarchy',
@level2type = N'Column', @level2name = 'effectiveenddatedateTime';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The date which represents the start of the reporting period.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalHierarchy',
@level2type = N'Column', @level2name = 'effectivestartdate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the organizational unit associated with the organizational hierarchy.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalHierarchy',
@level2type = N'Column', @level2name = 'organizationalunitid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the organizational unit associated with the organizational hierarchy.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalHierarchy',
@level2type = N'Column', @level2name = 'parentid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalHierarchy',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalProfile',
@level2type = N'Column', @level2name = 'organizationalprofileId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalProfile',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalProfile',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the OrganizationalProfile. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalProfile',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the OrganizationalProfile. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalProfile',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalProfile',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalProfile',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalProfile',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalProfile',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalProfile',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	The street address, including the number and street name of the facility.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalProfile',
@level2type = N'Column', @level2name = 'addressline1';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Secondary street address information.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalProfile',
@level2type = N'Column', @level2name = 'addressline2';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The city in which the organization resides.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalProfile',
@level2type = N'Column', @level2name = 'city';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	The logo representing a company or organization.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalProfile',
@level2type = N'Column', @level2name = 'companyProfileLogoBase64';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	The three letter ISO code of the country/region.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalProfile',
@level2type = N'Column', @level2name = 'countryisocode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'This information can make it easier to submit reports for public disclosure.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalProfile',
@level2type = N'Column', @level2name = 'latitude';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'This information can make it easier to submit reports for public disclosure.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalProfile',
@level2type = N'Column', @level2name = 'longitude';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The zip or postal code in which the organization resides.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalProfile',
@level2type = N'Column', @level2name = 'postalcode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Day of the month. Days are: 1: 700610000, 2: 700610001, 3: 700610002, 4: 700610003, 5: 700610004, 6: 700610005, 7: 700610006, 8: 700610007, 9: 700610008, 10: 700610009, 11: 700610010, 12: 700610011, 13: 700610012, 14: 700610013, 15: 700610014, 16: 700610015, 17: 700610016, 18: 700610017, 19: 700610018, 20: 700610019, 21: 700610020, 22: 700610021, 23: 700610022, 24: 700610023, 25: 700610024, 26: 700610025, 27: 700610026, 28: 700610027, 29: 700610028, 30: 700610029, 31: 700610030',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalProfile',
@level2type = N'Column', @level2name = 'reportingstartday';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The month in which reporting begins for a given organization. Months are: January: 700610000, February: 700610001, March: 700610002, April: 700610003, May: 700610004, June: 700610005, July: 700610006, August: 700610007, September: 700610008, October: 700610009, November: 700610010, December: 700610011 ',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalProfile',
@level2type = N'Column', @level2name = 'reportingstartmonth';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The state or province in which the organization resides.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalProfile',
@level2type = N'Column', @level2name = 'stateprovince';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'sustainabilityorganizationalunitId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the OrganizationalUnit. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the OrganizationalUnit. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The city in which the facility resides.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'addresscity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The three letter ISO code of the country/region.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'addresscountryisocode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The county/region in which the facility resides.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'addresscounty';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The state or province in which the facility resides.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'addressstateprovince';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The street address including the number and street name of the facility.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'addressstreet1';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Secondary street address information.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'addressstreet2';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The zip or postal code in which the facility resides.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'addresszippostalcode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description to give additional detail to the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'This information can make it easier to submit reports for public disclosure.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'latitude';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'This information can make it easier to submit reports for public disclosure.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'longitude';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The type of organization unit selected. Units are: Unit: 700610000, Cost Center: 700610005, Division: 700610002, Department: 700610004, Team: 700610001, Group: 700610003 ',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'organizationalunittype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'OrganizationalUnit',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'purchasedenergyId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time to live in seconds.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'TTLInSeconds';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Logical partition id. A logical partition consists of a set of records with same partition id.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'partitionId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'End date of activity consumption.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'consumptionenddate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Start date of activity consumption.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'consumptionstartdate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the contractual instrument type associated with the purchased energy.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'contractualinstrumenttypeid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Cost associated with activity data.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'cost';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unit associated with the cost quantity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'costunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'dataqualitytype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description to give additional detail to the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Name of the energy provider.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'energyprovidername';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Energy sub-category within Scope 2 emissions. Energy sub-category are: Electricity: 700610000, Steam: 700610001, Heating: 700610002, Cooling: 700610003',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'energytype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional field where evidence can be linked to an entity or attribute, if required.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'evidence';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for Facility associated with business travel.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'facilityid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	The facility usage detail associated with this fugitive emission',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'facilityusagedetailid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Identifier used to determine if the source electric energy is renewable or not.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'isrenewable';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicator of classification of category. An empty value means this activity is in scope 1. Categories are: Scope 3 category 8: 700610000, Scope 3 category 13: 700610001',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'leasedassetcategory';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Field representing meter number for purchased energy entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'meternumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the organizational unit associated with business travel.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'organizationalunitid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Generic quanity field associated with activity entities.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'quantity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unit associated with the quantity field.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'quantityunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Date associated with the actual date when the transaction occurred.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'transactiondate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the spend type associated with the capital good.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'spendtypeid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reference to value chain partner or supplier associated with the transaction.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'valuechainpartnerid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The amount of goods associated with this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'goodsquantity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The unit of measurement for the goods quantity in record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedEnergy',
@level2type = N'Column', @level2name = 'goodsunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedGoodAndService',
@level2type = N'Column', @level2name = 'purchasedgoodandserviceId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time to live in seconds.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedGoodAndService',
@level2type = N'Column', @level2name = 'TTLInSeconds';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Logical partition id. A logical partition consists of a set of records with same partition id.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedGoodAndService',
@level2type = N'Column', @level2name = 'partitionId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedGoodAndService',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedGoodAndService',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedGoodAndService',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedGoodAndService',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedGoodAndService',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'End date of activity consumption.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedGoodAndService',
@level2type = N'Column', @level2name = 'consumptionenddate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Start date of activity consumption.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedGoodAndService',
@level2type = N'Column', @level2name = 'consumptionstartdate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Cost associated with activity data.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedGoodAndService',
@level2type = N'Column', @level2name = 'cost';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unit associated with the cost quantity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedGoodAndService',
@level2type = N'Column', @level2name = 'costunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedGoodAndService',
@level2type = N'Column', @level2name = 'dataqualitytype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description to give additional detail to the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedGoodAndService',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional field where evidence can be linked to an entity or attribute, if required.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedGoodAndService',
@level2type = N'Column', @level2name = 'evidence';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for Facility associated with business travel.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedGoodAndService',
@level2type = N'Column', @level2name = 'facilityid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The amount of goods associated with this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedGoodAndService',
@level2type = N'Column', @level2name = 'goodsquantity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The unit of measurement for the goods quantity in record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedGoodAndService',
@level2type = N'Column', @level2name = 'goodsunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The type of organization unit selected. Types are: Unit: 700610000, Cost Center: 700610005, Division: 700610002, Department: 700610004, Team: 700610001, Group: 700610003 ',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedGoodAndService',
@level2type = N'Column', @level2name = 'organizationalunittype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the organizational unit associated with the organizational hierarchy.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedGoodAndService',
@level2type = N'Column', @level2name = 'organizationalunitid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Generic quanity field associated with activity entities.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedGoodAndService',
@level2type = N'Column', @level2name = 'quantity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unit associated with the quantity field.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedGoodAndService',
@level2type = N'Column', @level2name = 'quantityunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedGoodAndService',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Date associated with the actual date when the transaction occurred.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedGoodAndService',
@level2type = N'Column', @level2name = 'transactiondate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the spend type associated with the capital good.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedGoodAndService',
@level2type = N'Column', @level2name = 'spendtypeid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reference to value chain partner or supplier associated with the transaction.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'PurchasedGoodAndService',
@level2type = N'Column', @level2name = 'valuechainpartnerid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'SpendType',
@level2type = N'Column', @level2name = 'spendtypeId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'SpendType',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'SpendType',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the SpendType. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'SpendType',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the SpendType. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'SpendType',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'SpendType',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'SpendType',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'SpendType',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'SpendType',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'SpendType',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description that provides additional detail about the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'SpendType',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'SpendType',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier related to emission source associated with spend type',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'SpendType',
@level2type = N'Column', @level2name = 'emissionsourceid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sub type associated with this spend type',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'SpendType',
@level2type = N'Column', @level2name = 'subtype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	type associated with this spend type.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'SpendType',
@level2type = N'Column', @level2name = 'type';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'stationarycombustionId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time to live in seconds.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'TTLInSeconds';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Logical partition id. A logical partition consists of a set of records with same partition id.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'partitionId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'End date of activity consumption.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'consumptionenddate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Start date of activity consumption.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'consumptionstartdate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Cost associated with activity data.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'cost';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unit associated with the cost quantity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'costunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'dataqualitytype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description to give additional detail to the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Quantity associated with distance activity which contributes to mobile combustion or supply chain travel.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'distance';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the unit associated with distance.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'distanceunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional field where evidence can be linked to an entity or attribute, if required.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'evidence';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for Facility associated with business travel.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'facilityid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	The facility usage detail associated with this fugitive emission',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'facilityusagedetailid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier of the fuel type associated with combustion or supply chain fuel usage.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'fueltypeid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Type of industrial process used to track and associate with activity data.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'industrialprocesstypeid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicator of classification of category. An empty value means this activity is in scope 1. Categories are: Scope 3 category 8: 700610000, Scope 3 category 13: 700610001',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'leasedassetcategory';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Field representing meter number for purchased energy entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'meternumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the organizational unit associated with business travel.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'organizationalunitid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Generic quanity field associated with activity entities.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'quantity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unit associated with the quantity field.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'quantityunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Date associated with the actual date when the transaction occurred.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'transactiondate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier of the fuel consumption data associated with combustion or supply chain fuel usage.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'fuelquantity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier of the unit associated with fuel data.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'fuelquantityunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The amount of goods associated with this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'goodsquantity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The unit of measurement for the goods quantity in record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'goodsunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the spend type associated with the capital good.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'spendtypeid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reference to value chain partner or supplier associated with the transaction.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'StationaryCombustion',
@level2type = N'Column', @level2name = 'valuechainpartnerid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Subindustry',
@level2type = N'Column', @level2name = 'subindustryId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Subindustry',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Subindustry',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the Subindustry. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Subindustry',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the Subindustry. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Subindustry',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Subindustry',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Subindustry',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Subindustry',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Subindustry',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Subindustry',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The unique identifier that relates to the industry ID.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Subindustry',
@level2type = N'Column', @level2name = 'industry';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Contains the mapping to the subindustry classification code in the form of a range.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Subindustry',
@level2type = N'Column', @level2name = 'subindustrynum';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportMode',
@level2type = N'Column', @level2name = 'transportmodeId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportMode',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportMode',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the SpendType. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportMode',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the SpendType. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportMode',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportMode',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportMode',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportMode',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportMode',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportMode',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description that provides additional detail about the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportMode',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicates whether the transport mode carries less than a full load, or is shared across external organizations',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportMode',
@level2type = N'Column', @level2name = 'isSharedLoad';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportMode',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'transportationanddistributionId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time to live in seconds.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'TTLInSeconds';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Logical partition id. A logical partition consists of a set of records with same partition id.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'partitionId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'End date of activity consumption.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'consumptionenddate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Start date of activity consumption.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'consumptionstartdate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Cost associated with activity data.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'cost';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unit associated with the cost quantity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'costunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'dataqualitytype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description to give additional detail to the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Quantity associated with distance activity which contributes to mobile combustion or supply chain travel.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'distance';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the unit associated with distance.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'distanceunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional field where evidence can be linked to an entity or attribute, if required.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'evidence';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for Facility associated with business travel.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'facilityid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier of the fuel consumption data associated with combustion or supply chain fuel usage.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'fuelquantity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier of the unit associated with fuel data.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'fuelquantityunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier of the fuel type associated with combustion or supply chain fuel usage.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'fueltypeid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The amount of goods associated with this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'goodsquantity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The unit of measurement for the goods quantity in record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'goodsunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Type of industrial process used to track and associate with activity data.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'industrialprocesstypeid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the organizational unit associated with business travel.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'organizationalunitid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Generic quanity field associated with activity entities.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'quantity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unit associated with the quantity field.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'quantityunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Date associated with the actual date when the transaction occurred.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'transactiondate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Marks what type of transportation and distribution this record represents. Transportation and distribution types are: Downstream: 700610001, Upstream: 700610000',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'transportationanddistributiontype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	The transport mode that corresponds to this transportation and distribution activity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'transportmode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the vehicle type associated with combustion or supply chain transportation activities.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'vehicletype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the spend type associated with the capital good.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'spendtypeid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reference to value chain partner or supplier associated with the transaction.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'TransportationAndDistribution',
@level2type = N'Column', @level2name = 'valuechainpartnerid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'unitId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the Unit. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the Unit. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The base or primary unit of the unit group that the entity belongs to.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'baseunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Conversion factor to convert to the base unit.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'conversionfactor';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Indicates whether the unit is the base unit for the associated unit group.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'isbaseunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Describes whether the plugin should run validations on create of a unit record. For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'shouldValidateCreate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	The ID of the unit group that the unit is associated with.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Unit',
@level2type = N'Column', @level2name = 'unitgroup';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'UnitGroup',
@level2type = N'Column', @level2name = 'unitgroupId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'UnitGroup',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'UnitGroup',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the UnitGroup. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'UnitGroup',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the UnitGroup. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'UnitGroup',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'UnitGroup',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'UnitGroup',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'UnitGroup',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'UnitGroup',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'UnitGroup',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The base or primary unit of the unit group that the entity belongs to.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'UnitGroup',
@level2type = N'Column', @level2name = 'baseunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description that provides additional detail about the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'UnitGroup',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the unit associated with the unit group which will be used in reports.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'UnitGroup',
@level2type = N'Column', @level2name = 'reportingunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ValueChainPartner',
@level2type = N'Column', @level2name = 'valuechainpartnerId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ValueChainPartner',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ValueChainPartner',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the ValueChainPartner. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ValueChainPartner',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the ValueChainPartner. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ValueChainPartner',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ValueChainPartner',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ValueChainPartner',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ValueChainPartner',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ValueChainPartner',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ValueChainPartner',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The city in which the facility resides.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ValueChainPartner',
@level2type = N'Column', @level2name = 'addresscity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The three letter ISO code of the country/region.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ValueChainPartner',
@level2type = N'Column', @level2name = 'addresscountryisocode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The county/region in which the facility resides.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ValueChainPartner',
@level2type = N'Column', @level2name = 'addresscounty';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The state or province in which the facility resides.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ValueChainPartner',
@level2type = N'Column', @level2name = 'addressstateprovince';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The street address including the number and street name of the facility.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ValueChainPartner',
@level2type = N'Column', @level2name = 'addressstreet1';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Secondary street address information.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ValueChainPartner',
@level2type = N'Column', @level2name = 'addressstreet2';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The zip or postal code in which the facility resides.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ValueChainPartner',
@level2type = N'Column', @level2name = 'addresszippostalcode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier that is related to the value chain partner.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ValueChainPartner',
@level2type = N'Column', @level2name = 'companyregistrationnumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description to give additional detail to the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ValueChainPartner',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'ValueChainPartner',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'VehicleType',
@level2type = N'Column', @level2name = 'vehicletypeId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'VehicleType',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'VehicleType',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Status of the UnitGroup. Codes are: Active: 0, Inactive: 1',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'VehicleType',
@level2type = N'Column', @level2name = 'statecode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reason for the status of the UnitGroup. Codes are: Active: 1, Inactive: 2',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'VehicleType',
@level2type = N'Column', @level2name = 'statuscode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'VehicleType',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'VehicleType',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'For internal use only.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'VehicleType',
@level2type = N'Column', @level2name = 'timeZoneRuleVersionNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time zone code that was in use when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'VehicleType',
@level2type = N'Column', @level2name = 'UTCConversionTimeZoneCode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'VehicleType',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description that provides additional detail about the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'VehicleType',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Identifier for the vehicle classification used in mobile combustion and needed for correct emission identification.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'VehicleType',
@level2type = N'Column', @level2name = 'isonroad';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'VehicleType',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for entity instances',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'wastegeneratedinoperationsId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Time to live in seconds.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'TTLInSeconds';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Logical partition id. A logical partition consists of a set of records with same partition id.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'partitionId';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was created.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'createdOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time when the record was modified.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'modifiedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Sequence number of the import that created this record.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'importSequenceNumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Date and time that the record was migrated.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'overriddenCreatedOn';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'The name of the custom entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'End date of activity consumption.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'consumptionenddate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Start date of activity consumption.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'consumptionstartdate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Cost associated with activity data.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'cost';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unit associated with the cost quantity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'costunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'dataqualitytype';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional description to give additional detail to the entity or attribute.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Method of waste disposal, such as compost or recycle.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'disposalmethodid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Quantity associated with distance activity which contributes to mobile combustion or supply chain travel.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'distance';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the unit associated with distance.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'distanceunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Optional field where evidence can be linked to an entity or attribute, if required.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'evidence';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for Facility associated with business travel.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'facilityid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier of the fuel consumption data associated with combustion or supply chain fuel usage.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'fuelquantity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier of the unit associated with fuel data.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'fuelquantityunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier of the fuel type associated with combustion or supply chain fuel usage.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'fueltypeid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Type of industrial process used to track and associate with activity data.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'industrialprocesstypeid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Material of waste, such as aluminum.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'materialid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Field representing meter number for purchased energy entity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'meternumber';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the organizational unit associated with business travel.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'organizationalunitid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'An optional identifier to correlate record with data origin.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'origincorrelationid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Generic quanity field associated with activity entities.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'quantity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unit associated with the quantity field.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'quantityunit';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unique identifier for the spend type associated with the capital good.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'spendtypeid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	Date associated with the actual date when the transaction occurred.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'transactiondate';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = '	The transport mode that corresponds to this transportation and distribution activity.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'transportmode';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Reference to value chain partner or supplier associated with the transaction.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'valuechainpartnerid';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Quantity of waste to be used in calculation',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'wastequantity';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Unit associated with quantity of waste. Generally mass or volume.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'WasteGeneratedInOperations',
@level2type = N'Column', @level2name = 'wastequantityunit';
GO

ALTER TABLE [PurchasedEnergy] ADD FOREIGN KEY ([contractualinstrumenttypeid]) REFERENCES [ContractualInstrumentType] ([contractualinstrumenttypeId])
GO

ALTER TABLE [Unit] ADD FOREIGN KEY ([unitgroup]) REFERENCES [UnitGroup] ([unitgroupId])
GO

ALTER TABLE [PurchasedEnergy] ADD FOREIGN KEY ([costunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [PurchasedEnergy] ADD FOREIGN KEY ([facilityid]) REFERENCES [Facility] ([facilityId])
GO

ALTER TABLE [PurchasedEnergy] ADD FOREIGN KEY ([facilityusagedetailid]) REFERENCES [FacilityUsageDetail] ([facilityannualdetailId])
GO

ALTER TABLE [PurchasedEnergy] ADD FOREIGN KEY ([organizationalunitid]) REFERENCES [OrganizationalUnit] ([sustainabilityorganizationalunitId])
GO

ALTER TABLE [PurchasedEnergy] ADD FOREIGN KEY ([quantityunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [PurchasedEnergy] ADD FOREIGN KEY ([spendtypeid]) REFERENCES [SpendType] ([spendtypeId])
GO

ALTER TABLE [PurchasedEnergy] ADD FOREIGN KEY ([valuechainpartnerid]) REFERENCES [ValueChainPartner] ([valuechainpartnerId])
GO

ALTER TABLE [PurchasedEnergy] ADD FOREIGN KEY ([goodsunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [ContractualInstrumentType] ADD FOREIGN KEY ([valuechainpartnerid]) REFERENCES [ValueChainPartner] ([valuechainpartnerId])
GO

ALTER TABLE [UnitGroup] ADD FOREIGN KEY ([reportingunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [FacilityUsageDetail] ADD FOREIGN KEY ([areaunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [SpendType] ADD FOREIGN KEY ([emissionsourceid]) REFERENCES [EmissionsSource] ([emissionsourceId])
GO

ALTER TABLE [StationaryCombustion] ADD FOREIGN KEY ([costunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [StationaryCombustion] ADD FOREIGN KEY ([distanceunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [StationaryCombustion] ADD FOREIGN KEY ([facilityid]) REFERENCES [Facility] ([facilityId])
GO

ALTER TABLE [StationaryCombustion] ADD FOREIGN KEY ([facilityusagedetailid]) REFERENCES [FacilityUsageDetail] ([facilityannualdetailId])
GO

ALTER TABLE [StationaryCombustion] ADD FOREIGN KEY ([quantityunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [StationaryCombustion] ADD FOREIGN KEY ([organizationalunitid]) REFERENCES [OrganizationalUnit] ([sustainabilityorganizationalunitId])
GO

ALTER TABLE [StationaryCombustion] ADD FOREIGN KEY ([valuechainpartnerid]) REFERENCES [ValueChainPartner] ([valuechainpartnerId])
GO

ALTER TABLE [StationaryCombustion] ADD FOREIGN KEY ([spendtypeid]) REFERENCES [SpendType] ([spendtypeId])
GO

ALTER TABLE [StationaryCombustion] ADD FOREIGN KEY ([goodsunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [StationaryCombustion] ADD FOREIGN KEY ([fueltypeid]) REFERENCES [FuelType] ([fueltypeId])
GO

ALTER TABLE [IndustrialProcess] ADD FOREIGN KEY ([industrialprocesstypeid]) REFERENCES [IndustrialProcessType] ([industrialprocesstypeId])
GO

ALTER TABLE [IndustrialProcess] ADD FOREIGN KEY ([organizationalunitid]) REFERENCES [OrganizationalUnit] ([sustainabilityorganizationalunitId])
GO

ALTER TABLE [IndustrialProcess] ADD FOREIGN KEY ([quantityunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [IndustrialProcess] ADD FOREIGN KEY ([costunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [IndustrialProcess] ADD FOREIGN KEY ([facilityid]) REFERENCES [Facility] ([facilityId])
GO

ALTER TABLE [StationaryCombustion] ADD FOREIGN KEY ([industrialprocesstypeid]) REFERENCES [IndustrialProcessType] ([industrialprocesstypeId])
GO

ALTER TABLE [StationaryCombustion] ADD FOREIGN KEY ([fuelquantityunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [MobileCombustion] ADD FOREIGN KEY ([goodsunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [MobileCombustion] ADD FOREIGN KEY ([costunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [MobileCombustion] ADD FOREIGN KEY ([fuelquantityunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [MobileCombustion] ADD FOREIGN KEY ([quantityunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [MobileCombustion] ADD FOREIGN KEY ([distanceunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [MobileCombustion] ADD FOREIGN KEY ([fueltypeid]) REFERENCES [FuelType] ([fueltypeId])
GO

ALTER TABLE [MobileCombustion] ADD FOREIGN KEY ([industrialprocesstypeid]) REFERENCES [IndustrialProcessType] ([industrialprocesstypeId])
GO

ALTER TABLE [MobileCombustion] ADD FOREIGN KEY ([organizationalunitid]) REFERENCES [OrganizationalUnit] ([sustainabilityorganizationalunitId])
GO

ALTER TABLE [MobileCombustion] ADD FOREIGN KEY ([vehicletype]) REFERENCES [VehicleType] ([vehicletypeId])
GO

ALTER TABLE [MobileCombustion] ADD FOREIGN KEY ([spendtypeid]) REFERENCES [SpendType] ([spendtypeId])
GO

ALTER TABLE [MobileCombustion] ADD FOREIGN KEY ([valuechainpartnerid]) REFERENCES [ValueChainPartner] ([valuechainpartnerId])
GO

ALTER TABLE [MobileCombustion] ADD FOREIGN KEY ([facilityid]) REFERENCES [Facility] ([facilityId])
GO

ALTER TABLE [MobileCombustion] ADD FOREIGN KEY ([facilityusagedetailid]) REFERENCES [FacilityUsageDetail] ([facilityannualdetailId])
GO

ALTER TABLE [FugitiveEmission] ADD FOREIGN KEY ([costunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [FugitiveEmission] ADD FOREIGN KEY ([quantityunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [FugitiveEmission] ADD FOREIGN KEY ([goodsunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [FugitiveEmission] ADD FOREIGN KEY ([facilityusagedetailid]) REFERENCES [FacilityUsageDetail] ([facilityannualdetailId])
GO

ALTER TABLE [FugitiveEmission] ADD FOREIGN KEY ([facilityid]) REFERENCES [Facility] ([facilityId])
GO

ALTER TABLE [FugitiveEmission] ADD FOREIGN KEY ([industrialprocesstypeid]) REFERENCES [IndustrialProcessType] ([industrialprocesstypeId])
GO

ALTER TABLE [FugitiveEmission] ADD FOREIGN KEY ([organizationalunitid]) REFERENCES [OrganizationalUnit] ([sustainabilityorganizationalunitId])
GO

ALTER TABLE [FugitiveEmission] ADD FOREIGN KEY ([spendtypeid]) REFERENCES [SpendType] ([spendtypeId])
GO

ALTER TABLE [FugitiveEmission] ADD FOREIGN KEY ([valuechainpartnerid]) REFERENCES [ValueChainPartner] ([valuechainpartnerId])
GO

ALTER TABLE [CapitalGood] ADD FOREIGN KEY ([costunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [CapitalGood] ADD FOREIGN KEY ([quantityunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [CapitalGood] ADD FOREIGN KEY ([spendtypeid]) REFERENCES [SpendType] ([spendtypeId])
GO

ALTER TABLE [CapitalGood] ADD FOREIGN KEY ([valuechainpartnerid]) REFERENCES [ValueChainPartner] ([valuechainpartnerId])
GO

ALTER TABLE [CapitalGood] ADD FOREIGN KEY ([organizationalunitid]) REFERENCES [OrganizationalUnit] ([sustainabilityorganizationalunitId])
GO

ALTER TABLE [CapitalGood] ADD FOREIGN KEY ([industrialprocesstypeid]) REFERENCES [IndustrialProcessType] ([industrialprocesstypeId])
GO

ALTER TABLE [CapitalGood] ADD FOREIGN KEY ([facilityid]) REFERENCES [Facility] ([facilityId])
GO

ALTER TABLE [TransportationAndDistribution] ADD FOREIGN KEY ([spendtypeid]) REFERENCES [SpendType] ([spendtypeId])
GO

ALTER TABLE [TransportationAndDistribution] ADD FOREIGN KEY ([valuechainpartnerid]) REFERENCES [ValueChainPartner] ([valuechainpartnerId])
GO

ALTER TABLE [TransportationAndDistribution] ADD FOREIGN KEY ([costunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [TransportationAndDistribution] ADD FOREIGN KEY ([distanceunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [TransportationAndDistribution] ADD FOREIGN KEY ([goodsunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [TransportationAndDistribution] ADD FOREIGN KEY ([fueltypeid]) REFERENCES [FuelType] ([fueltypeId])
GO

ALTER TABLE [TransportationAndDistribution] ADD FOREIGN KEY ([fuelquantityunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [TransportationAndDistribution] ADD FOREIGN KEY ([facilityid]) REFERENCES [Facility] ([facilityId])
GO

ALTER TABLE [TransportationAndDistribution] ADD FOREIGN KEY ([industrialprocesstypeid]) REFERENCES [IndustrialProcessType] ([industrialprocesstypeId])
GO

ALTER TABLE [TransportationAndDistribution] ADD FOREIGN KEY ([quantityunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [TransportationAndDistribution] ADD FOREIGN KEY ([vehicletype]) REFERENCES [VehicleType] ([vehicletypeId])
GO

ALTER TABLE [TransportationAndDistribution] ADD FOREIGN KEY ([transportmode]) REFERENCES [TransportMode] ([transportmodeId])
GO

ALTER TABLE [PurchasedGoodAndService] ADD FOREIGN KEY ([valuechainpartnerid]) REFERENCES [ValueChainPartner] ([valuechainpartnerId])
GO

ALTER TABLE [PurchasedGoodAndService] ADD FOREIGN KEY ([spendtypeid]) REFERENCES [SpendType] ([spendtypeId])
GO

ALTER TABLE [PurchasedGoodAndService] ADD FOREIGN KEY ([quantityunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [PurchasedGoodAndService] ADD FOREIGN KEY ([goodsunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [PurchasedGoodAndService] ADD FOREIGN KEY ([costunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [PurchasedGoodAndService] ADD FOREIGN KEY ([facilityid]) REFERENCES [Facility] ([facilityId])
GO

ALTER TABLE [BusinessTravel] ADD FOREIGN KEY ([facilityid]) REFERENCES [Facility] ([facilityId])
GO

ALTER TABLE [BusinessTravel] ADD FOREIGN KEY ([fuelquantityunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [BusinessTravel] ADD FOREIGN KEY ([nightstayunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [BusinessTravel] ADD FOREIGN KEY ([quantityunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [BusinessTravel] ADD FOREIGN KEY ([distanceunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [BusinessTravel] ADD FOREIGN KEY ([costunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [BusinessTravel] ADD FOREIGN KEY ([fueltypeid]) REFERENCES [FuelType] ([fueltypeId])
GO

ALTER TABLE [BusinessTravel] ADD FOREIGN KEY ([industrialprocesstypeid]) REFERENCES [IndustrialProcessType] ([industrialprocesstypeId])
GO

ALTER TABLE [BusinessTravel] ADD FOREIGN KEY ([organizationalunitid]) REFERENCES [OrganizationalUnit] ([sustainabilityorganizationalunitId])
GO

ALTER TABLE [BusinessTravel] ADD FOREIGN KEY ([vehicletype]) REFERENCES [VehicleType] ([vehicletypeId])
GO

ALTER TABLE [BusinessTravel] ADD FOREIGN KEY ([valuechainpartnerid]) REFERENCES [ValueChainPartner] ([valuechainpartnerId])
GO

ALTER TABLE [BusinessTravel] ADD FOREIGN KEY ([accommodationtypeid]) REFERENCES [AccommodationType] ([accommodationtypeId])
GO

ALTER TABLE [BusinessTravel] ADD FOREIGN KEY ([businesstraveltypeid]) REFERENCES [BusinessTravelType] ([businesstraveltypeId])
GO

ALTER TABLE [Emission] ADD FOREIGN KEY ([actualquantityunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [Emission] ADD FOREIGN KEY ([sf6unit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [Emission] ADD FOREIGN KEY ([emissionfactor]) REFERENCES [EmissionFactor] ([emissionfactorId])
GO

ALTER TABLE [Emission] ADD FOREIGN KEY ([emissionlookup]) REFERENCES [FactorMapping] ([emissionlookupId])
GO

ALTER TABLE [Emission] ADD FOREIGN KEY ([pfcsunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [Emission] ADD FOREIGN KEY ([otherghgsunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [Emission] ADD FOREIGN KEY ([nf3unit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [Emission] ADD FOREIGN KEY ([n2ounit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [Emission] ADD FOREIGN KEY ([hfcsunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [Emission] ADD FOREIGN KEY ([co2unit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [Emission] ADD FOREIGN KEY ([co2eunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [Emission] ADD FOREIGN KEY ([ch4unit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [Emission] ADD FOREIGN KEY ([facilityid]) REFERENCES [Facility] ([facilityId])
GO

ALTER TABLE [Emission] ADD FOREIGN KEY ([organizationalunitid]) REFERENCES [OrganizationalUnit] ([sustainabilityorganizationalunitId])
GO

ALTER TABLE [EstimationFactor] ADD FOREIGN KEY ([factorvalueunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [EstimationFactor] ADD FOREIGN KEY ([unit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [EmissionFactor] ADD FOREIGN KEY ([ch4unit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [EmissionFactor] ADD FOREIGN KEY ([co2eunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [EmissionFactor] ADD FOREIGN KEY ([co2unit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [EmissionFactor] ADD FOREIGN KEY ([heatcontentunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [EmissionFactor] ADD FOREIGN KEY ([hfcsunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [EmissionFactor] ADD FOREIGN KEY ([n2ounit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [EmissionFactor] ADD FOREIGN KEY ([nf3unit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [EmissionFactor] ADD FOREIGN KEY ([otherghgsunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [EmissionFactor] ADD FOREIGN KEY ([pfcsunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [EmissionFactor] ADD FOREIGN KEY ([sf6unit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [EmissionFactor] ADD FOREIGN KEY ([unit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [EmissionFactor] ADD FOREIGN KEY ([biogenicco2factorunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [Subindustry] ADD FOREIGN KEY ([industry]) REFERENCES [Industry] ([industryId])
GO

ALTER TABLE [IndustryClassification] ADD FOREIGN KEY ([subindustryid]) REFERENCES [Subindustry] ([subindustryId])
GO

ALTER TABLE [IndustryClassification] ADD FOREIGN KEY ([organizationalprofile]) REFERENCES [OrganizationalProfile] ([organizationalprofileId])
GO

ALTER TABLE [OrganizationalHierarchy] ADD FOREIGN KEY ([organizationalunitid]) REFERENCES [OrganizationalUnit] ([sustainabilityorganizationalunitId])
GO

ALTER TABLE [OrganizationalHierarchy] ADD FOREIGN KEY ([parentid]) REFERENCES [OrganizationalUnit] ([sustainabilityorganizationalunitId])
GO

ALTER TABLE [EmissionsSource] ADD FOREIGN KEY ([parentemissionsource]) REFERENCES [EmissionsSource] ([emissionsourceId])
GO

ALTER TABLE [WasteGeneratedInOperations] ADD FOREIGN KEY ([disposalmethodid]) REFERENCES [DisposalMethod] ([disposalmethodId])
GO

ALTER TABLE [WasteGeneratedInOperations] ADD FOREIGN KEY ([materialid]) REFERENCES [Material] ([materialId])
GO

ALTER TABLE [MonthlyRevenue] ADD FOREIGN KEY ([sustainabilityorganizationalunit]) REFERENCES [OrganizationalUnit] ([sustainabilityorganizationalunitId])
GO

ALTER TABLE [FugitiveEmission] ADD FOREIGN KEY ([greenhousegas]) REFERENCES [GreenhouseGas] ([greenhousegasId])
GO

ALTER TABLE [WasteGeneratedInOperations] ADD FOREIGN KEY ([costunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [WasteGeneratedInOperations] ADD FOREIGN KEY ([distanceunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [WasteGeneratedInOperations] ADD FOREIGN KEY ([fuelquantityunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [WasteGeneratedInOperations] ADD FOREIGN KEY ([quantityunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [WasteGeneratedInOperations] ADD FOREIGN KEY ([wastequantityunit]) REFERENCES [Unit] ([unitId])
GO

ALTER TABLE [WasteGeneratedInOperations] ADD FOREIGN KEY ([facilityid]) REFERENCES [Facility] ([facilityId])
GO

ALTER TABLE [WasteGeneratedInOperations] ADD FOREIGN KEY ([fueltypeid]) REFERENCES [FuelType] ([fueltypeId])
GO

ALTER TABLE [WasteGeneratedInOperations] ADD FOREIGN KEY ([organizationalunitid]) REFERENCES [OrganizationalUnit] ([sustainabilityorganizationalunitId])
GO

ALTER TABLE [WasteGeneratedInOperations] ADD FOREIGN KEY ([industrialprocesstypeid]) REFERENCES [IndustrialProcessType] ([industrialprocesstypeId])
GO

ALTER TABLE [WasteGeneratedInOperations] ADD FOREIGN KEY ([spendtypeid]) REFERENCES [SpendType] ([spendtypeId])
GO

ALTER TABLE [WasteGeneratedInOperations] ADD FOREIGN KEY ([transportmode]) REFERENCES [TransportMode] ([transportmodeId])
GO

ALTER TABLE [WasteGeneratedInOperations] ADD FOREIGN KEY ([valuechainpartnerid]) REFERENCES [ValueChainPartner] ([valuechainpartnerId])
GO

ALTER TABLE [Emission] ADD FOREIGN KEY ([emissionsourcev2]) REFERENCES [EmissionsSource] ([emissionsourceId])
GO

ALTER TABLE [Emission] ADD FOREIGN KEY ([calculationlibrary]) REFERENCES [FactorLibrary] ([calculationlibraryId])
GO

ALTER TABLE [EmissionFactor] ADD FOREIGN KEY ([calculationlibraryId]) REFERENCES [FactorLibrary] ([calculationlibraryId])
GO

ALTER TABLE [EstimationFactor] ADD FOREIGN KEY ([factorlibrary]) REFERENCES [FactorLibrary] ([calculationlibraryId])
GO
