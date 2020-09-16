/*==============================================================*/
/* dm7 2019.8.28 */
/*==============================================================*/

drop table if exists tauserworkbench ;

drop table if exists taroleworkbench ;

drop table if exists taroleurlauthority ;

drop table if exists taresourceurl ;

drop table if exists TAACCESSLOG ;

drop table if exists TAACCESSSYSTEM ;

drop table if exists TAAREA ;

drop table if exists TAAVATAR ;

drop table if exists TACONFIG ;

drop table if exists TACUSTOMORG ;

drop table if exists TACUSTOMORGTYPENAME ;

drop table if exists TACUSTOMORGUSER ;

drop table if exists TACUSTOMRESOURCE ;

drop table if exists TADICT ;

drop table if exists TAEXTENDSETTING ;

drop table if exists TALOGINHISTORYLOG ;

drop table if exists TALOGINSTATLOG ;

drop table if exists TAOBJECTTAGS ;

drop table if exists TAONLINELOG ;

drop table if exists TAONLINESTATLOG ;

drop table if exists TAORG ;

drop table if exists TAORGCONSTRAINT ;

drop table if exists TAORGMG ;

drop table if exists TAORGOPLOG ;

drop table if exists TARESOURCE ;

drop table if exists TARESOURCECATEGORY ;

drop table if exists TARESOURCEUI ;

drop table if exists TAROLE ;

drop table if exists TAROLEAUTHORITY ;

drop table if exists TAROLEUSER ;

drop table if exists TASERVEREXCEPTIONLOG ;

drop table if exists TATAG ;

drop table if exists TATAGGROUP ;

drop table if exists TATAGSSTORE ;

drop table if exists TAUSER ;

drop table if exists TAUSERORG ;

drop table if exists TAONLINESERVICE ;

drop table if exists TAONLINESERVICEMG ;

drop table if exists TAONLINESERVICENAME ;

drop table if exists TASITEMG ;

drop table if exists TAZOOKEEPERADDRESSMG ;

drop table if exists TAJOBDATASOURCEMG ;

drop table if exists FREEBUSYJOBMG ;

drop table if exists TAAPPMG ;

drop table if exists TATEMPLATE ;

drop table if exists TATEMPLATECATALOG ;

drop table if exists TAAPPPAGE ;

drop table if exists TASYSCONFIG ;

drop table if exists tadynamicrest;

CREATE TABLE  taaccesslog (
	logid VARCHAR2(36) NOT NULL ,
	userid VARCHAR2(36) NOT NULL,
	roleid VARCHAR2(36) NOT NULL,
	menuid VARCHAR2(36) NOT NULL,
	ispermission CHAR(1) NOT NULL,
	accesstime DATE NOT NULL,
	url VARCHAR2(1024),
	sysflag VARCHAR2(50),
	field01 VARCHAR2(10),
	field02 VARCHAR2(10),
	field03 VARCHAR2(10),
	field04 VARCHAR2(10),
	field05 VARCHAR2(10),
	constraint PK_TAACCESSLOG primary key (logid)
);
CREATE TABLE  taaccesssystem (
	id VARCHAR2(36) NOT NULL,
	syscode VARCHAR2(20) NOT NULL,
	sysname VARCHAR2(100) NOT NULL,
	spell VARCHAR2(30),
	protocol VARCHAR2(10),
	"domain" VARCHAR2(100),
	port VARCHAR2(5),
	contextpath VARCHAR2(30),
	portalsystem VARCHAR2(1),
	menuservice VARCHAR2(200),
	provider VARCHAR2(10),
	effective VARCHAR2(1) NOT NULL,
	regtime DATE ,
	modifytime DATE ,
	backgroundaddress VARCHAR2(100),
	constraint PK_taaccesssystem primary key (id)
);

CREATE TABLE  taarea (
	areaid VARCHAR2(36) NOT NULL,
	parentid VARCHAR2(36) NOT NULL,
	areaname VARCHAR2(100) NOT NULL,
	areacode VARCHAR2(20) NOT NULL,
	idpath VARCHAR2(300) NOT NULL,
	namepath VARCHAR2(300) NOT NULL,
	arealevel DECIMAL(2,0),
	spell VARCHAR2(100),
	createuser VARCHAR2(36) NOT NULL,
	areaorder DECIMAL(20,0),
	effective VARCHAR2(1) NOT NULL,
	createtime DATE  NOT NULL,
	modifytime DATE  NOT NULL,
	destory VARCHAR2(1) NOT NULL,
	constraint PK_taarea primary key (areaid)
);

CREATE TABLE  taavatar (
	userid VARCHAR2(36) NOT NULL,
	avatar BLOB,
	updatetime DATE  NOT NULL,
	constraint PK_taavatar primary key (userid,updatetime)
);


CREATE TABLE  taconfig (
	configid VARCHAR2(36) NOT NULL,
	configkey VARCHAR2(30) NOT NULL,
	configvalue VARCHAR2(1000) NOT NULL,
	configname VARCHAR2(150),
	configdesc VARCHAR2(1000),
	constraint PK_taconfig primary key (configid)
);

CREATE TABLE  tacustomorg (
	customorgid VARCHAR2(36) NOT NULL,
	parentid VARCHAR2(36),
	customcode VARCHAR2(255),
	customorgtypenameid VARCHAR2(36) NOT NULL,
	effective VARCHAR2(1) NOT NULL,
	orderno DECIMAL(10,0),
	customorgname VARCHAR2(255),
	customorgpathid VARCHAR2(1024),
	customorgpath VARCHAR2(1024),
	createuser VARCHAR2(36) NOT NULL,
	createtime DATE NOT NULL,
	updatetime DATE NOT NULL,
	destory VARCHAR2(1) NOT NULL,
	spell VARCHAR2(20),
	orgmanager VARCHAR2(36),
	orgcode VARCHAR2(18),
	contacts VARCHAR2(36),
	address VARCHAR2(450),
	tel VARCHAR2(20),
	field01 VARCHAR2(1000),
	field02 VARCHAR2(1000),
	field03 VARCHAR2(1000),
	field04 VARCHAR2(1000),
	field05 VARCHAR2(1000),
	field06 VARCHAR2(1000),
	field07 VARCHAR2(1000),
	field08 VARCHAR2(1000),
	field09 VARCHAR2(1000),
	field10 VARCHAR2(1000),
	constraint PK_tacustomorg primary key (customorgid)
);

CREATE TABLE  tacustomorgtypename (
	customorgtypenameid VARCHAR2(36),
	customorgtypename VARCHAR2(36),
	effective VARCHAR2(1) NOT NULL ,
	createuser VARCHAR2(36) NOT NULL,
	createtime DATE NOT NULL ,
	updatetime DATE NOT NULL ,
	destory VARCHAR2(1) NOT NULL ,
	customorgtypenamecode VARCHAR2(255),
	customorgtypenamedesc VARCHAR2(255),
	constraint PK_tacustomorgtypename primary key (customorgtypenameid)
);

CREATE TABLE  tacustomorguser (
	customorgid VARCHAR2(36) NOT NULL,
	userid VARCHAR2(36) NOT NULL,
	constraint PK_tacustomorguser primary key (customorgid,userid)
);

CREATE TABLE  tacustomresource (
	customresourceid VARCHAR2(36) NOT NULL,
	resourcename VARCHAR2(450) NOT NULL,
	parentid VARCHAR2(36) NOT NULL,
	code VARCHAR2(100),
	resourcecontent VARCHAR2(1024),
	resourcecategory VARCHAR2(36),
	effective VARCHAR2(1) NOT NULL,
	addtime DATE ,
	modifytime DATE ,
	system VARCHAR2(36),
	constraint PK_tacustomresource primary key (customresourceid)
);

CREATE TABLE  tadict (
	name VARCHAR2(50) NOT NULL,
	type VARCHAR2(50) NOT NULL,
	label VARCHAR2(50) NOT NULL,
	value VARCHAR2(6) NOT NULL,
	parentvalue VARCHAR2(6),
	sort DECIMAL(4,0) NOT NULL,
	authority VARCHAR2(20) NOT NULL,
	cssclass VARCHAR2(20),
	cssstyle VARCHAR2(128),
	remarks VARCHAR2(256),
	createdate DATE  NOT NULL,
	createuser VARCHAR2(36) NOT NULL,
	version VARCHAR2(10) NOT NULL,
	status VARCHAR2(2) NOT NULL,
	field01 VARCHAR2(10),
	field02 VARCHAR2(10),
	field03 VARCHAR2(10),
	field04 VARCHAR2(10),
	field05 VARCHAR2(10),
	system VARCHAR2(2) NOT NULL,
	newtype VARCHAR2(2) NOT NULL,
	constraint PK_tadict primary key (type,value)
);

