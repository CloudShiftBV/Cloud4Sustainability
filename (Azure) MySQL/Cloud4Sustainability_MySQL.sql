CREATE TABLE `AccommodationType` (
  `accommodationtypeId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the Accommodation type. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the Accommodation type. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `description` varchar(250) COMMENT 'Description of the accommodation type.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.'
);

CREATE TABLE `BusinessTravel` (
  `businesstravelId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `TTLInSeconds` int COMMENT 'Time to live in seconds.',
  `partitionId` varchar(100) COMMENT 'Logical partition id. A logical partition consists of a set of records with same partition id.',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `accommodationtypeid` binary(16) NOT NULL COMMENT 'Unique identifier associated with the accommodation type related to business travel.',
  `businesstraveltypeid` binary(16) NOT NULL COMMENT 'Unique identifier related to the business travel type. Used to identify emission factors.',
  `consumptionenddate` dateTime COMMENT 'End date of activity consumption.',
  `consumptionstartdate` dateTime COMMENT 'Start date of activity consumption.',
  `cost` decimal(14,2) COMMENT '	Cost associated with activity data.',
  `costunit` binary(16) NOT NULL COMMENT 'Unit associated with the cost quantity.',
  `dataqualitytype` int COMMENT 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002',
  `description` varchar(100) COMMENT 'Optional description to give additional detail to the entity or attribute.',
  `destinationcountryisocode` varchar(3) COMMENT 'ISO code for the destination country/region.',
  `distance` decimal(14,2) COMMENT 'Quantity associated with distance activity which contributes to mobile combustion or supply chain travel.',
  `distanceunit` binary(16) NOT NULL COMMENT 'Unique identifier for the unit associated with distance.',
  `evidence` varchar(250) COMMENT 'Optional field where evidence can be linked to an entity or attribute, if required.',
  `facilityid` binary(16) NOT NULL COMMENT 'Unique identifier for Facility associated with business travel.',
  `fuelquantity` decimal(14,2) COMMENT 'Unique identifier of the fuel consumption data associated with combustion or supply chain fuel usage.',
  `fuelquantityunit` binary(16) NOT NULL COMMENT 'Unique identifier of the unit associated with fuel data.',
  `fueltypeid` binary(16) NOT NULL COMMENT 'Unique identifier of the fuel type associated with combustion or supply chain fuel usage.',
  `industrialprocesstypeid` binary(16) NOT NULL COMMENT 'Type of industrial process used to track and associate with activity data.',
  `nightstay` decimal(14,2) COMMENT 'Number of nights in hotel for business travel accounting.',
  `nightstayunit` binary(16) NOT NULL COMMENT 'Unit associated with nights stay for business travel.',
  `organizationalunitid` binary(16) NOT NULL COMMENT 'Unique identifier for the organizational unit associated with business travel.',
  `quantity` decimal(14,2) COMMENT 'Generic quanity field associated with activity entities.',
  `quantityunit` binary(16) NOT NULL COMMENT 'Unit associated with the quantity field.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.',
  `transactiondate` dateTime COMMENT '	Date associated with the actual date when the transaction occurred.',
  `valuechainpartnerid` binary(16) NOT NULL COMMENT 'Reference to value chain partner or supplier associated with the transaction.',
  `vehicletype` binary(16) NOT NULL COMMENT 'Unique identifier for the vehicle type associated with combustion or supply chain transportation activities.'
);

CREATE TABLE `BusinessTravelType` (
  `businesstraveltypeId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the BusinessTravelType. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the BusinessTravelType. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `description` varchar(250) COMMENT 'Optional description that provides additional detail about the entity or attribute.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.'
);

CREATE TABLE `CapitalGood` (
  `capitalgoodId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `TTLInSeconds` int COMMENT 'Time to live in seconds.',
  `partitionId` varchar(100) COMMENT 'Logical partition id. A logical partition consists of a set of records with same partition id.',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `consumptionenddate` dateTime COMMENT 'End date of activity consumption.',
  `consumptionstartdate` dateTime COMMENT 'Start date of activity consumption.',
  `cost` decimal(14,2) COMMENT '	Cost associated with activity data.',
  `costunit` binary(16) NOT NULL COMMENT 'Unit associated with the cost quantity.',
  `dataqualitytype` int COMMENT 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002',
  `description` varchar(100) COMMENT 'Optional description to give additional detail to the entity or attribute.',
  `evidence` varchar(250) COMMENT 'Optional field where evidence can be linked to an entity or attribute, if required.',
  `facilityid` binary(16) NOT NULL COMMENT 'Unique identifier for Facility associated with business travel.',
  `industrialprocesstypeid` binary(16) NOT NULL COMMENT 'Type of industrial process used to track and associate with activity data.',
  `organizationalunitid` binary(16) NOT NULL COMMENT 'Unique identifier for the organizational unit associated with business travel.',
  `quantity` decimal(14,2) COMMENT 'Generic quanity field associated with activity entities.',
  `quantityunit` binary(16) NOT NULL COMMENT 'Unit associated with the quantity field.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.',
  `transactiondate` dateTime COMMENT '	Date associated with the actual date when the transaction occurred.',
  `spendtypeid` binary(16) NOT NULL COMMENT 'Unique identifier for the spend type associated with the capital good.',
  `valuechainpartnerid` binary(16) NOT NULL COMMENT 'Reference to value chain partner or supplier associated with the transaction.'
);

CREATE TABLE `ContractualInstrumentType` (
  `contractualinstrumenttypeId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the ContractualInstrumentType. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the ContractualInstrumentType. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `description` varchar(250) COMMENT 'Optional description that provides additional detail about the entity or attribute.',
  `energysource` int COMMENT 'Primary source used to generate the selected energy type. Sources are: Solar: 700610000, Wind: 700610001, Nuclear: 700610002, Hydro: 700610003, Other: 700610004',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.',
  `valuechainpartnerid` binary(16) NOT NULL COMMENT 'Reference to value chain partner or supplier associated with the transaction.'
);

CREATE TABLE `CountryRegionMapping` (
  `countryregionmappingId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the CountryRegionMapping. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the CountryRegionMapping. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `countryisocode` varchar(3) COMMENT 'ISO code of the country/region mapped to a group (region).',
  `region` varchar(100) COMMENT 'Name of the group mapped to the country/region.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.'
);

CREATE TABLE `DisposalMethod` (
  `disposalmethodId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the DisposalMethode. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the DisposalMethod. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `description` varchar(250) COMMENT 'Optional description that provides additional detail about the entity or attribute.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.'
);

CREATE TABLE `Emission` (
  `emissionId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `TLInSeconds` int COMMENT 'Time to live in seconds.',
  `partitionId` varchar(100) COMMENT 'Logical partition id. A logical partition consists of a set of records with same partition id.',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `activity` varchar(255) COMMENT 'Unique identifier of the activity linked to the emission.',
  `activityentityname` varchar(100) COMMENT '	Internal reference used to map an entity to the corresponding record.',
  `activityid` varchar(100) COMMENT 'Internal reference used to map the entity to the corresponding record.',
  `activityname` varchar(255) COMMENT 'Category or reference data used for reporting purposes and populated during the calculation process.',
  `calculationdate` dateTime COMMENT 'Date calculation occurred',
  `category` varchar(255) COMMENT 'Scope 3 category number.',
  `ch4` decimal(14,2) COMMENT 'The amount of the CH₄ factor.',
  `ch4unit` binary(16) NOT NULL COMMENT 'The unit for the CH₄ amount.',
  `co2` decimal(14,2) COMMENT 'The amount of the CO₂ factor.',
  `co2e` decimal(14,2) COMMENT '	The amount of the CO₂ equivalent factor.',
  `co2emt` decimal(14,2) COMMENT 'The amount of the CO₂ equivalent factor in metric tons.',
  `co2eunit` binary(16) NOT NULL COMMENT 'Unique identifier for the unit associated with the emission.',
  `co2unit` binary(16) NOT NULL COMMENT 'The unit for the CO₂ factor.',
  `consumptionenddate` dateTime COMMENT 'End date of activity consumption.',
  `consumptionstartdate` dateTime COMMENT 'Start date of activity consumption.',
  `countryisocode` varchar(3) COMMENT 'The three letter ISO code of the country/region.',
  `emissionsource` varchar(255) COMMENT 'Emissions Source (Internal)',
  `emissionsourcev2` binary(16) NOT NULL COMMENT 'Emissions source reference.',
  `facilityid` binary(16) NOT NULL COMMENT 'Unique identifier for the facility associated with mobile combustion.',
  `hfcs` decimal(14,2) COMMENT 'The amount of hydrofluorocarbons factor.',
  `hfcsunit` binary(16) NOT NULL COMMENT 'The unit for the hydrofluorocarbons factor.',
  `isbiogenic` boolean COMMENT 'Indicates if it is a biogenic emission, or emission from a natural source.',
  `ismarketbased` boolean COMMENT 'Indicates if emission calculation is market-based or considered a "net" calculation.',
  `latitude` varchar(100) COMMENT 'This information can make it easier to submit reports for public disclosure.',
  `longitude` varchar(100) COMMENT 'This information can make it easier to submit reports for public disclosure.',
  `n2o` decimal(14,2) COMMENT 'The amount of the N₂O factor.',
  `n2ounit` binary(16) NOT NULL COMMENT 'Unique identifier for the unit associated with the emission.',
  `nf3` decimal(14,2) COMMENT 'The amount of nitrogen trifluoride factor.',
  `nf3unit` binary(16) NOT NULL COMMENT 'The unit for the NF₃ factor.',
  `organizationalunitid` binary(16) NOT NULL COMMENT 'Unique identifier for the organizational unit associated with the emission..',
  `otherghgs` decimal(14,2) COMMENT 'Greenhouse gases associated with emissions that are not allocated in an individual category.',
  `otherghgsunit` binary(16) NOT NULL COMMENT 'Unique identifier for the unit associated with the emission.',
  `pfcs` decimal(14,2) COMMENT 'The amount of perfluorocarbons factor.',
  `pfcsunit` binary(16) NOT NULL COMMENT 'The unit for the perfluorocarbons factor.',
  `scope` int COMMENT 'Emission scope as defined by the Greenhouse Gas Protocol. Scopes are: Scope 1: 700610000, Scope 2: 700610001, Scope 3: 700610002',
  `sf6` decimal(14,2) COMMENT 'The amount of sulfur hexafluoride factor.',
  `sf6unit` binary(16) NOT NULL COMMENT 'The unit for SF₆ factor.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.',
  `transactiondate` dateTime COMMENT '	Date associated with the actual date when the transaction occurred.',
  `calculationlibrary` binary(16) NOT NULL COMMENT '	Emission factor library used for emission calculations.',
  `emissionfactor` binary(16) NOT NULL COMMENT 'Emission factor used for emission calculations.',
  `emissionlookup` binary(16) NOT NULL COMMENT 'Factor mapping used for emission calculations.',
  `actualquantity` decimal(14,2) COMMENT 'Actual quantity used for emission calculation.',
  `actualquantityunit` binary(16) NOT NULL COMMENT 'Actual quantity unit used for emission calculation.'
);

