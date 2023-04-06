CREATE TABLE "AccommodationType" (
  "accommodationtypeId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "description" varchar(250),
  "origincorrelationid" varchar(100)
);

CREATE TABLE "BusinessTravel" (
  "businesstravelId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "TTLInSeconds" int,
  "partitionId" varchar(100),
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "name" varchar(100),
  "accommodationtypeid" char(16) NOT NULL,
  "businesstraveltypeid" char(16) NOT NULL,
  "consumptionenddate" timestamp,
  "consumptionstartdate" timestamp,
  "cost" decimal(14,2),
  "costunit" char(16) NOT NULL,
  "dataqualitytype" int,
  "description" varchar(100),
  "destinationcountryisocode" varchar(3),
  "distance" decimal(14,2),
  "distanceunit" char(16) NOT NULL,
  "evidence" varchar(250),
  "facilityid" char(16) NOT NULL,
  "fuelquantity" decimal(14,2),
  "fuelquantityunit" char(16) NOT NULL,
  "fueltypeid" char(16) NOT NULL,
  "industrialprocesstypeid" char(16) NOT NULL,
  "nightstay" decimal(14,2),
  "nightstayunit" char(16) NOT NULL,
  "organizationalunitid" char(16) NOT NULL,
  "quantity" decimal(14,2),
  "quantityunit" char(16) NOT NULL,
  "origincorrelationid" varchar(100),
  "transactiondate" timestamp,
  "valuechainpartnerid" char(16) NOT NULL,
  "vehicletype" char(16) NOT NULL
);

CREATE TABLE "BusinessTravelType" (
  "businesstraveltypeId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "description" varchar(250),
  "origincorrelationid" varchar(100)
);

CREATE TABLE "CapitalGood" (
  "capitalgoodId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "TTLInSeconds" int,
  "partitionId" varchar(100),
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "name" varchar(100),
  "consumptionenddate" timestamp,
  "consumptionstartdate" timestamp,
  "cost" decimal(14,2),
  "costunit" char(16) NOT NULL,
  "dataqualitytype" int,
  "description" varchar(100),
  "evidence" varchar(250),
  "facilityid" char(16) NOT NULL,
  "industrialprocesstypeid" char(16) NOT NULL,
  "organizationalunitid" char(16) NOT NULL,
  "quantity" decimal(14,2),
  "quantityunit" char(16) NOT NULL,
  "origincorrelationid" varchar(100),
  "transactiondate" timestamp,
  "spendtypeid" char(16) NOT NULL,
  "valuechainpartnerid" char(16) NOT NULL
);

CREATE TABLE "ContractualInstrumentType" (
  "contractualinstrumenttypeId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "description" varchar(250),
  "energysource" int,
  "origincorrelationid" varchar(100),
  "valuechainpartnerid" char(16) NOT NULL
);

CREATE TABLE "CountryRegionMapping" (
  "countryregionmappingId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "countryisocode" varchar(3),
  "region" varchar(100),
  "origincorrelationid" varchar(100)
);

CREATE TABLE "DisposalMethod" (
  "disposalmethodId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "description" varchar(250),
  "origincorrelationid" varchar(100)
);

CREATE TABLE "Emission" (
  "emissionId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "TLInSeconds" int,
  "partitionId" varchar(100),
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "name" varchar(100),
  "activity" varchar(255),
  "activityentityname" varchar(100),
  "activityid" varchar(100),
  "activityname" varchar(255),
  "calculationdate" timestamp,
  "category" varchar(255),
  "ch4" decimal(14,2),
  "ch4unit" char(16) NOT NULL,
  "co2" decimal(14,2),
  "co2e" decimal(14,2),
  "co2emt" decimal(14,2),
  "co2eunit" char(16) NOT NULL,
  "co2unit" char(16) NOT NULL,
  "consumptionenddate" timestamp,
  "consumptionstartdate" timestamp,
  "countryisocode" varchar(3),
  "emissionsource" varchar(255),
  "emissionsourcev2" char(16) NOT NULL,
  "facilityid" char(16) NOT NULL,
  "hfcs" decimal(14,2),
  "hfcsunit" char(16) NOT NULL,
  "isbiogenic" bit,
  "ismarketbased" bit,
  "latitude" varchar(100),
  "longitude" varchar(100),
  "n2o" decimal(14,2),
  "n2ounit" char(16) NOT NULL,
  "nf3" decimal(14,2),
  "nf3unit" char(16) NOT NULL,
  "organizationalunitid" char(16) NOT NULL,
  "otherghgs" decimal(14,2),
  "otherghgsunit" char(16) NOT NULL,
  "pfcs" decimal(14,2),
  "pfcsunit" char(16) NOT NULL,
  "scope" int,
  "sf6" decimal(14,2),
  "sf6unit" char(16) NOT NULL,
  "origincorrelationid" varchar(100),
  "transactiondate" timestamp,
  "calculationlibrary" char(16) NOT NULL,
  "emissionfactor" char(16) NOT NULL,
  "emissionlookup" char(16) NOT NULL,
  "actualquantity" decimal(14,2),
  "actualquantityunit" char(16) NOT NULL
);

CREATE TABLE "EmissionFactor" (
  "emissionfactorId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "calculationlibraryId" char(16) NOT NULL,
  "biogenicco2factor" decimal(14,2),
  "biogenicco2factorunit" char(16) NOT NULL,
  "ch4" decimal(14,2),
  "ch4unit" char(16) NOT NULL,
  "co2" decimal(14,2),
  "co2e" decimal(14,2),
  "co2eunit" char(16) NOT NULL,
  "co2unit" char(16) NOT NULL,
  "description" varchar(250),
  "documentationreference" varchar(250),
  "heatcontent" decimal(14,2),
  "heatcontentunit" char(16) NOT NULL,
  "hfcs" decimal(14,2),
  "hfcsunit" char(16) NOT NULL,
  "isbiofuel" bit,
  "n2o" decimal(14,2),
  "n2ounit" char(16) NOT NULL,
  "identifier" varchar(100),
  "nf3" decimal(14,2),
  "nf3unit" char(16) NOT NULL,
  "otherghgs" decimal(14,2),
  "otherghgsunit" char(16) NOT NULL,
  "pfcs" decimal(14,2),
  "pfcsunit" char(16) NOT NULL,
  "sf6" decimal(14,2),
  "sf6unit" char(16) NOT NULL,
  "origincorrelationid" varchar(100),
  "subtype" varchar(100),
  "type" varchar(100),
  "unit" char(16) NOT NULL
);

CREATE TABLE "EmissionsSource" (
  "emissionsourceId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "activitytypedatafield" varchar(100),
  "description" varchar(250),
  "entityname" varchar(100),
  "isactive" bit,
  "parentemissionsource" char(16) NOT NULL,
  "scope" int,
  "sourcedatafield" varchar(100),
  "sourcedatafield2" varchar(100),
  "sourcedatavalue" varchar(100),
  "sourcedatavalue2" varchar(100),
  "sourceviewid" varchar(100)
);

CREATE TABLE "EstimationFactor" (
  "estimationfactorId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "description" varchar(250),
  "documentationreference" varchar(255),
  "factorlibrary" char(16),
  "factorvalue" decimal(14,2),
  "factorvalueunit" char(16),
  "origincorrelationid" varchar(100),
  "subtype" varchar(100),
  "type" varchar(100),
  "unit" char(16) NOT NULL
);

CREATE TABLE "Facility" (
  "facilityId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "addresscity" varchar(100),
  "addresscountryisocode" varchar(3),
  "addresscounty" varchar(100),
  "addressstateprovince" varchar(100),
  "addressstreet1" varchar(250),
  "addressstreet2" varchar(250),
  "addresszippostalcode" varchar(20),
  "latitude" varchar(100),
  "longitude" varchar(100),
  "origincorrelationid" varchar(100)
);

CREATE TABLE "FacilityUsageDetail" (
  "facilityannualdetailId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "year" varchar(100),
  "area" int,
  "areaunit" char(16) NOT NULL,
  "headcount" int,
  "name" varchar(100),
  "origincorrelationid" varchar(100),
  "activeperiodend" timestamp,
  "activeperiodstart" timestamp,
  "description" varchar(500),
  "facilityusagedetails" varchar(100),
  "leasedorowned" int,
  "lessee" varchar(100),
  "lessor" varchar(100),
  "percentusage" decimal(14,2)
);

CREATE TABLE "FactorLibrary" (
  "calculationlibraryId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "description" varchar(500),
  "documentationreference" varchar(255),
  "librarytype" int,
  "origincorrelationid" varchar(100),
  "version" varchar(100),
  "year" varchar(100),
  "type" int
);

CREATE TABLE "FactorMapping" (
  "emissionlookupId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "calculationlibraryid" char(16) NOT NULL,
  "description" varchar(500),
  "factorid" char(16) NOT NULL DEFAULT 'uuid_generate_v4()',
  "factoridType" varchar(100),
  "referencedata4id" char(16),
  "referencedata4idType" varchar(100),
  "referencedataid" char(16),
  "referencedataidType" varchar(100),
  "referencedata3id" char(16),
  "referencedata3idType" varchar(100),
  "referencedata2id" char(16),
  "referencedata2idType" varchar(100),
  "origincorrelationid" varchar(100)
);

CREATE TABLE "FuelType" (
  "fueltypeId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "description" varchar(250),
  "origincorrelationid" varchar(100)
);

CREATE TABLE "FugitiveEmission" (
  "fugitiveemissionId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "TTLInSeconds" int,
  "partitionId" varchar(100),
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "name" varchar(100),
  "consumptionenddate" timestamp,
  "consumptionstartdate" timestamp,
  "cost" decimal(14,2),
  "costunit" char(16) NOT NULL,
  "dataqualitytype" int,
  "description" varchar(100),
  "evidence" varchar(250),
  "facilityid" char(16) NOT NULL,
  "facilityusagedetailid" char(16) NOT NULL,
  "greenhousegas" char(16) NOT NULL,
  "industrialprocesstypeid" char(16) NOT NULL,
  "leasedassetcategory" int,
  "organizationalunitid" char(16) NOT NULL,
  "quantity" decimal(14,2),
  "quantityunit" char(16) NOT NULL,
  "origincorrelationid" varchar(100),
  "transactiondate" timestamp,
  "spendtypeid" char(16) NOT NULL,
  "valuechainpartnerid" char(16) NOT NULL,
  "goodsquantity" decimal(14,2),
  "goodsunit" char(16) NOT NULL
);

CREATE TABLE "GreenhouseGas" (
  "greenhousegasId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "category" int,
  "datafield" varchar(100),
  "description" varchar(500),
  "gwpfactor" decimal(14,2)
);

CREATE TABLE "IndustrialProcess" (
  "industrialprocessId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "TTLInSeconds" int,
  "partitionId" varchar(100),
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "name" varchar(100),
  "consumptionenddate" timestamp,
  "consumptionstartdate" timestamp,
  "cost" decimal(14,2),
  "costunit" char(16) NOT NULL,
  "dataqualitytype" int,
  "description" varchar(100),
  "evidence" varchar(250),
  "facilityid" char(16) NOT NULL,
  "industrialprocesstypeid" char(16) NOT NULL,
  "organizationalunitid" char(16) NOT NULL,
  "quantity" decimal(14,2),
  "quantityunit" char(16) NOT NULL,
  "origincorrelationid" varchar(100),
  "transactiondate" timestamp
);

CREATE TABLE "IndustrialProcessType" (
  "industrialprocesstypeId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "description" varchar(250),
  "origincorrelationid" varchar(100)
);

CREATE TABLE "Industry" (
  "industryId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "industrynum" varchar(10)
);

CREATE TABLE "IndustryClassification" (
  "industryclassificationId" char(16) PRIMARY KEY NOT NULL,
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "industrynum" varchar(10),
  "industryname" varchar(200),
  "organizationalprofile" char(16) NOT NULL,
  "subindustryid" char(16),
  "subindustryname" varchar(200)
);

CREATE TABLE "Material" (
  "materialId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "description" varchar(250),
  "origincorrelationid" varchar(100)
);

CREATE TABLE "MobileCombustion" (
  "mobilecombustionId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "TTLInSeconds" int,
  "partitionId" varchar(100),
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "name" varchar(100),
  "consumptionenddate" timestamp,
  "consumptionstartdate" timestamp,
  "cost" decimal(14,2),
  "costunit" char(16) NOT NULL,
  "dataqualitytype" int,
  "description" varchar(100),
  "distance" decimal(14,2),
  "distanceunit" char(16) NOT NULL,
  "evidence" varchar(250),
  "facilityid" char(16) NOT NULL,
  "facilityusagedetailid" char(16) NOT NULL,
  "fuelquantity" decimal(14,2),
  "fuelquantityunit" char(16) NOT NULL,
  "fueltypeid" char(16) NOT NULL,
  "industrialprocesstypeid" char(16) NOT NULL,
  "leasedassetcategory" int,
  "organizationalunitid" char(16) NOT NULL,
  "quantity" decimal(14,2),
  "quantityunit" char(16) NOT NULL,
  "origincorrelationid" varchar(100),
  "transactiondate" timestamp,
  "vehicletype" char(16) NOT NULL,
  "spendtypeid" char(16) NOT NULL,
  "valuechainpartnerid" char(16) NOT NULL,
  "goodsquantity" decimal(14,2),
  "goodsunit" char(16) NOT NULL
);

CREATE TABLE "MonthlyRevenue" (
  "organizationalunitrevenueId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "year" varchar(100),
  "amount" decimal(14,2),
  "amount_Base" decimal(14,2),
  "month" int,
  "origincorrelationid" varchar(100),
  "sustainabilityorganizationalunit" char(16)
);

CREATE TABLE "OrganizationalHierarchy" (
  "sustainabilityorganizationalhierarchyId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "effectiveenddatetimestamp" timestamp,
  "effectivestartdate" timestamp,
  "organizationalunitid" char(16) NOT NULL,
  "parentid" char(16) NOT NULL,
  "origincorrelationid" varchar(100)
);