CREATE TABLE  taextendsetting (
	fieldid VARCHAR2(10) NOT NULL,
	type VARCHAR2(2) NOT NULL,
	effective VARCHAR2(1) NOT NULL,
	hide VARCHAR2(1),
	displaytext VARCHAR2(150),
	titext VARCHAR2(1500),
	orderno DECIMAL(10,0),
	required VARCHAR2(1),
	unchangeable VARCHAR2(1),
	formtype VARCHAR2(20),
	contentsize DECIMAL(16,0),
	validreg VARCHAR2(1000),
	connectaa10 VARCHAR2(30),
	protectprivacy VARCHAR2(1),
	formid VARCHAR2(10) NOT NULL,
	more   VARCHAR2(1),
	constraint PK_taextendsetting primary key (fieldid,type)
);

CREATE TABLE  taloginhistorylog (
	logid VARCHAR2(36) NOT NULL,
	userid VARCHAR2(36) NOT NULL,
	logintime DATE  NOT NULL,
	logouttime DATE  NOT NULL,
	clientip VARCHAR2(200) NOT NULL,
	sessionid VARCHAR2(200) NOT NULL,
	serverip VARCHAR2(200),
	syspath VARCHAR2(50),
	clientsystem VARCHAR2(50),
	clientbrowser VARCHAR2(50),
	clientscreensize VARCHAR2(50),
	constraint PK_taloginhistorylog primary key (logid)
);

CREATE TABLE  taloginstatlog (
	statdate VARCHAR2(20) NOT NULL,
	pointintime VARCHAR2(20) NOT NULL,
	loginnum DECIMAL(15,0),
	constraint PK_taloginstatlog primary key (statdate,pointintime)
);

CREATE TABLE  taobjecttags (
	objectid VARCHAR2(36) NOT NULL,
	objecttype VARCHAR2(3) NOT NULL,
	tagid VARCHAR2(36) NOT NULL,
	constraint PK_taobjecttags primary key (objectid,objecttype,tagid)
);

CREATE TABLE  taonlinelog (
	logid VARCHAR2(36) NOT NULL,
	userid VARCHAR2(36) NOT NULL,
	logintime DATE  NOT NULL,
	curresource VARCHAR2(1000),
	clientip VARCHAR2(200) NOT NULL,
	sessionid VARCHAR2(200) NOT NULL,
	syspath VARCHAR2(50),
	serverip VARCHAR2(200),
	clientsystem VARCHAR2(50),
	clientbrowser VARCHAR2(50),
	clientscreensize VARCHAR2(50),
	constraint PK_taonlinelog primary key (logid)
);

CREATE TABLE  taonlinestatlog (
	statdate VARCHAR2(20) NOT NULL,
	pointintime VARCHAR2(20) NOT NULL,
	loginnum DECIMAL(15,0),
	constraint PK_taonlinestatlog primary key (statdate,pointintime)
);

CREATE TABLE  taorg (
	orgid VARCHAR2(36) NOT NULL,
	orgname VARCHAR2(300) NOT NULL,
	spell VARCHAR2(100) NOT NULL,
	parentid VARCHAR2(36) NOT NULL,
	idpath VARCHAR2(1024) NOT NULL,
	namepath VARCHAR2(1024) NOT NULL,
	customno VARCHAR2(30),
	orderno DECIMAL(10,0) NOT NULL,
	orglevel DECIMAL(16,0),
	area VARCHAR2(36),
	effective VARCHAR2(1) NOT NULL,
	orgtype VARCHAR2(2) NOT NULL,
	createuser VARCHAR2(36) NOT NULL,
	createtime DATE ,
	modifytime DATE ,
	orgmanager VARCHAR2(36),
	orgcode VARCHAR2(18),
	contacts VARCHAR2(36),
	address VARCHAR2(450),
	tel VARCHAR2(20),
	destory VARCHAR2(1) NOT NULL,
	field01 VARCHAR2(1000),
	field02 VARCHAR2(1000),
	field03 VARCHAR2(1000),
	field04 VARCHAR2(1000),
	field05 VARCHAR2(1000),
	field06 VARCHAR2(1000),
	field07 VARCHAR2(1000),
	field08 VARCHAR2(1000),
	field09 VARCHAR2(1000),
	field10 VARCHAR2(1000),
	constraint PK_taorg primary key (orgid)
);

CREATE TABLE  taorgconstraint (
	categoryid VARCHAR2(2) NOT NULL,
	allowcategoryid VARCHAR2(2) NOT NULL,
	constraint PK_taorgconstraint primary key (categoryid,allowcategoryid)
);

CREATE TABLE  taorgmg (
	roleid VARCHAR2(36) NOT NULL,
	orgid VARCHAR2(36) NOT NULL,
	effecttime DATE ,
	constraint PK_taorgmg primary key (roleid,orgid)
);

CREATE TABLE  taorgoplog (
	logid VARCHAR2(36) NOT NULL,
	batchno VARCHAR2(36) NOT NULL,
	optype VARCHAR2(2) NOT NULL,
	influencebodytype VARCHAR2(2) NOT NULL,
	influencebody VARCHAR2(36) NOT NULL,
	opbodytype VARCHAR2(2),
	opsubject VARCHAR2(36),
	changecontent BLOB,
	optime DATE  NOT NULL,
	opuser VARCHAR2(36) NOT NULL,
	ispermission VARCHAR2(1) NOT NULL,
	constraint PK_taorgoplog primary key (logid)
);

CREATE TABLE  taresource (
	resourceid VARCHAR2(36) NOT NULL,
	presourceid VARCHAR2(36) NOT NULL,
	name VARCHAR2(100) NOT NULL,
	code VARCHAR2(30),
	syscode VARCHAR2(20) NOT NULL,
	url VARCHAR2(100),
	orderno DECIMAL(10,0),
	idpath VARCHAR2(1024) NOT NULL,
	namepath VARCHAR2(1024) NOT NULL,
	resourcelevel VARCHAR2(2) NOT NULL,
	icon VARCHAR2(30),
	iconcolor VARCHAR2(7),
	securitypolicy VARCHAR2(2) NOT NULL,
	securitylevel DECIMAL(4,0) NOT NULL,
	resourcetype VARCHAR2(2) NOT NULL,
	effective VARCHAR2(1) NOT NULL,
	isdisplay VARCHAR2(1),
	isfiledscontrol VARCHAR2(1),
	createdate DATE  NOT NULL,
	createuser VARCHAR2(36) NOT NULL,
	uiauthoritypolicy VARCHAR2(2),
	field01 VARCHAR2(10),
	field02 VARCHAR2(10),
	field03 VARCHAR2(10),
	field04 VARCHAR2(10),
	field05 VARCHAR2(10),
	field06 VARCHAR2(10),
	field07 VARCHAR2(10),
	field08 VARCHAR2(10),
	field09 VARCHAR2(10),
	field10 VARCHAR2(10),
	workbench VARCHAR2(1),
	image Blob,
	constraint PK_taresource primary key (resourceid)
);
comment on column TARESOURCE.image is '功能资源图片（端应用）';


CREATE TABLE  taresourcecategory (
	categoryid VARCHAR2(36) NOT NULL,
	categoryname VARCHAR2(300) NOT NULL,
	effective VARCHAR2(1) NOT NULL,
	code VARCHAR2(100),
	categorycontent VARCHAR2(1024),
	constraint PK_taresourcecategory primary key (categoryid)
);

CREATE TABLE  taresourceui (
	pageelementid VARCHAR2(36) NOT NULL,
	resourceid VARCHAR2(36) NOT NULL,
	elenmentname VARCHAR2(20) NOT NULL,
	elementid VARCHAR2(30) NOT NULL,
	code VARCHAR2(20),
	authoritypolicy VARCHAR2(2) NOT NULL,
	createuser VARCHAR2(36) NOT NULL,
	createdate DATE  NOT NULL,
	field01 VARCHAR2(10),
	field02 VARCHAR2(10),
	field03 VARCHAR2(10),
	effective VARCHAR2(1) NOT NULL,
	constraint PK_taresourceui primary key (pageelementid)
);

CREATE TABLE  tarole (
	roleid VARCHAR2(36) NOT NULL,
	rolename VARCHAR2(150) NOT NULL,
	isadmin VARCHAR2(1),
	rolelevel DECIMAL(32,0),
	orgid VARCHAR2(36) NOT NULL,
	roletype VARCHAR2(2) NOT NULL,
	effective VARCHAR2(1) NOT NULL,
	effectivetime DATE ,
	createuser VARCHAR2(36) NOT NULL,
	createtime DATE ,
	roledesc VARCHAR2(150),
	rolesign VARCHAR2(2),
	subordinate VARCHAR2(1),
	constraint PK_tarole primary key (roleid)
);

CREATE TABLE  taroleauthority (
	roleid VARCHAR2(36) NOT NULL,
	resourceid VARCHAR2(36) NOT NULL,
	resourcetype VARCHAR2(1) NOT NULL,
	usepermission VARCHAR2(1),
	repermission VARCHAR2(1),
	reauthrity VARCHAR2(1),
	createuser VARCHAR2(36) NOT NULL,
	createtime DATE ,
	effecttime DATE ,
	constraint PK_taroleauthority primary key (roleid,resourceid,resourcetype)
);