CREATE TABLE `EmissionFactor` (
  `emissionfactorId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the EmissionFactor. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the EmissionFactor. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `calculationlibraryId` binary(16) NOT NULL COMMENT '	Unique identifier for Factor Library associated with Emission Factor.',
  `biogenicco2factor` decimal(14,2) COMMENT 'The amount of the biogenic CO₂ factor.',
  `biogenicco2factorunit` binary(16) NOT NULL COMMENT 'The unit for the biogenic CO₂ factor.',
  `ch4` decimal(14,2) COMMENT 'The amount of the CH₄ factor.',
  `ch4unit` binary(16) NOT NULL COMMENT 'The unit for the CH₄ amount.',
  `co2` decimal(14,2) COMMENT 'The amount of the CO₂ factor.',
  `co2e` decimal(14,2) COMMENT '	The amount of the CO₂ equivalent factor.',
  `co2eunit` binary(16) NOT NULL COMMENT 'Unique identifier for the unit associated with the emission.',
  `co2unit` binary(16) NOT NULL COMMENT 'The unit for the CO₂ factor.',
  `description` varchar(250) COMMENT 'Optional description that provides additional detail about the entity or attribute.',
  `documentationreference` varchar(250) COMMENT 'The documentation reference for the emission factor.',
  `heatcontent` decimal(14,2) COMMENT 'The amount of the heat content factor. (Deprecated)',
  `heatcontentunit` binary(16) NOT NULL COMMENT 'The unit for the heat content factor. (Deprecated)',
  `hfcs` decimal(14,2) COMMENT 'The amount of hydrofluorocarbons factor.',
  `hfcsunit` binary(16) NOT NULL COMMENT 'The unit for the hydrofluorocarbons factor.',
  `isbiofuel` boolean COMMENT 'Indicates if the type of fuel is biofuel or not.',
  `n2o` decimal(14,2) COMMENT 'The amount of the N₂O factor.',
  `n2ounit` binary(16) NOT NULL COMMENT 'Unique identifier for the unit associated with the emission.',
  `identifier` varchar(100) COMMENT 'Identifier for the emission factor.',
  `nf3` decimal(14,2) COMMENT 'The amount of nitrogen trifluoride factor.',
  `nf3unit` binary(16) NOT NULL COMMENT 'The unit for the NF₃ factor.',
  `otherghgs` decimal(14,2) COMMENT 'Greenhouse gases associated with emissions that are not allocated in an individual category.',
  `otherghgsunit` binary(16) NOT NULL COMMENT 'Unique identifier for the unit associated with the emission.',
  `pfcs` decimal(14,2) COMMENT 'The amount of perfluorocarbons factor.',
  `pfcsunit` binary(16) NOT NULL COMMENT 'The unit for the perfluorocarbons factor.',
  `sf6` decimal(14,2) COMMENT 'The amount of sulfur hexafluoride factor.',
  `sf6unit` binary(16) NOT NULL COMMENT 'The unit for SF₆ factor.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.',
  `subtype` varchar(100) COMMENT 'The sub-type of the emission factor.',
  `type` varchar(100) COMMENT 'The type of the emission factor.',
  `unit` binary(16) NOT NULL COMMENT 'The unit for the input data for the emission factor.'
);

CREATE TABLE `EmissionsSource` (
  `emissionsourceId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the EmissionsSource. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the EmissionsSource. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'Industry standard terminology as defined by the GHG Protocol',
  `activitytypedatafield` varchar(100) COMMENT 'Optional description that provides additional detail about the entity or attribute.',
  `description` varchar(250) COMMENT 'Optional description that provides additional detail about the entity or attribute.',
  `entityname` varchar(100) COMMENT 'Internal reference used to map an entity to the corresponding record.',
  `isactive` boolean COMMENT 'Internal reference assigned during import.',
  `parentemissionsource` binary(16) NOT NULL COMMENT 'Lookup to the parent emission source',
  `scope` int COMMENT 'Emission scope as defined by the Greenhouse Gas Protocol. Scopes are: Scope 1: 700610000, Scope 2: 700610001, Scope 3: 700610002',
  `sourcedatafield` varchar(100) COMMENT 'Optional field entity for additional views.',
  `sourcedatafield2` varchar(100) COMMENT 'Second optional field entity for additional views.',
  `sourcedatavalue` varchar(100) COMMENT 'The value of source data.',
  `sourcedatavalue2` varchar(100) COMMENT 'The value of source data (Source data field 2).',
  `sourceviewid` varchar(100) COMMENT '	Optional entity for additional views'
);

CREATE TABLE `EstimationFactor` (
  `estimationfactorId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the EstimationFactor. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the EstimationFactor. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `description` varchar(250) COMMENT 'Optional description that provides additional detail about the entity or attribute.',
  `documentationreference` varchar(255) COMMENT 'The documentation reference for the estimation factor.',
  `factorlibrary` binary(16) COMMENT 'Library associated with the estimation factor.',
  `factorvalue` decimal(14,2) COMMENT 'Factor value for the estimation factor.',
  `factorvalueunit` binary(16) COMMENT 'Unit of the factor value associated with the estimation factor.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.',
  `subtype` varchar(100) COMMENT 'The sub-type of the emission factor.',
  `type` varchar(100) COMMENT 'The type of the emission factor.',
  `unit` binary(16) NOT NULL COMMENT 'The unit for the input data for the emission factor.'
);

CREATE TABLE `Facility` (
  `facilityId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the Facility. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the Facility. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `addresscity` varchar(100) COMMENT 'The city in which the facility resides.',
  `addresscountryisocode` varchar(3) COMMENT 'The three letter ISO code of the country/region.',
  `addresscounty` varchar(100) COMMENT 'The county/region in which the facility resides.',
  `addressstateprovince` varchar(100) COMMENT 'The state or province in which the facility resides.',
  `addressstreet1` varchar(250) COMMENT 'The street address including the number and street name of the facility.',
  `addressstreet2` varchar(250) COMMENT 'Secondary street address information.',
  `addresszippostalcode` varchar(20) COMMENT 'The zip or postal code in which the facility resides.',
  `latitude` varchar(100) COMMENT 'This information can make it easier to submit reports for public disclosure.',
  `longitude` varchar(100) COMMENT 'This information can make it easier to submit reports for public disclosure.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.'
);

