/* This DDL is based on data schema version 1.0 */
CREATE TABLE asu_bdy_electoraldivision (
	osid uniqueidentifier not null,
	toid nvarchar(20),
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_area numeric(18,6) not null,
	theme nvarchar(40) not null,
	description nvarchar(50) not null,
	name1_text nvarchar(254) not null,
	name1_language nvarchar(3),
	name2_text nvarchar(254),
	name2_language nvarchar(3),
	gsscode nvarchar(10) not null,
	boundarytype nvarchar(50) not null,
	boundaryparentreference1_id uniqueidentifier not null,
	boundaryparentreference1_featuretype nvarchar(50) not null,
	boundaryparentreference1_classification nvarchar(50) not null,
	boundaryparentreference1_name1_text nvarchar(254) not null,
	boundaryparentreference1_name1_language nvarchar(3),
	boundaryparentreference1_name2_text nvarchar(254),
	boundaryparentreference1_name2_language nvarchar(3),
	boundaryparentreference2_id uniqueidentifier,
	boundaryparentreference2_featuretype nvarchar(50),
	boundaryparentreference2_classification nvarchar(50),
	boundaryparentreference2_name1_text nvarchar(254),
	boundaryparentreference2_name1_language nvarchar(3),
	boundaryparentreference2_name2_text nvarchar(254),
	boundaryparentreference2_name2_language nvarchar(3),
	landareahectares numeric(15,6) not null,
	tidalareahectares numeric(15,6) not null,
	totalareahectares numeric(15,6) not null,
	hasdetachedpart BIT not null,
	PRIMARY KEY (osid)
);