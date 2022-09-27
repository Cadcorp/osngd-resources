CREATE TABLE wtr_fts_intertidalline (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	firstdigitalcapturedate date,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_length numeric(15,6) not null,
	geometry_evidencedate date,
	geometry_updatedate date not null,
	geometry_source nvarchar(50),
	theme nvarchar(40) not null,
	description nvarchar(50) not null,
	description_evidencedate date,
	description_updatedate date not null,
	description_source nvarchar(50),
	operationalstatus nvarchar(10) not null,
	isobscured BIT not null,
	physicallevel nvarchar(15) not null,
	capturespecification nvarchar(10) not null,
	PRIMARY KEY (osid)
);
CREATE TABLE wtr_fts_tidalboundary (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	firstdigitalcapturedate date,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_length numeric(15,6) not null,
	geometry_evidencedate date,
	geometry_updatedate date not null,
	geometry_source nvarchar(50),
	theme nvarchar(40) not null,
	description nvarchar(50) not null,
	description_evidencedate date,
	description_updatedate date not null,
	description_source nvarchar(50),
	watermark nvarchar(40) not null,
	isobscured BIT not null,
	physicallevel nvarchar(15) not null,
	capturespecification nvarchar(10) not null,
	PRIMARY KEY (osid)
);
CREATE TABLE wtr_fts_water (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	firstdigitalcapturedate date,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_area numeric(15,6) not null,
	geometry_evidencedate date,
	geometry_updatedate date not null,
	geometry_source nvarchar(50),
	theme nvarchar(40) not null,
	description nvarchar(50) not null,
	description_evidencedate date,
	description_updatedate date not null,
	description_source nvarchar(50),
	oslandcovertiera nvarchar(25) not null,
	oslandcovertierb nvarchar(117) not null,
	oslandcover_evidencedate date,
	oslandcover_updatedate date not null,
	oslandcover_source nvarchar(50),
	oslandusetiera nvarchar(50) not null,
	oslandusetierb nvarchar(88),
	oslanduse_evidencedate date,
	oslanduse_updatedate date not null,
	oslanduse_source nvarchar(50),
	watertype nvarchar(10) not null,
	associatedstructure nvarchar(25),
	operationalstatus nvarchar(10) not null,
	isobscured BIT not null,
	physicallevel nvarchar(15) not null,
	capturespecification nvarchar(10) not null,
	PRIMARY KEY (osid)
);
CREATE TABLE wtr_fts_waterpoint (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	firstdigitalcapturedate date,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_evidencedate date,
	geometry_updatedate date not null,
	geometry_source nvarchar(50),
	theme nvarchar(40) not null,
	description nvarchar(50) not null,
	description_evidencedate date,
	description_updatedate date not null,
	description_source nvarchar(50),
	name1_text nvarchar(254),
	name1_language nvarchar(3),
	name1_evidencedate date,
	name1_updatedate date,
	name1_source nvarchar(50),
	name2_text nvarchar(254),
	name2_language nvarchar(3),
	name2_evidencedate date,
	name2_updatedate date,
	name2_source nvarchar(50),
	operationalstatus nvarchar(10) not null,
	isobscured BIT not null,
	physicallevel nvarchar(15) not null,
	capturespecification nvarchar(10) not null,
	PRIMARY KEY (osid)
);