CREATE TABLE "OrganizationalProfile" (
  "organizationalprofileId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "addressline1" varchar(100),
  "addressline2" varchar(100),
  "city" varchar(100),
  "companyProfileLogoBase64" varchar(max),
  "countryisocode" varchar(3),
  "latitude" varchar(100),
  "longitude" varchar(100),
  "postalcode" varchar(100),
  "reportingstartday" int,
  "reportingstartmonth" int,
  "stateprovince" varchar(100)
);

CREATE TABLE "OrganizationalUnit" (
  "sustainabilityorganizationalunitId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "addresscity" varchar(100),
  "addresscountryisocode" varchar(3),
  "addresscounty" varchar(100),
  "addressstateprovince" varchar(100),
  "addressstreet1" varchar(250),
  "addressstreet2" varchar(250),
  "addresszippostalcode" varchar(20),
  "description" varchar(100),
  "latitude" varchar(100),
  "longitude" varchar(100),
  "organizationalunittype" int,
  "origincorrelationid" varchar(100)
);

CREATE TABLE "PurchasedEnergy" (
  "purchasedenergyId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "TTLInSeconds" int,
  "partitionId" varchar(100),
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "name" varchar(100),
  "consumptionenddate" timestamp,
  "consumptionstartdate" timestamp,
  "contractualinstrumenttypeid" char(16) NOT NULL,
  "cost" decimal(14,2),
  "costunit" char(16) NOT NULL,
  "dataqualitytype" int,
  "description" varchar(100),
  "energyprovidername" varchar(100),
  "energytype" int,
  "evidence" varchar(250),
  "facilityid" char(16) NOT NULL,
  "facilityusagedetailid" char(16) NOT NULL,
  "isrenewable" bit,
  "leasedassetcategory" int,
  "meternumber" varchar(100),
  "organizationalunitid" char(16) NOT NULL,
  "quantity" decimal(14,2),
  "quantityunit" char(16) NOT NULL,
  "origincorrelationid" varchar(100),
  "transactiondate" timestamp,
  "spendtypeid" char(16) NOT NULL,
  "valuechainpartnerid" char(16) NOT NULL,
  "goodsquantity" decimal(14,2),
  "goodsunit" char(16) NOT NULL
);

CREATE TABLE "PurchasedGoodAndService" (
  "purchasedgoodandserviceId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "TTLInSeconds" int,
  "partitionId" varchar(100),
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "name" varchar(100),
  "consumptionenddate" timestamp,
  "consumptionstartdate" timestamp,
  "cost" decimal(14,2),
  "costunit" char(16) NOT NULL,
  "dataqualitytype" int,
  "description" varchar(100),
  "evidence" varchar(250),
  "facilityid" char(16) NOT NULL,
  "goodsquantity" decimal(14,2),
  "goodsunit" char(16) NOT NULL,
  "organizationalunittype" int,
  "organizationalunitid" char(16) NOT NULL,
  "quantity" decimal(14,2),
  "quantityunit" char(16) NOT NULL,
  "origincorrelationid" varchar(100),
  "transactiondate" timestamp,
  "spendtypeid" char(16) NOT NULL,
  "valuechainpartnerid" char(16) NOT NULL
);

CREATE TABLE "SpendType" (
  "spendtypeId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "description" varchar(250),
  "origincorrelationid" varchar(100),
  "emissionsourceid" char(16) NOT NULL,
  "subtype" varchar(100),
  "type" varchar(100)
);

CREATE TABLE "StationaryCombustion" (
  "stationarycombustionId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "TTLInSeconds" int,
  "partitionId" varchar(100),
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "name" varchar(100),
  "consumptionenddate" timestamp,
  "consumptionstartdate" timestamp,
  "cost" decimal(14,2),
  "costunit" char(16) NOT NULL,
  "dataqualitytype" int,
  "description" varchar(100),
  "distance" decimal(14,2),
  "distanceunit" char(16) NOT NULL,
  "evidence" varchar(250),
  "facilityid" char(16) NOT NULL,
  "facilityusagedetailid" char(16) NOT NULL,
  "fueltypeid" char(16) NOT NULL,
  "industrialprocesstypeid" char(16) NOT NULL,
  "leasedassetcategory" int,
  "meternumber" varchar(100),
  "organizationalunitid" char(16) NOT NULL,
  "quantity" decimal(14,2),
  "quantityunit" char(16) NOT NULL,
  "origincorrelationid" varchar(100),
  "transactiondate" timestamp,
  "fuelquantity" decimal(14,2),
  "fuelquantityunit" char(16) NOT NULL,
  "goodsquantity" decimal(14,2),
  "goodsunit" char(16) NOT NULL,
  "spendtypeid" char(16) NOT NULL,
  "valuechainpartnerid" char(16) NOT NULL
);

CREATE TABLE "Subindustry" (
  "subindustryId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "industry" char(16) NOT NULL,
  "subindustrynum" varchar(10)
);

CREATE TABLE "TransportMode" (
  "transportmodeId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "description" varchar(250),
  "isSharedLoad" bit,
  "origincorrelationid" varchar(100)
);

CREATE TABLE "TransportationAndDistribution" (
  "transportationanddistributionId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "TTLInSeconds" int,
  "partitionId" varchar(100),
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "name" varchar(100),
  "consumptionenddate" timestamp,
  "consumptionstartdate" timestamp,
  "cost" decimal(14,2),
  "costunit" char(16) NOT NULL,
  "dataqualitytype" int,
  "description" varchar(100),
  "distance" decimal(14,2),
  "distanceunit" char(16) NOT NULL,
  "evidence" varchar(250),
  "facilityid" char(16) NOT NULL,
  "fuelquantity" decimal(14,2),
  "fuelquantityunit" char(16) NOT NULL,
  "fueltypeid" char(16) NOT NULL,
  "goodsquantity" decimal(14,2),
  "goodsunit" char(16) NOT NULL,
  "industrialprocesstypeid" char(16) NOT NULL,
  "organizationalunitid" char(16) NOT NULL,
  "quantity" decimal(14,2),
  "quantityunit" char(16) NOT NULL,
  "origincorrelationid" varchar(100),
  "transactiondate" timestamp,
  "transportationanddistributiontype" int,
  "transportmode" char(16) NOT NULL,
  "vehicletype" char(16) NOT NULL,
  "spendtypeid" char(16) NOT NULL,
  "valuechainpartnerid" char(16) NOT NULL
);

CREATE TABLE "Unit" (
  "unitId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "baseunit" char(16),
  "conversionfactor" decimal(14,2),
  "isbaseunit" bit,
  "shouldValidateCreate" bit,
  "unitgroup" char(16) NOT NULL
);

CREATE TABLE "UnitGroup" (
  "unitgroupId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "baseunit" char(16),
  "description" varchar(250),
  "reportingunit" char(16) NOT NULL
);

CREATE TABLE "ValueChainPartner" (
  "valuechainpartnerId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "addresscity" varchar(100),
  "addresscountryisocode" varchar(3),
  "addresscounty" varchar(100),
  "addressstateprovince" varchar(100),
  "addressstreet1" varchar(250),
  "addressstreet2" varchar(250),
  "addresszippostalcode" varchar(20),
  "companyregistrationnumber" varchar(100),
  "description" varchar(100),
  "origincorrelationid" varchar(100)
);

CREATE TABLE "VehicleType" (
  "vehicletypeId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "statecode" int NOT NULL,
  "statuscode" int,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "timeZoneRuleVersionNumber" int,
  "UTCConversionTimeZoneCode" int,
  "name" varchar(100),
  "description" varchar(250),
  "isonroad" bit,
  "origincorrelationid" varchar(100)
);

CREATE TABLE "WasteGeneratedInOperations" (
  "wastegeneratedinoperationsId" char(16) PRIMARY KEY NOT NULL DEFAULT 'uuid_generate_v4()',
  "TTLInSeconds" int,
  "partitionId" varchar(100),
  "createdOn" timestamp,
  "modifiedOn" timestamp,
  "importSequenceNumber" int,
  "overriddenCreatedOn" timestamp,
  "name" varchar(100),
  "consumptionenddate" timestamp,
  "consumptionstartdate" timestamp,
  "cost" decimal(14,2),
  "costunit" char(16) NOT NULL,
  "dataqualitytype" int,
  "description" varchar(100),
  "disposalmethodid" char(16) NOT NULL,
  "distance" decimal(14,2),
  "distanceunit" char(16) NOT NULL,
  "evidence" varchar(250),
  "facilityid" char(16) NOT NULL,
  "fuelquantity" decimal(14,2),
  "fuelquantityunit" char(16) NOT NULL,
  "fueltypeid" char(16) NOT NULL,
  "industrialprocesstypeid" char(16) NOT NULL,
  "materialid" char(16) NOT NULL,
  "meternumber" varchar(100),
  "organizationalunitid" char(16) NOT NULL,
  "origincorrelationid" varchar(100),
  "quantity" decimal(14,2),
  "quantityunit" char(16) NOT NULL,
  "spendtypeid" char(16) NOT NULL,
  "transactiondate" timestamp,
  "transportmode" char(16) NOT NULL,
  "valuechainpartnerid" char(16) NOT NULL,
  "wastequantity" decimal(14,2),
  "wastequantityunit" char(16) NOT NULL
);

COMMENT ON COLUMN "AccommodationType"."accommodationtypeId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "AccommodationType"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "AccommodationType"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "AccommodationType"."statecode" IS 'Status of the Accommodation type. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "AccommodationType"."statuscode" IS 'Reason for the status of the Accommodation type. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "AccommodationType"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "AccommodationType"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "AccommodationType"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "AccommodationType"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "AccommodationType"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "AccommodationType"."description" IS 'Description of the accommodation type.';

COMMENT ON COLUMN "AccommodationType"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "BusinessTravel"."businesstravelId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "BusinessTravel"."TTLInSeconds" IS 'Time to live in seconds.';

COMMENT ON COLUMN "BusinessTravel"."partitionId" IS 'Logical partition id. A logical partition consists of a set of records with same partition id.';

COMMENT ON COLUMN "BusinessTravel"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "BusinessTravel"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "BusinessTravel"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "BusinessTravel"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "BusinessTravel"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "BusinessTravel"."accommodationtypeid" IS 'Unique identifier associated with the accommodation type related to business travel.';

COMMENT ON COLUMN "BusinessTravel"."businesstraveltypeid" IS 'Unique identifier related to the business travel type. Used to identify emission factors.';

COMMENT ON COLUMN "BusinessTravel"."consumptionenddate" IS 'End date of activity consumption.';

COMMENT ON COLUMN "BusinessTravel"."consumptionstartdate" IS 'Start date of activity consumption.';

COMMENT ON COLUMN "BusinessTravel"."cost" IS '	Cost associated with activity data.';

COMMENT ON COLUMN "BusinessTravel"."costunit" IS 'Unit associated with the cost quantity.';

COMMENT ON COLUMN "BusinessTravel"."dataqualitytype" IS 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002';

COMMENT ON COLUMN "BusinessTravel"."description" IS 'Optional description to give additional detail to the entity or attribute.';

COMMENT ON COLUMN "BusinessTravel"."destinationcountryisocode" IS 'ISO code for the destination country/region.';

COMMENT ON COLUMN "BusinessTravel"."distance" IS 'Quantity associated with distance activity which contributes to mobile combustion or supply chain travel.';

COMMENT ON COLUMN "BusinessTravel"."distanceunit" IS 'Unique identifier for the unit associated with distance.';

COMMENT ON COLUMN "BusinessTravel"."evidence" IS 'Optional field where evidence can be linked to an entity or attribute, if required.';

COMMENT ON COLUMN "BusinessTravel"."facilityid" IS 'Unique identifier for Facility associated with business travel.';

COMMENT ON COLUMN "BusinessTravel"."fuelquantity" IS 'Unique identifier of the fuel consumption data associated with combustion or supply chain fuel usage.';

COMMENT ON COLUMN "BusinessTravel"."fuelquantityunit" IS 'Unique identifier of the unit associated with fuel data.';

COMMENT ON COLUMN "BusinessTravel"."fueltypeid" IS 'Unique identifier of the fuel type associated with combustion or supply chain fuel usage.';

COMMENT ON COLUMN "BusinessTravel"."industrialprocesstypeid" IS 'Type of industrial process used to track and associate with activity data.';

COMMENT ON COLUMN "BusinessTravel"."nightstay" IS 'Number of nights in hotel for business travel accounting.';

COMMENT ON COLUMN "BusinessTravel"."nightstayunit" IS 'Unit associated with nights stay for business travel.';

COMMENT ON COLUMN "BusinessTravel"."organizationalunitid" IS 'Unique identifier for the organizational unit associated with business travel.';

COMMENT ON COLUMN "BusinessTravel"."quantity" IS 'Generic quanity field associated with activity entities.';

COMMENT ON COLUMN "BusinessTravel"."quantityunit" IS 'Unit associated with the quantity field.';

COMMENT ON COLUMN "BusinessTravel"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "BusinessTravel"."transactiondate" IS '	Date associated with the actual date when the transaction occurred.';

COMMENT ON COLUMN "BusinessTravel"."valuechainpartnerid" IS 'Reference to value chain partner or supplier associated with the transaction.';

COMMENT ON COLUMN "BusinessTravel"."vehicletype" IS 'Unique identifier for the vehicle type associated with combustion or supply chain transportation activities.';

COMMENT ON COLUMN "BusinessTravelType"."businesstraveltypeId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "BusinessTravelType"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "BusinessTravelType"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "BusinessTravelType"."statecode" IS 'Status of the BusinessTravelType. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "BusinessTravelType"."statuscode" IS 'Reason for the status of the BusinessTravelType. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "BusinessTravelType"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "BusinessTravelType"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "BusinessTravelType"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "BusinessTravelType"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "BusinessTravelType"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "BusinessTravelType"."description" IS 'Optional description that provides additional detail about the entity or attribute.';

COMMENT ON COLUMN "BusinessTravelType"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "CapitalGood"."capitalgoodId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "CapitalGood"."TTLInSeconds" IS 'Time to live in seconds.';

COMMENT ON COLUMN "CapitalGood"."partitionId" IS 'Logical partition id. A logical partition consists of a set of records with same partition id.';

