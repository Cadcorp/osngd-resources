/* This DDL is based on data schema version 3.0 */
CREATE TABLE trn_ntwk_roadlink (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_length_m numeric(15,3) not null,
	theme nvarchar(40) not null,
	description nvarchar(42) not null,
	roadclassification nvarchar(21) not null,
	routehierarchy nvarchar(32) not null,
	trunkroad BIT,
	primaryroute BIT,
	roadclassificationnumber nvarchar(10),
	name1_text nvarchar(254),
	name1_language nvarchar(3),
	name2_text nvarchar(254),
	name2_language nvarchar(3),
	alternatename1_text nvarchar(254),
	alternatename1_language nvarchar(3),
	alternatename2_text nvarchar(254),
	alternatename2_language nvarchar(3),
	operationalstate nvarchar(19) not null,
	directionality nvarchar(21) not null,
	cyclefacility nvarchar(45),
	cyclefacility_wholelink BIT,
	roadstructure nvarchar(14),
	roadwidth_average numeric(3,1),
	roadwidth_minimum numeric(3,1),
	roadwidth_confidencelevel nvarchar(27),
	elevationgain_indirection numeric(6,1) not null,
	elevationgain_againstdirection numeric(6,1) not null,
	heightingmethod nvarchar(19) not null,
	capturespecification nvarchar(10) not null,
	matchstatus nvarchar(39) not null,
	startnode uniqueidentifier not null,
	startgradeseparation integer,
	endnode uniqueidentifier not null,
	endgradeseparation integer,
	presenceofpavement_overall_m numeric(6,2) not null,
	presenceofpavement_overallpercentage integer not null,
	presenceofpavement_left_m numeric(6,2) not null,
	presenceofpavement_leftpercentage integer not null,
	presenceofpavement_right_m numeric(6,2) not null,
	presenceofpavement_rightpercentage integer not null,
	presenceofpavement_minimumwidth_m numeric(6,2) not null,
	presenceofpavement_averagewidth_m numeric(6,2) not null,
	presenceofpavement_evidencedate date,
	presenceofpavement_updatedate date not null,
	presenceofpavement_source nvarchar(85),
	presenceofpavement_capturemethod nvarchar(25) not null,
	presenceoftram_extentoflink nvarchar(15),
	presenceoftram_linkdirection nvarchar(21),
	presenceoftram_updatedate date,
	presenceoftram_source nvarchar(85),
	PRIMARY KEY (osid)
);
CREATE TABLE trn_ntwk_roadlink_rdtrkpthref (
	roadtrackorpathid uniqueidentifier,
	roadlinkid uniqueidentifier,
	roadlinkversiondate date,
	PRIMARY KEY (roadtrackorpathid,roadlinkid,roadlinkversiondate)
);
