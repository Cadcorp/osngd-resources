CREATE TABLE str_fts_compoundstructure (
	osid VARCHAR2() not null,
	versiondate DATE not null,
	versionavailablefromdate TIMESTAMP not null,
	versionavailabletodate TIMESTAMP,
	changetype VARCHAR2(50) not null,
	geometry SDO_GEOMETRY not null,
	geometry_area NUMERIC(15,6) not null,
	geometry_evidencedate DATE,
	geometry_updatedate DATE not null,
	geometry_source VARCHAR2(50),
	theme VARCHAR2(40) not null,
	description VARCHAR2(25) not null,
	description_evidencedate DATE,
	description_updatedate DATE not null,
	description_source VARCHAR2(50),
	name1_text VARCHAR2(254),
	name1_language VARCHAR2(3),
	name1_evidencedate DATE,
	name1_updatedate DATE,
	name1_source VARCHAR2(50),
	name2_text VARCHAR2(254),
	name2_language VARCHAR2(3),
	name2_evidencedate DATE,
	name2_updatedate DATE,
	name2_source VARCHAR2(50),
	name3_text VARCHAR2(254),
	name3_language VARCHAR2(3),
	name3_evidencedate DATE,
	name3_updatedate DATE,
	name3_source VARCHAR2(50),
	name4_text VARCHAR2(254),
	name4_language VARCHAR2(3),
	name4_evidencedate DATE,
	name4_updatedate DATE,
	name4_source VARCHAR2(50),
	operationalstatus VARCHAR2(10) not null,
	capturespecification VARCHAR2(10) not null,
	PRIMARY KEY (osid)
);
CREATE TABLE str_fts_structure (
	osid VARCHAR2() not null,
	toid VARCHAR2(20),
	versiondate DATE not null,
	versionavailablefromdate TIMESTAMP not null,
	versionavailabletodate TIMESTAMP,
	firstdigitalcapturedate DATE,
	changetype VARCHAR2(50) not null,
	geometry SDO_GEOMETRY not null,
	geometry_area NUMERIC(15,6) not null,
	geometry_evidencedate DATE,
	geometry_updatedate DATE not null,
	geometry_source VARCHAR2(50),
	theme VARCHAR2(40) not null,
	description VARCHAR2(50) not null,
	description_evidencedate DATE,
	description_updatedate DATE not null,
	description_source VARCHAR2(50),
	oslandcovertiera VARCHAR2(15),
	oslandcovertierb VARCHAR2(92),
	oslandcover_evidencedate DATE,
	oslandcover_updatedate DATE,
	oslandcover_source VARCHAR2(50),
	oslandusetiera VARCHAR2(50),
	oslandusetierb VARCHAR2(88),
	oslanduse_evidencedate DATE,
	oslanduse_updatedate DATE,
	oslanduse_source VARCHAR2(50),
	absoluteheightroofbase NUMERIC(6,2),
	relativeheightroofbase NUMERIC(6,2),
	absoluteheightmaximum NUMERIC(6,2),
	relativeheightmaximum NUMERIC(6,2),
	absoluteheightminimum NUMERIC(6,2),
	heightconfidencelevel VARCHAR2(15),
	height_evidencedate DATE,
	height_updatedate DATE,
	height_source VARCHAR2(50),
	name1_text VARCHAR2(254),
	name1_language VARCHAR2(3),
	name1_evidencedate DATE,
	name1_updatedate DATE,
	name1_source VARCHAR2(50),
	name2_text VARCHAR2(254),
	name2_language VARCHAR2(3),
	name2_evidencedate DATE,
	name2_updatedate DATE,
	name2_source VARCHAR2(50),
	istidal NUMBER(1) not null,
	ishistoric NUMBER(1) not null,
	associatedstructure VARCHAR2(25),
	operationalstatus VARCHAR2(10),
	isobscured NUMBER(1) not null,
	physicallevel VARCHAR2(15) not null,
	capturespecification VARCHAR2(10) not null,
	PRIMARY KEY (osid)
);
CREATE TABLE str_fts_structureline (
	osid VARCHAR2() not null,
	toid VARCHAR2(20),
	versiondate DATE not null,
	versionavailablefromdate TIMESTAMP not null,
	versionavailabletodate TIMESTAMP,
	firstdigitalcapturedate DATE,
	changetype VARCHAR2(50) not null,
	geometry SDO_GEOMETRY not null,
	geometry_length NUMERIC(15,6) not null,
	geometry_evidencedate DATE,
	geometry_updatedate DATE not null,
	geometry_source VARCHAR2(50),
	theme VARCHAR2(40) not null,
	description VARCHAR2(50) not null,
	description_evidencedate DATE,
	description_updatedate DATE not null,
	description_source VARCHAR2(50),
	istidal NUMBER(1) not null,
	ishistoric NUMBER(1) not null,
	operationalstatus VARCHAR2(10),
	isobscured NUMBER(1) not null,
	physicallevel VARCHAR2(15) not null,
	capturespecification VARCHAR2(10) not null,
	PRIMARY KEY (osid)
);
CREATE TABLE str_fts_structurepoint (
	osid VARCHAR2() not null,
	toid VARCHAR2(20),
	versiondate DATE not null,
	versionavailablefromdate TIMESTAMP not null,
	versionavailabletodate TIMESTAMP,
	firstdigitalcapturedate DATE,
	changetype VARCHAR2(50) not null,
	geometry SDO_GEOMETRY not null,
	geometry_evidencedate DATE,
	geometry_updatedate DATE not null,
	geometry_source VARCHAR2(50),
	theme VARCHAR2(40) not null,
	description VARCHAR2(50) not null,
	description_evidencedate DATE,
	description_updatedate DATE not null,
	description_source VARCHAR2(50),
	name1_text VARCHAR2(254),
	name1_language VARCHAR2(3),
	name1_evidencedate DATE,
	name1_updatedate DATE,
	name1_source VARCHAR2(50),
	name2_text VARCHAR2(254),
	name2_language VARCHAR2(3),
	name2_evidencedate DATE,
	name2_updatedate DATE,
	name2_source VARCHAR2(50),
	ishistoric NUMBER(1) not null,
	operationalstatus VARCHAR2(10),
	isobscured NUMBER(1) not null,
	physicallevel VARCHAR2(15) not null,
	capturespecification VARCHAR2(10) not null,
	PRIMARY KEY (osid)
);