COMMENT ON COLUMN "CapitalGood"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "CapitalGood"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "CapitalGood"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "CapitalGood"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "CapitalGood"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "CapitalGood"."consumptionenddate" IS 'End date of activity consumption.';

COMMENT ON COLUMN "CapitalGood"."consumptionstartdate" IS 'Start date of activity consumption.';

COMMENT ON COLUMN "CapitalGood"."cost" IS '	Cost associated with activity data.';

COMMENT ON COLUMN "CapitalGood"."costunit" IS 'Unit associated with the cost quantity.';

COMMENT ON COLUMN "CapitalGood"."dataqualitytype" IS 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002';

COMMENT ON COLUMN "CapitalGood"."description" IS 'Optional description to give additional detail to the entity or attribute.';

COMMENT ON COLUMN "CapitalGood"."evidence" IS 'Optional field where evidence can be linked to an entity or attribute, if required.';

COMMENT ON COLUMN "CapitalGood"."facilityid" IS 'Unique identifier for Facility associated with business travel.';

COMMENT ON COLUMN "CapitalGood"."industrialprocesstypeid" IS 'Type of industrial process used to track and associate with activity data.';

COMMENT ON COLUMN "CapitalGood"."organizationalunitid" IS 'Unique identifier for the organizational unit associated with business travel.';

COMMENT ON COLUMN "CapitalGood"."quantity" IS 'Generic quanity field associated with activity entities.';

COMMENT ON COLUMN "CapitalGood"."quantityunit" IS 'Unit associated with the quantity field.';

COMMENT ON COLUMN "CapitalGood"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "CapitalGood"."transactiondate" IS '	Date associated with the actual date when the transaction occurred.';

COMMENT ON COLUMN "CapitalGood"."spendtypeid" IS 'Unique identifier for the spend type associated with the capital good.';

COMMENT ON COLUMN "CapitalGood"."valuechainpartnerid" IS 'Reference to value chain partner or supplier associated with the transaction.';

COMMENT ON COLUMN "ContractualInstrumentType"."contractualinstrumenttypeId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "ContractualInstrumentType"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "ContractualInstrumentType"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "ContractualInstrumentType"."statecode" IS 'Status of the ContractualInstrumentType. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "ContractualInstrumentType"."statuscode" IS 'Reason for the status of the ContractualInstrumentType. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "ContractualInstrumentType"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "ContractualInstrumentType"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "ContractualInstrumentType"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "ContractualInstrumentType"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "ContractualInstrumentType"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "ContractualInstrumentType"."description" IS 'Optional description that provides additional detail about the entity or attribute.';

COMMENT ON COLUMN "ContractualInstrumentType"."energysource" IS 'Primary source used to generate the selected energy type. Sources are: Solar: 700610000, Wind: 700610001, Nuclear: 700610002, Hydro: 700610003, Other: 700610004';

COMMENT ON COLUMN "ContractualInstrumentType"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "ContractualInstrumentType"."valuechainpartnerid" IS 'Reference to value chain partner or supplier associated with the transaction.';

COMMENT ON COLUMN "CountryRegionMapping"."countryregionmappingId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "CountryRegionMapping"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "CountryRegionMapping"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "CountryRegionMapping"."statecode" IS 'Status of the CountryRegionMapping. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "CountryRegionMapping"."statuscode" IS 'Reason for the status of the CountryRegionMapping. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "CountryRegionMapping"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "CountryRegionMapping"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "CountryRegionMapping"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "CountryRegionMapping"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "CountryRegionMapping"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "CountryRegionMapping"."countryisocode" IS 'ISO code of the country/region mapped to a group (region).';

COMMENT ON COLUMN "CountryRegionMapping"."region" IS 'Name of the group mapped to the country/region.';

COMMENT ON COLUMN "CountryRegionMapping"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "DisposalMethod"."disposalmethodId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "DisposalMethod"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "DisposalMethod"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "DisposalMethod"."statecode" IS 'Status of the DisposalMethode. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "DisposalMethod"."statuscode" IS 'Reason for the status of the DisposalMethod. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "DisposalMethod"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "DisposalMethod"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "DisposalMethod"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "DisposalMethod"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "DisposalMethod"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "DisposalMethod"."description" IS 'Optional description that provides additional detail about the entity or attribute.';

COMMENT ON COLUMN "DisposalMethod"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "Emission"."emissionId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "Emission"."TLInSeconds" IS 'Time to live in seconds.';

COMMENT ON COLUMN "Emission"."partitionId" IS 'Logical partition id. A logical partition consists of a set of records with same partition id.';

COMMENT ON COLUMN "Emission"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "Emission"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "Emission"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "Emission"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "Emission"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "Emission"."activity" IS 'Unique identifier of the activity linked to the emission.';

COMMENT ON COLUMN "Emission"."activityentityname" IS '	Internal reference used to map an entity to the corresponding record.';

COMMENT ON COLUMN "Emission"."activityid" IS 'Internal reference used to map the entity to the corresponding record.';

COMMENT ON COLUMN "Emission"."activityname" IS 'Category or reference data used for reporting purposes and populated during the calculation process.';

COMMENT ON COLUMN "Emission"."calculationdate" IS 'Date calculation occurred';

COMMENT ON COLUMN "Emission"."category" IS 'Scope 3 category number.';

COMMENT ON COLUMN "Emission"."ch4" IS 'The amount of the CH₄ factor.';

COMMENT ON COLUMN "Emission"."ch4unit" IS 'The unit for the CH₄ amount.';

COMMENT ON COLUMN "Emission"."co2" IS 'The amount of the CO₂ factor.';

COMMENT ON COLUMN "Emission"."co2e" IS '	The amount of the CO₂ equivalent factor.';

COMMENT ON COLUMN "Emission"."co2emt" IS 'The amount of the CO₂ equivalent factor in metric tons.';

COMMENT ON COLUMN "Emission"."co2eunit" IS 'Unique identifier for the unit associated with the emission.';

COMMENT ON COLUMN "Emission"."co2unit" IS 'The unit for the CO₂ factor.';

COMMENT ON COLUMN "Emission"."consumptionenddate" IS 'End date of activity consumption.';

COMMENT ON COLUMN "Emission"."consumptionstartdate" IS 'Start date of activity consumption.';

COMMENT ON COLUMN "Emission"."countryisocode" IS 'The three letter ISO code of the country/region.';

COMMENT ON COLUMN "Emission"."emissionsource" IS 'Emissions Source (Internal)';

COMMENT ON COLUMN "Emission"."emissionsourcev2" IS 'Emissions source reference.';

COMMENT ON COLUMN "Emission"."facilityid" IS 'Unique identifier for the facility associated with mobile combustion.';

COMMENT ON COLUMN "Emission"."hfcs" IS 'The amount of hydrofluorocarbons factor.';

COMMENT ON COLUMN "Emission"."hfcsunit" IS 'The unit for the hydrofluorocarbons factor.';

COMMENT ON COLUMN "Emission"."isbiogenic" IS 'Indicates if it is a biogenic emission, or emission from a natural source.';

COMMENT ON COLUMN "Emission"."ismarketbased" IS 'Indicates if emission calculation is market-based or considered a "net" calculation.';

COMMENT ON COLUMN "Emission"."latitude" IS 'This information can make it easier to submit reports for public disclosure.';

COMMENT ON COLUMN "Emission"."longitude" IS 'This information can make it easier to submit reports for public disclosure.';

COMMENT ON COLUMN "Emission"."n2o" IS 'The amount of the N₂O factor.';

COMMENT ON COLUMN "Emission"."n2ounit" IS 'Unique identifier for the unit associated with the emission.';

COMMENT ON COLUMN "Emission"."nf3" IS 'The amount of nitrogen trifluoride factor.';

COMMENT ON COLUMN "Emission"."nf3unit" IS 'The unit for the NF₃ factor.';

COMMENT ON COLUMN "Emission"."organizationalunitid" IS 'Unique identifier for the organizational unit associated with the emission..';

COMMENT ON COLUMN "Emission"."otherghgs" IS 'Greenhouse gases associated with emissions that are not allocated in an individual category.';

COMMENT ON COLUMN "Emission"."otherghgsunit" IS 'Unique identifier for the unit associated with the emission.';

COMMENT ON COLUMN "Emission"."pfcs" IS 'The amount of perfluorocarbons factor.';

COMMENT ON COLUMN "Emission"."pfcsunit" IS 'The unit for the perfluorocarbons factor.';

COMMENT ON COLUMN "Emission"."scope" IS 'Emission scope as defined by the Greenhouse Gas Protocol. Scopes are: Scope 1: 700610000, Scope 2: 700610001, Scope 3: 700610002';

COMMENT ON COLUMN "Emission"."sf6" IS 'The amount of sulfur hexafluoride factor.';

COMMENT ON COLUMN "Emission"."sf6unit" IS 'The unit for SF₆ factor.';

COMMENT ON COLUMN "Emission"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "Emission"."transactiondate" IS '	Date associated with the actual date when the transaction occurred.';

COMMENT ON COLUMN "Emission"."calculationlibrary" IS '	Emission factor library used for emission calculations.';

COMMENT ON COLUMN "Emission"."emissionfactor" IS 'Emission factor used for emission calculations.';

COMMENT ON COLUMN "Emission"."emissionlookup" IS 'Factor mapping used for emission calculations.';

COMMENT ON COLUMN "Emission"."actualquantity" IS 'Actual quantity used for emission calculation.';

COMMENT ON COLUMN "Emission"."actualquantityunit" IS 'Actual quantity unit used for emission calculation.';

COMMENT ON COLUMN "EmissionFactor"."emissionfactorId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "EmissionFactor"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "EmissionFactor"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "EmissionFactor"."statecode" IS 'Status of the EmissionFactor. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "EmissionFactor"."statuscode" IS 'Reason for the status of the EmissionFactor. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "EmissionFactor"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "EmissionFactor"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "EmissionFactor"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "EmissionFactor"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "EmissionFactor"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "EmissionFactor"."calculationlibraryId" IS '	Unique identifier for Factor Library associated with Emission Factor.';

COMMENT ON COLUMN "EmissionFactor"."biogenicco2factor" IS 'The amount of the biogenic CO₂ factor.';

COMMENT ON COLUMN "EmissionFactor"."biogenicco2factorunit" IS 'The unit for the biogenic CO₂ factor.';

COMMENT ON COLUMN "EmissionFactor"."ch4" IS 'The amount of the CH₄ factor.';

COMMENT ON COLUMN "EmissionFactor"."ch4unit" IS 'The unit for the CH₄ amount.';

COMMENT ON COLUMN "EmissionFactor"."co2" IS 'The amount of the CO₂ factor.';

COMMENT ON COLUMN "EmissionFactor"."co2e" IS '	The amount of the CO₂ equivalent factor.';

COMMENT ON COLUMN "EmissionFactor"."co2eunit" IS 'Unique identifier for the unit associated with the emission.';

COMMENT ON COLUMN "EmissionFactor"."co2unit" IS 'The unit for the CO₂ factor.';

COMMENT ON COLUMN "EmissionFactor"."description" IS 'Optional description that provides additional detail about the entity or attribute.';

COMMENT ON COLUMN "EmissionFactor"."documentationreference" IS 'The documentation reference for the emission factor.';

COMMENT ON COLUMN "EmissionFactor"."heatcontent" IS 'The amount of the heat content factor. (Deprecated)';

COMMENT ON COLUMN "EmissionFactor"."heatcontentunit" IS 'The unit for the heat content factor. (Deprecated)';

COMMENT ON COLUMN "EmissionFactor"."hfcs" IS 'The amount of hydrofluorocarbons factor.';

COMMENT ON COLUMN "EmissionFactor"."hfcsunit" IS 'The unit for the hydrofluorocarbons factor.';

COMMENT ON COLUMN "EmissionFactor"."isbiofuel" IS 'Indicates if the type of fuel is biofuel or not.';

COMMENT ON COLUMN "EmissionFactor"."n2o" IS 'The amount of the N₂O factor.';

COMMENT ON COLUMN "EmissionFactor"."n2ounit" IS 'Unique identifier for the unit associated with the emission.';

COMMENT ON COLUMN "EmissionFactor"."identifier" IS 'Identifier for the emission factor.';

COMMENT ON COLUMN "EmissionFactor"."nf3" IS 'The amount of nitrogen trifluoride factor.';

COMMENT ON COLUMN "EmissionFactor"."nf3unit" IS 'The unit for the NF₃ factor.';

COMMENT ON COLUMN "EmissionFactor"."otherghgs" IS 'Greenhouse gases associated with emissions that are not allocated in an individual category.';

COMMENT ON COLUMN "EmissionFactor"."otherghgsunit" IS 'Unique identifier for the unit associated with the emission.';

COMMENT ON COLUMN "EmissionFactor"."pfcs" IS 'The amount of perfluorocarbons factor.';

COMMENT ON COLUMN "EmissionFactor"."pfcsunit" IS 'The unit for the perfluorocarbons factor.';

COMMENT ON COLUMN "EmissionFactor"."sf6" IS 'The amount of sulfur hexafluoride factor.';

COMMENT ON COLUMN "EmissionFactor"."sf6unit" IS 'The unit for SF₆ factor.';

COMMENT ON COLUMN "EmissionFactor"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "EmissionFactor"."subtype" IS 'The sub-type of the emission factor.';

COMMENT ON COLUMN "EmissionFactor"."type" IS 'The type of the emission factor.';

COMMENT ON COLUMN "EmissionFactor"."unit" IS 'The unit for the input data for the emission factor.';

COMMENT ON COLUMN "EmissionsSource"."emissionsourceId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "EmissionsSource"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "EmissionsSource"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "EmissionsSource"."statecode" IS 'Status of the EmissionsSource. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "EmissionsSource"."statuscode" IS 'Reason for the status of the EmissionsSource. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "EmissionsSource"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "EmissionsSource"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "EmissionsSource"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "EmissionsSource"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "EmissionsSource"."name" IS 'Industry standard terminology as defined by the GHG Protocol';