CREATE TABLE `FacilityUsageDetail` (
  `facilityannualdetailId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the FacilityUsageDetail. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the FacilityUsageDetail. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `year` varchar(100) COMMENT 'The name of the custom entity.',
  `area` int COMMENT '	The physical space contained in a facility.',
  `areaunit` binary(16) NOT NULL COMMENT 'Unit of measure used to describe the area of a space.',
  `headcount` int COMMENT 'The number of people who are employed at a given facility.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.',
  `activeperiodend` dateTime COMMENT 'Usage of facility end',
  `activeperiodstart` dateTime COMMENT 'Usage of facility start',
  `description` varchar(500) COMMENT 'Optional description that provides additional detail about the entity or attribute.',
  `facilityusagedetails` varchar(100) COMMENT 'Details regarding facility usage',
  `leasedorowned` int COMMENT 'Classification of leased or owned facility. Classifications are: Leased: 575440000, Owned: 575440001',
  `lessee` varchar(100) COMMENT 'Name of the lessee',
  `lessor` varchar(100) COMMENT 'Name of the lessor of the facility',
  `percentusage` decimal(14,2) COMMENT 'Percent of facility used for operations'
);

CREATE TABLE `FactorLibrary` (
  `calculationlibraryId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the FacilityUsageDetail. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the FacilityUsageDetail. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `description` varchar(500) COMMENT 'Optional description that provides additional detail about the entity or attribute.',
  `documentationreference` varchar(255) COMMENT 'The documentation reference for the factor library.',
  `librarytype` int COMMENT 'Factor library type: estimation or emission. Libraries are: Emission factor library: 192350000, Estimation factor library: 192350001',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.',
  `version` varchar(100) COMMENT 'The version of the library.',
  `year` varchar(100) COMMENT 'The name of the custom entity.',
  `type` int COMMENT 'Strings indicating the type of factor library. Types are: Custom: 700610000, Demo: 700610001, Standard: 700610002'
);

CREATE TABLE `FactorMapping` (
  `emissionlookupId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the FactorMapping. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the FactorMapping. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `calculationlibraryid` binary(16) NOT NULL COMMENT 'Factor library to which the lookup belongs.',
  `description` varchar(500) COMMENT 'Optional description that provides additional detail about the entity or attribute.',
  `factorid` binary(16) NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier of the factor associated with the factor mapping.',
  `factoridType` varchar(100) COMMENT 'Unique identifier of the factor associated with the factor mapping.',
  `referencedata4id` binary(16) COMMENT 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.',
  `referencedata4idType` varchar(100) COMMENT 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.',
  `referencedataid` binary(16) COMMENT 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.',
  `referencedataidType` varchar(100) COMMENT 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.',
  `referencedata3id` binary(16) COMMENT 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.',
  `referencedata3idType` varchar(100) COMMENT 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.',
  `referencedata2id` binary(16) COMMENT 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.',
  `referencedata2idType` varchar(100) COMMENT 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.'
);

CREATE TABLE `FuelType` (
  `fueltypeId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the FuelType. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the FuelType. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `description` varchar(250) COMMENT 'Optional description that provides additional detail about the entity or attribute.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.'
);

CREATE TABLE `FugitiveEmission` (
  `fugitiveemissionId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `TTLInSeconds` int COMMENT 'Time to live in seconds.',
  `partitionId` varchar(100) COMMENT 'Logical partition id. A logical partition consists of a set of records with same partition id.',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `consumptionenddate` dateTime COMMENT 'End date of activity consumption.',
  `consumptionstartdate` dateTime COMMENT 'Start date of activity consumption.',
  `cost` decimal(14,2) COMMENT '	Cost associated with activity data.',
  `costunit` binary(16) NOT NULL COMMENT 'Unit associated with the cost quantity.',
  `dataqualitytype` int COMMENT 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002',
  `description` varchar(100) COMMENT 'Optional description to give additional detail to the entity or attribute.',
  `evidence` varchar(250) COMMENT 'Optional field where evidence can be linked to an entity or attribute, if required.',
  `facilityid` binary(16) NOT NULL COMMENT 'Unique identifier for Facility associated with business travel.',
  `facilityusagedetailid` binary(16) NOT NULL COMMENT '	The facility usage detail associated with this fugitive emission',
  `greenhousegas` binary(16) NOT NULL COMMENT '	Unique identifier for the greenhouse gas associated with the fugitive emission.',
  `industrialprocesstypeid` binary(16) NOT NULL COMMENT 'Type of industrial process used to track and associate with activity data.',
  `leasedassetcategory` int COMMENT 'Indicator of classification of category. An empty value means this activity is in scope 1. Categories are: Scope 3 category 8: 700610000, Scope 3 category 13: 700610001',
  `organizationalunitid` binary(16) NOT NULL COMMENT 'Unique identifier for the organizational unit associated with business travel.',
  `quantity` decimal(14,2) COMMENT 'Generic quanity field associated with activity entities.',
  `quantityunit` binary(16) NOT NULL COMMENT 'Unit associated with the quantity field.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.',
  `transactiondate` dateTime COMMENT '	Date associated with the actual date when the transaction occurred.',
  `spendtypeid` binary(16) NOT NULL COMMENT 'Unique identifier for the spend type associated with the capital good.',
  `valuechainpartnerid` binary(16) NOT NULL COMMENT 'Reference to value chain partner or supplier associated with the transaction.',
  `goodsquantity` decimal(14,2) COMMENT 'The amount of goods associated with this record.',
  `goodsunit` binary(16) NOT NULL COMMENT 'The unit of measurement for the goods quantity in record.'
);

CREATE TABLE `GreenhouseGas` (
  `greenhousegasId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the GreenhouseGas. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the GreenhouseGas. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `category` int COMMENT 'The category of greenhouse gas. Categories are: Perfluorocarbons (PFC): 700610000, 	Hydrofluorocarbons (HFC): 700610001, Sulfur Hexafluoride (SF₆): 700610002, 	Nitrogen Trifluoride (NF₃): 700610003, Non Fluorinated: 700610004',
  `datafield` varchar(100) COMMENT 'Optional field entity for additional views.',
  `description` varchar(500) COMMENT 'Optional description that provides additional detail about the entity or attribute.',
  `gwpfactor` decimal(14,2) COMMENT '	Global warming potential factor.'
);

CREATE TABLE `IndustrialProcess` (
  `industrialprocessId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `TTLInSeconds` int COMMENT 'Time to live in seconds.',
  `partitionId` varchar(100) COMMENT 'Logical partition id. A logical partition consists of a set of records with same partition id.',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `consumptionenddate` dateTime COMMENT 'End date of activity consumption.',
  `consumptionstartdate` dateTime COMMENT 'Start date of activity consumption.',
  `cost` decimal(14,2) COMMENT '	Cost associated with activity data.',
  `costunit` binary(16) NOT NULL COMMENT 'Unit associated with the cost quantity.',
  `dataqualitytype` int COMMENT 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002',
  `description` varchar(100) COMMENT 'Optional description to give additional detail to the entity or attribute.',
  `evidence` varchar(250) COMMENT 'Optional field where evidence can be linked to an entity or attribute, if required.',
  `facilityid` binary(16) NOT NULL COMMENT 'Unique identifier for Facility associated with business travel.',
  `industrialprocesstypeid` binary(16) NOT NULL COMMENT 'Type of industrial process used to track and associate with activity data.',
  `organizationalunitid` binary(16) NOT NULL COMMENT 'Unique identifier for the organizational unit associated with business travel.',
  `quantity` decimal(14,2) COMMENT 'Generic quanity field associated with activity entities.',
  `quantityunit` binary(16) NOT NULL COMMENT 'Unit associated with the quantity field.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.',
  `transactiondate` dateTime COMMENT '	Date associated with the actual date when the transaction occurred.'
);

CREATE TABLE `IndustrialProcessType` (
  `industrialprocesstypeId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the IndustrialProcessType. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the IndustrialProcessType. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `description` varchar(250) COMMENT 'Optional description that provides additional detail about the entity or attribute.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.'
);

CREATE TABLE `Industry` (
  `industryId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the Industry. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the Industry. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `industrynum` varchar(10) COMMENT 'Contains the mapping to the industry classification code in the form of a range.'
);

CREATE TABLE `IndustryClassification` (
  `industryclassificationId` binary(16) PRIMARY KEY NOT NULL COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the IndustryClassification. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the IndustryClassification. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `industrynum` varchar(10) COMMENT 'Contains the mapping to the industry classification code in the form of a range.',
  `industryname` varchar(200) COMMENT 'Name of the industry.',
  `organizationalprofile` binary(16) NOT NULL COMMENT 'Unique identifier for Organizational Profile associated with Industry Classification.',
  `subindustryid` binary(16) COMMENT 'Subindustry classification code.',
  `subindustryname` varchar(200) COMMENT 'Name of the subindustry.'
);

CREATE TABLE `Material` (
  `materialId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the Material. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT '	Reason for the status of the Material. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `description` varchar(250) COMMENT 'Optional description that provides additional detail about the entity or attribute.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.'
);

