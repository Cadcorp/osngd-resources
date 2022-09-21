CREATE TABLE bld_fts_buildingline (
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
	geometry_source VARCHAR2(50) not null,
	theme VARCHAR2(40) not null,
	description VARCHAR2(50) not null,
	description_evidencedate DATE,
	description_updatedate DATE not null,
	description_source VARCHAR2(50),
	isobscured NUMBER(1) not null,
	physicallevel VARCHAR2(15) not null,
	capturespecification VARCHAR2(10) not null,
	PRIMARY KEY (osid)
);
CREATE TABLE bld_fts_buildingpart (
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
	oslandcovertiera VARCHAR2(15) not null,
	oslandcovertierb VARCHAR2(20) not null,
	oslandcover_evidencedate DATE,
	oslandcover_updatedate DATE not null,
	oslandcover_source VARCHAR2(50),
	oslandusetiera VARCHAR2(50) not null,
	oslandusetierb VARCHAR2(88),
	oslanduse_evidencedate DATE,
	oslanduse_updatedate DATE not null,
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
	associatedstructure VARCHAR2(25),
	isobscured NUMBER(1) not null,
	physicallevel VARCHAR2(15) not null,
	capturespecification VARCHAR2(10) not null,
	PRIMARY KEY (osid)
);