COMMENT ON COLUMN "EmissionsSource"."activitytypedatafield" IS 'Optional description that provides additional detail about the entity or attribute.';

COMMENT ON COLUMN "EmissionsSource"."description" IS 'Optional description that provides additional detail about the entity or attribute.';

COMMENT ON COLUMN "EmissionsSource"."entityname" IS 'Internal reference used to map an entity to the corresponding record.';

COMMENT ON COLUMN "EmissionsSource"."isactive" IS 'Internal reference assigned during import.';

COMMENT ON COLUMN "EmissionsSource"."parentemissionsource" IS 'Lookup to the parent emission source';

COMMENT ON COLUMN "EmissionsSource"."scope" IS 'Emission scope as defined by the Greenhouse Gas Protocol. Scopes are: Scope 1: 700610000, Scope 2: 700610001, Scope 3: 700610002';

COMMENT ON COLUMN "EmissionsSource"."sourcedatafield" IS 'Optional field entity for additional views.';

COMMENT ON COLUMN "EmissionsSource"."sourcedatafield2" IS 'Second optional field entity for additional views.';

COMMENT ON COLUMN "EmissionsSource"."sourcedatavalue" IS 'The value of source data.';

COMMENT ON COLUMN "EmissionsSource"."sourcedatavalue2" IS 'The value of source data (Source data field 2).';

COMMENT ON COLUMN "EmissionsSource"."sourceviewid" IS '	Optional entity for additional views';

COMMENT ON COLUMN "EstimationFactor"."estimationfactorId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "EstimationFactor"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "EstimationFactor"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "EstimationFactor"."statecode" IS 'Status of the EstimationFactor. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "EstimationFactor"."statuscode" IS 'Reason for the status of the EstimationFactor. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "EstimationFactor"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "EstimationFactor"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "EstimationFactor"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "EstimationFactor"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "EstimationFactor"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "EstimationFactor"."description" IS 'Optional description that provides additional detail about the entity or attribute.';

COMMENT ON COLUMN "EstimationFactor"."documentationreference" IS 'The documentation reference for the estimation factor.';

COMMENT ON COLUMN "EstimationFactor"."factorlibrary" IS 'Library associated with the estimation factor.';

COMMENT ON COLUMN "EstimationFactor"."factorvalue" IS 'Factor value for the estimation factor.';

COMMENT ON COLUMN "EstimationFactor"."factorvalueunit" IS 'Unit of the factor value associated with the estimation factor.';

COMMENT ON COLUMN "EstimationFactor"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "EstimationFactor"."subtype" IS 'The sub-type of the emission factor.';

COMMENT ON COLUMN "EstimationFactor"."type" IS 'The type of the emission factor.';

COMMENT ON COLUMN "EstimationFactor"."unit" IS 'The unit for the input data for the emission factor.';

COMMENT ON COLUMN "Facility"."facilityId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "Facility"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "Facility"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "Facility"."statecode" IS 'Status of the Facility. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "Facility"."statuscode" IS 'Reason for the status of the Facility. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "Facility"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "Facility"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "Facility"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "Facility"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "Facility"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "Facility"."addresscity" IS 'The city in which the facility resides.';

COMMENT ON COLUMN "Facility"."addresscountryisocode" IS 'The three letter ISO code of the country/region.';

COMMENT ON COLUMN "Facility"."addresscounty" IS 'The county/region in which the facility resides.';

COMMENT ON COLUMN "Facility"."addressstateprovince" IS 'The state or province in which the facility resides.';

COMMENT ON COLUMN "Facility"."addressstreet1" IS 'The street address including the number and street name of the facility.';

COMMENT ON COLUMN "Facility"."addressstreet2" IS 'Secondary street address information.';

COMMENT ON COLUMN "Facility"."addresszippostalcode" IS 'The zip or postal code in which the facility resides.';

COMMENT ON COLUMN "Facility"."latitude" IS 'This information can make it easier to submit reports for public disclosure.';

COMMENT ON COLUMN "Facility"."longitude" IS 'This information can make it easier to submit reports for public disclosure.';

COMMENT ON COLUMN "Facility"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "FacilityUsageDetail"."facilityannualdetailId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "FacilityUsageDetail"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "FacilityUsageDetail"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "FacilityUsageDetail"."statecode" IS 'Status of the FacilityUsageDetail. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "FacilityUsageDetail"."statuscode" IS 'Reason for the status of the FacilityUsageDetail. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "FacilityUsageDetail"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "FacilityUsageDetail"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "FacilityUsageDetail"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "FacilityUsageDetail"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "FacilityUsageDetail"."year" IS 'The name of the custom entity.';

COMMENT ON COLUMN "FacilityUsageDetail"."area" IS '	The physical space contained in a facility.';

COMMENT ON COLUMN "FacilityUsageDetail"."areaunit" IS 'Unit of measure used to describe the area of a space.';

COMMENT ON COLUMN "FacilityUsageDetail"."headcount" IS 'The number of people who are employed at a given facility.';

COMMENT ON COLUMN "FacilityUsageDetail"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "FacilityUsageDetail"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "FacilityUsageDetail"."activeperiodend" IS 'Usage of facility end';

COMMENT ON COLUMN "FacilityUsageDetail"."activeperiodstart" IS 'Usage of facility start';

COMMENT ON COLUMN "FacilityUsageDetail"."description" IS 'Optional description that provides additional detail about the entity or attribute.';

COMMENT ON COLUMN "FacilityUsageDetail"."facilityusagedetails" IS 'Details regarding facility usage';

COMMENT ON COLUMN "FacilityUsageDetail"."leasedorowned" IS 'Classification of leased or owned facility. Classifications are: Leased: 575440000, Owned: 575440001';

COMMENT ON COLUMN "FacilityUsageDetail"."lessee" IS 'Name of the lessee';

COMMENT ON COLUMN "FacilityUsageDetail"."lessor" IS 'Name of the lessor of the facility';

COMMENT ON COLUMN "FacilityUsageDetail"."percentusage" IS 'Percent of facility used for operations';

COMMENT ON COLUMN "FactorLibrary"."calculationlibraryId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "FactorLibrary"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "FactorLibrary"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "FactorLibrary"."statecode" IS 'Status of the FacilityUsageDetail. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "FactorLibrary"."statuscode" IS 'Reason for the status of the FacilityUsageDetail. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "FactorLibrary"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "FactorLibrary"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "FactorLibrary"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "FactorLibrary"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "FactorLibrary"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "FactorLibrary"."description" IS 'Optional description that provides additional detail about the entity or attribute.';

COMMENT ON COLUMN "FactorLibrary"."documentationreference" IS 'The documentation reference for the factor library.';

COMMENT ON COLUMN "FactorLibrary"."librarytype" IS 'Factor library type: estimation or emission. Libraries are: Emission factor library: 192350000, Estimation factor library: 192350001';

COMMENT ON COLUMN "FactorLibrary"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "FactorLibrary"."version" IS 'The version of the library.';

COMMENT ON COLUMN "FactorLibrary"."year" IS 'The name of the custom entity.';

COMMENT ON COLUMN "FactorLibrary"."type" IS 'Strings indicating the type of factor library. Types are: Custom: 700610000, Demo: 700610001, Standard: 700610002';

COMMENT ON COLUMN "FactorMapping"."emissionlookupId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "FactorMapping"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "FactorMapping"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "FactorMapping"."statecode" IS 'Status of the FactorMapping. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "FactorMapping"."statuscode" IS 'Reason for the status of the FactorMapping. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "FactorMapping"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "FactorMapping"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "FactorMapping"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "FactorMapping"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "FactorMapping"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "FactorMapping"."calculationlibraryid" IS 'Factor library to which the lookup belongs.';

COMMENT ON COLUMN "FactorMapping"."description" IS 'Optional description that provides additional detail about the entity or attribute.';

COMMENT ON COLUMN "FactorMapping"."factorid" IS 'Unique identifier of the factor associated with the factor mapping.';

COMMENT ON COLUMN "FactorMapping"."factoridType" IS 'Unique identifier of the factor associated with the factor mapping.';

COMMENT ON COLUMN "FactorMapping"."referencedata4id" IS 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.';

COMMENT ON COLUMN "FactorMapping"."referencedata4idType" IS 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.';

COMMENT ON COLUMN "FactorMapping"."referencedataid" IS 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.';

COMMENT ON COLUMN "FactorMapping"."referencedataidType" IS 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.';

COMMENT ON COLUMN "FactorMapping"."referencedata3id" IS 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.';

COMMENT ON COLUMN "FactorMapping"."referencedata3idType" IS 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.';

COMMENT ON COLUMN "FactorMapping"."referencedata2id" IS 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.';

COMMENT ON COLUMN "FactorMapping"."referencedata2idType" IS 'Data that supports emissions activity, but it is not the actual quantity of consumption itself, such as the facility name and fuel type.';

COMMENT ON COLUMN "FactorMapping"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "FuelType"."fueltypeId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "FuelType"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "FuelType"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "FuelType"."statecode" IS 'Status of the FuelType. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "FuelType"."statuscode" IS 'Reason for the status of the FuelType. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "FuelType"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "FuelType"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "FuelType"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "FuelType"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "FuelType"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "FuelType"."description" IS 'Optional description that provides additional detail about the entity or attribute.';

COMMENT ON COLUMN "FuelType"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "FugitiveEmission"."fugitiveemissionId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "FugitiveEmission"."TTLInSeconds" IS 'Time to live in seconds.';

COMMENT ON COLUMN "FugitiveEmission"."partitionId" IS 'Logical partition id. A logical partition consists of a set of records with same partition id.';

COMMENT ON COLUMN "FugitiveEmission"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "FugitiveEmission"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "FugitiveEmission"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "FugitiveEmission"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "FugitiveEmission"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "FugitiveEmission"."consumptionenddate" IS 'End date of activity consumption.';

COMMENT ON COLUMN "FugitiveEmission"."consumptionstartdate" IS 'Start date of activity consumption.';

COMMENT ON COLUMN "FugitiveEmission"."cost" IS '	Cost associated with activity data.';

COMMENT ON COLUMN "FugitiveEmission"."costunit" IS 'Unit associated with the cost quantity.';

COMMENT ON COLUMN "FugitiveEmission"."dataqualitytype" IS 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002';

COMMENT ON COLUMN "FugitiveEmission"."description" IS 'Optional description to give additional detail to the entity or attribute.';

COMMENT ON COLUMN "FugitiveEmission"."evidence" IS 'Optional field where evidence can be linked to an entity or attribute, if required.';

COMMENT ON COLUMN "FugitiveEmission"."facilityid" IS 'Unique identifier for Facility associated with business travel.';

COMMENT ON COLUMN "FugitiveEmission"."facilityusagedetailid" IS '	The facility usage detail associated with this fugitive emission';

COMMENT ON COLUMN "FugitiveEmission"."greenhousegas" IS '	Unique identifier for the greenhouse gas associated with the fugitive emission.';

COMMENT ON COLUMN "FugitiveEmission"."industrialprocesstypeid" IS 'Type of industrial process used to track and associate with activity data.';

COMMENT ON COLUMN "FugitiveEmission"."leasedassetcategory" IS 'Indicator of classification of category. An empty value means this activity is in scope 1. Categories are: Scope 3 category 8: 700610000, Scope 3 category 13: 700610001';

COMMENT ON COLUMN "FugitiveEmission"."organizationalunitid" IS 'Unique identifier for the organizational unit associated with business travel.';

COMMENT ON COLUMN "FugitiveEmission"."quantity" IS 'Generic quanity field associated with activity entities.';

COMMENT ON COLUMN "FugitiveEmission"."quantityunit" IS 'Unit associated with the quantity field.';

COMMENT ON COLUMN "FugitiveEmission"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "FugitiveEmission"."transactiondate" IS '	Date associated with the actual date when the transaction occurred.';

COMMENT ON COLUMN "FugitiveEmission"."spendtypeid" IS 'Unique identifier for the spend type associated with the capital good.';

COMMENT ON COLUMN "FugitiveEmission"."valuechainpartnerid" IS 'Reference to value chain partner or supplier associated with the transaction.';

COMMENT ON COLUMN "FugitiveEmission"."goodsquantity" IS 'The amount of goods associated with this record.';

COMMENT ON COLUMN "FugitiveEmission"."goodsunit" IS 'The unit of measurement for the goods quantity in record.';

COMMENT ON COLUMN "GreenhouseGas"."greenhousegasId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "GreenhouseGas"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "GreenhouseGas"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "GreenhouseGas"."statecode" IS 'Status of the GreenhouseGas. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "GreenhouseGas"."statuscode" IS 'Reason for the status of the GreenhouseGas. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "GreenhouseGas"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "GreenhouseGas"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "GreenhouseGas"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "GreenhouseGas"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "GreenhouseGas"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "GreenhouseGas"."category" IS 'The category of greenhouse gas. Categories are: Perfluorocarbons (PFC): 700610000, 	Hydrofluorocarbons (HFC): 700610001, Sulfur Hexafluoride (SF₆): 700610002, 	Nitrogen Trifluoride (NF₃): 700610003, Non Fluorinated: 700610004';

COMMENT ON COLUMN "GreenhouseGas"."datafield" IS 'Optional field entity for additional views.';

COMMENT ON COLUMN "GreenhouseGas"."description" IS 'Optional description that provides additional detail about the entity or attribute.';

COMMENT ON COLUMN "GreenhouseGas"."gwpfactor" IS '	Global warming potential factor.';

COMMENT ON COLUMN "IndustrialProcess"."industrialprocessId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "IndustrialProcess"."TTLInSeconds" IS 'Time to live in seconds.';

COMMENT ON COLUMN "IndustrialProcess"."partitionId" IS 'Logical partition id. A logical partition consists of a set of records with same partition id.';

COMMENT ON COLUMN "IndustrialProcess"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "IndustrialProcess"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "IndustrialProcess"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "IndustrialProcess"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "IndustrialProcess"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "IndustrialProcess"."consumptionenddate" IS 'End date of activity consumption.';

COMMENT ON COLUMN "IndustrialProcess"."consumptionstartdate" IS 'Start date of activity consumption.';

