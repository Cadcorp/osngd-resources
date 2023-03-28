/* This DDL is based on data schema version 1.0 */
CREATE TABLE trn_rami_averageandindicativespeed (
	osid uniqueidentifier not null,
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_length_m numeric(15,3) not null,
	theme nvarchar(40) not null,
	description nvarchar(30) not null,
	indicativespeedlimit_mph integer not null,
	indicativespeedlimit_kph integer not null,
	indicativespeedlimit_evidencedate date,
	indicativespeedlimit_updatedate date not null,
	indicativespeedlimit_source nvarchar(85),
	indicativespeedlimit_capturemethod nvarchar(25) not null,
	averagespeed_mf4to7indirection_kph numeric(4,1),
	averagespeed_mf4to7againstdirection_kph numeric(4,1),
	averagespeed_mf4to7capturemethod nvarchar(25) not null,
	averagespeed_mf7to9indirection_kph numeric(4,1),
	averagespeed_mf7to9againstdirection_kph numeric(4,1),
	averagespeed_mf7to9capturemethod nvarchar(25) not null,
	averagespeed_mf9to12indirection_kph numeric(4,1),
	averagespeed_mf9to12againstdirection_kph numeric(4,1),
	averagespeed_mf9to12capturemethod nvarchar(25) not null,
	averagespeed_mf12to14indirection_kph numeric(4,1),
	averagespeed_mf12to14againstdirection_kph numeric(4,1),
	averagespeed_mf12to14capturemethod nvarchar(25) not null,
	averagespeed_mf14to16indirection_kph numeric(4,1),
	averagespeed_mf14to16againstdirection_kph numeric(4,1),
	averagespeed_mf14to16capturemethod nvarchar(25) not null,
	averagespeed_mf16to19indirection_kph numeric(4,1),
	averagespeed_mf16to19againstdirection_kph numeric(4,1),
	averagespeed_mf16to19capturemethod nvarchar(25) not null,
	averagespeed_mf19to22indirection_kph numeric(4,1),
	averagespeed_mf19to22againstdirection_kph numeric(4,1),
	averagespeed_mf19to22capturemethod nvarchar(25) not null,
	averagespeed_mf22to4indirection_kph numeric(4,1),
	averagespeed_mf22to4againstdirection_kph numeric(4,1),
	averagespeed_mf22to4capturemethod nvarchar(25) not null,
	averagespeed_ss4to7indirection_kph numeric(4,1),
	averagespeed_ss4to7againstdirection_kph numeric(4,1),
	averagespeed_ss4to7capturemethod nvarchar(25) not null,
	averagespeed_ss7to10indirection_kph numeric(4,1),
	averagespeed_ss7to10againstdirection_kph numeric(4,1),
	averagespeed_ss7to10capturemethod nvarchar(25) not null,
	averagespeed_ss10to14indirection_kph numeric(4,1),
	averagespeed_ss10to14againstdirection_kph numeric(4,1),
	averagespeed_ss10to14capturemethod nvarchar(25) not null,
	averagespeed_ss14to19indirection_kph numeric(4,1),
	averagespeed_ss14to19againstdirection_kph numeric(4,1),
	averagespeed_ss14to19capturemethod nvarchar(25) not null,
	averagespeed_ss19to22indirection_kph numeric(4,1),
	averagespeed_ss19to22againstdirection_kph numeric(4,1),
	averagespeed_ss19to22capturemethod nvarchar(25) not null,
	averagespeed_ss22to4indirection_kph numeric(4,1),
	averagespeed_ss22to4againstdirection_kph numeric(4,1),
	averagespeed_ss22to4capturemethod nvarchar(25) not null,
	averagespeed_evidencedate date,
	averagespeed_updatedate date not null,
	averagespeed_source nvarchar(85),
	routehierarchy nvarchar(32) not null,
	roadclassificationnumber nvarchar(10),
	name1_text nvarchar(254),
	name1_language nvarchar(3),
	name2_text nvarchar(254),
	name2_language nvarchar(3),
	alternatename1_text nvarchar(254),
	alternatename1_language nvarchar(3),
	alternatename2_text nvarchar(254),
	alternatename2_language nvarchar(3),
	formspartofstreet nvarchar(max),
	PRIMARY KEY (osid)
);