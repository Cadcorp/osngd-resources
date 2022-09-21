CREATE TABLE add_gb_builtaddress (
	uprn NUMBER(12) not null,
	versiondate DATE not null,
	versionavailablefromdate TIMESTAMP not null,
	versionavailabletodate TIMESTAMP,
	changetype VARCHAR2(50) not null,
	theme VARCHAR2(40) not null,
	description VARCHAR2(50) not null,
	organisationname VARCHAR2(100),
	poboxnumber VARCHAR2(13),
	subname VARCHAR2(110),
	name VARCHAR2(110),
	"NUMBER" VARCHAR2(13),
	streetname VARCHAR2(100) not null,
	locality VARCHAR2(35),
	townname VARCHAR2(35),
	islandname VARCHAR2(50),
	postcode VARCHAR2(8) not null,
	country VARCHAR2(16) not null,
	alternatelanguagesubname VARCHAR2(110),
	alternatelanguagename VARCHAR2(110),
	alternatelanguagenumber VARCHAR2(13),
	alternatelanguagestreetname VARCHAR2(100),
	alternatelanguagelocality VARCHAR2(35),
	alternatelanguagetownname VARCHAR2(35),
	alternatelanguageislandname VARCHAR2(50),
	alternatelanguage VARCHAR2(3),
	floorlevel VARCHAR2(30),
	classificationcode VARCHAR2(6) not null,
	classificationdescription VARCHAR2(230) not null,
	buildstatus VARCHAR2(12) not null,
	buildstatusdate DATE,
	addressstatus VARCHAR2(11) not null,
	postcodesource VARCHAR2(75) not null,
	parentuprn NUMBER(12),
	rootuprn NUMBER(12),
	hierarchylevel NUMBER(3) not null,
	usrn NUMBER(8) not null,
	usrnmatchindicator VARCHAR2(17) not null,
	localcustodiancode NUMBER(4) not null,
	localcustodiandescription VARCHAR2(35) not null,
	lowertierlocalauthoritygsscode VARCHAR2(9),
	easting NUMERIC(8,2) not null,
	northing NUMERIC(9,2) not null,
	latitude NUMERIC(9,7) not null,
	longitude NUMERIC(9,7) not null,
	geometry SDO_GEOMETRY not null,
	positionalaccuracy VARCHAR2(25) not null,
	effectivestartdate DATE not null,
	effectiveenddate DATE,
	PRIMARY KEY (uprn)
);
CREATE TABLE add_gb_builtaddress_pstladd (
	udprn NUMBER(8),
	uprn NUMBER(12) not null,
	featuretypeversiondate DATE,
	organisationname VARCHAR2(60),
	departmentname VARCHAR2(60),
	subbuildingname VARCHAR2(30),
	buildingname VARCHAR2(50),
	buildingnumber VARCHAR2(4),
	dependentthoroughfare VARCHAR2(80),
	thoroughfare VARCHAR2(80),
	doubledependentlocality VARCHAR2(35),
	dependentlocality VARCHAR2(35),
	posttown VARCHAR2(30),
	postcode VARCHAR2(8) not null,
	postcodetype VARCHAR2(10),
	deliverypointsuffix VARCHAR2(2),
	welshdependentthoroughfare VARCHAR2(80),
	welshthoroughfare VARCHAR2(80),
	welshdoubledependentlocality VARCHAR2(35),
	welshdependentlocality VARCHAR2(35),
	welshposttown VARCHAR2(30),
	poboxnumber VARCHAR2(6),
	processdate DATE,
	"SOURCE" VARCHAR2(30),
	updatedate DATE,
	effectivestartdate DATE not null,
	effectiveenddate DATE,
	PRIMARY KEY (udprn,featuretypeversiondate)
);
CREATE TABLE add_gb_builtaddress_altadd (
	alternateaddressid VARCHAR2(),
	uprn NUMBER(12) not null,
	featuretypeversiondate DATE,
	usrn NUMBER(8) not null,
	addressstatus VARCHAR2(11) not null,
	alternatesubname VARCHAR2(110),
	alternatename VARCHAR2(110),
	alternatenumber VARCHAR2(13),
	streetname VARCHAR2(100) not null,
	locality VARCHAR2(35),
	townname VARCHAR2(35),
	islandname VARCHAR2(50),
	"LANGUAGE" VARCHAR2(3),
	postcode VARCHAR2(8) not null,
	floorlevel VARCHAR2(30),
	updatedate DATE,
	effectivestartdate DATE not null,
	effectiveenddate DATE,
	PRIMARY KEY (alternateaddressid,featuretypeversiondate)
);
CREATE TABLE add_gb_builtaddress_rltenty (
	relatedentityid VARCHAR2(),
	uprn NUMBER(12) not null,
	featuretypeversiondate DATE,
	crossreferencefeature VARCHAR2(30),
	crossreferenceid VARCHAR2(30),
	relationshiptype VARCHAR2(30),
	"SOURCE" VARCHAR2(110),
	updatedate DATE,
	PRIMARY KEY (relatedentityid,featuretypeversiondate)
);
CREATE TABLE add_gb_builtaddress_otrclass (
	otherclassificationid VARCHAR2(),
	uprn NUMBER(12) not null,
	featuretypeversiondate DATE,
	classificationcode VARCHAR2(6) not null,
	classificationdescription VARCHAR2(230) not null,
	classificationscheme VARCHAR2(60),
	schemeversion VARCHAR2(60),
	updatedate DATE,
	PRIMARY KEY (otherclassificationid,featuretypeversiondate)
);
CREATE TABLE add_gb_historicaddress (
	uprn NUMBER(12) not null,
	versiondate DATE not null,
	versionavailablefromdate TIMESTAMP not null,
	versionavailabletodate TIMESTAMP,
	changetype VARCHAR2(50) not null,
	theme VARCHAR2(40) not null,
	description VARCHAR2(50) not null,
	organisationname VARCHAR2(100),
	poboxnumber VARCHAR2(13),
	subname VARCHAR2(110),
	name VARCHAR2(110),
	"NUMBER" VARCHAR2(13),
	streetname VARCHAR2(100) not null,
	locality VARCHAR2(35),
	townname VARCHAR2(35),
	islandname VARCHAR2(50),
	postcode VARCHAR2(8) not null,
	country VARCHAR2(16) not null,
	alternatelanguagesubname VARCHAR2(110),
	alternatelanguagename VARCHAR2(110),
	alternatelanguagenumber VARCHAR2(13),
	alternatelanguagestreetname VARCHAR2(100),
	alternatelanguagelocality VARCHAR2(35),
	alternatelanguagetownname VARCHAR2(35),
	alternatelanguageislandname VARCHAR2(50),
	alternatelanguage VARCHAR2(3),
	floorlevel VARCHAR2(30),
	classificationcode VARCHAR2(6) not null,
	classificationdescription VARCHAR2(230) not null,
	buildstatus VARCHAR2(12) not null,
	buildstatusdate DATE,
	addressstatus VARCHAR2(11) not null,
	postcodesource VARCHAR2(75) not null,
	parentuprn NUMBER(12),
	rootuprn NUMBER(12),
	hierarchylevel NUMBER(3) not null,
	usrn NUMBER(8) not null,
	usrnmatchindicator VARCHAR2(17) not null,
	localcustodiancode NUMBER(4) not null,
	localcustodiandescription VARCHAR2(35) not null,
	lowertierlocalauthoritygsscode VARCHAR2(9),
	easting NUMERIC(8,2) not null,
	northing NUMERIC(9,2) not null,
	latitude NUMERIC(9,7) not null,
	longitude NUMERIC(9,7) not null,
	geometry SDO_GEOMETRY not null,
	positionalaccuracy VARCHAR2(25) not null,
	effectivestartdate DATE not null,
	effectiveenddate DATE,
	PRIMARY KEY (uprn)
);
CREATE TABLE add_gb_historicaddress_pstladd (
	udprn NUMBER(8),
	uprn NUMBER(12) not null,
	featuretypeversiondate DATE,
	organisationname VARCHAR2(60),
	departmentname VARCHAR2(60),
	subbuildingname VARCHAR2(30),
	buildingname VARCHAR2(50),
	buildingnumber VARCHAR2(4),
	dependentthoroughfare VARCHAR2(80),
	thoroughfare VARCHAR2(80),
	doubledependentlocality VARCHAR2(35),
	dependentlocality VARCHAR2(35),
	posttown VARCHAR2(30),
	postcode VARCHAR2(8) not null,
	postcodetype VARCHAR2(10),
	deliverypointsuffix VARCHAR2(2),
	welshdependentthoroughfare VARCHAR2(80),
	welshthoroughfare VARCHAR2(80),
	welshdoubledependentlocality VARCHAR2(35),
	welshdependentlocality VARCHAR2(35),
	welshposttown VARCHAR2(30),
	poboxnumber VARCHAR2(6),
	processdate DATE,
	"SOURCE" VARCHAR2(30),
	updatedate DATE,
	effectivestartdate DATE not null,
	effectiveenddate DATE,
	PRIMARY KEY (udprn,featuretypeversiondate)
);
CREATE TABLE add_gb_historicaddress_altadd (
	alternateaddressid VARCHAR2(),
	uprn NUMBER(12) not null,
	featuretypeversiondate DATE,
	usrn NUMBER(8) not null,
	addressstatus VARCHAR2(11) not null,
	alternatesubname VARCHAR2(110),
	alternatename VARCHAR2(110),
	alternatenumber VARCHAR2(13),
	streetname VARCHAR2(100) not null,
	locality VARCHAR2(35),
	townname VARCHAR2(35),
	islandname VARCHAR2(50),
	"LANGUAGE" VARCHAR2(3),
	postcode VARCHAR2(8) not null,
	floorlevel VARCHAR2(30),
	updatedate DATE,
	effectivestartdate DATE not null,
	effectiveenddate DATE,
	PRIMARY KEY (alternateaddressid,featuretypeversiondate)
);
CREATE TABLE add_gb_historicaddress_rltenty (
	relatedentityid VARCHAR2(),
	uprn NUMBER(12) not null,
	featuretypeversiondate DATE,
	crossreferencefeature VARCHAR2(30),
	crossreferenceid VARCHAR2(30),
	relationshiptype VARCHAR2(30),
	"SOURCE" VARCHAR2(110),
	updatedate DATE,
	PRIMARY KEY (relatedentityid,featuretypeversiondate)
);
CREATE TABLE add_gb_historicaddress_otrclass (
	otherclassificationid VARCHAR2(),
	uprn NUMBER(12) not null,
	featuretypeversiondate DATE,
	classificationcode VARCHAR2(6) not null,
	classificationdescription VARCHAR2(230) not null,
	classificationscheme VARCHAR2(60),
	schemeversion VARCHAR2(60),
	updatedate DATE,
	PRIMARY KEY (otherclassificationid,featuretypeversiondate)
);
CREATE TABLE add_gb_nonaddressableobject (
	uprn NUMBER(12) not null,
	versiondate DATE not null,
	versionavailablefromdate TIMESTAMP not null,
	versionavailabletodate TIMESTAMP,
	changetype VARCHAR2(50) not null,
	theme VARCHAR2(40) not null,
	description VARCHAR2(50) not null,
	organisationname VARCHAR2(100),
	poboxnumber VARCHAR2(13),
	subname VARCHAR2(110),
	name VARCHAR2(110),
	"NUMBER" VARCHAR2(13),
	streetname VARCHAR2(100) not null,
	locality VARCHAR2(35),
	townname VARCHAR2(35),
	islandname VARCHAR2(50),
	postcode VARCHAR2(8) not null,
	country VARCHAR2(16) not null,
	alternatelanguagesubname VARCHAR2(110),
	alternatelanguagename VARCHAR2(110),
	alternatelanguagenumber VARCHAR2(13),
	alternatelanguagestreetname VARCHAR2(100),
	alternatelanguagelocality VARCHAR2(35),
	alternatelanguagetownname VARCHAR2(35),
	alternatelanguageislandname VARCHAR2(50),
	alternatelanguage VARCHAR2(3),
	floorlevel VARCHAR2(30),
	classificationcode VARCHAR2(6) not null,
	classificationdescription VARCHAR2(230) not null,
	buildstatus VARCHAR2(12) not null,
	buildstatusdate DATE,
	addressstatus VARCHAR2(11) not null,
	postcodesource VARCHAR2(75) not null,
	parentuprn NUMBER(12),
	rootuprn NUMBER(12),
	hierarchylevel NUMBER(3) not null,
	usrn NUMBER(8) not null,
	usrnmatchindicator VARCHAR2(17) not null,
	localcustodiancode NUMBER(4) not null,
	localcustodiandescription VARCHAR2(35) not null,
	lowertierlocalauthoritygsscode VARCHAR2(9),
	easting NUMERIC(8,2) not null,
	northing NUMERIC(9,2) not null,
	latitude NUMERIC(9,7) not null,
	longitude NUMERIC(9,7) not null,
	geometry SDO_GEOMETRY not null,
	positionalaccuracy VARCHAR2(25) not null,
	effectivestartdate DATE not null,
	effectiveenddate DATE,
	PRIMARY KEY (uprn)
);
CREATE TABLE add_gb_nonaddressableobject_pstladd (
	udprn NUMBER(8),
	uprn NUMBER(12) not null,
	featuretypeversiondate DATE,
	organisationname VARCHAR2(60),
	departmentname VARCHAR2(60),
	subbuildingname VARCHAR2(30),
	buildingname VARCHAR2(50),
	buildingnumber VARCHAR2(4),
	dependentthoroughfare VARCHAR2(80),
	thoroughfare VARCHAR2(80),
	doubledependentlocality VARCHAR2(35),
	dependentlocality VARCHAR2(35),
	posttown VARCHAR2(30),
	postcode VARCHAR2(8) not null,
	postcodetype VARCHAR2(10),
	deliverypointsuffix VARCHAR2(2),
	welshdependentthoroughfare VARCHAR2(80),
	welshthoroughfare VARCHAR2(80),
	welshdoubledependentlocality VARCHAR2(35),
	welshdependentlocality VARCHAR2(35),
	welshposttown VARCHAR2(30),
	poboxnumber VARCHAR2(6),
	processdate DATE,
	"SOURCE" VARCHAR2(30),
	updatedate DATE,
	effectivestartdate DATE not null,
	effectiveenddate DATE,
	PRIMARY KEY (udprn,featuretypeversiondate)
);
CREATE TABLE add_gb_nonaddressableobject_altadd (
	alternateaddressid VARCHAR2(),
	uprn NUMBER(12) not null,
	featuretypeversiondate DATE,
	usrn NUMBER(8) not null,
	addressstatus VARCHAR2(11) not null,
	alternatesubname VARCHAR2(110),
	alternatename VARCHAR2(110),
	alternatenumber VARCHAR2(13),
	streetname VARCHAR2(100) not null,
	locality VARCHAR2(35),
	townname VARCHAR2(35),
	islandname VARCHAR2(50),
	"LANGUAGE" VARCHAR2(3),
	postcode VARCHAR2(8) not null,
	floorlevel VARCHAR2(30),
	updatedate DATE,
	effectivestartdate DATE not null,
	effectiveenddate DATE,
	PRIMARY KEY (alternateaddressid,featuretypeversiondate)
);
CREATE TABLE add_gb_nonaddressableobject_rltenty (
	relatedentityid VARCHAR2(),
	uprn NUMBER(12) not null,
	featuretypeversiondate DATE,
	crossreferencefeature VARCHAR2(30),
	crossreferenceid VARCHAR2(30),
	relationshiptype VARCHAR2(30),
	"SOURCE" VARCHAR2(110),
	updatedate DATE,
	PRIMARY KEY (relatedentityid,featuretypeversiondate)
);
CREATE TABLE add_gb_nonaddressableobject_otrclass (
	otherclassificationid VARCHAR2(),
	uprn NUMBER(12) not null,
	featuretypeversiondate DATE,
	classificationcode VARCHAR2(6) not null,
	classificationdescription VARCHAR2(230) not null,
	classificationscheme VARCHAR2(60),
	schemeversion VARCHAR2(60),
	updatedate DATE,
	PRIMARY KEY (otherclassificationid,featuretypeversiondate)
);
CREATE TABLE add_gb_prebuildaddress (
	uprn NUMBER(12) not null,
	versiondate DATE not null,
	versionavailablefromdate TIMESTAMP not null,
	versionavailabletodate TIMESTAMP,
	changetype VARCHAR2(50) not null,
	theme VARCHAR2(40) not null,
	description VARCHAR2(50) not null,
	organisationname VARCHAR2(100),
	poboxnumber VARCHAR2(13),
	subname VARCHAR2(110),
	name VARCHAR2(110),
	"NUMBER" VARCHAR2(13),
	streetname VARCHAR2(100) not null,
	locality VARCHAR2(35),
	townname VARCHAR2(35),
	islandname VARCHAR2(50),
	postcode VARCHAR2(8) not null,
	country VARCHAR2(16) not null,
	alternatelanguagesubname VARCHAR2(110),
	alternatelanguagename VARCHAR2(110),
	alternatelanguagenumber VARCHAR2(13),
	alternatelanguagestreetname VARCHAR2(100),
	alternatelanguagelocality VARCHAR2(35),
	alternatelanguagetownname VARCHAR2(35),
	alternatelanguageislandname VARCHAR2(50),
	alternatelanguage VARCHAR2(3),
	floorlevel VARCHAR2(30),
	classificationcode VARCHAR2(6) not null,
	classificationdescription VARCHAR2(230) not null,
	buildstatus VARCHAR2(12) not null,
	buildstatusdate DATE,
	addressstatus VARCHAR2(11) not null,
	postcodesource VARCHAR2(75) not null,
	parentuprn NUMBER(12),
	rootuprn NUMBER(12),
	hierarchylevel NUMBER(3) not null,
	usrn NUMBER(8) not null,
	usrnmatchindicator VARCHAR2(17) not null,
	localcustodiancode NUMBER(4) not null,
	localcustodiandescription VARCHAR2(35) not null,
	lowertierlocalauthoritygsscode VARCHAR2(9),
	easting NUMERIC(8,2) not null,
	northing NUMERIC(9,2) not null,
	latitude NUMERIC(9,7) not null,
	longitude NUMERIC(9,7) not null,
	geometry SDO_GEOMETRY not null,
	positionalaccuracy VARCHAR2(25) not null,
	effectivestartdate DATE not null,
	effectiveenddate DATE,
	PRIMARY KEY (uprn)
);
CREATE TABLE add_gb_prebuildaddress_pstladd (
	udprn NUMBER(8),
	uprn NUMBER(12) not null,
	featuretypeversiondate DATE,
	organisationname VARCHAR2(60),
	departmentname VARCHAR2(60),
	subbuildingname VARCHAR2(30),
	buildingname VARCHAR2(50),
	buildingnumber VARCHAR2(4),
	dependentthoroughfare VARCHAR2(80),
	thoroughfare VARCHAR2(80),
	doubledependentlocality VARCHAR2(35),
	dependentlocality VARCHAR2(35),
	posttown VARCHAR2(30),
	postcode VARCHAR2(8) not null,
	postcodetype VARCHAR2(10),
	deliverypointsuffix VARCHAR2(2),
	welshdependentthoroughfare VARCHAR2(80),
	welshthoroughfare VARCHAR2(80),
	welshdoubledependentlocality VARCHAR2(35),
	welshdependentlocality VARCHAR2(35),
	welshposttown VARCHAR2(30),
	poboxnumber VARCHAR2(6),
	processdate DATE,
	"SOURCE" VARCHAR2(30),
	updatedate DATE,
	effectivestartdate DATE not null,
	effectiveenddate DATE,
	PRIMARY KEY (udprn,featuretypeversiondate)
);
CREATE TABLE add_gb_prebuildaddress_altadd (
	alternateaddressid VARCHAR2(),
	uprn NUMBER(12) not null,
	featuretypeversiondate DATE,
	usrn NUMBER(8) not null,
	addressstatus VARCHAR2(11) not null,
	alternatesubname VARCHAR2(110),
	alternatename VARCHAR2(110),
	alternatenumber VARCHAR2(13),
	streetname VARCHAR2(100) not null,
	locality VARCHAR2(35),
	townname VARCHAR2(35),
	islandname VARCHAR2(50),
	"LANGUAGE" VARCHAR2(3),
	postcode VARCHAR2(8) not null,
	floorlevel VARCHAR2(30),
	updatedate DATE,
	effectivestartdate DATE not null,
	effectiveenddate DATE,
	PRIMARY KEY (alternateaddressid,featuretypeversiondate)
);
CREATE TABLE add_gb_prebuildaddress_rltenty (
	relatedentityid VARCHAR2(),
	uprn NUMBER(12) not null,
	featuretypeversiondate DATE,
	crossreferencefeature VARCHAR2(30),
	crossreferenceid VARCHAR2(30),
	relationshiptype VARCHAR2(30),
	"SOURCE" VARCHAR2(110),
	updatedate DATE,
	PRIMARY KEY (relatedentityid,featuretypeversiondate)
);
CREATE TABLE add_gb_prebuildaddress_otrclass (
	otherclassificationid VARCHAR2(),
	uprn NUMBER(12) not null,
	featuretypeversiondate DATE,
	classificationcode VARCHAR2(6) not null,
	classificationdescription VARCHAR2(230) not null,
	classificationscheme VARCHAR2(60),
	schemeversion VARCHAR2(60),
	updatedate DATE,
	PRIMARY KEY (otherclassificationid,featuretypeversiondate)
);
CREATE TABLE add_gb_streetaddress (
	usrn NUMBER(8) not null,
	versiondate DATE not null,
	versionavailablefromdate TIMESTAMP not null,
	versionavailabletodate TIMESTAMP,
	changetype VARCHAR2(50) not null,
	theme VARCHAR2(40) not null,
	description VARCHAR2(50) not null,
	streettype VARCHAR2(33) not null,
	classification VARCHAR2(26),
	operationalstate VARCHAR2(18),
	operationalstatedate DATE,
	streetname VARCHAR2(100) not null,
	locality VARCHAR2(35),
	townname VARCHAR2(35),
	administrativearea VARCHAR2(35) not null,
	country VARCHAR2(16) not null,
	alternatelanguagestreetname VARCHAR2(110),
	alternatelanguagelocality VARCHAR2(110),
	alternatelanguagetownname VARCHAR2(35),
	alternatelanguageadministrativearea VARCHAR2(35),
	alternatelanguage VARCHAR2(3),
	snnauthoritycode VARCHAR2(4) not null,
	snnauthoritydescription VARCHAR2(35) not null,
	surfacematerial VARCHAR2(10),
	starteasting NUMERIC(8,2) not null,
	startnorthing NUMERIC(9,2) not null,
	endeasting NUMERIC(8,2) not null,
	endnorthing NUMERIC(9,2) not null,
	startlatitude NUMERIC(9,7) not null,
	startlongitude NUMERIC(9,7) not null,
	endlatitude NUMERIC(9,7) not null,
	endlongitude NUMERIC(9,7) not null,
	geometry SDO_GEOMETRY not null,
	streettolerance NUMBER(3) not null,
	effectivestartdate DATE not null,
	effectiveenddate DATE,
	PRIMARY KEY (usrn)
);