COMMENT ON COLUMN "IndustrialProcess"."cost" IS '	Cost associated with activity data.';

COMMENT ON COLUMN "IndustrialProcess"."costunit" IS 'Unit associated with the cost quantity.';

COMMENT ON COLUMN "IndustrialProcess"."dataqualitytype" IS 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002';

COMMENT ON COLUMN "IndustrialProcess"."description" IS 'Optional description to give additional detail to the entity or attribute.';

COMMENT ON COLUMN "IndustrialProcess"."evidence" IS 'Optional field where evidence can be linked to an entity or attribute, if required.';

COMMENT ON COLUMN "IndustrialProcess"."facilityid" IS 'Unique identifier for Facility associated with business travel.';

COMMENT ON COLUMN "IndustrialProcess"."industrialprocesstypeid" IS 'Type of industrial process used to track and associate with activity data.';

COMMENT ON COLUMN "IndustrialProcess"."organizationalunitid" IS 'Unique identifier for the organizational unit associated with business travel.';

COMMENT ON COLUMN "IndustrialProcess"."quantity" IS 'Generic quanity field associated with activity entities.';

COMMENT ON COLUMN "IndustrialProcess"."quantityunit" IS 'Unit associated with the quantity field.';

COMMENT ON COLUMN "IndustrialProcess"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "IndustrialProcess"."transactiondate" IS '	Date associated with the actual date when the transaction occurred.';

COMMENT ON COLUMN "IndustrialProcessType"."industrialprocesstypeId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "IndustrialProcessType"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "IndustrialProcessType"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "IndustrialProcessType"."statecode" IS 'Status of the IndustrialProcessType. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "IndustrialProcessType"."statuscode" IS 'Reason for the status of the IndustrialProcessType. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "IndustrialProcessType"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "IndustrialProcessType"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "IndustrialProcessType"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "IndustrialProcessType"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "IndustrialProcessType"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "IndustrialProcessType"."description" IS 'Optional description that provides additional detail about the entity or attribute.';

COMMENT ON COLUMN "IndustrialProcessType"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "Industry"."industryId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "Industry"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "Industry"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "Industry"."statecode" IS 'Status of the Industry. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "Industry"."statuscode" IS 'Reason for the status of the Industry. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "Industry"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "Industry"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "Industry"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "Industry"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "Industry"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "Industry"."industrynum" IS 'Contains the mapping to the industry classification code in the form of a range.';

COMMENT ON COLUMN "IndustryClassification"."industryclassificationId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "IndustryClassification"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "IndustryClassification"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "IndustryClassification"."statecode" IS 'Status of the IndustryClassification. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "IndustryClassification"."statuscode" IS 'Reason for the status of the IndustryClassification. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "IndustryClassification"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "IndustryClassification"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "IndustryClassification"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "IndustryClassification"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "IndustryClassification"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "IndustryClassification"."industrynum" IS 'Contains the mapping to the industry classification code in the form of a range.';

COMMENT ON COLUMN "IndustryClassification"."industryname" IS 'Name of the industry.';

COMMENT ON COLUMN "IndustryClassification"."organizationalprofile" IS 'Unique identifier for Organizational Profile associated with Industry Classification.';

COMMENT ON COLUMN "IndustryClassification"."subindustryid" IS 'Subindustry classification code.';

COMMENT ON COLUMN "IndustryClassification"."subindustryname" IS 'Name of the subindustry.';

COMMENT ON COLUMN "Material"."materialId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "Material"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "Material"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "Material"."statecode" IS 'Status of the Material. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "Material"."statuscode" IS '	Reason for the status of the Material. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "Material"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "Material"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "Material"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "Material"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "Material"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "Material"."description" IS 'Optional description that provides additional detail about the entity or attribute.';

COMMENT ON COLUMN "Material"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "MobileCombustion"."mobilecombustionId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "MobileCombustion"."TTLInSeconds" IS 'Time to live in seconds.';

COMMENT ON COLUMN "MobileCombustion"."partitionId" IS 'Logical partition id. A logical partition consists of a set of records with same partition id.';

COMMENT ON COLUMN "MobileCombustion"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "MobileCombustion"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "MobileCombustion"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "MobileCombustion"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "MobileCombustion"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "MobileCombustion"."consumptionenddate" IS 'End date of activity consumption.';

COMMENT ON COLUMN "MobileCombustion"."consumptionstartdate" IS 'Start date of activity consumption.';

COMMENT ON COLUMN "MobileCombustion"."cost" IS '	Cost associated with activity data.';

COMMENT ON COLUMN "MobileCombustion"."costunit" IS 'Unit associated with the cost quantity.';

COMMENT ON COLUMN "MobileCombustion"."dataqualitytype" IS 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002';

COMMENT ON COLUMN "MobileCombustion"."description" IS 'Optional description to give additional detail to the entity or attribute.';

COMMENT ON COLUMN "MobileCombustion"."distance" IS 'Quantity associated with distance activity which contributes to mobile combustion or supply chain travel.';

COMMENT ON COLUMN "MobileCombustion"."distanceunit" IS 'Unique identifier for the unit associated with distance.';

COMMENT ON COLUMN "MobileCombustion"."evidence" IS 'Optional field where evidence can be linked to an entity or attribute, if required.';

COMMENT ON COLUMN "MobileCombustion"."facilityid" IS 'Unique identifier for Facility associated with business travel.';

COMMENT ON COLUMN "MobileCombustion"."facilityusagedetailid" IS '	The facility usage detail associated with this fugitive emission';

COMMENT ON COLUMN "MobileCombustion"."fuelquantity" IS 'Unique identifier of the fuel consumption data associated with combustion or supply chain fuel usage.';

COMMENT ON COLUMN "MobileCombustion"."fuelquantityunit" IS 'Unique identifier of the unit associated with fuel data.';

COMMENT ON COLUMN "MobileCombustion"."fueltypeid" IS 'Unique identifier of the fuel type associated with combustion or supply chain fuel usage.';

COMMENT ON COLUMN "MobileCombustion"."industrialprocesstypeid" IS 'Type of industrial process used to track and associate with activity data.';

COMMENT ON COLUMN "MobileCombustion"."leasedassetcategory" IS 'Indicator of classification of category. An empty value means this activity is in scope 1. Categories are: Scope 3 category 8: 700610000, Scope 3 category 13: 700610001';

COMMENT ON COLUMN "MobileCombustion"."organizationalunitid" IS 'Unique identifier for the organizational unit associated with business travel.';

COMMENT ON COLUMN "MobileCombustion"."quantity" IS 'Generic quanity field associated with activity entities.';

COMMENT ON COLUMN "MobileCombustion"."quantityunit" IS 'Unit associated with the quantity field.';

COMMENT ON COLUMN "MobileCombustion"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "MobileCombustion"."transactiondate" IS '	Date associated with the actual date when the transaction occurred.';

COMMENT ON COLUMN "MobileCombustion"."vehicletype" IS 'Unique identifier for the vehicle type associated with combustion or supply chain transportation activities.';

COMMENT ON COLUMN "MobileCombustion"."spendtypeid" IS 'Unique identifier for the spend type associated with the capital good.';

COMMENT ON COLUMN "MobileCombustion"."valuechainpartnerid" IS 'Reference to value chain partner or supplier associated with the transaction.';

COMMENT ON COLUMN "MobileCombustion"."goodsquantity" IS 'The amount of goods associated with this record.';

COMMENT ON COLUMN "MobileCombustion"."goodsunit" IS 'The unit of measurement for the goods quantity in record.';

COMMENT ON COLUMN "MonthlyRevenue"."organizationalunitrevenueId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "MonthlyRevenue"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "MonthlyRevenue"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "MonthlyRevenue"."statecode" IS 'Status of the Monthly Revenue. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "MonthlyRevenue"."statuscode" IS 'Reason for the status of the Monthly Revenue. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "MonthlyRevenue"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "MonthlyRevenue"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "MonthlyRevenue"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "MonthlyRevenue"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "MonthlyRevenue"."year" IS 'The name of the custom entity.';

COMMENT ON COLUMN "MonthlyRevenue"."amount" IS 'Revenue amount for a defined year, month, and currency.';

COMMENT ON COLUMN "MonthlyRevenue"."amount_Base" IS '	Value of the Revenue in base currency.';

COMMENT ON COLUMN "MonthlyRevenue"."month" IS 'The month associated to the revenue defined for a business unit. Months are: January: 700610000, February: 700610001, March: 700610002, April: 700610003, May: 700610004, June: 700610005, July: 700610006, August: 700610007, September: 700610008, October: 700610009, November: 700610010, December: 700610011 ';

COMMENT ON COLUMN "MonthlyRevenue"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "MonthlyRevenue"."sustainabilityorganizationalunit" IS 'Unique identifier for the organizational unit associated with the monthly revenue.';

COMMENT ON COLUMN "OrganizationalHierarchy"."sustainabilityorganizationalhierarchyId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "OrganizationalHierarchy"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "OrganizationalHierarchy"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "OrganizationalHierarchy"."statecode" IS 'Status of the OrganizationalHierarchy. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "OrganizationalHierarchy"."statuscode" IS 'Reason for the status of the OrganizationalHierarchy. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "OrganizationalHierarchy"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "OrganizationalHierarchy"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "OrganizationalHierarchy"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "OrganizationalHierarchy"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "OrganizationalHierarchy"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "OrganizationalHierarchy"."effectiveenddatetimestamp" IS 'The date which represents the end of the reporting period.';

COMMENT ON COLUMN "OrganizationalHierarchy"."effectivestartdate" IS 'The date which represents the start of the reporting period.';

COMMENT ON COLUMN "OrganizationalHierarchy"."organizationalunitid" IS 'Unique identifier for the organizational unit associated with the organizational hierarchy.';

COMMENT ON COLUMN "OrganizationalHierarchy"."parentid" IS 'Unique identifier for the organizational unit associated with the organizational hierarchy.';

COMMENT ON COLUMN "OrganizationalHierarchy"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "OrganizationalProfile"."organizationalprofileId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "OrganizationalProfile"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "OrganizationalProfile"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "OrganizationalProfile"."statecode" IS 'Status of the OrganizationalProfile. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "OrganizationalProfile"."statuscode" IS 'Reason for the status of the OrganizationalProfile. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "OrganizationalProfile"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "OrganizationalProfile"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "OrganizationalProfile"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "OrganizationalProfile"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "OrganizationalProfile"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "OrganizationalProfile"."addressline1" IS '	The street address, including the number and street name of the facility.';

COMMENT ON COLUMN "OrganizationalProfile"."addressline2" IS 'Secondary street address information.';

COMMENT ON COLUMN "OrganizationalProfile"."city" IS 'The city in which the organization resides.';

COMMENT ON COLUMN "OrganizationalProfile"."companyProfileLogoBase64" IS '	The logo representing a company or organization.';

COMMENT ON COLUMN "OrganizationalProfile"."countryisocode" IS '	The three letter ISO code of the country/region.';

COMMENT ON COLUMN "OrganizationalProfile"."latitude" IS 'This information can make it easier to submit reports for public disclosure.';

COMMENT ON COLUMN "OrganizationalProfile"."longitude" IS 'This information can make it easier to submit reports for public disclosure.';

COMMENT ON COLUMN "OrganizationalProfile"."postalcode" IS 'The zip or postal code in which the organization resides.';

COMMENT ON COLUMN "OrganizationalProfile"."reportingstartday" IS 'Day of the month. Days are: 1: 700610000, 2: 700610001, 3: 700610002, 4: 700610003, 5: 700610004, 6: 700610005, 7: 700610006, 8: 700610007, 9: 700610008, 10: 700610009, 11: 700610010, 12: 700610011, 13: 700610012, 14: 700610013, 15: 700610014, 16: 700610015, 17: 700610016, 18: 700610017, 19: 700610018, 20: 700610019, 21: 700610020, 22: 700610021, 23: 700610022, 24: 700610023, 25: 700610024, 26: 700610025, 27: 700610026, 28: 700610027, 29: 700610028, 30: 700610029, 31: 700610030';

COMMENT ON COLUMN "OrganizationalProfile"."reportingstartmonth" IS 'The month in which reporting begins for a given organization. Months are: January: 700610000, February: 700610001, March: 700610002, April: 700610003, May: 700610004, June: 700610005, July: 700610006, August: 700610007, September: 700610008, October: 700610009, November: 700610010, December: 700610011 ';

COMMENT ON COLUMN "OrganizationalProfile"."stateprovince" IS 'The state or province in which the organization resides.';

COMMENT ON COLUMN "OrganizationalUnit"."sustainabilityorganizationalunitId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "OrganizationalUnit"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "OrganizationalUnit"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "OrganizationalUnit"."statecode" IS 'Status of the OrganizationalUnit. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "OrganizationalUnit"."statuscode" IS 'Reason for the status of the OrganizationalUnit. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "OrganizationalUnit"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "OrganizationalUnit"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "OrganizationalUnit"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "OrganizationalUnit"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "OrganizationalUnit"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "OrganizationalUnit"."addresscity" IS 'The city in which the facility resides.';

COMMENT ON COLUMN "OrganizationalUnit"."addresscountryisocode" IS 'The three letter ISO code of the country/region.';

COMMENT ON COLUMN "OrganizationalUnit"."addresscounty" IS 'The county/region in which the facility resides.';

COMMENT ON COLUMN "OrganizationalUnit"."addressstateprovince" IS 'The state or province in which the facility resides.';

COMMENT ON COLUMN "OrganizationalUnit"."addressstreet1" IS 'The street address including the number and street name of the facility.';

COMMENT ON COLUMN "OrganizationalUnit"."addressstreet2" IS 'Secondary street address information.';

COMMENT ON COLUMN "OrganizationalUnit"."addresszippostalcode" IS 'The zip or postal code in which the facility resides.';

COMMENT ON COLUMN "OrganizationalUnit"."description" IS 'Optional description to give additional detail to the entity or attribute.';

COMMENT ON COLUMN "OrganizationalUnit"."latitude" IS 'This information can make it easier to submit reports for public disclosure.';

COMMENT ON COLUMN "OrganizationalUnit"."longitude" IS 'This information can make it easier to submit reports for public disclosure.';