CREATE TABLE  taroleuser (
	userid VARCHAR2(36) NOT NULL,
	roleid VARCHAR2(36) NOT NULL,
	defaultrole VARCHAR2(1),
	createuser VARCHAR2(36) NOT NULL,
	createtime DATE NOT NULL,
	constraint PK_taroleuser primary key (roleid,userid)
);

CREATE TABLE  taserverexceptionlog (
	logid VARCHAR2(50) NOT NULL,
	ipaddress VARCHAR2(100),
	port VARCHAR2(10),
	exceptionname VARCHAR2(255),
	content BLOB,
	createtime DATE ,
	syspath VARCHAR2(50),
	clientip VARCHAR2(50),
	url VARCHAR2(100),
	menuid VARCHAR2(50),
	menuname VARCHAR2(30),
	useragent VARCHAR2(200),
	exceptiontype VARCHAR2(2),
	requestparameter BLOB,
	constraint PK_taserverexceptionlog primary key (logid)
);

CREATE TABLE  tatag (
	tagid VARCHAR2(36) NOT NULL,
	tagname VARCHAR2(255),
	taggroupid VARCHAR2(36),
	createtime DATE NOT NULL ,
	effective VARCHAR2(1) NOT NULL ,
	createuser VARCHAR2(36) NOT NULL ,
	destory VARCHAR2(1) NOT NULL ,
	updatetime DATE NOT NULL,
	constraint PK_tatag primary key (tagid)
);

CREATE TABLE  tataggroup (
	taggroupid VARCHAR2(36) NOT NULL ,
	taggroupname VARCHAR2(255) NOT NULL ,
	effective VARCHAR2(1) NOT NULL ,
	createuser VARCHAR2(36) NOT NULL ,
	createtime DATE NOT NULL ,
	updatetime DATE NOT NULL ,
	destory VARCHAR2(1) NOT NULL
);

CREATE TABLE  tatagsstore (
	tagid VARCHAR2(36) NOT NULL,
	tagname VARCHAR2(100) NOT NULL,
	tagcode VARCHAR2(30) NOT NULL,
	tagcategory VARCHAR2(2) NOT NULL,
	constraint PK_tatagsstore primary key (tagid)
);

CREATE TABLE  tauser (
	userid VARCHAR2(36) NOT NULL,
	loginid VARCHAR2(30) NOT NULL,
	password VARCHAR2(100) NOT NULL,
	passworddefaultnum DECIMAL(16,0),
	pwdlastmodifydate DATE ,
	islock VARCHAR2(1),
	orderno DECIMAL(10,0),
	name VARCHAR2(450) NOT NULL,
	sex VARCHAR2(2),
	idcardtype VARCHAR2(2),
	idcardno VARCHAR2(30),
	mobile VARCHAR2(20),
	createuser VARCHAR2(36) NOT NULL,
	createtime DATE ,
	modifytime DATE ,
	destory VARCHAR2(1) NOT NULL,
	accountsource VARCHAR2(2),
	effective VARCHAR2(1) NOT NULL,
	effectivetime DATE ,
	jobnumber VARCHAR2(15),
	state VARCHAR2(10),
	birthplace VARCHAR2(12),
	address VARCHAR2(450),
	zipcode VARCHAR2(10),
	email VARCHAR2(100),
	phone VARCHAR2(20),
	education VARCHAR2(30),
	graduateschool VARCHAR2(150),
	workplace VARCHAR2(300),
	field01 VARCHAR2(1000),
	field02 VARCHAR2(1000),
	field03 VARCHAR2(1000),
	field04 VARCHAR2(1000),
	field05 VARCHAR2(1000),
	field06 VARCHAR2(1000),
	field07 VARCHAR2(1000),
	field08 VARCHAR2(1000),
	field09 VARCHAR2(1000),
	field10 VARCHAR2(1000),
	constraint PK_tauser primary key (userid)
);

CREATE TABLE  tauserorg (
	userid VARCHAR2(32) NOT NULL,
	orgid VARCHAR2(32) NOT NULL,
	isdirect VARCHAR2(1) NOT NULL,
	constraint PK_tauserorg primary key (userid,orgid)
);


CREATE TABLE  taresourceurl (
	resourceid VARCHAR2(36) NOT NULL,
	resturl VARCHAR2(256) NOT NULL,
	urlname VARCHAR2(40) ,
  authoritypolicy VARCHAR2(1) ,
  urlid VARCHAR2(36) ,
	constraint PK_taresourceurl primary key (urlid)
);

CREATE TABLE  taroleurlauthority (
	roleid VARCHAR2(36) NOT NULL,
	resourceid VARCHAR2(36) NOT NULL,
	urlid VARCHAR2(36)  NOT NULL,
	constraint PK_taroleurlauthority primary key (roleid,urlid)
);
CREATE TABLE  taroleworkbench (
	roleid VARCHAR2(36) NOT NULL,
	workbenchjson BLOB ,
	constraint PK_taroleworkbench primary key (roleid)
);

CREATE TABLE  tauserworkbench (
  userid VARCHAR2(36) NOT NULL,
	workbenchjson BLOB  ,
	constraint PK_tauserworkbench primary key (userid)

);

/*==============================================================*/
/* Table: TAONLINESERVICE                                       */
/*==============================================================*/
create table TAONLINESERVICE
(
   CREATEUSER           VARCHAR2(36),
   DESTORY              VARCHAR2(1),
   UPDATETIME           DATE,
   CREATETIME           DATE,
   EFFECTIVE            VARCHAR2(1)          ,
   SERVICEURL           VARCHAR2(1024),
   SERVICETYPE          VARCHAR2(100),
   SERVICEID            VARCHAR2(36)         not null,
   SERVICENAME          VARCHAR2(255)        not null,
   SERVICEDESC          VARCHAR2(255),
   constraint PK_TAONLINESERVICE primary key (SERVICEID)
);

comment on table TAONLINESERVICE is
'在线服务';

comment on column TAONLINESERVICE.CREATEUSER is
'创建者';

comment on column TAONLINESERVICE.DESTORY is
'是否销毁';

comment on column TAONLINESERVICE.UPDATETIME is
'更新时间';

comment on column TAONLINESERVICE.CREATETIME is
'创建时间';

comment on column TAONLINESERVICE.EFFECTIVE is
'是否有效';

comment on column TAONLINESERVICE.SERVICEURL is
'服务URL';

comment on column TAONLINESERVICE.SERVICETYPE is
'服务类型';

comment on column TAONLINESERVICE.SERVICEID is
'服务ID';

comment on column TAONLINESERVICE.SERVICENAME is
'服务名称';

comment on column TAONLINESERVICE.SERVICEDESC is
'服务描述';

/*==============================================================*/
/* Table: TAONLINESERVICEMG                                     */
/*==============================================================*/
create table TAONLINESERVICEMG
(
   SERVICEID            VARCHAR2(36)         not null,
   SERVICENAMEID        VARCHAR2(36)         not null,
   constraint PK_TAONLINESERVICEMG primary key (SERVICEID, SERVICENAMEID)
);

comment on table TAONLINESERVICEMG is
'在线服务管理';

comment on column TAONLINESERVICEMG.SERVICEID is
'服务ID';

comment on column TAONLINESERVICEMG.SERVICENAMEID is
'服务项ID';

/*==============================================================*/
/* Table: TAONLINESERVICENAME                                   */
/*==============================================================*/
create table TAONLINESERVICENAME
(
   DESTORY              VARCHAR2(1)          ,
   UPDATETIME           DATE,
   CREATETIME           DATE,
   IDPATH               CLOB,
   PARENTID             VARCHAR2(36)         ,
   SERVICENAMEID        VARCHAR2(36)         not null,
   SERVICENAME          VARCHAR2(255)        not null,
   CREATEUSER           VARCHAR2(36),
   constraint PK_TAONLINESERVICENAME primary key (SERVICENAMEID)
);

comment on table TAONLINESERVICENAME is
'在线服务项名称';

comment on column TAONLINESERVICENAME.DESTORY is
'是否销毁';

comment on column TAONLINESERVICENAME.UPDATETIME is
'更新时间';

comment on column TAONLINESERVICENAME.CREATETIME is
'创建时间';

comment on column TAONLINESERVICENAME.IDPATH is
'服务项路径';

comment on column TAONLINESERVICENAME.PARENTID is
'父级id';

comment on column TAONLINESERVICENAME.SERVICENAMEID is
'服务项名称id';

comment on column TAONLINESERVICENAME.SERVICENAME is
'服务名称';

comment on column TAONLINESERVICENAME.CREATEUSER is
'创建者';