CREATE TABLE `MobileCombustion` (
  `mobilecombustionId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `TTLInSeconds` int COMMENT 'Time to live in seconds.',
  `partitionId` varchar(100) COMMENT 'Logical partition id. A logical partition consists of a set of records with same partition id.',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `consumptionenddate` dateTime COMMENT 'End date of activity consumption.',
  `consumptionstartdate` dateTime COMMENT 'Start date of activity consumption.',
  `cost` decimal(14,2) COMMENT '	Cost associated with activity data.',
  `costunit` binary(16) NOT NULL COMMENT 'Unit associated with the cost quantity.',
  `dataqualitytype` int COMMENT 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002',
  `description` varchar(100) COMMENT 'Optional description to give additional detail to the entity or attribute.',
  `distance` decimal(14,2) COMMENT 'Quantity associated with distance activity which contributes to mobile combustion or supply chain travel.',
  `distanceunit` binary(16) NOT NULL COMMENT 'Unique identifier for the unit associated with distance.',
  `evidence` varchar(250) COMMENT 'Optional field where evidence can be linked to an entity or attribute, if required.',
  `facilityid` binary(16) NOT NULL COMMENT 'Unique identifier for Facility associated with business travel.',
  `facilityusagedetailid` binary(16) NOT NULL COMMENT '	The facility usage detail associated with this fugitive emission',
  `fuelquantity` decimal(14,2) COMMENT 'Unique identifier of the fuel consumption data associated with combustion or supply chain fuel usage.',
  `fuelquantityunit` binary(16) NOT NULL COMMENT 'Unique identifier of the unit associated with fuel data.',
  `fueltypeid` binary(16) NOT NULL COMMENT 'Unique identifier of the fuel type associated with combustion or supply chain fuel usage.',
  `industrialprocesstypeid` binary(16) NOT NULL COMMENT 'Type of industrial process used to track and associate with activity data.',
  `leasedassetcategory` int COMMENT 'Indicator of classification of category. An empty value means this activity is in scope 1. Categories are: Scope 3 category 8: 700610000, Scope 3 category 13: 700610001',
  `organizationalunitid` binary(16) NOT NULL COMMENT 'Unique identifier for the organizational unit associated with business travel.',
  `quantity` decimal(14,2) COMMENT 'Generic quanity field associated with activity entities.',
  `quantityunit` binary(16) NOT NULL COMMENT 'Unit associated with the quantity field.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.',
  `transactiondate` dateTime COMMENT '	Date associated with the actual date when the transaction occurred.',
  `vehicletype` binary(16) NOT NULL COMMENT 'Unique identifier for the vehicle type associated with combustion or supply chain transportation activities.',
  `spendtypeid` binary(16) NOT NULL COMMENT 'Unique identifier for the spend type associated with the capital good.',
  `valuechainpartnerid` binary(16) NOT NULL COMMENT 'Reference to value chain partner or supplier associated with the transaction.',
  `goodsquantity` decimal(14,2) COMMENT 'The amount of goods associated with this record.',
  `goodsunit` binary(16) NOT NULL COMMENT 'The unit of measurement for the goods quantity in record.'
);

CREATE TABLE `MonthlyRevenue` (
  `organizationalunitrevenueId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the Monthly Revenue. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the Monthly Revenue. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `year` varchar(100) COMMENT 'The name of the custom entity.',
  `amount` decimal(14,2) COMMENT 'Revenue amount for a defined year, month, and currency.',
  `amount_Base` decimal(14,2) COMMENT '	Value of the Revenue in base currency.',
  `month` int COMMENT 'The month associated to the revenue defined for a business unit. Months are: January: 700610000, February: 700610001, March: 700610002, April: 700610003, May: 700610004, June: 700610005, July: 700610006, August: 700610007, September: 700610008, October: 700610009, November: 700610010, December: 700610011 ',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.',
  `sustainabilityorganizationalunit` binary(16) COMMENT 'Unique identifier for the organizational unit associated with the monthly revenue.'
);

CREATE TABLE `OrganizationalHierarchy` (
  `sustainabilityorganizationalhierarchyId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the OrganizationalHierarchy. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the OrganizationalHierarchy. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `effectiveenddatedateTime` dateTime COMMENT 'The date which represents the end of the reporting period.',
  `effectivestartdate` dateTime COMMENT 'The date which represents the start of the reporting period.',
  `organizationalunitid` binary(16) NOT NULL COMMENT 'Unique identifier for the organizational unit associated with the organizational hierarchy.',
  `parentid` binary(16) NOT NULL COMMENT 'Unique identifier for the organizational unit associated with the organizational hierarchy.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.'
);

CREATE TABLE `OrganizationalProfile` (
  `organizationalprofileId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the OrganizationalProfile. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the OrganizationalProfile. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `addressline1` varchar(100) COMMENT '	The street address, including the number and street name of the facility.',
  `addressline2` varchar(100) COMMENT 'Secondary street address information.',
  `city` varchar(100) COMMENT 'The city in which the organization resides.',
  `companyProfileLogoBase64` varchar(max) COMMENT '	The logo representing a company or organization.',
  `countryisocode` varchar(3) COMMENT '	The three letter ISO code of the country/region.',
  `latitude` varchar(100) COMMENT 'This information can make it easier to submit reports for public disclosure.',
  `longitude` varchar(100) COMMENT 'This information can make it easier to submit reports for public disclosure.',
  `postalcode` varchar(100) COMMENT 'The zip or postal code in which the organization resides.',
  `reportingstartday` int COMMENT 'Day of the month. Days are: 1: 700610000, 2: 700610001, 3: 700610002, 4: 700610003, 5: 700610004, 6: 700610005, 7: 700610006, 8: 700610007, 9: 700610008, 10: 700610009, 11: 700610010, 12: 700610011, 13: 700610012, 14: 700610013, 15: 700610014, 16: 700610015, 17: 700610016, 18: 700610017, 19: 700610018, 20: 700610019, 21: 700610020, 22: 700610021, 23: 700610022, 24: 700610023, 25: 700610024, 26: 700610025, 27: 700610026, 28: 700610027, 29: 700610028, 30: 700610029, 31: 700610030',
  `reportingstartmonth` int COMMENT 'The month in which reporting begins for a given organization. Months are: January: 700610000, February: 700610001, March: 700610002, April: 700610003, May: 700610004, June: 700610005, July: 700610006, August: 700610007, September: 700610008, October: 700610009, November: 700610010, December: 700610011 ',
  `stateprovince` varchar(100) COMMENT 'The state or province in which the organization resides.'
);

CREATE TABLE `OrganizationalUnit` (
  `sustainabilityorganizationalunitId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the OrganizationalUnit. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the OrganizationalUnit. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `addresscity` varchar(100) COMMENT 'The city in which the facility resides.',
  `addresscountryisocode` varchar(3) COMMENT 'The three letter ISO code of the country/region.',
  `addresscounty` varchar(100) COMMENT 'The county/region in which the facility resides.',
  `addressstateprovince` varchar(100) COMMENT 'The state or province in which the facility resides.',
  `addressstreet1` varchar(250) COMMENT 'The street address including the number and street name of the facility.',
  `addressstreet2` varchar(250) COMMENT 'Secondary street address information.',
  `addresszippostalcode` varchar(20) COMMENT 'The zip or postal code in which the facility resides.',
  `description` varchar(100) COMMENT 'Optional description to give additional detail to the entity or attribute.',
  `latitude` varchar(100) COMMENT 'This information can make it easier to submit reports for public disclosure.',
  `longitude` varchar(100) COMMENT 'This information can make it easier to submit reports for public disclosure.',
  `organizationalunittype` int COMMENT 'The type of organization unit selected. Units are: Unit: 700610000, Cost Center: 700610005, Division: 700610002, Department: 700610004, Team: 700610001, Group: 700610003 ',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.'
);

CREATE TABLE `PurchasedEnergy` (
  `purchasedenergyId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `TTLInSeconds` int COMMENT 'Time to live in seconds.',
  `partitionId` varchar(100) COMMENT 'Logical partition id. A logical partition consists of a set of records with same partition id.',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `consumptionenddate` dateTime COMMENT 'End date of activity consumption.',
  `consumptionstartdate` dateTime COMMENT 'Start date of activity consumption.',
  `contractualinstrumenttypeid` binary(16) NOT NULL COMMENT 'Unique identifier for the contractual instrument type associated with the purchased energy.',
  `cost` decimal(14,2) COMMENT '	Cost associated with activity data.',
  `costunit` binary(16) NOT NULL COMMENT 'Unit associated with the cost quantity.',
  `dataqualitytype` int COMMENT 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002',
  `description` varchar(100) COMMENT 'Optional description to give additional detail to the entity or attribute.',
  `energyprovidername` varchar(100) COMMENT 'Name of the energy provider.',
  `energytype` int COMMENT 'Energy sub-category within Scope 2 emissions. Energy sub-category are: Electricity: 700610000, Steam: 700610001, Heating: 700610002, Cooling: 700610003',
  `evidence` varchar(250) COMMENT 'Optional field where evidence can be linked to an entity or attribute, if required.',
  `facilityid` binary(16) NOT NULL COMMENT 'Unique identifier for Facility associated with business travel.',
  `facilityusagedetailid` binary(16) NOT NULL COMMENT '	The facility usage detail associated with this fugitive emission',
  `isrenewable` boolean COMMENT 'Identifier used to determine if the source electric energy is renewable or not.',
  `leasedassetcategory` int COMMENT 'Indicator of classification of category. An empty value means this activity is in scope 1. Categories are: Scope 3 category 8: 700610000, Scope 3 category 13: 700610001',
  `meternumber` varchar(100) COMMENT 'Field representing meter number for purchased energy entity.',
  `organizationalunitid` binary(16) NOT NULL COMMENT 'Unique identifier for the organizational unit associated with business travel.',
  `quantity` decimal(14,2) COMMENT 'Generic quanity field associated with activity entities.',
  `quantityunit` binary(16) NOT NULL COMMENT 'Unit associated with the quantity field.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.',
  `transactiondate` dateTime COMMENT '	Date associated with the actual date when the transaction occurred.',
  `spendtypeid` binary(16) NOT NULL COMMENT 'Unique identifier for the spend type associated with the capital good.',
  `valuechainpartnerid` binary(16) NOT NULL COMMENT 'Reference to value chain partner or supplier associated with the transaction.',
  `goodsquantity` decimal(14,2) COMMENT 'The amount of goods associated with this record.',
  `goodsunit` binary(16) NOT NULL COMMENT 'The unit of measurement for the goods quantity in record.'
);