COMMENT ON COLUMN "OrganizationalUnit"."organizationalunittype" IS 'The type of organization unit selected. Units are: Unit: 700610000, Cost Center: 700610005, Division: 700610002, Department: 700610004, Team: 700610001, Group: 700610003 ';

COMMENT ON COLUMN "OrganizationalUnit"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "PurchasedEnergy"."purchasedenergyId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "PurchasedEnergy"."TTLInSeconds" IS 'Time to live in seconds.';

COMMENT ON COLUMN "PurchasedEnergy"."partitionId" IS 'Logical partition id. A logical partition consists of a set of records with same partition id.';

COMMENT ON COLUMN "PurchasedEnergy"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "PurchasedEnergy"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "PurchasedEnergy"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "PurchasedEnergy"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "PurchasedEnergy"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "PurchasedEnergy"."consumptionenddate" IS 'End date of activity consumption.';

COMMENT ON COLUMN "PurchasedEnergy"."consumptionstartdate" IS 'Start date of activity consumption.';

COMMENT ON COLUMN "PurchasedEnergy"."contractualinstrumenttypeid" IS 'Unique identifier for the contractual instrument type associated with the purchased energy.';

COMMENT ON COLUMN "PurchasedEnergy"."cost" IS '	Cost associated with activity data.';

COMMENT ON COLUMN "PurchasedEnergy"."costunit" IS 'Unit associated with the cost quantity.';

COMMENT ON COLUMN "PurchasedEnergy"."dataqualitytype" IS 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002';

COMMENT ON COLUMN "PurchasedEnergy"."description" IS 'Optional description to give additional detail to the entity or attribute.';

COMMENT ON COLUMN "PurchasedEnergy"."energyprovidername" IS 'Name of the energy provider.';

COMMENT ON COLUMN "PurchasedEnergy"."energytype" IS 'Energy sub-category within Scope 2 emissions. Energy sub-category are: Electricity: 700610000, Steam: 700610001, Heating: 700610002, Cooling: 700610003';

COMMENT ON COLUMN "PurchasedEnergy"."evidence" IS 'Optional field where evidence can be linked to an entity or attribute, if required.';

COMMENT ON COLUMN "PurchasedEnergy"."facilityid" IS 'Unique identifier for Facility associated with business travel.';

COMMENT ON COLUMN "PurchasedEnergy"."facilityusagedetailid" IS '	The facility usage detail associated with this fugitive emission';

COMMENT ON COLUMN "PurchasedEnergy"."isrenewable" IS 'Identifier used to determine if the source electric energy is renewable or not.';

COMMENT ON COLUMN "PurchasedEnergy"."leasedassetcategory" IS 'Indicator of classification of category. An empty value means this activity is in scope 1. Categories are: Scope 3 category 8: 700610000, Scope 3 category 13: 700610001';

COMMENT ON COLUMN "PurchasedEnergy"."meternumber" IS 'Field representing meter number for purchased energy entity.';

COMMENT ON COLUMN "PurchasedEnergy"."organizationalunitid" IS 'Unique identifier for the organizational unit associated with business travel.';

COMMENT ON COLUMN "PurchasedEnergy"."quantity" IS 'Generic quanity field associated with activity entities.';

COMMENT ON COLUMN "PurchasedEnergy"."quantityunit" IS 'Unit associated with the quantity field.';

COMMENT ON COLUMN "PurchasedEnergy"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "PurchasedEnergy"."transactiondate" IS '	Date associated with the actual date when the transaction occurred.';

COMMENT ON COLUMN "PurchasedEnergy"."spendtypeid" IS 'Unique identifier for the spend type associated with the capital good.';

COMMENT ON COLUMN "PurchasedEnergy"."valuechainpartnerid" IS 'Reference to value chain partner or supplier associated with the transaction.';

COMMENT ON COLUMN "PurchasedEnergy"."goodsquantity" IS 'The amount of goods associated with this record.';

COMMENT ON COLUMN "PurchasedEnergy"."goodsunit" IS 'The unit of measurement for the goods quantity in record.';

COMMENT ON COLUMN "PurchasedGoodAndService"."purchasedgoodandserviceId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "PurchasedGoodAndService"."TTLInSeconds" IS 'Time to live in seconds.';

COMMENT ON COLUMN "PurchasedGoodAndService"."partitionId" IS 'Logical partition id. A logical partition consists of a set of records with same partition id.';

COMMENT ON COLUMN "PurchasedGoodAndService"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "PurchasedGoodAndService"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "PurchasedGoodAndService"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "PurchasedGoodAndService"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "PurchasedGoodAndService"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "PurchasedGoodAndService"."consumptionenddate" IS 'End date of activity consumption.';

COMMENT ON COLUMN "PurchasedGoodAndService"."consumptionstartdate" IS 'Start date of activity consumption.';

COMMENT ON COLUMN "PurchasedGoodAndService"."cost" IS '	Cost associated with activity data.';

COMMENT ON COLUMN "PurchasedGoodAndService"."costunit" IS 'Unit associated with the cost quantity.';

COMMENT ON COLUMN "PurchasedGoodAndService"."dataqualitytype" IS 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002';

COMMENT ON COLUMN "PurchasedGoodAndService"."description" IS 'Optional description to give additional detail to the entity or attribute.';

COMMENT ON COLUMN "PurchasedGoodAndService"."evidence" IS 'Optional field where evidence can be linked to an entity or attribute, if required.';

COMMENT ON COLUMN "PurchasedGoodAndService"."facilityid" IS 'Unique identifier for Facility associated with business travel.';

COMMENT ON COLUMN "PurchasedGoodAndService"."goodsquantity" IS 'The amount of goods associated with this record.';

COMMENT ON COLUMN "PurchasedGoodAndService"."goodsunit" IS 'The unit of measurement for the goods quantity in record.';

COMMENT ON COLUMN "PurchasedGoodAndService"."organizationalunittype" IS 'The type of organization unit selected. Types are: Unit: 700610000, Cost Center: 700610005, Division: 700610002, Department: 700610004, Team: 700610001, Group: 700610003 ';

COMMENT ON COLUMN "PurchasedGoodAndService"."organizationalunitid" IS 'Unique identifier for the organizational unit associated with the organizational hierarchy.';

COMMENT ON COLUMN "PurchasedGoodAndService"."quantity" IS 'Generic quanity field associated with activity entities.';

COMMENT ON COLUMN "PurchasedGoodAndService"."quantityunit" IS 'Unit associated with the quantity field.';

COMMENT ON COLUMN "PurchasedGoodAndService"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "PurchasedGoodAndService"."transactiondate" IS '	Date associated with the actual date when the transaction occurred.';

COMMENT ON COLUMN "PurchasedGoodAndService"."spendtypeid" IS 'Unique identifier for the spend type associated with the capital good.';

COMMENT ON COLUMN "PurchasedGoodAndService"."valuechainpartnerid" IS 'Reference to value chain partner or supplier associated with the transaction.';

COMMENT ON COLUMN "SpendType"."spendtypeId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "SpendType"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "SpendType"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "SpendType"."statecode" IS 'Status of the SpendType. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "SpendType"."statuscode" IS 'Reason for the status of the SpendType. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "SpendType"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "SpendType"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "SpendType"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "SpendType"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "SpendType"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "SpendType"."description" IS 'Optional description that provides additional detail about the entity or attribute.';

COMMENT ON COLUMN "SpendType"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "SpendType"."emissionsourceid" IS 'Unique identifier related to emission source associated with spend type';

COMMENT ON COLUMN "SpendType"."subtype" IS 'Sub type associated with this spend type';

COMMENT ON COLUMN "SpendType"."type" IS '	type associated with this spend type.';

COMMENT ON COLUMN "StationaryCombustion"."stationarycombustionId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "StationaryCombustion"."TTLInSeconds" IS 'Time to live in seconds.';

COMMENT ON COLUMN "StationaryCombustion"."partitionId" IS 'Logical partition id. A logical partition consists of a set of records with same partition id.';

COMMENT ON COLUMN "StationaryCombustion"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "StationaryCombustion"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "StationaryCombustion"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "StationaryCombustion"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "StationaryCombustion"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "StationaryCombustion"."consumptionenddate" IS 'End date of activity consumption.';

COMMENT ON COLUMN "StationaryCombustion"."consumptionstartdate" IS 'Start date of activity consumption.';

COMMENT ON COLUMN "StationaryCombustion"."cost" IS '	Cost associated with activity data.';

COMMENT ON COLUMN "StationaryCombustion"."costunit" IS 'Unit associated with the cost quantity.';

COMMENT ON COLUMN "StationaryCombustion"."dataqualitytype" IS 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002';

COMMENT ON COLUMN "StationaryCombustion"."description" IS 'Optional description to give additional detail to the entity or attribute.';

COMMENT ON COLUMN "StationaryCombustion"."distance" IS 'Quantity associated with distance activity which contributes to mobile combustion or supply chain travel.';

COMMENT ON COLUMN "StationaryCombustion"."distanceunit" IS 'Unique identifier for the unit associated with distance.';

COMMENT ON COLUMN "StationaryCombustion"."evidence" IS 'Optional field where evidence can be linked to an entity or attribute, if required.';

COMMENT ON COLUMN "StationaryCombustion"."facilityid" IS 'Unique identifier for Facility associated with business travel.';

COMMENT ON COLUMN "StationaryCombustion"."facilityusagedetailid" IS '	The facility usage detail associated with this fugitive emission';

COMMENT ON COLUMN "StationaryCombustion"."fueltypeid" IS 'Unique identifier of the fuel type associated with combustion or supply chain fuel usage.';

COMMENT ON COLUMN "StationaryCombustion"."industrialprocesstypeid" IS 'Type of industrial process used to track and associate with activity data.';

COMMENT ON COLUMN "StationaryCombustion"."leasedassetcategory" IS 'Indicator of classification of category. An empty value means this activity is in scope 1. Categories are: Scope 3 category 8: 700610000, Scope 3 category 13: 700610001';

COMMENT ON COLUMN "StationaryCombustion"."meternumber" IS 'Field representing meter number for purchased energy entity.';

COMMENT ON COLUMN "StationaryCombustion"."organizationalunitid" IS 'Unique identifier for the organizational unit associated with business travel.';

COMMENT ON COLUMN "StationaryCombustion"."quantity" IS 'Generic quanity field associated with activity entities.';

COMMENT ON COLUMN "StationaryCombustion"."quantityunit" IS 'Unit associated with the quantity field.';

COMMENT ON COLUMN "StationaryCombustion"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "StationaryCombustion"."transactiondate" IS '	Date associated with the actual date when the transaction occurred.';

COMMENT ON COLUMN "StationaryCombustion"."fuelquantity" IS 'Unique identifier of the fuel consumption data associated with combustion or supply chain fuel usage.';

COMMENT ON COLUMN "StationaryCombustion"."fuelquantityunit" IS 'Unique identifier of the unit associated with fuel data.';

COMMENT ON COLUMN "StationaryCombustion"."goodsquantity" IS 'The amount of goods associated with this record.';

COMMENT ON COLUMN "StationaryCombustion"."goodsunit" IS 'The unit of measurement for the goods quantity in record.';

COMMENT ON COLUMN "StationaryCombustion"."spendtypeid" IS 'Unique identifier for the spend type associated with the capital good.';

COMMENT ON COLUMN "StationaryCombustion"."valuechainpartnerid" IS 'Reference to value chain partner or supplier associated with the transaction.';

COMMENT ON COLUMN "Subindustry"."subindustryId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "Subindustry"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "Subindustry"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "Subindustry"."statecode" IS 'Status of the Subindustry. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "Subindustry"."statuscode" IS 'Reason for the status of the Subindustry. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "Subindustry"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "Subindustry"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "Subindustry"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "Subindustry"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "Subindustry"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "Subindustry"."industry" IS 'The unique identifier that relates to the industry ID.';

COMMENT ON COLUMN "Subindustry"."subindustrynum" IS 'Contains the mapping to the subindustry classification code in the form of a range.';

COMMENT ON COLUMN "TransportMode"."transportmodeId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "TransportMode"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "TransportMode"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "TransportMode"."statecode" IS 'Status of the SpendType. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "TransportMode"."statuscode" IS 'Reason for the status of the SpendType. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "TransportMode"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "TransportMode"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "TransportMode"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "TransportMode"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "TransportMode"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "TransportMode"."description" IS 'Optional description that provides additional detail about the entity or attribute.';

COMMENT ON COLUMN "TransportMode"."isSharedLoad" IS 'Indicates whether the transport mode carries less than a full load, or is shared across external organizations';

COMMENT ON COLUMN "TransportMode"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "TransportationAndDistribution"."transportationanddistributionId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "TransportationAndDistribution"."TTLInSeconds" IS 'Time to live in seconds.';

COMMENT ON COLUMN "TransportationAndDistribution"."partitionId" IS 'Logical partition id. A logical partition consists of a set of records with same partition id.';

COMMENT ON COLUMN "TransportationAndDistribution"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "TransportationAndDistribution"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "TransportationAndDistribution"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "TransportationAndDistribution"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "TransportationAndDistribution"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "TransportationAndDistribution"."consumptionenddate" IS 'End date of activity consumption.';

COMMENT ON COLUMN "TransportationAndDistribution"."consumptionstartdate" IS 'Start date of activity consumption.';

COMMENT ON COLUMN "TransportationAndDistribution"."cost" IS '	Cost associated with activity data.';

COMMENT ON COLUMN "TransportationAndDistribution"."costunit" IS 'Unit associated with the cost quantity.';

COMMENT ON COLUMN "TransportationAndDistribution"."dataqualitytype" IS 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002';

COMMENT ON COLUMN "TransportationAndDistribution"."description" IS 'Optional description to give additional detail to the entity or attribute.';

COMMENT ON COLUMN "TransportationAndDistribution"."distance" IS 'Quantity associated with distance activity which contributes to mobile combustion or supply chain travel.';

COMMENT ON COLUMN "TransportationAndDistribution"."distanceunit" IS 'Unique identifier for the unit associated with distance.';