/*==============================================================*/
/* Table: TASITEMG                                              */
/*==============================================================*/
create table TASITEMG
(
   PARENTID             VARCHAR2(36)         ,
   IDPATH               VARCHAR2(1024),
   SITEDESC             VARCHAR2(255),
   UPDATETIME           DATE,
   CREATETIME           DATE,
   EFFECTIVE            VARCHAR2(1)          ,
   SITETYPE             VARCHAR2(100)          not null,
   SITEDOMAIN           VARCHAR2(255),
   SITENAME             VARCHAR2(255)        not null,
   SITEID               VARCHAR2(36)         not null,
   DESTORY              VARCHAR2(1)          ,
   CREATEUSER           VARCHAR2(36),
   constraint PK_TASITEMG primary key (SITEID)
);

comment on column TASITEMG.PARENTID is
'父级ID';

comment on column TASITEMG.IDPATH is
'组织路径';

comment on column TASITEMG.SITEDESC is
'站点描述';

comment on column TASITEMG.UPDATETIME is
'更新时间';

comment on column TASITEMG.CREATETIME is
'创建时间';

comment on column TASITEMG.EFFECTIVE is
'是否有效';

comment on column TASITEMG.SITETYPE is
'站点类型';

comment on column TASITEMG.SITEDOMAIN is
'站点域名';

comment on column TASITEMG.SITENAME is
'站点名称';

comment on column TASITEMG.SITEID is
'站点ID';

comment on column TASITEMG.DESTORY is
'是否销毁';

comment on column TASITEMG.CREATEUSER is
'创建者';

/*==============================================================*/
/* Table: TAZOOKEEPERADDRESSMG                                              */
/*==============================================================*/
create table TAZOOKEEPERADDRESSMG
(
   ZKID                    VARCHAR2(36)        not null,
   ZKADDRESS               VARCHAR2(200),
   APPNAME                 VARCHAR2(60),
   APPNAMESPACE            VARCHAR2(30),
   CONNECTFLAG             VARCHAR2(1),
   constraint PK_TAZOOKEEPERADDRESSMG primary key (ZKID)
);

comment on column TAZOOKEEPERADDRESSMG.ZKID is
'注册中心ID';

comment on column TAZOOKEEPERADDRESSMG.ZKADDRESS is
'注册中心地址';

comment on column TAZOOKEEPERADDRESSMG.APPNAME is
'应用名称';

comment on column TAZOOKEEPERADDRESSMG.APPNAMESPACE is
'命名空间';

comment on column TAZOOKEEPERADDRESSMG.CONNECTFLAG is
'连接标志';

/*==============================================================*/
/* Table: TAJOBDATASOURCEMG                                              */
/*==============================================================*/
create table TAJOBDATASOURCEMG
(
   DATASOURCEID             VARCHAR2(36)       not null,
   DATASOURCENAME           VARCHAR2(60),
   DRIVER                   VARCHAR2(200),
   URL                      VARCHAR2(200),
   USERNAME                 VARCHAR2(450),
   PASSWORD                 VARCHAR2(100),
   constraint PK_TAJOBDATASOURCEMG primary key (DATASOURCEID)
);

comment on column TAJOBDATASOURCEMG.DATASOURCEID is
'数据源ID';

comment on column TAJOBDATASOURCEMG.DATASOURCENAME is
'数据源名称';

comment on column TAJOBDATASOURCEMG.DRIVER is
'数据源驱动';

comment on column TAJOBDATASOURCEMG.URL is
'数据源URL';

comment on column TAJOBDATASOURCEMG.USERNAME is
'数据源用户';

comment on column TAJOBDATASOURCEMG.PASSWORD is
'数据源密码';

/*==============================================================*/
/* Table: FREEBUSYJOBMG                                              */
/*==============================================================*/
create table FREEBUSYJOBMG
(
   ID                      VARCHAR2(36)         not null,
   JOBNAME                 VARCHAR2(60),
   FREEMOMENT              VARCHAR2(20),
   BUSYMOMENT              VARCHAR2(20),
   SERVERIPS               VARCHAR2(200),
   ZKID                    VARCHAR2(36),
   constraint PK_FREEBUSYJOBMG primary key (ID)
);

comment on column FREEBUSYJOBMG.ID is
'闲忙任务ID';

comment on column FREEBUSYJOBMG.JOBNAME is
'任务名称';

comment on column FREEBUSYJOBMG.FREEMOMENT is
'空闲时刻';

comment on column FREEBUSYJOBMG.BUSYMOMENT is
'繁忙时刻';

comment on column FREEBUSYJOBMG.SERVERIPS is
'服务器IP地址';

comment on column FREEBUSYJOBMG.ZKID is
'zk注册中心ID';


/*==============================================================*/
/* Table: TATEMPLATECATALOG                                     */
/*==============================================================*/
create table TATEMPLATECATALOG
(
   UPDATETIME           DATE,
   CREATETIME           DATE,
   ID                   VARCHAR2(36)         not null,
   IDPATH               VARCHAR2(1024),
   PARENTID             VARCHAR2(36)         not null,
   NAME                 VARCHAR2(100)        not null,
   NAMEPATH             VARCHAR2(1024)       not null,
   CREATEUSER           VARCHAR2(36),
   constraint PK_TATEMPLATECATALOG primary key (ID)
);

comment on table TATEMPLATECATALOG is
'页面模板功能表';

comment on column TATEMPLATECATALOG.UPDATETIME is
'更新时间';

comment on column TATEMPLATECATALOG.CREATETIME is
'创建时间';

comment on column TATEMPLATECATALOG.ID is
'页面模板功能id';

comment on column TATEMPLATECATALOG.IDPATH is
'id路径';

comment on column TATEMPLATECATALOG.PARENTID is
'页面模板功能父id';

comment on column TATEMPLATECATALOG.NAME is
'页面模板功能名称';

comment on column TATEMPLATECATALOG.NAMEPATH is
'页面模板功能名称路径';

comment on column TATEMPLATECATALOG.CREATEUSER is
'创建人';


/*==============================================================*/
/* Table: TATEMPLATE                                            */
/*==============================================================*/
create table TATEMPLATE
(
   TEMPLATEID           VARCHAR2(36)         not null,
   CATALOGID            VARCHAR2(36)         not null,
   TEMPLATENAME         VARCHAR2(100)        not null,
   TEMPLATECODE         VARCHAR2(36),
   TEMPLATETYPE         VARCHAR2(10)          not null,
   TEMPLATESOURCE       VARCHAR2(1)          not null,
   TEMPLATECONTENT      BLOB,
   EFFECTIVE            VARCHAR2(1),
   CREATEUSER           VARCHAR2(36),
   UPDATETIME           DATE,
   CREATETIME           DATE,
   constraint PK_TATEMPLATE primary key (TEMPLATEID)
);

comment on table TATEMPLATE is
'页面模板表';

comment on column TATEMPLATE.TEMPLATEID is
'页面模板id';

comment on column TATEMPLATE.CATALOGID is
'页面模板功能id';

comment on column TATEMPLATE.TEMPLATENAME is
'页面模板名称';

comment on column TATEMPLATE.TEMPLATECODE is
'页面模板编码';

comment on column TATEMPLATE.TEMPLATETYPE is
'页面模板类型';

comment on column TATEMPLATE.TEMPLATESOURCE is
'页面模板来源';

comment on column TATEMPLATE.TEMPLATECONTENT is
'页面模板内容';

comment on column TATEMPLATE.EFFECTIVE is
'页面模板有效标识';

comment on column TATEMPLATE.CREATEUSER is
'创建人';

comment on column TATEMPLATE.UPDATETIME is
'更新时间';

comment on column TATEMPLATE.CREATETIME is
'创建时间';


/*==============================================================*/
/* Table: TAAPPMG                                               */
/*==============================================================*/
create table TAAPPMG
(
   APPID                VARCHAR2(36)         not null,
   APPNAME              VARCHAR2(100)        not null,
   APPTYPE              VARCHAR2(1),
   APPEFFECTIVE         VARCHAR2(1),
   CREATEUSER           VARCHAR2(36),
   UPDATETIME           DATE,
   CREATETIME           DATE,
   constraint PK_TAAPPMG primary key (APPID)
);

comment on table TAAPPMG is
'应用管理表';

comment on column TAAPPMG.APPID is
'应用id';

comment on column TAAPPMG.APPNAME is
'应用名称';

comment on column TAAPPMG.APPTYPE is
'应用类型';

comment on column TAAPPMG.APPEFFECTIVE is
'应有有效标识';

comment on column TAAPPMG.CREATEUSER is
'创建人';

comment on column TAAPPMG.UPDATETIME is
'更新时间';

comment on column TAAPPMG.CREATETIME is
'创建时间';


/*==============================================================*/
/* Table: TAAPPPAGE                                             */
/*==============================================================*/
create table TAAPPPAGE
(
   APPID              VARCHAR2(36)         not null,
   PAGEID             VARCHAR2(36)         not null,
   PAGEPID            VARCHAR2(36)         not null,
   PAGENAME           VARCHAR2(100)        not null,
   PAGEINDEX          VARCHAR2(10)         not null,
   PAGECODE           BLOB,
   PAGEURL            VARCHAR2(200)        not null,
   PAGETYPE           VARCHAR2(2)          not null,
   TEMPLATEID         VARCHAR2(36),
   constraint PK_TAAPPPAGE primary key (pageid)
);

