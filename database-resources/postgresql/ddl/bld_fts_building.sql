/* This DDL is based on data schema version 2.0 */
CREATE TABLE bld_fts_building (
	osid uuid not null,
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(Polygon, 27700) not null,
	geometry_area_m2 numeric(15,3) not null,
	geometry_updatedate date not null,
	theme varchar(40) not null,
	description varchar(45) not null,
	description_updatedate date not null,
	buildingpartcount integer not null,
	isinsite boolean not null,
	primarysite_id uuid,
	containingsitecount integer not null,
	ismainbuilding boolean,
	mainbuilding_id uuid,
	mainbuilding_updatedate date not null,
	buildinguse varchar(100) not null,
	oslandusetiera varchar(50),
	addresscount_total integer not null,
	addresscount_residential integer not null,
	addresscount_commercial integer not null,
	addresscount_other integer not null,
	buildinguse_updatedate date not null,
	connectivity varchar(15) not null,
	connectivitycount integer not null,
	connectivity_updatedate date not null,
	constructionmaterial varchar(40),
	constructionmaterial_evidencedate date,
	constructionmaterial_updatedate date,
	constructionmaterial_source varchar(85),
	constructionmaterial_capturemethod varchar(25),
	constructionmaterial_thirdpartyprovenance varchar(65),
	buildingage_period varchar(10),
	buildingage_year integer,
	buildingage_evidencedate date,
	buildingage_updatedate date,
	buildingage_source varchar(85),
	buildingage_capturemethod varchar(25),
	buildingage_thirdpartyprovenance varchar(65),
	basementpresence varchar(15),
	basementpresence_selfcontained varchar(15),
	basementpresence_evidencedate date,
	basementpresence_updatedate date,
	basementpresence_source varchar(85),
	basementpresence_capturemethod varchar(25),
	basementpresence_thirdpartyprovenance varchar(65),
	PRIMARY KEY (osid)
);
CREATE TABLE bld_fts_building_bldtostecrossref (
	siteid uuid,
	buildingid uuid,
	buildingversiondate date,
	PRIMARY KEY (siteid,buildingid,buildingversiondate)
);
CREATE TABLE bld_fts_building_bldtobldprtcrossref (
	buildingpartid uuid,
	buildingid uuid,
	buildingversiondate date,
	PRIMARY KEY (buildingpartid,buildingid,buildingversiondate)
);
CREATE TABLE bld_fts_building_bldtoaddrcrossref (
	uprn bigint,
	buildingid uuid,
	buildingversiondate date,
	PRIMARY KEY (uprn,buildingid,buildingversiondate)
);