COMMENT ON COLUMN "TransportationAndDistribution"."evidence" IS 'Optional field where evidence can be linked to an entity or attribute, if required.';

COMMENT ON COLUMN "TransportationAndDistribution"."facilityid" IS 'Unique identifier for Facility associated with business travel.';

COMMENT ON COLUMN "TransportationAndDistribution"."fuelquantity" IS 'Unique identifier of the fuel consumption data associated with combustion or supply chain fuel usage.';

COMMENT ON COLUMN "TransportationAndDistribution"."fuelquantityunit" IS 'Unique identifier of the unit associated with fuel data.';

COMMENT ON COLUMN "TransportationAndDistribution"."fueltypeid" IS 'Unique identifier of the fuel type associated with combustion or supply chain fuel usage.';

COMMENT ON COLUMN "TransportationAndDistribution"."goodsquantity" IS 'The amount of goods associated with this record.';

COMMENT ON COLUMN "TransportationAndDistribution"."goodsunit" IS 'The unit of measurement for the goods quantity in record.';

COMMENT ON COLUMN "TransportationAndDistribution"."industrialprocesstypeid" IS 'Type of industrial process used to track and associate with activity data.';

COMMENT ON COLUMN "TransportationAndDistribution"."organizationalunitid" IS 'Unique identifier for the organizational unit associated with business travel.';

COMMENT ON COLUMN "TransportationAndDistribution"."quantity" IS 'Generic quanity field associated with activity entities.';

COMMENT ON COLUMN "TransportationAndDistribution"."quantityunit" IS 'Unit associated with the quantity field.';

COMMENT ON COLUMN "TransportationAndDistribution"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "TransportationAndDistribution"."transactiondate" IS '	Date associated with the actual date when the transaction occurred.';

COMMENT ON COLUMN "TransportationAndDistribution"."transportationanddistributiontype" IS 'Marks what type of transportation and distribution this record represents. Transportation and distribution types are: Downstream: 700610001, Upstream: 700610000';

COMMENT ON COLUMN "TransportationAndDistribution"."transportmode" IS '	The transport mode that corresponds to this transportation and distribution activity.';

COMMENT ON COLUMN "TransportationAndDistribution"."vehicletype" IS 'Unique identifier for the vehicle type associated with combustion or supply chain transportation activities.';

COMMENT ON COLUMN "TransportationAndDistribution"."spendtypeid" IS 'Unique identifier for the spend type associated with the capital good.';

COMMENT ON COLUMN "TransportationAndDistribution"."valuechainpartnerid" IS 'Reference to value chain partner or supplier associated with the transaction.';

COMMENT ON COLUMN "Unit"."unitId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "Unit"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "Unit"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "Unit"."statecode" IS 'Status of the Unit. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "Unit"."statuscode" IS 'Reason for the status of the Unit. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "Unit"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "Unit"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "Unit"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "Unit"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "Unit"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "Unit"."baseunit" IS 'The base or primary unit of the unit group that the entity belongs to.';

COMMENT ON COLUMN "Unit"."conversionfactor" IS 'Conversion factor to convert to the base unit.';

COMMENT ON COLUMN "Unit"."isbaseunit" IS 'Indicates whether the unit is the base unit for the associated unit group.';

COMMENT ON COLUMN "Unit"."shouldValidateCreate" IS 'Describes whether the plugin should run validations on create of a unit record. For internal use only.';

COMMENT ON COLUMN "Unit"."unitgroup" IS '	The ID of the unit group that the unit is associated with.';

COMMENT ON COLUMN "UnitGroup"."unitgroupId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "UnitGroup"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "UnitGroup"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "UnitGroup"."statecode" IS 'Status of the UnitGroup. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "UnitGroup"."statuscode" IS 'Reason for the status of the UnitGroup. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "UnitGroup"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "UnitGroup"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "UnitGroup"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "UnitGroup"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "UnitGroup"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "UnitGroup"."baseunit" IS 'The base or primary unit of the unit group that the entity belongs to.';

COMMENT ON COLUMN "UnitGroup"."description" IS 'Optional description that provides additional detail about the entity or attribute.';

COMMENT ON COLUMN "UnitGroup"."reportingunit" IS 'Unique identifier for the unit associated with the unit group which will be used in reports.';

COMMENT ON COLUMN "ValueChainPartner"."valuechainpartnerId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "ValueChainPartner"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "ValueChainPartner"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "ValueChainPartner"."statecode" IS 'Status of the ValueChainPartner. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "ValueChainPartner"."statuscode" IS 'Reason for the status of the ValueChainPartner. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "ValueChainPartner"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "ValueChainPartner"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "ValueChainPartner"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "ValueChainPartner"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "ValueChainPartner"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "ValueChainPartner"."addresscity" IS 'The city in which the facility resides.';

COMMENT ON COLUMN "ValueChainPartner"."addresscountryisocode" IS 'The three letter ISO code of the country/region.';

COMMENT ON COLUMN "ValueChainPartner"."addresscounty" IS 'The county/region in which the facility resides.';

COMMENT ON COLUMN "ValueChainPartner"."addressstateprovince" IS 'The state or province in which the facility resides.';

COMMENT ON COLUMN "ValueChainPartner"."addressstreet1" IS 'The street address including the number and street name of the facility.';

COMMENT ON COLUMN "ValueChainPartner"."addressstreet2" IS 'Secondary street address information.';

COMMENT ON COLUMN "ValueChainPartner"."addresszippostalcode" IS 'The zip or postal code in which the facility resides.';

COMMENT ON COLUMN "ValueChainPartner"."companyregistrationnumber" IS 'Unique identifier that is related to the value chain partner.';

COMMENT ON COLUMN "ValueChainPartner"."description" IS 'Optional description to give additional detail to the entity or attribute.';

COMMENT ON COLUMN "ValueChainPartner"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "VehicleType"."vehicletypeId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "VehicleType"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "VehicleType"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "VehicleType"."statecode" IS 'Status of the UnitGroup. Codes are: Active: 0, Inactive: 1';

COMMENT ON COLUMN "VehicleType"."statuscode" IS 'Reason for the status of the UnitGroup. Codes are: Active: 1, Inactive: 2';

COMMENT ON COLUMN "VehicleType"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "VehicleType"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "VehicleType"."timeZoneRuleVersionNumber" IS 'For internal use only.';

COMMENT ON COLUMN "VehicleType"."UTCConversionTimeZoneCode" IS 'Time zone code that was in use when the record was created.';

COMMENT ON COLUMN "VehicleType"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "VehicleType"."description" IS 'Optional description that provides additional detail about the entity or attribute.';

COMMENT ON COLUMN "VehicleType"."isonroad" IS 'Identifier for the vehicle classification used in mobile combustion and needed for correct emission identification.';

COMMENT ON COLUMN "VehicleType"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."wastegeneratedinoperationsId" IS 'Unique identifier for entity instances';

COMMENT ON COLUMN "WasteGeneratedInOperations"."TTLInSeconds" IS 'Time to live in seconds.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."partitionId" IS 'Logical partition id. A logical partition consists of a set of records with same partition id.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."createdOn" IS 'Date and time when the record was created.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."modifiedOn" IS 'Date and time when the record was modified.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."importSequenceNumber" IS 'Sequence number of the import that created this record.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."overriddenCreatedOn" IS 'Date and time that the record was migrated.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."name" IS 'The name of the custom entity.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."consumptionenddate" IS 'End date of activity consumption.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."consumptionstartdate" IS 'Start date of activity consumption.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."cost" IS '	Cost associated with activity data.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."costunit" IS 'Unit associated with the cost quantity.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."dataqualitytype" IS 'Description of the data quality that identifies if the data is actual, estimated, or other descriptors of the data. Discriptions are: Actual: 700610000, Estimated: 700610001, Metered: 700610002';

COMMENT ON COLUMN "WasteGeneratedInOperations"."description" IS 'Optional description to give additional detail to the entity or attribute.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."disposalmethodid" IS 'Method of waste disposal, such as compost or recycle.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."distance" IS 'Quantity associated with distance activity which contributes to mobile combustion or supply chain travel.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."distanceunit" IS 'Unique identifier for the unit associated with distance.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."evidence" IS 'Optional field where evidence can be linked to an entity or attribute, if required.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."facilityid" IS 'Unique identifier for Facility associated with business travel.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."fuelquantity" IS 'Unique identifier of the fuel consumption data associated with combustion or supply chain fuel usage.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."fuelquantityunit" IS 'Unique identifier of the unit associated with fuel data.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."fueltypeid" IS 'Unique identifier of the fuel type associated with combustion or supply chain fuel usage.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."industrialprocesstypeid" IS 'Type of industrial process used to track and associate with activity data.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."materialid" IS 'Material of waste, such as aluminum.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."meternumber" IS 'Field representing meter number for purchased energy entity.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."organizationalunitid" IS 'Unique identifier for the organizational unit associated with business travel.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."origincorrelationid" IS 'An optional identifier to correlate record with data origin.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."quantity" IS 'Generic quanity field associated with activity entities.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."quantityunit" IS 'Unit associated with the quantity field.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."spendtypeid" IS 'Unique identifier for the spend type associated with the capital good.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."transactiondate" IS '	Date associated with the actual date when the transaction occurred.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."transportmode" IS '	The transport mode that corresponds to this transportation and distribution activity.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."valuechainpartnerid" IS 'Reference to value chain partner or supplier associated with the transaction.';

COMMENT ON COLUMN "WasteGeneratedInOperations"."wastequantity" IS 'Quantity of waste to be used in calculation';

COMMENT ON COLUMN "WasteGeneratedInOperations"."wastequantityunit" IS 'Unit associated with quantity of waste. Generally mass or volume.';

ALTER TABLE "PurchasedEnergy" ADD FOREIGN KEY ("contractualinstrumenttypeid") REFERENCES "ContractualInstrumentType" ("contractualinstrumenttypeId");

ALTER TABLE "Unit" ADD FOREIGN KEY ("unitgroup") REFERENCES "UnitGroup" ("unitgroupId");