comment on table TAAPPPAGE is
'应用页面';

comment on column TAAPPPAGE.APPID is
'应用id';

comment on column TAAPPPAGE.PAGEID is
'页面id';

comment on column TAAPPPAGE.PAGEPID is
'页面父id';

comment on column TAAPPPAGE.PAGENAME is
'页面名称';

comment on column TAAPPPAGE.PAGEINDEX is
'页面顺序';

comment on column TAAPPPAGE.PAGECODE is
'页面代码';

comment on column TAAPPPAGE.PAGEURL is
'页面url';

comment on column TAAPPPAGE.PAGETYPE is
'页面类型';

comment on column TAAPPPAGE.TEMPLATEID is
'页面所用得模版id';

/*==============================================================*/
/* Table: TASYSCONFIG                                             */
/*==============================================================*/
create table TASYSCONFIG
(
   ID                    VARCHAR2(36)         not null,
   FIELDNAME             VARCHAR2(36),
   DEFAULTVALUE          VARCHAR2(36),
   DATATYPE              VARCHAR2(100),
   FUNCTIONTYPE          VARCHAR2(10),
   COLLECTIONNAME        VARCHAR2(100),
   COLLECTIONDATAS       VARCHAR2(10),
   FLAG                  DECIMAL(10,0),
   constraint PK_TASYSCONFIG primary key (ID)
);

comment on table TASYSCONFIG is
'系统配置';

comment on column TASYSCONFIG.ID is
'系统配置id';

comment on column TASYSCONFIG.FIELDNAME is
'字段名称';

comment on column TASYSCONFIG.DEFAULTVALUE is
'默认值';

comment on column TASYSCONFIG.DATATYPE is
'数据类型';

comment on column TASYSCONFIG.FUNCTIONTYPE is
'所属配置区域';

comment on column TASYSCONFIG.COLLECTIONNAME is
'码表类型';

comment on column TASYSCONFIG.COLLECTIONDATAS is
'码表值';

comment on column TASYSCONFIG.FLAG is
'更新标志';

create OR REPLACE view v_dict (name,type,label,value,parentvalue,sort,authority,cssclass,cssstyle,remarks,createdate,createuser,version,status,field01,field02,field03,field04,field05,system,newtype) as select x0.name ,x0.type ,x0.label ,x0.value ,x0.parentvalue ,x0.sort ,x0.authority ,x0.cssclass ,x0.cssstyle ,x0.remarks ,x0.createdate ,x0.createuser ,x0.version ,x0.status ,x0.field01 ,x0.field02 ,x0.field03 ,x0.field04 ,x0.field05 ,x0.system ,x0.newtype from tadict x0 ;


