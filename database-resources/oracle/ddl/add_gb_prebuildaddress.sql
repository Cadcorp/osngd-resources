/* This DDL is based on data schema version 2.0 */
CREATE TABLE ADD_GB_PREBUILDADDRESS (
	UPRN NUMBER(12) not null,
	VERSIONDATE DATE not null,
	VERSIONAVAILABLEFROMDATE TIMESTAMP not null,
	VERSIONAVAILABLETODATE TIMESTAMP,
	CHANGETYPE VARCHAR2(50) not null,
	THEME VARCHAR2(40) not null,
	DESCRIPTION VARCHAR2(50) not null,
	ORGANISATIONNAME VARCHAR2(100),
	POBOXNUMBER VARCHAR2(13),
	SUBNAME VARCHAR2(110),
	NAME VARCHAR2(110),
	"NUMBER" VARCHAR2(13),
	STREETNAME VARCHAR2(100) not null,
	LOCALITY VARCHAR2(35),
	TOWNNAME VARCHAR2(35),
	ISLANDNAME VARCHAR2(50),
	POSTCODE VARCHAR2(8) not null,
	FULLADDRESS VARCHAR2(500) not null,
	COUNTRY VARCHAR2(16) not null,
	ALTERNATELANGUAGESUBNAME VARCHAR2(110),
	ALTERNATELANGUAGENAME VARCHAR2(110),
	ALTERNATELANGUAGENUMBER VARCHAR2(13),
	ALTERNATELANGUAGESTREETNAME VARCHAR2(100),
	ALTERNATELANGUAGELOCALITY VARCHAR2(35),
	ALTERNATELANGUAGETOWNNAME VARCHAR2(35),
	ALTERNATELANGUAGEISLANDNAME VARCHAR2(50),
	ALTERNATELANGUAGE VARCHAR2(3),
	ALTERNATELANGUAGEFULLADDRESS VARCHAR2(500),
	FLOORLEVEL VARCHAR2(30),
	LOWESTFLOORLEVEL NUMERIC(3,1),
	HIGHESTFLOORLEVEL NUMERIC(3,1),
	CLASSIFICATIONCODE VARCHAR2(6) not null,
	CLASSIFICATIONDESCRIPTION VARCHAR2(230) not null,
	PRIMARYCLASSIFICATIONDESCRIPTION VARCHAR2(120) not null,
	SECONDARYCLASSIFICATIONDESCRIPTION VARCHAR2(120),
	TERTIARYCLASSIFICATIONDESCRIPTION VARCHAR2(120),
	QUATERNARYCLASSIFICATIONDESCRIPTION VARCHAR2(120),
	BUILDSTATUS VARCHAR2(12) not null,
	BUILDSTATUSDATE DATE,
	ADDRESSSTATUS VARCHAR2(11) not null,
	POSTCODESOURCE VARCHAR2(75) not null,
	PARENTUPRN NUMBER(12),
	ROOTUPRN NUMBER(12),
	HIERARCHYLEVEL NUMBER(3) not null,
	USRN NUMBER(8) not null,
	USRNMATCHINDICATOR VARCHAR2(17) not null,
	LOCALCUSTODIANCODE NUMBER(4) not null,
	LOCALCUSTODIANDESCRIPTION VARCHAR2(35) not null,
	LOWERTIERLOCALAUTHORITYGSSCODE VARCHAR2(9),
	EASTING NUMERIC(8,2) not null,
	NORTHING NUMERIC(9,2) not null,
	LATITUDE NUMERIC(9,7) not null,
	LONGITUDE NUMERIC(9,7) not null,
	GEOMETRY SDO_GEOMETRY not null,
	POSITIONALACCURACY VARCHAR2(25) not null,
	EFFECTIVESTARTDATE DATE not null,
	EFFECTIVEENDDATE DATE,
	PRIMARY KEY (uprn)
);
CREATE TABLE add_gb_prebuildaddress_pstladd (
	UDPRN NUMBER(8),
	UPRN NUMBER(12) not null,
	FEATURETYPEVERSIONDATE DATE,
	ORGANISATIONNAME VARCHAR2(60),
	DEPARTMENTNAME VARCHAR2(60),
	SUBBUILDINGNAME VARCHAR2(30),
	BUILDINGNAME VARCHAR2(50),
	BUILDINGNUMBER VARCHAR2(4),
	DEPENDENTTHOROUGHFARE VARCHAR2(80),
	THOROUGHFARE VARCHAR2(80),
	DOUBLEDEPENDENTLOCALITY VARCHAR2(35),
	DEPENDENTLOCALITY VARCHAR2(35),
	POSTTOWN VARCHAR2(30),
	POSTCODE VARCHAR2(8) not null,
	POSTCODETYPE VARCHAR2(10),
	DELIVERYPOINTSUFFIX VARCHAR2(2),
	WELSHDEPENDENTTHOROUGHFARE VARCHAR2(80),
	WELSHTHOROUGHFARE VARCHAR2(80),
	WELSHDOUBLEDEPENDENTLOCALITY VARCHAR2(35),
	WELSHDEPENDENTLOCALITY VARCHAR2(35),
	WELSHPOSTTOWN VARCHAR2(30),
	POBOXNUMBER VARCHAR2(6),
	PROCESSDATE DATE,
	"SOURCE" VARCHAR2(30),
	UPDATEDATE DATE,
	EFFECTIVESTARTDATE DATE not null,
	EFFECTIVEENDDATE DATE,
	PRIMARY KEY (udprn,featuretypeversiondate)
);
CREATE TABLE add_gb_prebuildaddress_altadd (
	ALTERNATEADDRESSID VARCHAR2(36),
	UPRN NUMBER(12) not null,
	FEATURETYPEVERSIONDATE DATE,
	USRN NUMBER(8) not null,
	ADDRESSSTATUS VARCHAR2(11) not null,
	ALTERNATESUBNAME VARCHAR2(110),
	ALTERNATENAME VARCHAR2(110),
	ALTERNATENUMBER VARCHAR2(13),
	STREETNAME VARCHAR2(100) not null,
	LOCALITY VARCHAR2(35),
	TOWNNAME VARCHAR2(35),
	ISLANDNAME VARCHAR2(50),
	"LANGUAGE" VARCHAR2(3),
	POSTCODE VARCHAR2(8) not null,
	FULLADDRESS VARCHAR2(500) not null,
	FLOORLEVEL VARCHAR2(30),
	LOWESTFLOORLEVEL NUMERIC(3,1),
	HIGHESTFLOORLEVEL NUMERIC(3,1),
	UPDATEDATE DATE,
	EFFECTIVESTARTDATE DATE not null,
	EFFECTIVEENDDATE DATE,
	PRIMARY KEY (alternateaddressid,featuretypeversiondate)
);
CREATE TABLE add_gb_prebuildaddress_rltenty (
	RELATEDENTITYID VARCHAR2(36),
	UPRN NUMBER(12) not null,
	FEATURETYPEVERSIONDATE DATE,
	CROSSREFERENCEFEATURE VARCHAR2(40),
	CROSSREFERENCEID VARCHAR2(36),
	RELATIONSHIPTYPE VARCHAR2(30),
	"SOURCE" VARCHAR2(110),
	UPDATEDATE DATE,
	EFFECTIVESTARTDATE DATE,
	EFFECTIVEENDDATE DATE,
	PRIMARY KEY (relatedentityid,featuretypeversiondate)
);
CREATE TABLE add_gb_prebuildaddress_otrclass (
	OTHERCLASSIFICATIONID VARCHAR2(36),
	UPRN NUMBER(12) not null,
	FEATURETYPEVERSIONDATE DATE,
	CLASSIFICATIONCODE VARCHAR2(6) not null,
	CLASSIFICATIONDESCRIPTION VARCHAR2(230),
	CLASSIFICATIONSCHEME VARCHAR2(60),
	SCHEMEVERSION VARCHAR2(60),
	UPDATEDATE DATE,
	PRIMARY KEY (otherclassificationid,featuretypeversiondate)
);