CREATE TABLE `PurchasedGoodAndService` (
  `purchasedgoodandserviceId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `TTLInSeconds` int COMMENT 'Time to live in seconds.',
  `partitionId` varchar(100) COMMENT 'Logical partition id. A logical partition consists of a set of records with same partition id.',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `consumptionenddate` dateTime COMMENT 'End date of activity consumption.',
  `consumptionstartdate` dateTime COMMENT 'Start date of activity consumption.',
  `cost` decimal(14,2) COMMENT '	Cost associated with activity data.',
  `costunit` binary(16) NOT NULL COMMENT 'Unit associated with the cost quantity.',
  `dataqualitytype` int COMMENT 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002',
  `description` varchar(100) COMMENT 'Optional description to give additional detail to the entity or attribute.',
  `evidence` varchar(250) COMMENT 'Optional field where evidence can be linked to an entity or attribute, if required.',
  `facilityid` binary(16) NOT NULL COMMENT 'Unique identifier for Facility associated with business travel.',
  `goodsquantity` decimal(14,2) COMMENT 'The amount of goods associated with this record.',
  `goodsunit` binary(16) NOT NULL COMMENT 'The unit of measurement for the goods quantity in record.',
  `organizationalunittype` int COMMENT 'The type of organization unit selected. Types are: Unit: 700610000, Cost Center: 700610005, Division: 700610002, Department: 700610004, Team: 700610001, Group: 700610003 ',
  `organizationalunitid` binary(16) NOT NULL COMMENT 'Unique identifier for the organizational unit associated with the organizational hierarchy.',
  `quantity` decimal(14,2) COMMENT 'Generic quanity field associated with activity entities.',
  `quantityunit` binary(16) NOT NULL COMMENT 'Unit associated with the quantity field.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.',
  `transactiondate` dateTime COMMENT '	Date associated with the actual date when the transaction occurred.',
  `spendtypeid` binary(16) NOT NULL COMMENT 'Unique identifier for the spend type associated with the capital good.',
  `valuechainpartnerid` binary(16) NOT NULL COMMENT 'Reference to value chain partner or supplier associated with the transaction.'
);

CREATE TABLE `SpendType` (
  `spendtypeId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the SpendType. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the SpendType. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `description` varchar(250) COMMENT 'Optional description that provides additional detail about the entity or attribute.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.',
  `emissionsourceid` binary(16) NOT NULL COMMENT 'Unique identifier related to emission source associated with spend type',
  `subtype` varchar(100) COMMENT 'Sub type associated with this spend type',
  `type` varchar(100) COMMENT '	type associated with this spend type.'
);

CREATE TABLE `StationaryCombustion` (
  `stationarycombustionId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `TTLInSeconds` int COMMENT 'Time to live in seconds.',
  `partitionId` varchar(100) COMMENT 'Logical partition id. A logical partition consists of a set of records with same partition id.',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `consumptionenddate` dateTime COMMENT 'End date of activity consumption.',
  `consumptionstartdate` dateTime COMMENT 'Start date of activity consumption.',
  `cost` decimal(14,2) COMMENT '	Cost associated with activity data.',
  `costunit` binary(16) NOT NULL COMMENT 'Unit associated with the cost quantity.',
  `dataqualitytype` int COMMENT 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002',
  `description` varchar(100) COMMENT 'Optional description to give additional detail to the entity or attribute.',
  `distance` decimal(14,2) COMMENT 'Quantity associated with distance activity which contributes to mobile combustion or supply chain travel.',
  `distanceunit` binary(16) NOT NULL COMMENT 'Unique identifier for the unit associated with distance.',
  `evidence` varchar(250) COMMENT 'Optional field where evidence can be linked to an entity or attribute, if required.',
  `facilityid` binary(16) NOT NULL COMMENT 'Unique identifier for Facility associated with business travel.',
  `facilityusagedetailid` binary(16) NOT NULL COMMENT '	The facility usage detail associated with this fugitive emission',
  `fueltypeid` binary(16) NOT NULL COMMENT 'Unique identifier of the fuel type associated with combustion or supply chain fuel usage.',
  `industrialprocesstypeid` binary(16) NOT NULL COMMENT 'Type of industrial process used to track and associate with activity data.',
  `leasedassetcategory` int COMMENT 'Indicator of classification of category. An empty value means this activity is in scope 1. Categories are: Scope 3 category 8: 700610000, Scope 3 category 13: 700610001',
  `meternumber` varchar(100) COMMENT 'Field representing meter number for purchased energy entity.',
  `organizationalunitid` binary(16) NOT NULL COMMENT 'Unique identifier for the organizational unit associated with business travel.',
  `quantity` decimal(14,2) COMMENT 'Generic quanity field associated with activity entities.',
  `quantityunit` binary(16) NOT NULL COMMENT 'Unit associated with the quantity field.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.',
  `transactiondate` dateTime COMMENT '	Date associated with the actual date when the transaction occurred.',
  `fuelquantity` decimal(14,2) COMMENT 'Unique identifier of the fuel consumption data associated with combustion or supply chain fuel usage.',
  `fuelquantityunit` binary(16) NOT NULL COMMENT 'Unique identifier of the unit associated with fuel data.',
  `goodsquantity` decimal(14,2) COMMENT 'The amount of goods associated with this record.',
  `goodsunit` binary(16) NOT NULL COMMENT 'The unit of measurement for the goods quantity in record.',
  `spendtypeid` binary(16) NOT NULL COMMENT 'Unique identifier for the spend type associated with the capital good.',
  `valuechainpartnerid` binary(16) NOT NULL COMMENT 'Reference to value chain partner or supplier associated with the transaction.'
);

CREATE TABLE `Subindustry` (
  `subindustryId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the Subindustry. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the Subindustry. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `industry` binary(16) NOT NULL COMMENT 'The unique identifier that relates to the industry ID.',
  `subindustrynum` varchar(10) COMMENT 'Contains the mapping to the subindustry classification code in the form of a range.'
);

