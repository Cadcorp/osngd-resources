/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_ntwk_street (
	usrn integer not null,
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_length numeric(15,6) not null,
	geometry_source nvarchar(23) not null,
	theme nvarchar(40) not null,
	description nvarchar(35) not null,
	effectivestartdate date not null,
	effectiveenddate date,
	designatedname1_text nvarchar(254),
	designatedname1_language nvarchar(3),
	designatedname1_responsibleauthorityidentifier nvarchar(4),
	designatedname1_responsibleauthorityname nvarchar(100),
	designatedname2_text nvarchar(254),
	designatedname2_language nvarchar(3),
	designatedname2_responsibleauthorityidentifier nvarchar(4),
	designatedname2_responsibleauthorityname nvarchar(100),
	localname1_text nvarchar(254),
	localname1_language nvarchar(3),
	localname2_text nvarchar(254),
	localname2_language nvarchar(3),
	descriptor1_text nvarchar(254),
	descriptor1_language nvarchar(3),
	descriptor2_text nvarchar(254),
	descriptor2_language nvarchar(3),
	localroadcode nvarchar(120),
	nationalroadcode nvarchar(10),
	roadclassification nvarchar(21),
	operationalstate nvarchar(19),
	operationalstatedate date,
	locality1_text nvarchar(254),
	locality1_language nvarchar(3),
	locality2_text nvarchar(254),
	locality2_language nvarchar(3),
	townname1_text nvarchar(254),
	townname1_language nvarchar(3),
	townname2_text nvarchar(254),
	townname2_language nvarchar(3),
	administrativearea1_text nvarchar(254) not null,
	administrativearea1_language nvarchar(3),
	administrativearea2_text nvarchar(254),
	administrativearea2_language nvarchar(3),
	responsibleauthority_identifier nvarchar(4) not null,
	responsibleauthority_name nvarchar(100) not null,
	gsscoderole1 nvarchar(27),
	gsscode1 nvarchar(9),
	gsscoderole2 nvarchar(27),
	gsscode2 nvarchar(9),
	PRIMARY KEY (usrn)
);
CREATE TABLE trn_ntwk_street_pathlinkref (
	pathlinkid uniqueidentifier,
	usrn integer not null,
	streetversiondate date,
	PRIMARY KEY (pathlinkid,usrn,streetversiondate)
);
CREATE TABLE trn_ntwk_street_rdlinkref (
	usrn integer not null,
	streetversiondate date,
	roadlinkid uniqueidentifier,
	PRIMARY KEY (roadlinkid,usrn,streetversiondate)
);