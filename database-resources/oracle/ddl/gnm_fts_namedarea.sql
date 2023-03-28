/* This DDL is based on data schema version 1.0 */
CREATE TABLE GNM_FTS_NAMEDAREA (
	OSID VARCHAR2(32) not null,
	VERSIONDATE DATE not null,
	VERSIONAVAILABLEFROMDATE TIMESTAMP not null,
	VERSIONAVAILABLETODATE TIMESTAMP,
	CHANGETYPE VARCHAR2(50) not null,
	GEOMETRY SDO_GEOMETRY not null,
	GEOMETRY_AREA NUMERIC(18,6) not null,
	GEOMETRY_EVIDENCEDATE DATE,
	GEOMETRY_UPDATEDATE DATE not null,
	GEOMETRY_SOURCE VARCHAR2(50),
	THEME VARCHAR2(40) not null,
	DESCRIPTIONGROUP VARCHAR2(25) not null,
	DESCRIPTION VARCHAR2(50) not null,
	DESCRIPTION_EVIDENCEDATE DATE,
	DESCRIPTION_UPDATEDATE DATE not null,
	DESCRIPTION_SOURCE VARCHAR2(50),
	EXTENTDEFINITION VARCHAR2(50) not null,
	NAME1_TEXT VARCHAR2(254) not null,
	NAME1_LANGUAGE VARCHAR2(3),
	NAME1_EVIDENCEDATE DATE,
	NAME1_UPDATEDATE DATE not null,
	NAME1_SOURCE VARCHAR2(50),
	NAME2_TEXT VARCHAR2(254),
	NAME2_LANGUAGE VARCHAR2(3),
	NAME2_EVIDENCEDATE DATE,
	NAME2_UPDATEDATE DATE,
	NAME2_SOURCE VARCHAR2(50),
	NAME3_TEXT VARCHAR2(254),
	NAME3_LANGUAGE VARCHAR2(3),
	NAME3_EVIDENCEDATE DATE,
	NAME3_UPDATEDATE DATE,
	NAME3_SOURCE VARCHAR2(50),
	NAME4_TEXT VARCHAR2(254),
	NAME4_LANGUAGE VARCHAR2(3),
	NAME4_EVIDENCEDATE DATE,
	NAME4_UPDATEDATE DATE,
	NAME4_SOURCE VARCHAR2(50),
	SAMEASDBPEDIA VARCHAR2(100),
	SAMEASGEONAMES VARCHAR2(100),
	SAMEASDBOBIH NUMBER(5),
	HEIGHT NUMERIC(6,2),
	PRIMARY KEY (osid)
);