--  初始化人员表
INSERT INTO tauser (userid,loginid,password,passworddefaultnum,pwdlastmodifydate,islock,orderno,name,sex,idcardtype,idcardno,mobile,createuser,createtime,modifytime,destory,accountsource,effective,effectivetime,jobnumber,state,birthplace,address,zipcode,email,phone,education,graduateschool,workplace,field01,field02,field03,field04,field05,field06,field07,field08,field09,field10) VALUES (
'1','developer','$2a$10$ZI3ewI1LvnS8bvTDiZk5X.w9/u.LXy8vPTwQFl8SlDtMTYBQHnIEm',0,sysdate,'0',1,'超级管理员','1','0',null,'18011567700','1',sysdate,NULL,'0',NULL,'1',NULL,NULL,NULL,NULL,'成都市/锦江区/久远银海',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

--  初始化组织表
INSERT INTO taorg
(orgid, orgname, spell, parentid, idpath, namepath, customno, orderno, orglevel, area, effective, orgtype, createuser, createtime, modifytime, orgmanager, orgcode, contacts, address, tel, destory, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10)
VALUES('fd811ab9c30440088df3e29ea784460a', '顶级组织', 'MZB', '0', 'fd811ab9c30440088df3e29ea784460a', '顶级组织', '', 0, 0, '', '1', '01', '1', NULL, sysdate , '', '', '', '', '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--  初始化码表
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('角色类型', 'ROLETYPE', '管理角色', '04', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('角色标识', 'ROLESIGN', '稽核角色', '2', null, '2', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('角色标识', 'ROLESIGN', '业务角色', '1', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('元素在界面中的授权策略', 'ELEMENTAUTHORITYPOLICY', '不显示', '0', null, '31', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('元素在界面中的授权策略', 'ELEMENTAUTHORITYPOLICY', '数据可见不可编辑', '1', '', '21', '0', '', '', null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('元素在界面中的授权策略', 'ELEMENTAUTHORITYPOLICY', '数据可见可编辑', '2', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('账户类型', 'ACCOUNTTYPE', '组织账户', '2', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('账户类型', 'ACCOUNTTYPE', '个人账户', '1', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('界面元素授权策略', 'UIAUTHORITYPOLICY', '继承当前菜单权限', '0', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('界面元素授权策略', 'UIAUTHORITYPOLICY', '独立授权', '1', null, '10', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全策略', 'SECURITYPOLICY', '无需登录可访问', '0', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全策略', 'SECURITYPOLICY', '登陆均可访问', '1', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全策略', 'SECURITYPOLICY', '授权可访问', '2', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('有效标识', 'EFFECTIVE', '有效', '1', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('有效标识', 'EFFECTIVE', '无效', '0', null, '0', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('证件类型', 'IDCARDTYPE', '居民身份证(户口簿)', '0', '', '10', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('证件类型', 'IDCARDTYPE', '护照', '1', '', '20', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('证件类型', 'IDCARDTYPE', '军官证', '2', '', '30', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('证件类型', 'IDCARDTYPE', '其他', '3', '', '40', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('权限认证方式', 'AUTHMODE', '用户名密码', '01', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('权限认证方式', 'AUTHMODE', '指纹识别', '02', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('权限认证方式', 'AUTHMODE', '人脸识别', '03', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('认证方式类型', 'AUTHMODE', 'Key盘', '04', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '新增组织', '01', null, '10', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '编辑组织', '02', null, '20', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '禁用组织', '03', null, '30', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '启用组织', '04', null, '40', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除组织', '05', null, '50', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '新增用户', '06', null, '60', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '编辑用户', '07', null, '70', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '禁用用户', '08', null, '80', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '启用用户', '09', null, '90', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '解锁账号', '10', null, '100', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更新用户直属组织', '12', null, '110', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '重置密码', '13', null, '120', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除用户', '14', null, '130', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '新增角色', '15', null, '140', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '新增用户和角色关联关系', '16', null, '150', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '编辑角色', '17', null, '160', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除角色', '18', null, '170', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '角色禁用', '19', null, '180', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '启用角色', '20', null, '190', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '新增功能资源', '21', null, '200', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '编辑功能资源', '22', null, '210', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除功能资源', '23', null, '220', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '禁用功能资源', '24', null, '230', '0', null, null, null, sysdate, '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '启用功能资源', '25', null, '240', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改组织权限（授予）', '26', null, '250', '0', null, null, null, sysdate, '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改组织权限（回收）', '27', null, '260', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改使用权限（授权）', '28', null, '270', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改使用权限（回收）', '29', null, '280', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改授权权限（授权）', '30', null, '290', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改授权权限（回收）', '31', null, '300', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改再授权权限（授权）', '32', null, '310', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改再授权权限（回收）', '33', null, '320', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除角色人员关联关系', '34', null, '330', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '角色复制', '35', null, '340', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '权限复制', '36', null, '350', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '添加界面元素', '37', null, '360', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除界面元素', '38', null, '370', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '根据功能资源删除界面元素', '39', null, '380', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '编辑界面元素', '40', null, '390', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '根据功能资源编辑界面元素', '41', null, '400', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '组织机构', '01', null, '10', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '人员用户', '02', null, '20', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '角色', '03', null, '30', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '功能资源', '04', null, '40', '0', null, null, null, sysdate, '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '界面元素', '05', null, '50', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '组织权限', '06', null, '60', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '权限信息', '07', null, '70', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '自定义资源', '08', null, '80', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'OFF', '0', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'ERROR', '1', null, '1', '0', null, null, null, sysdate, '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'WARN', '2', null, '1', '0', null, null, null, sysdate, '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'INFO', '3', null, '1', '0', null, null, null, sysdate, '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'DEBUG', '4', null, '1', '0', null, null, null, sysdate, '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'TRACE', '5', null, '1', '0', null, null, null, sysdate, '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'ALL', '6', null, '1', '0', null, null, null, sysdate, '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全认证级别', 'SECURIYTLEVEL', '无限制', '0', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全认证级别', 'SECURIYTLEVEL', '一级', '1', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全认证级别', 'SECURIYTLEVEL', '二级', '2', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全认证级别', 'SECURIYTLEVEL', '三级', '3', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全认证级别', 'SECURIYTLEVEL', '四级', '4', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('字典数据类型', 'DICTDATATYPE', '未同步', '0', '', '0', '0', '', '', null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('字典数据类型', 'DICTDATATYPE', '已同步', '2', '', '2', '0', '', '', null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('字典数据类型', 'DICTDATATYPE', '脏数据', '1', '', '1', '0', '', '', null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('是否', 'YESORNO', '是', '1', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('是否', 'YESORNO', '否', '0', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('性别', 'SEX', '无', '0', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('性别', 'SEX', '男', '1', null, '11', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('性别', 'SEX', '女', '2', null, '21', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('组织类型', 'ORGTYPE', '机构', '01', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('组织类型', 'ORGTYPE', '部门', '02', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('组织类型', 'ORGTYPE', '组', '03', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('角色类型', 'ROLETYPE', '公有角色', '01', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('角色类型', 'ROLETYPE', '代理角色', '03', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('有无', 'HAVAORNOT', '无', '0', null, '10', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('资源类型', 'RESOURCETYPE', '通用菜单', '0', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('资源类型', 'RESOURCETYPE', '管理菜单', '1', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('资源类型', 'RESOURCETYPE', '经办菜单', '2', null, '1', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('有无', 'HAVAORNOT', '有', '1', null, '20', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('状态', 'STATE', '启用', '1', null, '10', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('状态', 'STATE', '禁用', '0', null, '20', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点有效标识', 'SITEEFFECTIVE', '有效', '1', null, '10', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点有效标识', 'SITEEFFECTIVE', '无效', '0', null, '20', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点类型', 'SITETYPE', '网厅', '1', null, '20', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点类型', 'SITETYPE', '业务系统', '2', null, '30', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点类型', 'SITETYPE', '公众号', '3', null, '40', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('静态资源类型', 'FILERESOURCETYPE', '目录', '1', null, '10', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('静态资源类型', 'FILERESOURCETYPE', '未知类型', '3', null, '30', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('静态资源类型', 'FILERESOURCETYPE', '资源文件', '2', null, '20', '0', null, null, null, sysdate, '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点类型', 'SITETYPE', 'APP', '0', null, '10', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('行政区划级别', 'AREALEVEL', '市', '1', null, '20', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('行政区划级别', 'AREALEVEL', '区/县', '2', null, '30', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('行政区划级别', 'AREALEVEL', '其他', '4', null, '50', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('行政区划级别', 'AREALEVEL', '省/自治区', '0', null, '10', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('行政区划级别', 'AREALEVEL', '街道/镇', '3', null, '40', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('成功标识', 'ISSUCCESS', '失败', '0', null, '10', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('成功标识', 'ISSUCCESS', '成功', '1', null, '20', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('模版来源', 'TEMPLATESOURCE', '外部上传', '1', null, '10', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('模版来源', 'TEMPLATESOURCE', '内部绘制', '2', null, '20', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('模版类型', 'TEMPLATETYPE', 'code模版', '1', null, '10', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('模版类型', 'TEMPLATETYPE', '表单模版', '2', null, '20', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('模版类型', 'TEMPLATETYPE', '在线开发', '3', null, '30', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('可用标识', 'AVAILABLE', '不可用', '0', null, '20', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('可用标识', 'AVAILABLE', '可用', '1', null, '10', '0', null, null, null, sysdate, '1', '0', '1', null, null, null, null, null, '1', '0');

--  初始化功能菜单
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('4b2eee0d7ded4e8094d4acf439fd3a1c', '48afedddc8f04c668b3c1572c30a7745', '行政区划管理', '', 'sysmg', 'orguser.html#/areaManagement', 30, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/48afedddc8f04c668b3c1572c30a7745/4b2eee0d7ded4e8094d4acf439fd3a1c', '银海软件/管理系统/组织人员管理/行政区划管理', '3', '', '', '2', 0, '1', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('8aa86ed4c7f84183935a262db4a605d3', '78ad02fdb879406ebc5e7a4faf8f5905', '管理员权限管理', '', 'sysmg', 'authority.html#/adminAuthority', 10, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/78ad02fdb879406ebc5e7a4faf8f5905/8aa86ed4c7f84183935a262db4a605d3', '银海软件/管理系统/资源权限管理/管理员权限管理', '3', '', '', '2', 0, '1', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('5e67c7acef914c349d8aff076921f6b5', '78ad02fdb879406ebc5e7a4faf8f5905', '相似权限管理', '', 'sysmg', 'authority.html#/similarAuthority', 30, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/78ad02fdb879406ebc5e7a4faf8f5905/5e67c7acef914c349d8aff076921f6b5', '银海软件/管理系统/资源权限管理/相似权限管理', '3', '', '', '2', 0, '0', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('72888507aba5484a8942e8dd0e6b6f7f', 'fb8637c2e52e4b05bd2c07d742141ee7', '作业管理', null, 'sysmg', 'sysmg.html#/jobManager', 0, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/fb8637c2e52e4b05bd2c07d742141ee7/72888507aba5484a8942e8dd0e6b6f7f', '银海软件/管理系统/系统管理/分布式任务管理/作业管理', '4', '', '', '2', 0, '1', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('59a7fb9c459a4dd48d468f2add1d32b2', '1d4e283ad5584e02811f6b188d3592bc', '接入系统管理', '', 'sysmg', 'sysmg.html#/accessSystem', 70, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/59a7fb9c459a4dd48d468f2add1d32b2', '银海软件/管理系统/系统管理/接入系统管理', '3', '', '', '2', 0, '1', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('0415d44401b24605a21b589b6aaa349e', '40337bdecb19484ebeb39d6c21aaca26', '管理系统', '', 'sysmg', '', 51, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e', '银海软件/管理系统', '1', '', '', '2', 0, '0', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('1d4e283ad5584e02811f6b188d3592bc', '0415d44401b24605a21b589b6aaa349e', '系统管理', '', 'sysmg', '', 41, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc', '银海软件/管理系统/系统管理', '2', '', '', '2', 0, '1', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('c578d9f8626d48f2971d7a18ac5281c5', 'fb8637c2e52e4b05bd2c07d742141ee7', '作业历史', null, 'sysmg', 'sysmg.html#/jobHistory', 10, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/fb8637c2e52e4b05bd2c07d742141ee7/c578d9f8626d48f2971d7a18ac5281c5', '银海软件/管理系统/系统管理/分布式任务管理/作业历史', '4', '', '', '2', 0, '1', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('78ad02fdb879406ebc5e7a4faf8f5905', '0415d44401b24605a21b589b6aaa349e', '资源权限管理', '', 'sysmg', '', 30, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/78ad02fdb879406ebc5e7a4faf8f5905', '银海软件/管理系统/资源权限管理', '2', '', '', '2', 0, '0', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('7c2862a57e34459484bd701c19a8de27', '1d4e283ad5584e02811f6b188d3592bc', '系统异常日志', '', 'sysmg', 'logmg.html#/systemExceptionLog', 20, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/7c2862a57e34459484bd701c19a8de27', '银海软件/管理系统/系统管理/系统异常日志', '3', '', '', '2', 0, '1', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('40337bdecb19484ebeb39d6c21aaca26', '0', '银海软件', '', 'sysmg', '', 0, '40337bdecb19484ebeb39d6c21aaca26', '银海软件', '0', '', '', '1', 1, '0', '1', '', '', sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('7c1dabd160974d8f90858c187cefa128', '1d4e283ad5584e02811f6b188d3592bc', '日志动态配置', '', 'sysmg', 'logmg.html#/logConfig', 0, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/7c1dabd160974d8f90858c187cefa128', '银海软件/管理系统/系统管理/日志动态配置', '3', '', '', '2', 0, '1', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('bd9d0bba145c458e841aa9da0aeeb1d8', '7459c1b525934151a1d309a304933644', '用户可管理字段配置', '', 'sysmg', 'sysmg.html#/userInfoManagement', 40, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/7459c1b525934151a1d309a304933644/bd9d0bba145c458e841aa9da0aeeb1d8', '银海软件/管理系统/资源管理/用户可管理字段配置', '3', '', '', '2', 0, '1', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('daceeff8a97b46cb9573b93ba3a5a792', '48afedddc8f04c668b3c1572c30a7745', '人员管理', '', 'sysmg', 'orguser.html#/userManagement', 10, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/48afedddc8f04c668b3c1572c30a7745/daceeff8a97b46cb9573b93ba3a5a792', '银海软件/管理系统/组织人员管理/人员管理', '3', '', '', '2', 0, '1', '1', null, null, sysdate, '1', '1', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('7459c1b525934151a1d309a304933644', '0415d44401b24605a21b589b6aaa349e', '资源管理', '', 'sysmg', '', 40, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/7459c1b525934151a1d309a304933644', '银海软件/管理系统/资源管理', '2', '', '', '2', 0, '0', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('95bb9b749bf54e4692b0b1f14fd1b5ab', '78ad02fdb879406ebc5e7a4faf8f5905', '角色权限管理', '', 'sysmg', 'authority.html#/roleAuthorityManagement', 0, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/78ad02fdb879406ebc5e7a4faf8f5905/95bb9b749bf54e4692b0b1f14fd1b5ab', '银海软件/管理系统/资源权限管理/角色权限管理', '3', '', '', '2', 0, '1', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('84e388e319d44de585b94b039eec0092', '1d4e283ad5584e02811f6b188d3592bc', '工作台模块管理', '', 'sysmg', 'logmg.html#/defaultTemplate', 60, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/84e388e319d44de585b94b039eec0092', '银海软件/管理系统/系统管理/工作台模块管理', '3', '', '', '2', 0, '1', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('3dbde33722154503a7d22ac60f6a0e4e', '48afedddc8f04c668b3c1572c30a7745', '自定义组织管理', '', 'sysmg', 'orguser.html#/customOrgManagement', 20, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/48afedddc8f04c668b3c1572c30a7745/3dbde33722154503a7d22ac60f6a0e4e', '银海软件/管理系统/组织人员管理/自定义组织管理', '3', '', '', '2', 0, '1', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('770b2f1e77eb4d9092dc89743b5792c9', '1d4e283ad5584e02811f6b188d3592bc', '登录日志统计', '', 'sysmg', 'logmg.html#/loginLogAnalysis', 10, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/770b2f1e77eb4d9092dc89743b5792c9', '银海软件/管理系统/系统管理/登录日志统计', '3', '', '', '2', 0, '1', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('fb8637c2e52e4b05bd2c07d742141ee7', '1d4e283ad5584e02811f6b188d3592bc', '分布式任务管理', null, 'sysmg', null, 50, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/fb8637c2e52e4b05bd2c07d742141ee7', '银海软件/管理系统/系统管理/分布式任务管理', '3', '', '', '2', 0, '1', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('c88413826abd4a5b88612a6442e6db07', '1d4e283ad5584e02811f6b188d3592bc', '操作日志', null, 'sysmg', 'logmg.html#/operationLog', 40, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/c88413826abd4a5b88612a6442e6db07', '银海软件/管理系统/系统管理/操作日志', '3', null, null, '2', 0, '1', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('1e706f26bc144c1da12022359c238053', '48afedddc8f04c668b3c1572c30a7745', '组织机构管理', '', 'sysmg', 'orguser.html#/orgManagement', 0, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/48afedddc8f04c668b3c1572c30a7745/1e706f26bc144c1da12022359c238053', '银海软件/管理系统/组织人员管理/组织机构管理', '3', '', '', '2', 1, '0', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('3df588fc565d4287b3cefcd00a39cd91', '7459c1b525934151a1d309a304933644', '标签管理', '', 'sysmg', 'sysmg.html#/tagManagement', 30, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/7459c1b525934151a1d309a304933644/3df588fc565d4287b3cefcd00a39cd91', '银海软件/管理系统/资源管理/标签管理', '3', '', '', '2', 0, '1', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('ffa74f43e853441dac0ee90c787cb2e6', '1d4e283ad5584e02811f6b188d3592bc', '字典管理', '', 'sysmg', 'sysmg.html#/dictionaryManager', 30, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/ffa74f43e853441dac0ee90c787cb2e6', '银海软件/管理系统/系统管理/字典管理', '3', '', '', '2', 0, '1', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('877e407281dd48acb05a77fcb922bc73', '78ad02fdb879406ebc5e7a4faf8f5905', '权限代理', '', 'sysmg', 'authority.html#/authorityAgent', 20, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/78ad02fdb879406ebc5e7a4faf8f5905/877e407281dd48acb05a77fcb922bc73', '银海软件/管理系统/资源权限管理/权限代理', '3', '', '', '2', 0, '0', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('48afedddc8f04c668b3c1572c30a7745', '0415d44401b24605a21b589b6aaa349e', '组织人员管理', '', 'sysmg', '', 10, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/48afedddc8f04c668b3c1572c30a7745', '银海软件/管理系统/组织人员管理', '2', '', '', '2', 0, '0', '1', null, null, sysdate, '1', '1', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('c2745b7cae7846acb9bcf8d0f4e836e8', '7459c1b525934151a1d309a304933644', '自定义资源管理', '', 'sysmg', 'sysmg.html#/customResource', 20, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/7459c1b525934151a1d309a304933644/c2745b7cae7846acb9bcf8d0f4e836e8', '银海软件/管理系统/资源管理/自定义资源管理', '3', '', '', '2', 0, '1', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('ec56a0a43b09429482632cb61f7c6908', '7459c1b525934151a1d309a304933644', '功能资源管理', '', 'sysmg', 'sysmg.html#/resourceManagement', 0, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/7459c1b525934151a1d309a304933644/ec56a0a43b09429482632cb61f7c6908', '银海软件/管理系统/资源管理/功能资源管理', '3', '', '', '2', 0, '1', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('a0609e4fd75049dbb3a6af7ab8de08a3', '40337bdecb19484ebeb39d6c21aaca26', '网上服务集成', '', 'sysmg', '', 61, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3', '银海软件/网上服务集成', '1', '', '', '2', 0, '0', '1', null, null, '2019-02-26 21:00:30.00000', '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('df146a87ecec4297b17329c92f422b90', 'a0609e4fd75049dbb3a6af7ab8de08a3', '静态资源管理', '', 'sysmg', 'servicemg.html#/staticResourceMg', 40, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3/df146a87ecec4297b17329c92f422b90', '银海软件/网上服务集成/静态资源管理', '2', '', '', '2', 0, '0', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('950ceb076472425eba8dd981e0361497', 'a0609e4fd75049dbb3a6af7ab8de08a3', '服务管理', '', 'sysmg', 'servicemg.html#/serviceManagement', 10, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3/950ceb076472425eba8dd981e0361497', '银海软件/网上服务集成/服务管理', '2', '', '', '2', 0, '0', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('f126b34ea04943249c98af7801995490', 'a0609e4fd75049dbb3a6af7ab8de08a3', '站点管理', '', 'sysmg', 'servicemg.html#/siteManagement', 0, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3/f126b34ea04943249c98af7801995490', '银海软件/网上服务集成/站点管理', '2', '', '', '2', 0, '0', '0', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('d5778206f27f4d889c79caa2162c9e55', 'a0609e4fd75049dbb3a6af7ab8de08a3', '应用管理', '', 'sysmg', 'servicemg.html#/appManagement', 61, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3/d5778206f27f4d889c79caa2162c9e55', '银海软件/网上服务集成/应用管理', '2', '', '', '2', 0, '0', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('7d02437d246642ff82281d11df80f735', 'a0609e4fd75049dbb3a6af7ab8de08a3', '页面模板管理', '', 'sysmg', 'servicemg.html#/templateMg', 60, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3/7d02437d246642ff82281d11df80f735', '银海软件/网上服务集成/页面模板管理', '2', '', '', '2', 0, '0', '1', null, null, sysdate, '1', '0', null, null, null, null, null, null, null, null, null, null, '0');


--  初始化角色
INSERT INTO tarole (roleid,rolename,isadmin,rolelevel,orgid,roletype,effective,effectivetime,createuser,createtime,roledesc,rolesign,subordinate) VALUES (
'1','超级管理员',NULL,NULL,'fd811ab9c30440088df3e29ea784460a','04','1',NULL,'1',sysdate,'超级管理员角色',NULL,NULL);

--  初始化用户组织表
INSERT INTO tauserorg (userid,orgid,isdirect) VALUES (
'1','fd811ab9c30440088df3e29ea784460a','1');

--  初始化接入系统
INSERT INTO taaccesssystem
(id,syscode,sysname,spell,protocol,"domain",port,contextpath,portalsystem,menuservice,provider,effective,regtime,modifytime,backgroundaddress) VALUES (
'e55b9b7046434d66bc11b94d553fada2','sysmg','管理系统','GLXT','http','localhost','8081','sysmg','1','111','ss','1',sysdate,sysdate,'192.168.0.1:8083');


--  初始化标签
INSERT INTO tataggroup (taggroupid,taggroupname,effective,createuser,createtime,updatetime,destory) VALUES (
'001','用户','1','developer',sysdate,sysdate,'0');
INSERT INTO tataggroup (taggroupid,taggroupname,effective,createuser,createtime,updatetime,destory) VALUES (
'002','组织','1','developer',sysdate,sysdate,'0');

--  初始化菜单路径表taresourceurl
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('ec56a0a43b09429482632cb61f7c6908', 'org/sysmg/resourceManagementRestService/**', '所有', '0', '821a8ca012154ba2a4c451918c99cfc0');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('3df588fc565d4287b3cefcd00a39cd91', 'org/sysmg/tagManagementRestService/**', '所有', '0', '885e01d3494b44759c62b8b3568e6145');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('95bb9b749bf54e4692b0b1f14fd1b5ab', 'org/authority/roleAuthorityManagementRestService/**', '所有', '0', 'fc45635549b5487c87d0287490a79b5f');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('8aa86ed4c7f84183935a262db4a605d3', 'org/authority/adminAuthorityManagementRestService/**', '所有', '0', 'cbcdd31ffb6c40499bb1af744851a783');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('4b2eee0d7ded4e8094d4acf439fd3a1c', 'org/orguser/areaManagementRestService/**', '所有', '0', '7859157a0cd94c89995b0dde9fc40bc6');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('ffa74f43e853441dac0ee90c787cb2e6', 'dictmg/dictMgRestService/**', '所有', '0', 'b88be2871149451a918264fd1ff468a3');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('7c2862a57e34459484bd701c19a8de27', 'logmg/exceptionlog/serverExceptionLogRestService/**', '所有', '0', '0b1ccf818760461ca7bafb439f62b711');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('c88413826abd4a5b88612a6442e6db07', 'org/sysmg/orgOpLogRestService/**', '所有', '0', '00840362514a445f8188415fbc52e056');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('bd9d0bba145c458e841aa9da0aeeb1d8', 'org/sysmg/manageableFieldsRestService/**', '所有', '0', '6ab08b27defc4facb18855644f650fd7');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('f126b34ea04943249c98af7801995490', 'sitemg/siteManagementRestService/**', '所有', '0', 'e241be8a59004a819f0f2e20a887e373');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('f126b34ea04943249c98af7801995490', 'servicem.html#/siteManagement', '独立1', '1', 'cd48d5077ada47bc9882f2eee791a5fc');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('f126b34ea04943249c98af7801995490', 'servicem.html#/siteanagement', '独立2', '1', 'ee5131300f204e8c93a3e3d315d87172');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('7a1c0a7723904f5b87a2398d8b7c8dbd', 'test/*', '独立1', '1', 'e287c5aee97f4f7aa3aff2eef67bcaa1');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('7a1c0a7723904f5b87a2398d8b7c8dbd', 'test1/*', '独立2', '1', 'f894e259dbf64a218a39bfbdb3ce0ebf');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('fb6964c434bd4794a31d02ca942108aa', 'test1/*', '独立2', '1', '3bd4881e6167458783311e1c56a341ee');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('fb6964c434bd4794a31d02ca942108aa', 'test/*', '独立', '1', 'e3b0b046206e4d90a6ea4db0ff4f6aa4');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('770b2f1e77eb4d9092dc89743b5792c9', 'logmg/loginLog/loginLogAnalysisRestService/**', '所有', '0', '39683443f5e84c67913039e4c53133d1');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('877e407281dd48acb05a77fcb922bc73', 'org/authority/authorityAgentRestService/**', '所有', '0', 'c4360fdef9ad46278a677508ee8b290a');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('7c1dabd160974d8f90858c187cefa128', 'logmg/logconfig/logConfigRestService/**', '所有', '0', '321ac2aade66460dbea294f434dc4c9d');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('72888507aba5484a8942e8dd0e6b6f7f', 'jobmg/elasticjob/**/**', '所有', '0', 'fe7c7a374893404b8911d1b4d8e2f3a5');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('c578d9f8626d48f2971d7a18ac5281c5', 'jobmg/elasticjob/**/**', '所有', '0', '027c4a42d7414ec8ac622d2cc55836a2');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('59a7fb9c459a4dd48d468f2add1d32b2', 'org/sysmg/accessSystemManagementRestService/**', '所有', '0', '274f3ca46d5a4b969fe56eebcc9d75f3');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('3dbde33722154503a7d22ac60f6a0e4e', 'org/orguser/customOrgManagementRestService/**', '所有', '0', 'b091f4af3eba4c5c946af8dacaf951b9');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('5e67c7acef914c349d8aff076921f6b5', 'org/authority/similarAuthorityManagementRestService/**', '所有', '0', '2c3c1591444842e1aa1588a0aab998a8');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('daceeff8a97b46cb9573b93ba3a5a792', 'org/orguser/userManagementRestService/**', '所有', '0', 'b32b96d0142d4fea8d5fd8a58011c0c2');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('daceeff8a97b46cb9573b93ba3a5a792', 'org/sysmg/manageableFieldsRestService/**', '查询用户可配置字段', '0', '676b9aca9d054d65aac3830436d2322e');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('daceeff8a97b46cb9573b93ba3a5a792', 'org/orguser/orgManagementRestService/getOrgByAsync', '异步组织树', '0', '02f484b910ad4fccbb82a4acb59f1902');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('3dbde33722154503a7d22ac60f6a0e4e', 'org/orguser/orgManagementRestService/getOrgByAsync', '异步获取组织树', '0', 'a87e7b2776214a76ba31151c6c5cbbe5');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('1e706f26bc144c1da12022359c238053', 'org/orguser/orgManagementRestService/**', '所有', '0', 'aa60a746c0a24640a06dea49a4d42572');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('1e706f26bc144c1da12022359c238053', 'org/orguser/userManagementRestService/queryEffectiveUser', '获取人员列表', '0', '32324795684647c3a2f5a8e5218610b4');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('1e706f26bc144c1da12022359c238053', 'org/sysmg/manageableFieldsRestService/queryManageableFields', '获取行政区划列表', '0', '0e3396a92f474267a5732d1616604e90');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('c2745b7cae7846acb9bcf8d0f4e836e8', 'org/sysmg/resourceCategoryManagementRestService/**', '所有', '0', '7f621426782342faa371319c677f066e');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('c2745b7cae7846acb9bcf8d0f4e836e8', 'org/sysmg/accessSystemManagementRestService/queryAccessSystemByParam', '接入系统列表', '0', '807ef17eaa8446188acbf92929171c56');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('c2745b7cae7846acb9bcf8d0f4e836e8', 'org/sysmg/customResourceManagementRestService/**', '所有自定义资源', '0', 'af0be155c6934ecd83d8cf62b36437e2');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('ec56a0a43b09429482632cb61f7c6908', 'org/sysmg/manageableFieldsRestService/queryManageableFields', '获取配置字段', '0', '47a91cf250b8446c89cc98628adbcd31');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('90e5730164b845898feb23c091140ea0', 'org/sysmg/accessSystemManagementRestService/**', '所有', '0', '58606a643d29437c9afcd69e8dd6482e');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('144a2bc62c5845b0b17019dd59954ef9', 'jobmg/elasticjob/zookeeperAddressManagementRestService/**', '所有', '0', '7acb6d48d51f47fc9f9491b1234c0428');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('84e388e319d44de585b94b039eec0092', 'org/sysmg/WorkbenchManageRestService/**', '所有', '0', '2107bfbf62254633887b7a8d8a59addf');
INSERT INTO taresourceurl(resourceid, resturl, urlname, authoritypolicy, urlid) VALUES ('0da142c0f8444c1a85f2d861db818055', 'jobmg/elasticjob/jobDatasourceManagementRestService/**', '所有', '0', '0e78d360879a4bd38b3fa9c492dd106a');
INSERT INTO taresourceurl (resourceid, resturl, urlname, urlid, authoritypolicy) VALUES ('3dbde33722154503a7d22ac60f6a0e4e', 'org/orguser/userManagementRestService/queryEffectiveUser', '获取人员列表', '4b3512dec0204cd19b7c5fbdd75a97fa', '0');
--  初始化在线服务项
INSERT INTO taonlineservicename (destory, updatetime, createtime, idpath, parentid, servicenameid, servicename, createuser)
VALUES ('0', sysdate, sysdate, '5e3a06ed889b4b40ba88c5ee2ba192f3', '0', '5e3a06ed889b4b40ba88c5ee2ba192f3', '久远银海', '1');

--  初始化自定义组织类别名称
INSERT INTO tacustomorgtypename (customorgtypenameid, customorgtypename, effective, createuser, createtime, updatetime, destory, customorgtypenamecode, customorgtypenamedesc)
VALUES ('baa315851d3c4a90a47889672404505d', '社保组织', '1', '1', sysdate, sysdate, '0', 'SBZZ', '这是社保组织描述');

commit ;



-- 2019-05-28
create table tadynamicrest
(
    id VARCHAR2(36) not null
        constraint PK_TADYNAMICREST
            primary key,
    sql VARCHAR2(2048) not null,
    dsname VARCHAR2(128) not null,
    restid VARCHAR2(255) not null,
    restname VARCHAR2(128) not null,
    effective VARCHAR2(1) not null,
    createtime DATE not null,
    createuser VARCHAR2(36) not null
);

comment on column tadynamicrest.id is '唯一标识';
comment on column tadynamicrest.sql is 'sql';
comment on column tadynamicrest.dsname is '数据源名称';
comment on column tadynamicrest.restid is '服务ID';
comment on column tadynamicrest.effective is '有效标识';
comment on column tadynamicrest.restname is '服务名称';
comment on column tadynamicrest.createtime is '创建时间';
comment on column tadynamicrest.createuser is '创建账户';

commit;
