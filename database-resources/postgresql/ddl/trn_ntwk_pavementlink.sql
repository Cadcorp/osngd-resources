/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_ntwk_pavementlink (
	osid uuid not null,
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(LineString, 27700) not null,
	geometry_length_m numeric(15,3) not null,
	theme varchar(40) not null,
	description varchar(10) not null,
	routehierarchy varchar(32) not null,
	roadclassificationnumber varchar(10),
	name1_text varchar(254),
	name1_language varchar(3),
	name2_text varchar(254),
	name2_language varchar(3),
	alternatename1_text varchar(254),
	alternatename1_language varchar(3),
	alternatename2_text varchar(254),
	alternatename2_language varchar(3),
	capturespecification varchar(10) not null,
	presenceofpavement_sideofroad varchar(5) not null,
	presenceofpavement_minimumwidth_m numeric(6,2) not null,
	presenceofpavement_averagewidth_m numeric(6,2) not null,
	presenceofpavement_evidencedate date,
	presenceofpavement_updatedate date not null,
	presenceofpavement_source varchar(85),
	presenceofpavement_capturemethod varchar(25) not null,
	roadlinkid uuid not null,
	PRIMARY KEY (osid)
);