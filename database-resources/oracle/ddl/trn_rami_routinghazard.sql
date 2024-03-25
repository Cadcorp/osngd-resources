/* This DDL is based on data schema version 1.0 */
CREATE TABLE TRN_RAMI_ROUTINGHAZARD (
	OSID VARCHAR2(36) not null,
	TOID VARCHAR2(20),
	VERSIONDATE DATE not null,
	VERSIONAVAILABLEFROMDATE TIMESTAMP not null,
	VERSIONAVAILABLETODATE TIMESTAMP,
	CHANGETYPE VARCHAR2(50) not null,
	GEOMETRY SDO_GEOMETRY not null,
	GEOMETRY_LENGTH NUMERIC(15,6) not null,
	THEME VARCHAR2(40) not null,
	DESCRIPTION VARCHAR2(12) not null,
	HAZARDDESCRIPTION VARCHAR2(50),
	ATPOSITIONXCOORDINATE NUMERIC(10,3),
	ATPOSITIONYCOORDINATE NUMERIC(10,3),
	PRIMARY KEY (osid)
);
CREATE TABLE trn_rami_routinghazard_routhazntwkref (
	NETWORKREFERENCEID VARCHAR2(36),
	NETWORKFEATURETYPE VARCHAR2(9),
	ROUTINGHAZARDID VARCHAR2(9),
	ROUTINGHAZARDVERSIONDATE DATE,
	PRIMARY KEY (networkreferenceid,routinghazardid,routinghazardversiondate)
);