CREATE TABLE `TransportMode` (
  `transportmodeId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the SpendType. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the SpendType. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `description` varchar(250) COMMENT 'Optional description that provides additional detail about the entity or attribute.',
  `isSharedLoad` boolean COMMENT 'Indicates whether the transport mode carries less than a full load, or is shared across external organizations',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.'
);

CREATE TABLE `TransportationAndDistribution` (
  `transportationanddistributionId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `TTLInSeconds` int COMMENT 'Time to live in seconds.',
  `partitionId` varchar(100) COMMENT 'Logical partition id. A logical partition consists of a set of records with same partition id.',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `consumptionenddate` dateTime COMMENT 'End date of activity consumption.',
  `consumptionstartdate` dateTime COMMENT 'Start date of activity consumption.',
  `cost` decimal(14,2) COMMENT '	Cost associated with activity data.',
  `costunit` binary(16) NOT NULL COMMENT 'Unit associated with the cost quantity.',
  `dataqualitytype` int COMMENT 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002',
  `description` varchar(100) COMMENT 'Optional description to give additional detail to the entity or attribute.',
  `distance` decimal(14,2) COMMENT 'Quantity associated with distance activity which contributes to mobile combustion or supply chain travel.',
  `distanceunit` binary(16) NOT NULL COMMENT 'Unique identifier for the unit associated with distance.',
  `evidence` varchar(250) COMMENT 'Optional field where evidence can be linked to an entity or attribute, if required.',
  `facilityid` binary(16) NOT NULL COMMENT 'Unique identifier for Facility associated with business travel.',
  `fuelquantity` decimal(14,2) COMMENT 'Unique identifier of the fuel consumption data associated with combustion or supply chain fuel usage.',
  `fuelquantityunit` binary(16) NOT NULL COMMENT 'Unique identifier of the unit associated with fuel data.',
  `fueltypeid` binary(16) NOT NULL COMMENT 'Unique identifier of the fuel type associated with combustion or supply chain fuel usage.',
  `goodsquantity` decimal(14,2) COMMENT 'The amount of goods associated with this record.',
  `goodsunit` binary(16) NOT NULL COMMENT 'The unit of measurement for the goods quantity in record.',
  `industrialprocesstypeid` binary(16) NOT NULL COMMENT 'Type of industrial process used to track and associate with activity data.',
  `organizationalunitid` binary(16) NOT NULL COMMENT 'Unique identifier for the organizational unit associated with business travel.',
  `quantity` decimal(14,2) COMMENT 'Generic quanity field associated with activity entities.',
  `quantityunit` binary(16) NOT NULL COMMENT 'Unit associated with the quantity field.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.',
  `transactiondate` dateTime COMMENT '	Date associated with the actual date when the transaction occurred.',
  `transportationanddistributiontype` int COMMENT 'Marks what type of transportation and distribution this record represents. Transportation and distribution types are: Downstream: 700610001, Upstream: 700610000',
  `transportmode` binary(16) NOT NULL COMMENT '	The transport mode that corresponds to this transportation and distribution activity.',
  `vehicletype` binary(16) NOT NULL COMMENT 'Unique identifier for the vehicle type associated with combustion or supply chain transportation activities.',
  `spendtypeid` binary(16) NOT NULL COMMENT 'Unique identifier for the spend type associated with the capital good.',
  `valuechainpartnerid` binary(16) NOT NULL COMMENT 'Reference to value chain partner or supplier associated with the transaction.'
);

CREATE TABLE `Unit` (
  `unitId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the Unit. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the Unit. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `baseunit` binary(16) COMMENT 'The base or primary unit of the unit group that the entity belongs to.',
  `conversionfactor` decimal(14,2) COMMENT 'Conversion factor to convert to the base unit.',
  `isbaseunit` boolean COMMENT 'Indicates whether the unit is the base unit for the associated unit group.',
  `shouldValidateCreate` boolean COMMENT 'Describes whether the plugin should run validations on create of a unit record. For internal use only.',
  `unitgroup` binary(16) NOT NULL COMMENT '	The ID of the unit group that the unit is associated with.'
);

CREATE TABLE `UnitGroup` (
  `unitgroupId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the UnitGroup. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the UnitGroup. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `baseunit` binary(16) COMMENT 'The base or primary unit of the unit group that the entity belongs to.',
  `description` varchar(250) COMMENT 'Optional description that provides additional detail about the entity or attribute.',
  `reportingunit` binary(16) NOT NULL COMMENT 'Unique identifier for the unit associated with the unit group which will be used in reports.'
);

CREATE TABLE `ValueChainPartner` (
  `valuechainpartnerId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the ValueChainPartner. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the ValueChainPartner. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `addresscity` varchar(100) COMMENT 'The city in which the facility resides.',
  `addresscountryisocode` varchar(3) COMMENT 'The three letter ISO code of the country/region.',
  `addresscounty` varchar(100) COMMENT 'The county/region in which the facility resides.',
  `addressstateprovince` varchar(100) COMMENT 'The state or province in which the facility resides.',
  `addressstreet1` varchar(250) COMMENT 'The street address including the number and street name of the facility.',
  `addressstreet2` varchar(250) COMMENT 'Secondary street address information.',
  `addresszippostalcode` varchar(20) COMMENT 'The zip or postal code in which the facility resides.',
  `companyregistrationnumber` varchar(100) COMMENT 'Unique identifier that is related to the value chain partner.',
  `description` varchar(100) COMMENT 'Optional description to give additional detail to the entity or attribute.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.'
);

CREATE TABLE `VehicleType` (
  `vehicletypeId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `statecode` int NOT NULL COMMENT 'Status of the UnitGroup. Codes are: Active: 0, Inactive: 1',
  `statuscode` int COMMENT 'Reason for the status of the UnitGroup. Codes are: Active: 1, Inactive: 2',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `timeZoneRuleVersionNumber` int COMMENT 'For internal use only.',
  `UTCConversionTimeZoneCode` int COMMENT 'Time zone code that was in use when the record was created.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `description` varchar(250) COMMENT 'Optional description that provides additional detail about the entity or attribute.',
  `isonroad` boolean COMMENT 'Identifier for the vehicle classification used in mobile combustion and needed for correct emission identification.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.'
);

CREATE TABLE `WasteGeneratedInOperations` (
  `wastegeneratedinoperationsId` binary(16) PRIMARY KEY NOT NULL DEFAULT "UUID_TO_BIN(UUID())" COMMENT 'Unique identifier for entity instances',
  `TTLInSeconds` int COMMENT 'Time to live in seconds.',
  `partitionId` varchar(100) COMMENT 'Logical partition id. A logical partition consists of a set of records with same partition id.',
  `createdOn` dateTime COMMENT 'Date and time when the record was created.',
  `modifiedOn` dateTime COMMENT 'Date and time when the record was modified.',
  `importSequenceNumber` int COMMENT 'Sequence number of the import that created this record.',
  `overriddenCreatedOn` dateTime COMMENT 'Date and time that the record was migrated.',
  `name` varchar(100) COMMENT 'The name of the custom entity.',
  `consumptionenddate` dateTime COMMENT 'End date of activity consumption.',
  `consumptionstartdate` dateTime COMMENT 'Start date of activity consumption.',
  `cost` decimal(14,2) COMMENT '	Cost associated with activity data.',
  `costunit` binary(16) NOT NULL COMMENT 'Unit associated with the cost quantity.',
  `dataqualitytype` int COMMENT 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002',
  `description` varchar(100) COMMENT 'Optional description to give additional detail to the entity or attribute.',
  `disposalmethodid` binary(16) NOT NULL COMMENT 'Method of waste disposal, such as compost or recycle.',
  `distance` decimal(14,2) COMMENT 'Quantity associated with distance activity which contributes to mobile combustion or supply chain travel.',
  `distanceunit` binary(16) NOT NULL COMMENT 'Unique identifier for the unit associated with distance.',
  `evidence` varchar(250) COMMENT 'Optional field where evidence can be linked to an entity or attribute, if required.',
  `facilityid` binary(16) NOT NULL COMMENT 'Unique identifier for Facility associated with business travel.',
  `fuelquantity` decimal(14,2) COMMENT 'Unique identifier of the fuel consumption data associated with combustion or supply chain fuel usage.',
  `fuelquantityunit` binary(16) NOT NULL COMMENT 'Unique identifier of the unit associated with fuel data.',
  `fueltypeid` binary(16) NOT NULL COMMENT 'Unique identifier of the fuel type associated with combustion or supply chain fuel usage.',
  `industrialprocesstypeid` binary(16) NOT NULL COMMENT 'Type of industrial process used to track and associate with activity data.',
  `materialid` binary(16) NOT NULL COMMENT 'Material of waste, such as aluminum.',
  `meternumber` varchar(100) COMMENT 'Field representing meter number for purchased energy entity.',
  `organizationalunitid` binary(16) NOT NULL COMMENT 'Unique identifier for the organizational unit associated with business travel.',
  `origincorrelationid` varchar(100) COMMENT 'An optional identifier to correlate record with data origin.',
  `quantity` decimal(14,2) COMMENT 'Generic quanity field associated with activity entities.',
  `quantityunit` binary(16) NOT NULL COMMENT 'Unit associated with the quantity field.',
  `spendtypeid` binary(16) NOT NULL COMMENT 'Unique identifier for the spend type associated with the capital good.',
  `transactiondate` dateTime COMMENT '	Date associated with the actual date when the transaction occurred.',
  `transportmode` binary(16) NOT NULL COMMENT '	The transport mode that corresponds to this transportation and distribution activity.',
  `valuechainpartnerid` binary(16) NOT NULL COMMENT 'Reference to value chain partner or supplier associated with the transaction.',
  `wastequantity` decimal(14,2) COMMENT 'Quantity of waste to be used in calculation',
  `wastequantityunit` binary(16) NOT NULL COMMENT 'Unit associated with quantity of waste. Generally mass or volume.'
);

ALTER TABLE `PurchasedEnergy` ADD FOREIGN KEY (`contractualinstrumenttypeid`) REFERENCES `ContractualInstrumentType` (`contractualinstrumenttypeId`);

ALTER TABLE `Unit` ADD FOREIGN KEY (`unitgroup`) REFERENCES `UnitGroup` (`unitgroupId`);