ALTER TABLE "PurchasedEnergy" ADD FOREIGN KEY ("costunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "PurchasedEnergy" ADD FOREIGN KEY ("facilityid") REFERENCES "Facility" ("facilityId");

ALTER TABLE "PurchasedEnergy" ADD FOREIGN KEY ("facilityusagedetailid") REFERENCES "FacilityUsageDetail" ("facilityannualdetailId");

ALTER TABLE "PurchasedEnergy" ADD FOREIGN KEY ("organizationalunitid") REFERENCES "OrganizationalUnit" ("sustainabilityorganizationalunitId");

ALTER TABLE "PurchasedEnergy" ADD FOREIGN KEY ("quantityunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "PurchasedEnergy" ADD FOREIGN KEY ("spendtypeid") REFERENCES "SpendType" ("spendtypeId");

ALTER TABLE "PurchasedEnergy" ADD FOREIGN KEY ("valuechainpartnerid") REFERENCES "ValueChainPartner" ("valuechainpartnerId");

ALTER TABLE "PurchasedEnergy" ADD FOREIGN KEY ("goodsunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "ContractualInstrumentType" ADD FOREIGN KEY ("valuechainpartnerid") REFERENCES "ValueChainPartner" ("valuechainpartnerId");

ALTER TABLE "UnitGroup" ADD FOREIGN KEY ("reportingunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "FacilityUsageDetail" ADD FOREIGN KEY ("areaunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "SpendType" ADD FOREIGN KEY ("emissionsourceid") REFERENCES "EmissionsSource" ("emissionsourceId");

ALTER TABLE "StationaryCombustion" ADD FOREIGN KEY ("costunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "StationaryCombustion" ADD FOREIGN KEY ("distanceunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "StationaryCombustion" ADD FOREIGN KEY ("facilityid") REFERENCES "Facility" ("facilityId");

ALTER TABLE "StationaryCombustion" ADD FOREIGN KEY ("facilityusagedetailid") REFERENCES "FacilityUsageDetail" ("facilityannualdetailId");

ALTER TABLE "StationaryCombustion" ADD FOREIGN KEY ("quantityunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "StationaryCombustion" ADD FOREIGN KEY ("organizationalunitid") REFERENCES "OrganizationalUnit" ("sustainabilityorganizationalunitId");

ALTER TABLE "StationaryCombustion" ADD FOREIGN KEY ("valuechainpartnerid") REFERENCES "ValueChainPartner" ("valuechainpartnerId");

ALTER TABLE "StationaryCombustion" ADD FOREIGN KEY ("spendtypeid") REFERENCES "SpendType" ("spendtypeId");

ALTER TABLE "StationaryCombustion" ADD FOREIGN KEY ("goodsunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "StationaryCombustion" ADD FOREIGN KEY ("fueltypeid") REFERENCES "FuelType" ("fueltypeId");

ALTER TABLE "IndustrialProcess" ADD FOREIGN KEY ("industrialprocesstypeid") REFERENCES "IndustrialProcessType" ("industrialprocesstypeId");

ALTER TABLE "IndustrialProcess" ADD FOREIGN KEY ("organizationalunitid") REFERENCES "OrganizationalUnit" ("sustainabilityorganizationalunitId");

ALTER TABLE "IndustrialProcess" ADD FOREIGN KEY ("quantityunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "IndustrialProcess" ADD FOREIGN KEY ("costunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "IndustrialProcess" ADD FOREIGN KEY ("facilityid") REFERENCES "Facility" ("facilityId");

ALTER TABLE "StationaryCombustion" ADD FOREIGN KEY ("industrialprocesstypeid") REFERENCES "IndustrialProcessType" ("industrialprocesstypeId");

ALTER TABLE "StationaryCombustion" ADD FOREIGN KEY ("fuelquantityunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "MobileCombustion" ADD FOREIGN KEY ("goodsunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "MobileCombustion" ADD FOREIGN KEY ("costunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "MobileCombustion" ADD FOREIGN KEY ("fuelquantityunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "MobileCombustion" ADD FOREIGN KEY ("quantityunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "MobileCombustion" ADD FOREIGN KEY ("distanceunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "MobileCombustion" ADD FOREIGN KEY ("fueltypeid") REFERENCES "FuelType" ("fueltypeId");

ALTER TABLE "MobileCombustion" ADD FOREIGN KEY ("industrialprocesstypeid") REFERENCES "IndustrialProcessType" ("industrialprocesstypeId");

ALTER TABLE "MobileCombustion" ADD FOREIGN KEY ("organizationalunitid") REFERENCES "OrganizationalUnit" ("sustainabilityorganizationalunitId");

ALTER TABLE "MobileCombustion" ADD FOREIGN KEY ("vehicletype") REFERENCES "VehicleType" ("vehicletypeId");

ALTER TABLE "MobileCombustion" ADD FOREIGN KEY ("spendtypeid") REFERENCES "SpendType" ("spendtypeId");

ALTER TABLE "MobileCombustion" ADD FOREIGN KEY ("valuechainpartnerid") REFERENCES "ValueChainPartner" ("valuechainpartnerId");

ALTER TABLE "MobileCombustion" ADD FOREIGN KEY ("facilityid") REFERENCES "Facility" ("facilityId");

ALTER TABLE "MobileCombustion" ADD FOREIGN KEY ("facilityusagedetailid") REFERENCES "FacilityUsageDetail" ("facilityannualdetailId");

ALTER TABLE "FugitiveEmission" ADD FOREIGN KEY ("costunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "FugitiveEmission" ADD FOREIGN KEY ("quantityunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "FugitiveEmission" ADD FOREIGN KEY ("goodsunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "FugitiveEmission" ADD FOREIGN KEY ("facilityusagedetailid") REFERENCES "FacilityUsageDetail" ("facilityannualdetailId");

ALTER TABLE "FugitiveEmission" ADD FOREIGN KEY ("facilityid") REFERENCES "Facility" ("facilityId");

ALTER TABLE "FugitiveEmission" ADD FOREIGN KEY ("industrialprocesstypeid") REFERENCES "IndustrialProcessType" ("industrialprocesstypeId");

ALTER TABLE "FugitiveEmission" ADD FOREIGN KEY ("organizationalunitid") REFERENCES "OrganizationalUnit" ("sustainabilityorganizationalunitId");

ALTER TABLE "FugitiveEmission" ADD FOREIGN KEY ("spendtypeid") REFERENCES "SpendType" ("spendtypeId");

ALTER TABLE "FugitiveEmission" ADD FOREIGN KEY ("valuechainpartnerid") REFERENCES "ValueChainPartner" ("valuechainpartnerId");

ALTER TABLE "CapitalGood" ADD FOREIGN KEY ("costunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "CapitalGood" ADD FOREIGN KEY ("quantityunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "CapitalGood" ADD FOREIGN KEY ("spendtypeid") REFERENCES "SpendType" ("spendtypeId");

ALTER TABLE "CapitalGood" ADD FOREIGN KEY ("valuechainpartnerid") REFERENCES "ValueChainPartner" ("valuechainpartnerId");

ALTER TABLE "CapitalGood" ADD FOREIGN KEY ("organizationalunitid") REFERENCES "OrganizationalUnit" ("sustainabilityorganizationalunitId");

ALTER TABLE "CapitalGood" ADD FOREIGN KEY ("industrialprocesstypeid") REFERENCES "IndustrialProcessType" ("industrialprocesstypeId");

ALTER TABLE "CapitalGood" ADD FOREIGN KEY ("facilityid") REFERENCES "Facility" ("facilityId");

ALTER TABLE "TransportationAndDistribution" ADD FOREIGN KEY ("spendtypeid") REFERENCES "SpendType" ("spendtypeId");

ALTER TABLE "TransportationAndDistribution" ADD FOREIGN KEY ("valuechainpartnerid") REFERENCES "ValueChainPartner" ("valuechainpartnerId");

ALTER TABLE "TransportationAndDistribution" ADD FOREIGN KEY ("costunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "TransportationAndDistribution" ADD FOREIGN KEY ("distanceunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "TransportationAndDistribution" ADD FOREIGN KEY ("goodsunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "TransportationAndDistribution" ADD FOREIGN KEY ("fueltypeid") REFERENCES "FuelType" ("fueltypeId");

ALTER TABLE "TransportationAndDistribution" ADD FOREIGN KEY ("fuelquantityunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "TransportationAndDistribution" ADD FOREIGN KEY ("facilityid") REFERENCES "Facility" ("facilityId");

ALTER TABLE "TransportationAndDistribution" ADD FOREIGN KEY ("industrialprocesstypeid") REFERENCES "IndustrialProcessType" ("industrialprocesstypeId");

ALTER TABLE "TransportationAndDistribution" ADD FOREIGN KEY ("quantityunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "TransportationAndDistribution" ADD FOREIGN KEY ("vehicletype") REFERENCES "VehicleType" ("vehicletypeId");

ALTER TABLE "TransportationAndDistribution" ADD FOREIGN KEY ("transportmode") REFERENCES "TransportMode" ("transportmodeId");

ALTER TABLE "PurchasedGoodAndService" ADD FOREIGN KEY ("valuechainpartnerid") REFERENCES "ValueChainPartner" ("valuechainpartnerId");

ALTER TABLE "PurchasedGoodAndService" ADD FOREIGN KEY ("spendtypeid") REFERENCES "SpendType" ("spendtypeId");

ALTER TABLE "PurchasedGoodAndService" ADD FOREIGN KEY ("quantityunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "PurchasedGoodAndService" ADD FOREIGN KEY ("goodsunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "PurchasedGoodAndService" ADD FOREIGN KEY ("costunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "PurchasedGoodAndService" ADD FOREIGN KEY ("facilityid") REFERENCES "Facility" ("facilityId");

ALTER TABLE "BusinessTravel" ADD FOREIGN KEY ("facilityid") REFERENCES "Facility" ("facilityId");

ALTER TABLE "BusinessTravel" ADD FOREIGN KEY ("fuelquantityunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "BusinessTravel" ADD FOREIGN KEY ("nightstayunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "BusinessTravel" ADD FOREIGN KEY ("quantityunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "BusinessTravel" ADD FOREIGN KEY ("distanceunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "BusinessTravel" ADD FOREIGN KEY ("costunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "BusinessTravel" ADD FOREIGN KEY ("fueltypeid") REFERENCES "FuelType" ("fueltypeId");

ALTER TABLE "BusinessTravel" ADD FOREIGN KEY ("industrialprocesstypeid") REFERENCES "IndustrialProcessType" ("industrialprocesstypeId");

ALTER TABLE "BusinessTravel" ADD FOREIGN KEY ("organizationalunitid") REFERENCES "OrganizationalUnit" ("sustainabilityorganizationalunitId");

ALTER TABLE "BusinessTravel" ADD FOREIGN KEY ("vehicletype") REFERENCES "VehicleType" ("vehicletypeId");

ALTER TABLE "BusinessTravel" ADD FOREIGN KEY ("valuechainpartnerid") REFERENCES "ValueChainPartner" ("valuechainpartnerId");

ALTER TABLE "BusinessTravel" ADD FOREIGN KEY ("accommodationtypeid") REFERENCES "AccommodationType" ("accommodationtypeId");

ALTER TABLE "BusinessTravel" ADD FOREIGN KEY ("businesstraveltypeid") REFERENCES "BusinessTravelType" ("businesstraveltypeId");

ALTER TABLE "Emission" ADD FOREIGN KEY ("actualquantityunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "Emission" ADD FOREIGN KEY ("sf6unit") REFERENCES "Unit" ("unitId");

ALTER TABLE "Emission" ADD FOREIGN KEY ("emissionfactor") REFERENCES "EmissionFactor" ("emissionfactorId");

ALTER TABLE "Emission" ADD FOREIGN KEY ("emissionlookup") REFERENCES "FactorMapping" ("emissionlookupId");

ALTER TABLE "Emission" ADD FOREIGN KEY ("pfcsunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "Emission" ADD FOREIGN KEY ("otherghgsunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "Emission" ADD FOREIGN KEY ("nf3unit") REFERENCES "Unit" ("unitId");

ALTER TABLE "Emission" ADD FOREIGN KEY ("n2ounit") REFERENCES "Unit" ("unitId");

ALTER TABLE "Emission" ADD FOREIGN KEY ("hfcsunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "Emission" ADD FOREIGN KEY ("co2unit") REFERENCES "Unit" ("unitId");

ALTER TABLE "Emission" ADD FOREIGN KEY ("co2eunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "Emission" ADD FOREIGN KEY ("ch4unit") REFERENCES "Unit" ("unitId");

ALTER TABLE "Emission" ADD FOREIGN KEY ("facilityid") REFERENCES "Facility" ("facilityId");

ALTER TABLE "Emission" ADD FOREIGN KEY ("organizationalunitid") REFERENCES "OrganizationalUnit" ("sustainabilityorganizationalunitId");

ALTER TABLE "EstimationFactor" ADD FOREIGN KEY ("factorvalueunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "EstimationFactor" ADD FOREIGN KEY ("unit") REFERENCES "Unit" ("unitId");

ALTER TABLE "EmissionFactor" ADD FOREIGN KEY ("ch4unit") REFERENCES "Unit" ("unitId");

ALTER TABLE "EmissionFactor" ADD FOREIGN KEY ("co2eunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "EmissionFactor" ADD FOREIGN KEY ("co2unit") REFERENCES "Unit" ("unitId");

ALTER TABLE "EmissionFactor" ADD FOREIGN KEY ("heatcontentunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "EmissionFactor" ADD FOREIGN KEY ("hfcsunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "EmissionFactor" ADD FOREIGN KEY ("n2ounit") REFERENCES "Unit" ("unitId");

ALTER TABLE "EmissionFactor" ADD FOREIGN KEY ("nf3unit") REFERENCES "Unit" ("unitId");

ALTER TABLE "EmissionFactor" ADD FOREIGN KEY ("otherghgsunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "EmissionFactor" ADD FOREIGN KEY ("pfcsunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "EmissionFactor" ADD FOREIGN KEY ("sf6unit") REFERENCES "Unit" ("unitId");

ALTER TABLE "EmissionFactor" ADD FOREIGN KEY ("unit") REFERENCES "Unit" ("unitId");

ALTER TABLE "EmissionFactor" ADD FOREIGN KEY ("biogenicco2factorunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "Subindustry" ADD FOREIGN KEY ("industry") REFERENCES "Industry" ("industryId");

ALTER TABLE "IndustryClassification" ADD FOREIGN KEY ("subindustryid") REFERENCES "Subindustry" ("subindustryId");

ALTER TABLE "IndustryClassification" ADD FOREIGN KEY ("organizationalprofile") REFERENCES "OrganizationalProfile" ("organizationalprofileId");

ALTER TABLE "OrganizationalHierarchy" ADD FOREIGN KEY ("organizationalunitid") REFERENCES "OrganizationalUnit" ("sustainabilityorganizationalunitId");

ALTER TABLE "OrganizationalHierarchy" ADD FOREIGN KEY ("parentid") REFERENCES "OrganizationalUnit" ("sustainabilityorganizationalunitId");

ALTER TABLE "EmissionsSource" ADD FOREIGN KEY ("parentemissionsource") REFERENCES "EmissionsSource" ("emissionsourceId");

ALTER TABLE "WasteGeneratedInOperations" ADD FOREIGN KEY ("disposalmethodid") REFERENCES "DisposalMethod" ("disposalmethodId");

ALTER TABLE "WasteGeneratedInOperations" ADD FOREIGN KEY ("materialid") REFERENCES "Material" ("materialId");

ALTER TABLE "MonthlyRevenue" ADD FOREIGN KEY ("sustainabilityorganizationalunit") REFERENCES "OrganizationalUnit" ("sustainabilityorganizationalunitId");

ALTER TABLE "FugitiveEmission" ADD FOREIGN KEY ("greenhousegas") REFERENCES "GreenhouseGas" ("greenhousegasId");

ALTER TABLE "WasteGeneratedInOperations" ADD FOREIGN KEY ("costunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "WasteGeneratedInOperations" ADD FOREIGN KEY ("distanceunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "WasteGeneratedInOperations" ADD FOREIGN KEY ("fuelquantityunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "WasteGeneratedInOperations" ADD FOREIGN KEY ("quantityunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "WasteGeneratedInOperations" ADD FOREIGN KEY ("wastequantityunit") REFERENCES "Unit" ("unitId");

ALTER TABLE "WasteGeneratedInOperations" ADD FOREIGN KEY ("facilityid") REFERENCES "Facility" ("facilityId");

ALTER TABLE "WasteGeneratedInOperations" ADD FOREIGN KEY ("fueltypeid") REFERENCES "FuelType" ("fueltypeId");

ALTER TABLE "WasteGeneratedInOperations" ADD FOREIGN KEY ("organizationalunitid") REFERENCES "OrganizationalUnit" ("sustainabilityorganizationalunitId");

ALTER TABLE "WasteGeneratedInOperations" ADD FOREIGN KEY ("industrialprocesstypeid") REFERENCES "IndustrialProcessType" ("industrialprocesstypeId");

ALTER TABLE "WasteGeneratedInOperations" ADD FOREIGN KEY ("spendtypeid") REFERENCES "SpendType" ("spendtypeId");

ALTER TABLE "WasteGeneratedInOperations" ADD FOREIGN KEY ("transportmode") REFERENCES "TransportMode" ("transportmodeId");

ALTER TABLE "WasteGeneratedInOperations" ADD FOREIGN KEY ("valuechainpartnerid") REFERENCES "ValueChainPartner" ("valuechainpartnerId");

ALTER TABLE "Emission" ADD FOREIGN KEY ("emissionsourcev2") REFERENCES "EmissionsSource" ("emissionsourceId");

ALTER TABLE "Emission" ADD FOREIGN KEY ("calculationlibrary") REFERENCES "FactorLibrary" ("calculationlibraryId");

ALTER TABLE "EmissionFactor" ADD FOREIGN KEY ("calculationlibraryId") REFERENCES "FactorLibrary" ("calculationlibraryId");

ALTER TABLE "EstimationFactor" ADD FOREIGN KEY ("factorlibrary") REFERENCES "FactorLibrary" ("calculationlibraryId");