ALTER TABLE `PurchasedEnergy` ADD FOREIGN KEY (`costunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `PurchasedEnergy` ADD FOREIGN KEY (`facilityid`) REFERENCES `Facility` (`facilityId`);

ALTER TABLE `PurchasedEnergy` ADD FOREIGN KEY (`facilityusagedetailid`) REFERENCES `FacilityUsageDetail` (`facilityannualdetailId`);

ALTER TABLE `PurchasedEnergy` ADD FOREIGN KEY (`organizationalunitid`) REFERENCES `OrganizationalUnit` (`sustainabilityorganizationalunitId`);

ALTER TABLE `PurchasedEnergy` ADD FOREIGN KEY (`quantityunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `PurchasedEnergy` ADD FOREIGN KEY (`spendtypeid`) REFERENCES `SpendType` (`spendtypeId`);

ALTER TABLE `PurchasedEnergy` ADD FOREIGN KEY (`valuechainpartnerid`) REFERENCES `ValueChainPartner` (`valuechainpartnerId`);

ALTER TABLE `PurchasedEnergy` ADD FOREIGN KEY (`goodsunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `ContractualInstrumentType` ADD FOREIGN KEY (`valuechainpartnerid`) REFERENCES `ValueChainPartner` (`valuechainpartnerId`);

ALTER TABLE `UnitGroup` ADD FOREIGN KEY (`reportingunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `FacilityUsageDetail` ADD FOREIGN KEY (`areaunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `SpendType` ADD FOREIGN KEY (`emissionsourceid`) REFERENCES `EmissionsSource` (`emissionsourceId`);

ALTER TABLE `StationaryCombustion` ADD FOREIGN KEY (`costunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `StationaryCombustion` ADD FOREIGN KEY (`distanceunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `StationaryCombustion` ADD FOREIGN KEY (`facilityid`) REFERENCES `Facility` (`facilityId`);

ALTER TABLE `StationaryCombustion` ADD FOREIGN KEY (`facilityusagedetailid`) REFERENCES `FacilityUsageDetail` (`facilityannualdetailId`);

ALTER TABLE `StationaryCombustion` ADD FOREIGN KEY (`quantityunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `StationaryCombustion` ADD FOREIGN KEY (`organizationalunitid`) REFERENCES `OrganizationalUnit` (`sustainabilityorganizationalunitId`);

ALTER TABLE `StationaryCombustion` ADD FOREIGN KEY (`valuechainpartnerid`) REFERENCES `ValueChainPartner` (`valuechainpartnerId`);

ALTER TABLE `StationaryCombustion` ADD FOREIGN KEY (`spendtypeid`) REFERENCES `SpendType` (`spendtypeId`);

ALTER TABLE `StationaryCombustion` ADD FOREIGN KEY (`goodsunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `StationaryCombustion` ADD FOREIGN KEY (`fueltypeid`) REFERENCES `FuelType` (`fueltypeId`);

ALTER TABLE `IndustrialProcess` ADD FOREIGN KEY (`industrialprocesstypeid`) REFERENCES `IndustrialProcessType` (`industrialprocesstypeId`);

ALTER TABLE `IndustrialProcess` ADD FOREIGN KEY (`organizationalunitid`) REFERENCES `OrganizationalUnit` (`sustainabilityorganizationalunitId`);

ALTER TABLE `IndustrialProcess` ADD FOREIGN KEY (`quantityunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `IndustrialProcess` ADD FOREIGN KEY (`costunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `IndustrialProcess` ADD FOREIGN KEY (`facilityid`) REFERENCES `Facility` (`facilityId`);

ALTER TABLE `StationaryCombustion` ADD FOREIGN KEY (`industrialprocesstypeid`) REFERENCES `IndustrialProcessType` (`industrialprocesstypeId`);

ALTER TABLE `StationaryCombustion` ADD FOREIGN KEY (`fuelquantityunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `MobileCombustion` ADD FOREIGN KEY (`goodsunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `MobileCombustion` ADD FOREIGN KEY (`costunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `MobileCombustion` ADD FOREIGN KEY (`fuelquantityunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `MobileCombustion` ADD FOREIGN KEY (`quantityunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `MobileCombustion` ADD FOREIGN KEY (`distanceunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `MobileCombustion` ADD FOREIGN KEY (`fueltypeid`) REFERENCES `FuelType` (`fueltypeId`);

ALTER TABLE `MobileCombustion` ADD FOREIGN KEY (`industrialprocesstypeid`) REFERENCES `IndustrialProcessType` (`industrialprocesstypeId`);

ALTER TABLE `MobileCombustion` ADD FOREIGN KEY (`organizationalunitid`) REFERENCES `OrganizationalUnit` (`sustainabilityorganizationalunitId`);

ALTER TABLE `MobileCombustion` ADD FOREIGN KEY (`vehicletype`) REFERENCES `VehicleType` (`vehicletypeId`);

ALTER TABLE `MobileCombustion` ADD FOREIGN KEY (`spendtypeid`) REFERENCES `SpendType` (`spendtypeId`);

ALTER TABLE `MobileCombustion` ADD FOREIGN KEY (`valuechainpartnerid`) REFERENCES `ValueChainPartner` (`valuechainpartnerId`);

ALTER TABLE `MobileCombustion` ADD FOREIGN KEY (`facilityid`) REFERENCES `Facility` (`facilityId`);

ALTER TABLE `MobileCombustion` ADD FOREIGN KEY (`facilityusagedetailid`) REFERENCES `FacilityUsageDetail` (`facilityannualdetailId`);

ALTER TABLE `FugitiveEmission` ADD FOREIGN KEY (`costunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `FugitiveEmission` ADD FOREIGN KEY (`quantityunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `FugitiveEmission` ADD FOREIGN KEY (`goodsunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `FugitiveEmission` ADD FOREIGN KEY (`facilityusagedetailid`) REFERENCES `FacilityUsageDetail` (`facilityannualdetailId`);

ALTER TABLE `FugitiveEmission` ADD FOREIGN KEY (`facilityid`) REFERENCES `Facility` (`facilityId`);

ALTER TABLE `FugitiveEmission` ADD FOREIGN KEY (`industrialprocesstypeid`) REFERENCES `IndustrialProcessType` (`industrialprocesstypeId`);

ALTER TABLE `FugitiveEmission` ADD FOREIGN KEY (`organizationalunitid`) REFERENCES `OrganizationalUnit` (`sustainabilityorganizationalunitId`);

ALTER TABLE `FugitiveEmission` ADD FOREIGN KEY (`spendtypeid`) REFERENCES `SpendType` (`spendtypeId`);

ALTER TABLE `FugitiveEmission` ADD FOREIGN KEY (`valuechainpartnerid`) REFERENCES `ValueChainPartner` (`valuechainpartnerId`);

ALTER TABLE `CapitalGood` ADD FOREIGN KEY (`costunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `CapitalGood` ADD FOREIGN KEY (`quantityunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `CapitalGood` ADD FOREIGN KEY (`spendtypeid`) REFERENCES `SpendType` (`spendtypeId`);

ALTER TABLE `CapitalGood` ADD FOREIGN KEY (`valuechainpartnerid`) REFERENCES `ValueChainPartner` (`valuechainpartnerId`);

ALTER TABLE `CapitalGood` ADD FOREIGN KEY (`organizationalunitid`) REFERENCES `OrganizationalUnit` (`sustainabilityorganizationalunitId`);

ALTER TABLE `CapitalGood` ADD FOREIGN KEY (`industrialprocesstypeid`) REFERENCES `IndustrialProcessType` (`industrialprocesstypeId`);

ALTER TABLE `CapitalGood` ADD FOREIGN KEY (`facilityid`) REFERENCES `Facility` (`facilityId`);

ALTER TABLE `TransportationAndDistribution` ADD FOREIGN KEY (`spendtypeid`) REFERENCES `SpendType` (`spendtypeId`);

ALTER TABLE `TransportationAndDistribution` ADD FOREIGN KEY (`valuechainpartnerid`) REFERENCES `ValueChainPartner` (`valuechainpartnerId`);

ALTER TABLE `TransportationAndDistribution` ADD FOREIGN KEY (`costunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `TransportationAndDistribution` ADD FOREIGN KEY (`distanceunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `TransportationAndDistribution` ADD FOREIGN KEY (`goodsunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `TransportationAndDistribution` ADD FOREIGN KEY (`fueltypeid`) REFERENCES `FuelType` (`fueltypeId`);

ALTER TABLE `TransportationAndDistribution` ADD FOREIGN KEY (`fuelquantityunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `TransportationAndDistribution` ADD FOREIGN KEY (`facilityid`) REFERENCES `Facility` (`facilityId`);

ALTER TABLE `TransportationAndDistribution` ADD FOREIGN KEY (`industrialprocesstypeid`) REFERENCES `IndustrialProcessType` (`industrialprocesstypeId`);

ALTER TABLE `TransportationAndDistribution` ADD FOREIGN KEY (`quantityunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `TransportationAndDistribution` ADD FOREIGN KEY (`vehicletype`) REFERENCES `VehicleType` (`vehicletypeId`);

ALTER TABLE `TransportationAndDistribution` ADD FOREIGN KEY (`transportmode`) REFERENCES `TransportMode` (`transportmodeId`);

ALTER TABLE `PurchasedGoodAndService` ADD FOREIGN KEY (`valuechainpartnerid`) REFERENCES `ValueChainPartner` (`valuechainpartnerId`);

ALTER TABLE `PurchasedGoodAndService` ADD FOREIGN KEY (`spendtypeid`) REFERENCES `SpendType` (`spendtypeId`);

ALTER TABLE `PurchasedGoodAndService` ADD FOREIGN KEY (`quantityunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `PurchasedGoodAndService` ADD FOREIGN KEY (`goodsunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `PurchasedGoodAndService` ADD FOREIGN KEY (`costunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `PurchasedGoodAndService` ADD FOREIGN KEY (`facilityid`) REFERENCES `Facility` (`facilityId`);

ALTER TABLE `BusinessTravel` ADD FOREIGN KEY (`facilityid`) REFERENCES `Facility` (`facilityId`);

ALTER TABLE `BusinessTravel` ADD FOREIGN KEY (`fuelquantityunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `BusinessTravel` ADD FOREIGN KEY (`nightstayunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `BusinessTravel` ADD FOREIGN KEY (`quantityunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `BusinessTravel` ADD FOREIGN KEY (`distanceunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `BusinessTravel` ADD FOREIGN KEY (`costunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `BusinessTravel` ADD FOREIGN KEY (`fueltypeid`) REFERENCES `FuelType` (`fueltypeId`);

ALTER TABLE `BusinessTravel` ADD FOREIGN KEY (`industrialprocesstypeid`) REFERENCES `IndustrialProcessType` (`industrialprocesstypeId`);

ALTER TABLE `BusinessTravel` ADD FOREIGN KEY (`organizationalunitid`) REFERENCES `OrganizationalUnit` (`sustainabilityorganizationalunitId`);

ALTER TABLE `BusinessTravel` ADD FOREIGN KEY (`vehicletype`) REFERENCES `VehicleType` (`vehicletypeId`);

ALTER TABLE `BusinessTravel` ADD FOREIGN KEY (`valuechainpartnerid`) REFERENCES `ValueChainPartner` (`valuechainpartnerId`);

ALTER TABLE `BusinessTravel` ADD FOREIGN KEY (`accommodationtypeid`) REFERENCES `AccommodationType` (`accommodationtypeId`);

ALTER TABLE `BusinessTravel` ADD FOREIGN KEY (`businesstraveltypeid`) REFERENCES `BusinessTravelType` (`businesstraveltypeId`);

ALTER TABLE `Emission` ADD FOREIGN KEY (`actualquantityunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `Emission` ADD FOREIGN KEY (`sf6unit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `Emission` ADD FOREIGN KEY (`emissionfactor`) REFERENCES `EmissionFactor` (`emissionfactorId`);

ALTER TABLE `Emission` ADD FOREIGN KEY (`emissionlookup`) REFERENCES `FactorMapping` (`emissionlookupId`);

ALTER TABLE `Emission` ADD FOREIGN KEY (`pfcsunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `Emission` ADD FOREIGN KEY (`otherghgsunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `Emission` ADD FOREIGN KEY (`nf3unit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `Emission` ADD FOREIGN KEY (`n2ounit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `Emission` ADD FOREIGN KEY (`hfcsunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `Emission` ADD FOREIGN KEY (`co2unit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `Emission` ADD FOREIGN KEY (`co2eunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `Emission` ADD FOREIGN KEY (`ch4unit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `Emission` ADD FOREIGN KEY (`facilityid`) REFERENCES `Facility` (`facilityId`);

ALTER TABLE `Emission` ADD FOREIGN KEY (`organizationalunitid`) REFERENCES `OrganizationalUnit` (`sustainabilityorganizationalunitId`);

ALTER TABLE `EstimationFactor` ADD FOREIGN KEY (`factorvalueunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `EstimationFactor` ADD FOREIGN KEY (`unit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `EmissionFactor` ADD FOREIGN KEY (`ch4unit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `EmissionFactor` ADD FOREIGN KEY (`co2eunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `EmissionFactor` ADD FOREIGN KEY (`co2unit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `EmissionFactor` ADD FOREIGN KEY (`heatcontentunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `EmissionFactor` ADD FOREIGN KEY (`hfcsunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `EmissionFactor` ADD FOREIGN KEY (`n2ounit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `EmissionFactor` ADD FOREIGN KEY (`nf3unit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `EmissionFactor` ADD FOREIGN KEY (`otherghgsunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `EmissionFactor` ADD FOREIGN KEY (`pfcsunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `EmissionFactor` ADD FOREIGN KEY (`sf6unit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `EmissionFactor` ADD FOREIGN KEY (`unit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `EmissionFactor` ADD FOREIGN KEY (`biogenicco2factorunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `Subindustry` ADD FOREIGN KEY (`industry`) REFERENCES `Industry` (`industryId`);

ALTER TABLE `IndustryClassification` ADD FOREIGN KEY (`subindustryid`) REFERENCES `Subindustry` (`subindustryId`);

ALTER TABLE `IndustryClassification` ADD FOREIGN KEY (`organizationalprofile`) REFERENCES `OrganizationalProfile` (`organizationalprofileId`);

ALTER TABLE `OrganizationalHierarchy` ADD FOREIGN KEY (`organizationalunitid`) REFERENCES `OrganizationalUnit` (`sustainabilityorganizationalunitId`);

ALTER TABLE `OrganizationalHierarchy` ADD FOREIGN KEY (`parentid`) REFERENCES `OrganizationalUnit` (`sustainabilityorganizationalunitId`);

ALTER TABLE `EmissionsSource` ADD FOREIGN KEY (`parentemissionsource`) REFERENCES `EmissionsSource` (`emissionsourceId`);

ALTER TABLE `WasteGeneratedInOperations` ADD FOREIGN KEY (`disposalmethodid`) REFERENCES `DisposalMethod` (`disposalmethodId`);

ALTER TABLE `WasteGeneratedInOperations` ADD FOREIGN KEY (`materialid`) REFERENCES `Material` (`materialId`);

ALTER TABLE `MonthlyRevenue` ADD FOREIGN KEY (`sustainabilityorganizationalunit`) REFERENCES `OrganizationalUnit` (`sustainabilityorganizationalunitId`);

ALTER TABLE `FugitiveEmission` ADD FOREIGN KEY (`greenhousegas`) REFERENCES `GreenhouseGas` (`greenhousegasId`);

ALTER TABLE `WasteGeneratedInOperations` ADD FOREIGN KEY (`costunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `WasteGeneratedInOperations` ADD FOREIGN KEY (`distanceunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `WasteGeneratedInOperations` ADD FOREIGN KEY (`fuelquantityunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `WasteGeneratedInOperations` ADD FOREIGN KEY (`quantityunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `WasteGeneratedInOperations` ADD FOREIGN KEY (`wastequantityunit`) REFERENCES `Unit` (`unitId`);

ALTER TABLE `WasteGeneratedInOperations` ADD FOREIGN KEY (`facilityid`) REFERENCES `Facility` (`facilityId`);

ALTER TABLE `WasteGeneratedInOperations` ADD FOREIGN KEY (`fueltypeid`) REFERENCES `FuelType` (`fueltypeId`);

ALTER TABLE `WasteGeneratedInOperations` ADD FOREIGN KEY (`organizationalunitid`) REFERENCES `OrganizationalUnit` (`sustainabilityorganizationalunitId`);

ALTER TABLE `WasteGeneratedInOperations` ADD FOREIGN KEY (`industrialprocesstypeid`) REFERENCES `IndustrialProcessType` (`industrialprocesstypeId`);

ALTER TABLE `WasteGeneratedInOperations` ADD FOREIGN KEY (`spendtypeid`) REFERENCES `SpendType` (`spendtypeId`);

ALTER TABLE `WasteGeneratedInOperations` ADD FOREIGN KEY (`transportmode`) REFERENCES `TransportMode` (`transportmodeId`);

ALTER TABLE `WasteGeneratedInOperations` ADD FOREIGN KEY (`valuechainpartnerid`) REFERENCES `ValueChainPartner` (`valuechainpartnerId`);

ALTER TABLE `Emission` ADD FOREIGN KEY (`emissionsourcev2`) REFERENCES `EmissionsSource` (`emissionsourceId`);

ALTER TABLE `Emission` ADD FOREIGN KEY (`calculationlibrary`) REFERENCES `FactorLibrary` (`calculationlibraryId`);

ALTER TABLE `EmissionFactor` ADD FOREIGN KEY (`calculationlibraryId`) REFERENCES `FactorLibrary` (`calculationlibraryId`);

ALTER TABLE `EstimationFactor` ADD FOREIGN KEY (`factorlibrary`) REFERENCES `FactorLibrary` (`calculationlibraryId`);
