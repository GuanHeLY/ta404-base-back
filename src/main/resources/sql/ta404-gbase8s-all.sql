--==============================================================
-- DBMS name:      INFORMIX SQL 12.x
-- Created on:     2019/2/25 11:56:24
--==============================================================

DROP VIEW IF EXISTS V_DICT;

DROP TABLE IF EXISTS TAACCESSLOG;

DROP TABLE IF EXISTS TAACCESSSYSTEM;

DROP TABLE IF EXISTS TAAREA;

DROP TABLE IF EXISTS TAAVATAR;

DROP TABLE IF EXISTS TACONFIG;

DROP TABLE IF EXISTS TACUSTOMORG;

DROP TABLE IF EXISTS TACUSTOMORGTYPENAME;

DROP TABLE IF EXISTS TACUSTOMORGUSER;

DROP TABLE IF EXISTS TACUSTOMRESOURCE;

DROP TABLE IF EXISTS TADICT;

DROP TABLE IF EXISTS TAEXTENDSETTING;

DROP TABLE IF EXISTS TALOGINHISTORYLOG;

DROP TABLE IF EXISTS TALOGINSTATLOG;

DROP TABLE IF EXISTS TAOBJECTTAGS;

DROP TABLE IF EXISTS TAONLINELOG;

DROP TABLE IF EXISTS TAONLINESERVICE;

DROP TABLE IF EXISTS TAONLINESERVICEMG;

DROP TABLE IF EXISTS TAONLINESERVICENAME;

DROP TABLE IF EXISTS TAONLINESTATLOG;

DROP TABLE IF EXISTS TAORG;

DROP TABLE IF EXISTS TAORGCONSTRAINT;

DROP TABLE IF EXISTS TAORGMG;

DROP TABLE IF EXISTS TAORGOPLOG;

DROP TABLE IF EXISTS TARESOURCE;

DROP TABLE IF EXISTS TARESOURCECATEGORY;

DROP TABLE IF EXISTS TARESOURCEUI;

DROP TABLE IF EXISTS TARESOURCEURL;

DROP TABLE IF EXISTS TAROLE;

DROP TABLE IF EXISTS TAROLEAUTHORITY;

DROP TABLE IF EXISTS TAROLEURLAUTHORITY;

DROP TABLE IF EXISTS TAROLEUSER;

DROP TABLE IF EXISTS TAROLEWORKBENCH;

DROP TABLE IF EXISTS TASERVEREXCEPTIONLOG;

DROP TABLE IF EXISTS TASITEMG;

DROP TABLE IF EXISTS TATAG;

DROP TABLE IF EXISTS TATAGGROUP;

DROP TABLE IF EXISTS TATAGSSTORE;

DROP TABLE IF EXISTS TAUSER;

DROP TABLE IF EXISTS TAUSERORG;

DROP TABLE IF EXISTS TAUSERWORKBENCH;

DROP TABLE IF EXISTS TAZOOKEEPERADDRESSMG;

DROP TABLE IF EXISTS TAJOBDATASOURCEMG;

DROP TABLE IF EXISTS FREEBUSYJOBMG;

DROP TABLE IF EXISTS TATEMPLATECATALOG;

DROP TABLE IF EXISTS TATEMPLATE;

DROP TABLE IF EXISTS TAAPPMG  ;

DROP TABLE IF EXISTS TASYSCONFIG;

--==============================================================
-- Table: TAACCESSLOG
--==============================================================

create table TAACCESSLOG  (
  LOGID                VARCHAR(36)                     not null,
  USERID               VARCHAR(36)                     not null,
  ROLEID               VARCHAR(36)                     not null,
  MENUID               VARCHAR(36)                     not null,
  ISPERMISSION         CHAR(1)                         not null,
  ACCESSTIME           DATETIME YEAR TO FRACTION(5)         not null,
  URL                   LVARCHAR(1024),
  SYSFLAG              VARCHAR(50),
  FIELD01              VARCHAR(10),
  FIELD02              VARCHAR(10),
  FIELD03              VARCHAR(10),
  FIELD04              VARCHAR(10),
  FIELD05              VARCHAR(10),
primary key (LOGID)
      constraint PK_TAACCESSLOG
);

--==============================================================
-- Table: TAACCESSSYSTEM
--==============================================================

create table TAACCESSSYSTEM  (
  ID                   VARCHAR(36)                     not null,
  SYSCODE              VARCHAR(20)                     not null,
  SYSNAME              VARCHAR(100)                    not null,
  SPELL                VARCHAR(30),
  PROTOCOL             VARCHAR(10),
  DOMAIN             VARCHAR(100),
  PORT                 VARCHAR(5),
  CONTEXTPATH          VARCHAR(30),
  PORTALSYSTEM         VARCHAR(1),
  MENUSERVICE          VARCHAR(200),
  PROVIDER             VARCHAR(10),
  EFFECTIVE            VARCHAR(1)                      not null,
  REGTIME              DATETIME YEAR TO FRACTION(5),
  MODIFYTIME           DATETIME YEAR TO FRACTION(5),
  BACKGROUNDADDRESS    VARCHAR(100),
primary key (ID)
      constraint PK_TAACCESSSYSTEM
);

--==============================================================
-- Table: TAAREA
--==============================================================

create table TAAREA  (
  AREAID               VARCHAR(36)                     not null,
  PARENTID             VARCHAR(36)                     not null,
  AREANAME             VARCHAR(100)                    not null,
  AREACODE             VARCHAR(20)                     not null,
  IDPATH               LVARCHAR(300)                    not null,
  NAMEPATH             LVARCHAR(300)                    not null,
  AREALEVEL            DECIMAL(2,0),
  SPELL                VARCHAR(100),
  CREATEUSER           VARCHAR(36)                     not null,
  AREAORDER            DECIMAL(20,0),
  EFFECTIVE            VARCHAR(1)                      not null,
  CREATETIME           DATETIME YEAR TO FRACTION(5)         not null,
  MODIFYTIME           DATETIME YEAR TO FRACTION(5)         not null,
  DESTORY              VARCHAR(1),
primary key (AREAID)
      constraint PK_TAAREA
);
CREATE INDEX taarea_parentid_idx ON taarea (parentid) ;

--==============================================================
-- Table: TAAVATAR
--==============================================================

create table TAAVATAR  (
  USERID               VARCHAR(36)                     not null,
  AVATAR               BYTE,
  UPDATETIME           DATETIME YEAR TO FRACTION(5)         not null,
primary key (USERID, UPDATETIME)
      constraint PK_TAAVATAR
);

--==============================================================
-- Table: TACONFIG
--==============================================================

create table TACONFIG  (
  CONFIGID             VARCHAR(36)                     not null,
  CONFIGKEY            VARCHAR(30)                     not null,
  CONFIGVALUE          LVARCHAR(1000)                   not null,
  CONFIGNAME           VARCHAR(150),
  CONFIGDESC           LVARCHAR(1000),
primary key (CONFIGID)
      constraint PK_TACONFIG
);

--==============================================================
-- Table: TACUSTOMORG
--==============================================================

create table TACUSTOMORG  (
  CUSTOMORGID          VARCHAR(36)                     not null,
  PARENTID             VARCHAR(36),
  CUSTOMCODE           VARCHAR(255),
  CUSTOMORGTYPENAMEID   VARCHAR(36)                     not null,
  EFFECTIVE            VARCHAR(1)                      not null,
  ORDERNO              DECIMAL(10,0),
  CUSTOMORGNAME        VARCHAR(255),
  CUSTOMORGPATHID      LVARCHAR(1024),
  CUSTOMORGPATH        LVARCHAR(1024),
  CREATEUSER           VARCHAR(36),
  CREATETIME           DATETIME YEAR TO FRACTION(5)         not null,
  UPDATETIME           DATETIME YEAR TO FRACTION(5)         not null,
  DESTORY              VARCHAR(1)                      not null,
  SPELL                VARCHAR(255),
  ORGMANAGER           VARCHAR(36),
  ORGCODE              VARCHAR(18),
  CONTACTS             VARCHAR(36),
  ADDRESS              LVARCHAR(450),
  TEL                  VARCHAR(20),
  FIELD01              LVARCHAR(1000),
  FIELD02              LVARCHAR(1000),
  FIELD03              LVARCHAR(1000),
  FIELD04              LVARCHAR(1000),
  FIELD05              LVARCHAR(1000),
  FIELD06              LVARCHAR(1000),
  FIELD07              LVARCHAR(1000),
  FIELD08              LVARCHAR(1000),
  FIELD09              LVARCHAR(1000),
  FIELD10              LVARCHAR(1000),
primary key (CUSTOMORGID)
      constraint PK_TACUSTOMORG
);
CREATE INDEX tacustomorg_parentid_idx ON tacustomorg (parentid) ;

--==============================================================
-- Table: TACUSTOMORGTYPENAME
--==============================================================

create table TACUSTOMORGTYPENAME  (
  CUSTOMORGTYPENAMEID   VARCHAR(36)                     not null,
  CUSTOMORGTYPENAME    VARCHAR(255),
  EFFECTIVE            VARCHAR(1)                      not null,
  CREATEUSER           VARCHAR(36)                     not null,
  CREATETIME           DATETIME YEAR TO FRACTION(5)         not null,
  UPDATETIME           DATETIME YEAR TO FRACTION(5)         not null,
  DESTORY              VARCHAR(1)                      not null,
  CUSTOMORGTYPENAMECODE   VARCHAR(255),
  CUSTOMORGTYPENAMEDESC   VARCHAR(255),
primary key (CUSTOMORGTYPENAMEID)
      constraint PK_TACUSTOMORGTYPENAME
);

--==============================================================
-- Table: TACUSTOMORGUSER
--==============================================================

create table TACUSTOMORGUSER  (
  CUSTOMORGID          VARCHAR(36)                     not null,
  USERID               VARCHAR(36)                     not null,
primary key (CUSTOMORGID, USERID)
      constraint PK_TACUSTOMORGUSER
);

--==============================================================
-- Table: TACUSTOMRESOURCE
--==============================================================

create table TACUSTOMRESOURCE  (
  CUSTOMRESOURCEID     VARCHAR(36)                     not null,
  RESOURCENAME         VARCHAR(100)                    not null,
  PARENTID             VARCHAR(36)                     not null,
  CODE                 VARCHAR(100),
  RESOURCECONTENT      LVARCHAR(1024),
  RESOURCECATEGORY     VARCHAR(32),
  EFFECTIVE            VARCHAR(1)                      not null,
  ADDTIME              DATETIME YEAR TO FRACTION(5),
  MODIFYTIME           DATETIME YEAR TO FRACTION(5),
  SYSTEM             VARCHAR(36),
primary key (CUSTOMRESOURCEID)
      constraint PK_TACUSTOMRESOURCE
);

--==============================================================
-- Table: TADICT
--==============================================================

create table TADICT  (
  NAME               VARCHAR(50)                     not null,
  TYPE               VARCHAR(50)                     not null,
  LABEL                VARCHAR(50)                     not null,
  VALUE              VARCHAR(6)                      not null,
  PARENTVALUE          VARCHAR(6),
  SORT                 DECIMAL(4,0)                    not null,
  AUTHORITY            VARCHAR(20)                     not null,
  CSSCLASS             VARCHAR(20),
  CSSSTYLE             VARCHAR(128),
  REMARKS              LVARCHAR(256),
  CREATEDATE           DATETIME YEAR TO FRACTION(5)         not null,
  CREATEUSER           VARCHAR(36)                     not null,
  VERSION              VARCHAR(10)                     not null,
  STATUS               VARCHAR(2)                      not null,
  FIELD01              VARCHAR(10),
  FIELD02              VARCHAR(10),
  FIELD03              VARCHAR(10),
  FIELD04              VARCHAR(10),
  FIELD05              VARCHAR(10),
  SYSTEM             VARCHAR(2)                      not null,
  NEWTYPE              VARCHAR(2)                      not null,
primary key (TYPE, VALUE)
      constraint PK_TADICT
);

--==============================================================
-- Table: TAEXTENDSETTING
--==============================================================

create table TAEXTENDSETTING  (
  FIELDID              VARCHAR(10)                     not null,
  TYPE               VARCHAR(2)                      not null,
  EFFECTIVE            VARCHAR(1)                      not null,
  HIDE                 VARCHAR(1),
  DISPLAYTEXT          VARCHAR(150),
  TITEXT               LVARCHAR(1500),
  ORDERNO              DECIMAL(10,0),
  REQUIRED             VARCHAR(1),
  UNCHANGEABLE         VARCHAR(1),
  FORMTYPE             VARCHAR(20),
  CONTENTSIZE          DECIMAL(16,0),
  VALIDREG             LVARCHAR(1000),
  CONNECTAA10          VARCHAR(30),
  PROTECTPRIVACY       VARCHAR(1),
  FORMID               VARCHAR(10),
  MORE                 VARCHAR(1),
primary key (FIELDID, TYPE)
      constraint PK_TAEXTENDSETTING
);

--==============================================================
-- Table: TALOGINHISTORYLOG
--==============================================================

create table TALOGINHISTORYLOG  (
  LOGID                VARCHAR(36)                     not null,
  USERID               VARCHAR(36)                     not null,
  LOGINTIME            DATETIME YEAR TO FRACTION(5)         not null,
  LOGOUTTIME           DATETIME YEAR TO FRACTION(5)         not null,
  CLIENTIP             VARCHAR(200)                    not null,
  SESSIONID            VARCHAR(200)                    not null,
  SERVERIP             VARCHAR(200),
  SYSPATH              VARCHAR(50),
  CLIENTSYSTEM         VARCHAR(50),
  CLIENTBROWSER        VARCHAR(50),
  CLIENTSCREENSIZE     VARCHAR(50),
primary key (LOGID)
      constraint PK_TALOGINHISTORYLOG
);

--==============================================================
-- Table: TALOGINSTATLOG
--==============================================================

create table TALOGINSTATLOG  (
  STATDATE             VARCHAR(20)                     not null,
  POINTINTIME          VARCHAR(20)                     not null,
  LOGINNUM             DECIMAL(15,0),
primary key (STATDATE, POINTINTIME)
      constraint PK_TALOGINSTATLOG
);

--==============================================================
-- Table: TAOBJECTTAGS
--==============================================================

create table TAOBJECTTAGS  (
  OBJECTID             VARCHAR(36)                     not null,
  OBJECTTYPE           VARCHAR(3)                      not null,
  TAGID                VARCHAR(36)                     not null,
primary key (OBJECTID, OBJECTTYPE, TAGID)
      constraint PK_TAOBJECTTAGS
);

--==============================================================
-- Table: TAONLINELOG
--==============================================================

create table TAONLINELOG  (
  LOGID                VARCHAR(36)                     not null,
  USERID               VARCHAR(36)                     not null,
  LOGINTIME            DATETIME YEAR TO FRACTION(5)         not null,
  CURRESOURCE          LVARCHAR(1000),
  CLIENTIP             VARCHAR(200)                    not null,
  SESSIONID            VARCHAR(200)                    not null,
  SYSPATH              VARCHAR(50),
  SERVERIP             VARCHAR(200),
  CLIENTSYSTEM         VARCHAR(50),
  CLIENTBROWSER        VARCHAR(50),
  CLIENTSCREENSIZE     VARCHAR(50),
primary key (LOGID)
      constraint PK_TAONLINELOG
);

--==============================================================
-- Table: TAONLINESERVICE
--==============================================================

create table TAONLINESERVICE  (
  CREATEUSER           VARCHAR(36)                     not null,
  DESTORY              VARCHAR(1),
  UPDATETIME           DATETIME YEAR TO FRACTION(5),
  CREATETIME           DATETIME YEAR TO FRACTION(5)         not null,
  EFFECTIVE            VARCHAR(1),
  SERVICEURL           LVARCHAR(1024),
  SERVICETYPE          VARCHAR(100),
  SERVICEID            VARCHAR(36)                     not null,
  SERVICENAME          VARCHAR(255)                    not null,
  SERVICEDESC          VARCHAR(255),
primary key (SERVICEID)
      constraint PK_TAONLINESERVICE
);

--==============================================================
-- Table: TAONLINESERVICEMG
--==============================================================

create table TAONLINESERVICEMG  (
  SERVICEID            VARCHAR(36)                     not null,
  SERVICENAMEID        VARCHAR(36)                     not null,
primary key (SERVICEID, SERVICENAMEID)
      constraint PK_TAONLINESERVICEMG
);

--==============================================================
-- Table: TAONLINESERVICENAME
--==============================================================

create table TAONLINESERVICENAME  (
  DESTORY              VARCHAR(1)                      not null,
  UPDATETIME           DATETIME YEAR TO FRACTION(5),
  CREATETIME           DATETIME YEAR TO FRACTION(5),
  IDPATH               LVARCHAR(1024),
  PARENTID             VARCHAR(36)                     not null,
  SERVICENAMEID        VARCHAR(36)                     not null,
  SERVICENAME          VARCHAR(255)                    not null,
  CREATEUSER           VARCHAR(36)                     not null,
primary key (SERVICENAMEID)
      constraint PK_TAONLINESERVICENAME
);

--==============================================================
-- Table: TAONLINESTATLOG
--==============================================================

create table TAONLINESTATLOG  (
  STATDATE             VARCHAR(20)                     not null,
  POINTINTIME          VARCHAR(20)                     not null,
  LOGINNUM             DECIMAL(15,0),
primary key (STATDATE, POINTINTIME)
      constraint PK_TAONLINESTATLOG
);

--==============================================================
-- Table: TAORG
--==============================================================

create table TAORG  (
  ORGID                VARCHAR(36)                     not null,
  ORGNAME              LVARCHAR(300)                    not null,
  SPELL                VARCHAR(100)                    not null,
  PARENTID             VARCHAR(36)                     not null,
  IDPATH               LVARCHAR(1024)                   not null,
  NAMEPATH             LVARCHAR(1024)                   not null,
  CUSTOMNO             VARCHAR(30),
  ORDERNO              DECIMAL(10,0)                   not null,
  ORGLEVEL             DECIMAL(16,0),
  AREA                 VARCHAR(36),
  EFFECTIVE            VARCHAR(1)                      not null,
  ORGTYPE              VARCHAR(2)                      not null,
  CREATEUSER           VARCHAR(36)                     not null,
  CREATETIME           DATETIME YEAR TO FRACTION(5),
  MODIFYTIME           DATETIME YEAR TO FRACTION(5),
  ORGMANAGER           VARCHAR(36),
  ORGCODE              VARCHAR(18),
  CONTACTS             VARCHAR(36),
  ADDRESS              LVARCHAR(450),
  TEL                  VARCHAR(20),
  DESTORY              VARCHAR(1),
  FIELD01              LVARCHAR(1000),
  FIELD02              LVARCHAR(1000),
  FIELD03              LVARCHAR(1000),
  FIELD04              LVARCHAR(1000),
  FIELD05              LVARCHAR(1000),
  FIELD06              LVARCHAR(1000),
  FIELD07              LVARCHAR(1000),
  FIELD08              LVARCHAR(1000),
  FIELD09              LVARCHAR(1000),
  FIELD10              LVARCHAR(1000),
primary key (ORGID)
      constraint PK_TAORG
);
CREATE INDEX taorg_destory_index ON taorg (destory) ;
CREATE INDEX taorg_destroy_effective_index ON taorg (effective,destory) ;
CREATE INDEX taorg_effective_index ON taorg (effective) ;
-- CREATE INDEX taorg_idpath_index ON taorg (idpath) ;
CREATE INDEX taorg_orderno_index ON taorg (orderno) ;
CREATE INDEX taorg_parentid_index ON taorg (parentid) ;

--==============================================================
-- Table: TAORGCONSTRAINT
--==============================================================

create table TAORGCONSTRAINT  (
  CATEGORYID           VARCHAR(2)                      not null,
  ALLOWCATEGORYID      VARCHAR(2)                      not null,
primary key (CATEGORYID, ALLOWCATEGORYID)
      constraint PK_TAORGCONSTRAINT
);

--==============================================================
-- Table: TAORGMG
--==============================================================

create table TAORGMG  (
  ROLEID               VARCHAR(36)                     not null,
  ORGID                VARCHAR(36)                     not null,
  EFFECTTIME           DATETIME YEAR TO FRACTION(5),
primary key (ROLEID, ORGID)
      constraint PK_TAORGMG
);

--==============================================================
-- Table: TAORGOPLOG
--==============================================================

create table TAORGOPLOG  (
  LOGID                VARCHAR(36)                     not null,
  BATCHNO              VARCHAR(36)                     not null,
  OPTYPE               VARCHAR(2)                      not null,
  INFLUENCEBODYTYPE    VARCHAR(2)                      not null,
  INFLUENCEBODY        VARCHAR(36)                     not null,
  OPBODYTYPE           VARCHAR(2),
  OPSUBJECT            VARCHAR(36),
  CHANGECONTENT        BYTE,
  OPTIME               DATETIME YEAR TO FRACTION(5)         not null,
  OPUSER               VARCHAR(36)                     not null,
  ISPERMISSION         VARCHAR(1)                      not null,
primary key (LOGID)
      constraint PK_TAORGOPLOG
);

--==============================================================
-- Table: TARESOURCE
--==============================================================

create table TARESOURCE  (
  RESOURCEID           VARCHAR(36)                     not null,
  PRESOURCEID          VARCHAR(36)                     not null,
  NAME               VARCHAR(100)                    not null,
  CODE                 VARCHAR(30),
  SYSCODE              VARCHAR(20)                     not null,
  URL                  VARCHAR(100),
  ORDERNO              DECIMAL(10,0),
  IDPATH               LVARCHAR(1024)                   not null,
  NAMEPATH             LVARCHAR(1024)                   not null,
  RESOURCELEVEL        VARCHAR(2)                      not null,
  ICON                 VARCHAR(30),
  ICONCOLOR            VARCHAR(7),
  SECURITYPOLICY       VARCHAR(2)                      not null,
  SECURITYLEVEL        DECIMAL(4,0)                    not null,
  RESOURCETYPE         VARCHAR(2)                      not null,
  EFFECTIVE            VARCHAR(1)                      not null,
  ISDISPLAY            VARCHAR(1),
  ISFILEDSCONTROL      VARCHAR(1),
  CREATEDATE           DATETIME YEAR TO FRACTION(5)         not null,
  CREATEUSER           VARCHAR(36)                     not null,
  UIAUTHORITYPOLICY    VARCHAR(2),
  FIELD01              VARCHAR(10),
  FIELD02              VARCHAR(10),
  FIELD03              VARCHAR(10),
  FIELD04              VARCHAR(10),
  FIELD05              VARCHAR(10),
  FIELD06              VARCHAR(10),
  FIELD07              VARCHAR(10),
  FIELD08              VARCHAR(10),
  FIELD09              VARCHAR(10),
  FIELD10              VARCHAR(10),
  WORKBENCH            VARCHAR(1),
primary key (RESOURCEID)
      constraint PK_TARESOURCE
);
CREATE INDEX taresource_presourceid_idx ON taresource (presourceid) ;
--==============================================================
-- Table: TARESOURCECATEGORY
--==============================================================

create table TARESOURCECATEGORY  (
  CATEGORYID           VARCHAR(36)                     not null,
  CATEGORYNAME         VARCHAR(100)                    not null,
  EFFECTIVE            VARCHAR(1)                      not null,
  CODE                 VARCHAR(100),
  CATEGORYCONTENT      LVARCHAR(1024),
primary key (CATEGORYID)
      constraint PK_TARESOURCECATEGORY
);

--==============================================================
-- Table: TARESOURCEUI
--==============================================================

create table TARESOURCEUI  (
  PAGEELEMENTID        VARCHAR(36)                     not null,
  RESOURCEID           VARCHAR(36)                     not null,
  ELENMENTNAME         VARCHAR(20)                     not null,
  ELEMENTID            VARCHAR(30)                     not null,
  CODE                 VARCHAR(20),
  AUTHORITYPOLICY      VARCHAR(2)                      not null,
  CREATEUSER           VARCHAR(36)                     not null,
  CREATEDATE           DATETIME YEAR TO FRACTION(5)         not null,
  FIELD01              VARCHAR(10),
  FIELD02              VARCHAR(10),
  FIELD03              VARCHAR(10),
  EFFECTIVE            VARCHAR(1)                      not null,
primary key (PAGEELEMENTID)
      constraint PK_TARESOURCEUI
);

--==============================================================
-- Table: TARESOURCEURL
--==============================================================

create table TARESOURCEURL  (
  RESOURCEID           VARCHAR(36)                     not null,
  RESTURL              LVARCHAR(256)                    not null,
  URLNAME              VARCHAR(40),
  URLID                VARCHAR(36)                     not null,
  AUTHORITYPOLICY      VARCHAR(1)                      not null,
primary key (URLID)
      constraint PK_TARESOURCEURL
);

--==============================================================
-- Table: TAROLE
--==============================================================

create table TAROLE  (
  ROLEID               VARCHAR(36)                     not null,
  ROLENAME             VARCHAR(150)                    not null,
  ISADMIN              VARCHAR(1),
  ROLELEVEL            DECIMAL(32,0),
  ORGID                VARCHAR(36)                     not null,
  ROLETYPE             VARCHAR(2)                      not null,
  EFFECTIVE            VARCHAR(1)                      not null,
  EFFECTIVETIME        DATETIME YEAR TO FRACTION(5),
  CREATEUSER           VARCHAR(36),
  CREATETIME           DATETIME YEAR TO FRACTION(5),
  ROLEDESC             VARCHAR(150),
  ROLESIGN             VARCHAR(2),
  SUBORDINATE          VARCHAR(1),
primary key (ROLEID)
      constraint PK_TAROLE
);

--==============================================================
-- Table: TAROLEAUTHORITY
--==============================================================

create table TAROLEAUTHORITY  (
  ROLEID               VARCHAR(36)                     not null,
  RESOURCEID           VARCHAR(36)                     not null,
  RESOURCETYPE         VARCHAR(1)                      not null,
  USEPERMISSION        VARCHAR(1),
  REPERMISSION         VARCHAR(1),
  REAUTHRITY           VARCHAR(1),
  CREATEUSER           VARCHAR(36),
  CREATETIME           DATETIME YEAR TO FRACTION(5),
  EFFECTTIME           DATETIME YEAR TO FRACTION(5),
primary key (ROLEID, RESOURCEID, RESOURCETYPE)
      constraint PK_TAROLEAUTHORITY
);

--==============================================================
-- Table: TAROLEURLAUTHORITY
--==============================================================

create table TAROLEURLAUTHORITY  (
  ROLEID               VARCHAR(36)                     not null,
  URLID                VARCHAR(36)                     not null,
  RESOURCEID           VARCHAR(36)                     not null,
primary key (ROLEID, URLID)
      constraint PK_TAROLEURLAUTHORITY
);

--==============================================================
-- Table: TAROLEUSER
--==============================================================

create table TAROLEUSER  (
  USERID               VARCHAR(36)                     not null,
  ROLEID               VARCHAR(36)                     not null,
  DEFAULTROLE          VARCHAR(1),
  CREATEUSER           VARCHAR(36)                     not null,
  CREATETIME           DATETIME YEAR TO FRACTION(5)         not null,
primary key (ROLEID, USERID)
      constraint PK_TAROLEUSER
);

--==============================================================
-- Table: TAROLEWORKBENCH
--==============================================================

create table TAROLEWORKBENCH  (
  ROLEID               VARCHAR(36)                     not null,
  WORKBENCHJSON        TEXT,
primary key (ROLEID)
      constraint PK_TAROLEWORKBENCH
);

--==============================================================
-- Table: TASERVEREXCEPTIONLOG
--==============================================================

create table TASERVEREXCEPTIONLOG  (
  LOGID                VARCHAR(50)                     not null,
  IPADDRESS            VARCHAR(100),
  PORT                 VARCHAR(10),
  EXCEPTIONNAME        LVARCHAR(255),
  CONTENT              BYTE,
  CREATETIME           DATETIME YEAR TO FRACTION(5),
  SYSPATH              VARCHAR(50),
  CLIENTIP             VARCHAR(50),
  URL                  VARCHAR(100),
  MENUID               VARCHAR(50),
  MENUNAME             VARCHAR(30),
  USERAGENT            VARCHAR(200),
  EXCEPTIONTYPE        VARCHAR(2),
  REQUESTPARAMETER     BYTE,
primary key (LOGID)
      constraint PK_TASERVEREXCEPTIONLOG
);

--==============================================================
-- Table: TASITEMG
--==============================================================

create table TASITEMG  (
  PARENTID             VARCHAR(36),
  IDPATH               LVARCHAR(1024),
  SITEDESC             VARCHAR(255),
  UPDATETIME           DATETIME YEAR TO FRACTION(5),
  CREATETIME           DATETIME YEAR TO FRACTION(5),
  EFFECTIVE            VARCHAR(1)                      not null,
  SITETYPE             VARCHAR(100)                      not null,
  SITEDOMAIN           VARCHAR(255),
  SITENAME             VARCHAR(255)                    not null,
  SITEID               VARCHAR(36)                     not null,
  DESTORY              VARCHAR(1)                      not null,
  CREATEUSER           VARCHAR(36)                     not null,
primary key (SITEID)
      constraint PK_TASITEMG
);

--==============================================================
-- Table: TATAG
--==============================================================

create table TATAG  (
  TAGID                VARCHAR(36)                     not null,
  TAGNAME              VARCHAR(255),
  TAGGROUPID           VARCHAR(36),
  CREATETIME           DATETIME YEAR TO FRACTION(5)         not null,
  EFFECTIVE            VARCHAR(1)                      not null,
  CREATEUSER           VARCHAR(36)                     not null,
  DESTORY              VARCHAR(1)                      not null,
  UPDATETIME           DATETIME YEAR TO FRACTION(5)         not null,
primary key (TAGID)
      constraint PK_TATAG
);

--==============================================================
-- Table: TATAGGROUP
--==============================================================

create table TATAGGROUP  (
  TAGGROUPID           VARCHAR(36)                     not null,
  TAGGROUPNAME         VARCHAR(255)                     not null,
  EFFECTIVE            VARCHAR(1)                      not null,
  CREATEUSER           VARCHAR(36)                     not null,
  CREATETIME           DATETIME YEAR TO FRACTION(5)         not null,
  UPDATETIME           DATETIME YEAR TO FRACTION(5)         not null,
  DESTORY              VARCHAR(20)                     not null
);

--==============================================================
-- Table: TATAGSSTORE
--==============================================================

create table TATAGSSTORE  (
  TAGID                VARCHAR(36)                     not null,
  TAGNAME              VARCHAR(100)                    not null,
  TAGCODE              VARCHAR(30)                     not null,
  TAGCATEGORY          VARCHAR(2)                      not null,
primary key (TAGID)
      constraint PK_TATAGSSTORE
);

--==============================================================
-- Table: TAUSER
--==============================================================

create table TAUSER  (
  USERID               VARCHAR(36)                     not null,
  LOGINID              VARCHAR(30)                     not null,
  PASSWORD             LVARCHAR(256)                    not null,
  PASSWORDDEFAULTNUM   DECIMAL(16,0),
  PWDLASTMODIFYDATE    DATETIME YEAR TO FRACTION(5),
  ISLOCK               VARCHAR(1),
  ORDERNO              DECIMAL(10,0),
  NAME               LVARCHAR(450)                    not null,
  SEX                  VARCHAR(2),
  IDCARDTYPE           VARCHAR(2),
  IDCARDNO             VARCHAR(30),
  MOBILE               VARCHAR(20),
  CREATEUSER           VARCHAR(36),
  CREATETIME           DATETIME YEAR TO FRACTION(5),
  MODIFYTIME           DATETIME YEAR TO FRACTION(5),
  DESTORY              VARCHAR(1)                      not null,
  ACCOUNTSOURCE        VARCHAR(2),
  EFFECTIVE            VARCHAR(1)                      not null,
  EFFECTIVETIME        DATETIME YEAR TO FRACTION(5),
  JOBNUMBER            VARCHAR(15),
  STATE                VARCHAR(10),
  BIRTHPLACE           VARCHAR(12),
  ADDRESS              LVARCHAR(450),
  ZIPCODE              VARCHAR(10),
  EMAIL                VARCHAR(100),
  PHONE                VARCHAR(20),
  EDUCATION            VARCHAR(30),
  GRADUATESCHOOL       VARCHAR(150),
  WORKPLACE            LVARCHAR(300),
  FIELD01              LVARCHAR(1000),
  FIELD02              LVARCHAR(1000),
  FIELD03              LVARCHAR(1000),
  FIELD04              LVARCHAR(1000),
  FIELD05              LVARCHAR(1000),
  FIELD06              LVARCHAR(1000),
  FIELD07              LVARCHAR(1000),
  FIELD08              LVARCHAR(1000),
  FIELD09              LVARCHAR(1000),
  FIELD10              LVARCHAR(1000),
primary key (USERID)
      constraint PK_TAUSER
);
CREATE INDEX tauser_loginid_idx ON tauser (loginid) ;
--==============================================================
-- Table: TAUSERORG
--==============================================================

create table TAUSERORG  (
  USERID               VARCHAR(32)                     not null,
  ORGID                VARCHAR(32)                     not null,
  ISDIRECT             VARCHAR(1)                      not null,
primary key (USERID, ORGID)
      constraint PK_TAUSERORG
);

--==============================================================
-- Table: TAUSERWORKBENCH
--==============================================================

create table TAUSERWORKBENCH  (
  USERID               VARCHAR(36)                     not null,
  WORKBENCHJSON        TEXT,
primary key (USERID)
      constraint PK_TAUSERWORKBENCH
);

create table TAZOOKEEPERADDRESSMG (
	ZKID VARCHAR(36) not null,
	ZKADDRESS VARCHAR(200),
	APPNAME VARCHAR(60),
	APPNAMESPACE VARCHAR(30),
	CONNECTFLAG VARCHAR(1),
	primary key (ZKID) constraint TAZOOKEEPERADDRESSMG_PK
);

create table TAJOBDATASOURCEMG (
	DATASOURCEID VARCHAR(36) not null,
	DATASOURCENAME VARCHAR(60),
	DRIVER VARCHAR(200),
	URL VARCHAR(200),
	USERNAME LVARCHAR(450),
	PASSWORD VARCHAR(100),
	primary key (DATASOURCEID) constraint TAJOBDATASOURCEMG_PK
);

create table FREEBUSYJOBMG (
	ID VARCHAR(36) not null,
	JOBNAME VARCHAR(60),
	FREEMOMENT VARCHAR(20),
	BUSYMOMENT VARCHAR(20),
	SERVERIPS VARCHAR(200),
	ZKID VARCHAR(36),
	primary key (ID) constraint FREEBUSYJOBMG_PK
);

CREATE TABLE TATEMPLATECATALOG  (
  UPDATETIME           DATETIME YEAR TO FRACTION(5),
  CREATETIME           DATETIME YEAR TO FRACTION(5),
  ID                   VARCHAR(36)                    NOT NULL,
  IDPATH               LVARCHAR,
  PARENTID             VARCHAR(36)                     NOT NULL,
  NAME                 VARCHAR(100)		               NOT NULL,
  NAMEPATH             LVARCHAR                     not null,
  CREATEUSER           VARCHAR(36),
PRIMARY KEY (ID)
      CONSTRAINT PK_TATEMPLATECATALOG
);

CREATE TABLE TATEMPLATE(
	TEMPLATEID        VARCHAR(36)     NOT NULL,
	CATALOGID         VARCHAR(36)     NOT NULL,
	TEMPLATENAME      VARCHAR(100)     NOT NULL,
	TEMPLATECODE      VARCHAR(36),
	TEMPLATETYPE      VARCHAR(10)     NOT NULL,
	TEMPLATESOURCE    VARCHAR(1)     NOT NULL,
	TEMPLATECONTENT   BYTE,
	EFFECTIVE         VARCHAR(1)    ,
	CREATEUSER        VARCHAR(36),
	UPDATETIME        DATETIME YEAR TO FRACTION(5),
	CREATETIME        DATETIME YEAR TO FRACTION(5),
	PRIMARY KEY (TEMPLATEID) CONSTRAINT PK_TATEMPLATE
);

CREATE TABLE TAAPPMG  (

  APPID                   VARCHAR(36)                    NOT NULL,
  APPNAME              VARCHAR(100)                      NOT NULL,
  APPTYPE             VARCHAR(1),
  APPEFFECTIVE        VARCHAR(1),
  CREATEUSER           VARCHAR(36),
  UPDATETIME           DATETIME YEAR TO FRACTION(5),
  CREATETIME           DATETIME YEAR TO FRACTION(5),
  PRIMARY KEY (APPID)
      CONSTRAINT PK_TAAPPMG
);

CREATE TABLE TAAPPPAGE(
  appid             VARCHAR(36)     NOT NULL,
  pageid        VARCHAR(36)     NOT NULL,
  pagepid     VARCHAR(36)     NOT NULL,
  pagename      VARCHAR(100)     NOT NULL,
  pageindex     varchar(10)      not null,
  pagecode   BYTE,
  pageurl varchar(200)          not null,
	pagetype varchar(2)           not null,
	templateid varchar(36),
  PRIMARY KEY (pageid) CONSTRAINT PK_TAAPPPAGE
);

CREATE TABLE TASYSCONFIG  (

  ID                     VARCHAR(36)                    NOT NULL,
  FIELDNAME              VARCHAR(100)
  DEFAULTVALUE           VARCHAR(200),
  DATATYPE               VARCHAR(1),
  FUNCTIONTYPE           VARCHAR(1),
  COLLECTIONNAME         VARCHAR(100),
  COLLECTIONDATAS        VARCHAR(2000),
  FLAG                   INTEGER,
  PRIMARY KEY (ID) CONSTRAINT TASYSCONFIG_PK
);

create view v_dict (name,type,label,value,parentvalue,sort,authority,cssclass,cssstyle,remarks,createdate,createuser,version,status,field01,field02,field03,field04,field05,system,newtype) as select x0.name ,x0.type ,x0.label ,x0.value ,x0.parentvalue ,x0.sort ,x0.authority ,x0.cssclass ,x0.cssstyle ,x0.remarks ,x0.createdate ,x0.createuser ,x0.version ,x0.status ,x0.field01 ,x0.field02 ,x0.field03 ,x0.field04 ,x0.field05 ,x0.system ,x0.newtype from tadict x0 ;

--   初始化人员表
INSERT INTO tauser (userid,loginid,password,passworddefaultnum,pwdlastmodifydate,islock,orderno,name,sex,idcardtype,idcardno,mobile,createuser,createtime,modifytime,destory,accountsource,effective,effectivetime,jobnumber,state,birthplace,address,zipcode,email,phone,education,graduateschool,workplace,field01,field02,field03,field04,field05,field06,field07,field08,field09,field10) VALUES (
'1','developer','$2a$10$ZI3ewI1LvnS8bvTDiZk5X.w9/u.LXy8vPTwQFl8SlDtMTYBQHnIEm',0,current,'0',1,'超级管理员','1','0',null,'18011567700','1',current,NULL,'0',NULL,'1',NULL,NULL,NULL,NULL,'成都市/锦江区/久远银海',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

--   初始化组织表
INSERT INTO taorg
(orgid, orgname, spell, parentid, idpath, namepath, customno, orderno, orglevel, area, effective, orgtype, createuser, createtime, modifytime, orgmanager, orgcode, contacts, address, tel, destory, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10)
VALUES('fd811ab9c30440088df3e29ea784460a', '顶级组织', 'MZB', '0', 'fd811ab9c30440088df3e29ea784460a', '顶级组织', '', 0, 0, '', '1', '01', '1', NULL, '2019-01-18 10:55:25.0', '', '', '', '', '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--   初始化码表
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('角色类型', 'ROLETYPE', '管理角色', '04', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('角色标识', 'ROLESIGN', '稽核角色', '2', null, '2', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('角色标识', 'ROLESIGN', '业务角色', '1', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('元素在界面中的授权策略', 'ELEMENTAUTHORITYPOLICY', '不显示', '0', null, '31', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('元素在界面中的授权策略', 'ELEMENTAUTHORITYPOLICY', '数据可见不可编辑', '1', '', '21', '0', '', '', null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('元素在界面中的授权策略', 'ELEMENTAUTHORITYPOLICY', '数据可见可编辑', '2', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('账户类型', 'ACCOUNTTYPE', '组织账户', '2', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('账户类型', 'ACCOUNTTYPE', '个人账户', '1', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('界面元素授权策略', 'UIAUTHORITYPOLICY', '继承当前菜单权限', '0', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('界面元素授权策略', 'UIAUTHORITYPOLICY', '独立授权', '1', null, '10', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全策略', 'SECURITYPOLICY', '无需登录可访问', '0', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全策略', 'SECURITYPOLICY', '登陆均可访问', '1', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全策略', 'SECURITYPOLICY', '授权可访问', '2', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('有效标识', 'EFFECTIVE', '有效', '1', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('有效标识', 'EFFECTIVE', '无效', '0', null, '0', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('证件类型', 'IDCARDTYPE', '居民身份证(户口簿)', '0', '', '10', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('证件类型', 'IDCARDTYPE', '护照', '1', '', '20', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('证件类型', 'IDCARDTYPE', '军官证', '2', '', '30', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('证件类型', 'IDCARDTYPE', '其他', '3', '', '40', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('权限认证方式', 'AUTHMODE', '用户名密码', '01', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('权限认证方式', 'AUTHMODE', '指纹识别', '02', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('权限认证方式', 'AUTHMODE', '人脸识别', '03', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('认证方式类型', 'AUTHMODE', 'Key盘', '04', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '新增组织', '01', null, '10', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '编辑组织', '02', null, '20', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '禁用组织', '03', null, '30', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '启用组织', '04', null, '40', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除组织', '05', null, '50', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '新增用户', '06', null, '60', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '编辑用户', '07', null, '70', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '禁用用户', '08', null, '80', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '启用用户', '09', null, '90', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '解锁账号', '10', null, '100', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更新用户直属组织', '12', null, '110', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '重置密码', '13', null, '120', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除用户', '14', null, '130', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '新增角色', '15', null, '140', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '新增用户和角色关联关系', '16', null, '150', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '编辑角色', '17', null, '160', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除角色', '18', null, '170', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '角色禁用', '19', null, '180', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '启用角色', '20', null, '190', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '新增功能资源', '21', null, '200', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '编辑功能资源', '22', null, '210', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除功能资源', '23', null, '220', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '禁用功能资源', '24', null, '230', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '启用功能资源', '25', null, '240', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改组织权限（授予）', '26', null, '250', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改组织权限（回收）', '27', null, '260', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改使用权限（授权）', '28', null, '270', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改使用权限（回收）', '29', null, '280', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改授权权限（授权）', '30', null, '290', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改授权权限（回收）', '31', null, '300', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改再授权权限（授权）', '32', null, '310', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改再授权权限（回收）', '33', null, '320', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除角色人员关联关系', '34', null, '330', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '角色复制', '35', null, '340', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '权限复制', '36', null, '350', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '添加界面元素', '37', null, '360', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除界面元素', '38', null, '370', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '根据功能资源删除界面元素', '39', null, '380', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '编辑界面元素', '40', null, '390', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '根据功能资源编辑界面元素', '41', null, '400', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '组织机构', '01', null, '10', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '人员用户', '02', null, '20', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '角色', '03', null, '30', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '功能资源', '04', null, '40', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '界面元素', '05', null, '50', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '组织权限', '06', null, '60', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '权限信息', '07', null, '70', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '自定义资源', '08', null, '80', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'OFF', '0', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'ERROR', '1', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'WARN', '2', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'INFO', '3', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'DEBUG', '4', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'TRACE', '5', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'ALL', '6', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全认证级别', 'SECURIYTLEVEL', '无限制', '0', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全认证级别', 'SECURIYTLEVEL', '一级', '1', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全认证级别', 'SECURIYTLEVEL', '二级', '2', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全认证级别', 'SECURIYTLEVEL', '三级', '3', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全认证级别', 'SECURIYTLEVEL', '四级', '4', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('字典数据类型', 'DICTDATATYPE', '未同步', '0', '', '0', '0', '', '', null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('字典数据类型', 'DICTDATATYPE', '已同步', '2', '', '2', '0', '', '', null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('字典数据类型', 'DICTDATATYPE', '脏数据', '1', '', '1', '0', '', '', null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('是否', 'YESORNO', '是', '1', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('是否', 'YESORNO', '否', '0', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('性别', 'SEX', '无', '0', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('性别', 'SEX', '男', '1', null, '11', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('性别', 'SEX', '女', '2', null, '21', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('组织类型', 'ORGTYPE', '机构', '01', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('组织类型', 'ORGTYPE', '部门', '02', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('组织类型', 'ORGTYPE', '组', '03', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('角色类型', 'ROLETYPE', '公有角色', '01', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('角色类型', 'ROLETYPE', '代理角色', '03', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('有无', 'HAVAORNOT', '无', '0', null, '10', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('资源类型', 'RESOURCETYPE', '通用菜单', '0', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('资源类型', 'RESOURCETYPE', '管理菜单', '1', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('资源类型', 'RESOURCETYPE', '经办菜单', '2', null, '1', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('有无', 'HAVAORNOT', '有', '1', null, '20', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('状态', 'STATE', '启用', '1', null, '10', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('状态', 'STATE', '禁用', '0', null, '20', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点有效标识', 'SITEEFFECTIVE', '有效', '1', null, '10', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点有效标识', 'SITEEFFECTIVE', '无效', '0', null, '20', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点类型', 'SITETYPE', '网厅', '1', null, '20', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点类型', 'SITETYPE', '业务系统', '2', null, '30', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点类型', 'SITETYPE', '公众号', '3', null, '40', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('静态资源类型', 'FILERESOURCETYPE', '目录', '1', null, '10', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('静态资源类型', 'FILERESOURCETYPE', '未知类型', '3', null, '30', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('静态资源类型', 'FILERESOURCETYPE', '资源文件', '2', null, '20', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点类型', 'SITETYPE', 'APP', '0', null, '10', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('行政区划级别', 'AREALEVEL', '市', '1', null, '20', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('行政区划级别', 'AREALEVEL', '区/县', '2', null, '30', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('行政区划级别', 'AREALEVEL', '其他', '4', null, '50', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('行政区划级别', 'AREALEVEL', '省/自治区', '0', null, '10', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('行政区划级别', 'AREALEVEL', '街道/镇', '3', null, '40', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('成功标识', 'ISSUCCESS', '失败', '0', null, '10', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('成功标识', 'ISSUCCESS', '成功', '1', null, '20', '0', null, null, null, '2019-02-26 21:00:30.0', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('模版来源', 'TEMPLATESOURCE', '外部上传', '1', null, '10', '0', null, null, null, '2019-04-01 10:35:07.00000', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('模版来源', 'TEMPLATESOURCE', '内部绘制', '2', null, '20', '0', null, null, null, '2019-04-01 10:35:20.00000', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('模版类型', 'TEMPLATETYPE', 'code模版', '1', null, '10', '0', null, null, null, '2019-04-01 10:22:02.00000', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('模版类型', 'TEMPLATETYPE', '表单模版', '2', null, '20', '0', null, null, null, '2019-04-01 10:22:21.00000', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('模版类型', 'TEMPLATETYPE', '在线开发', '3', null, '30', '0', null, null, null, '2019-04-01 10:22:31.00000', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('可用标识', 'AVAILABLE', '不可用', '0', null, '20', '0', null, null, null, '2019-02-27 16:26:07.00000', '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('可用标识', 'AVAILABLE', '可用', '1', null, '10', '0', null, null, null, '2019-02-27 16:26:01.00000', '1', '0', '1', null, null, null, null, null, '1', '0');

--   初始化功能菜单
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('4b2eee0d7ded4e8094d4acf439fd3a1c', '48afedddc8f04c668b3c1572c30a7745', '行政区划管理', '', 'sysmg', 'orguser.html#/areaManagement', 30, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/48afedddc8f04c668b3c1572c30a7745/4b2eee0d7ded4e8094d4acf439fd3a1c', '银海软件/管理系统/组织人员管理/行政区划管理', '3', '', '', '2', 0, '1', '1', null, null, '2019-02-26 21:00:30.0', '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('8aa86ed4c7f84183935a262db4a605d3', '78ad02fdb879406ebc5e7a4faf8f5905', '管理员权限管理', '', 'sysmg', 'authority.html#/adminAuthority', 10, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/78ad02fdb879406ebc5e7a4faf8f5905/8aa86ed4c7f84183935a262db4a605d3', '银海软件/管理系统/资源权限管理/管理员权限管理', '3', '', '', '2', 0, '1', '1', null, null, '2019-02-26 21:00:30.0', '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('5e67c7acef914c349d8aff076921f6b5', '78ad02fdb879406ebc5e7a4faf8f5905', '相似权限管理', '', 'sysmg', 'authority.html#/similarAuthority', 30, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/78ad02fdb879406ebc5e7a4faf8f5905/5e67c7acef914c349d8aff076921f6b5', '银海软件/管理系统/资源权限管理/相似权限管理', '3', '', '', '2', 0, '0', '1', null, null, '2019-02-26 21:00:30.0', '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('72888507aba5484a8942e8dd0e6b6f7f', 'fb8637c2e52e4b05bd2c07d742141ee7', '作业管理', null, 'sysmg', 'sysmg.html#/jobManager', 0, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/fb8637c2e52e4b05bd2c07d742141ee7/72888507aba5484a8942e8dd0e6b6f7f', '银海软件/管理系统/系统管理/分布式任务管理/作业管理', '4', '', '', '2', 0, '1', '1', null, null, '2019-02-26 21:00:30.0', '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('59a7fb9c459a4dd48d468f2add1d32b2', '1d4e283ad5584e02811f6b188d3592bc', '接入系统管理', '', 'sysmg', 'sysmg.html#/accessSystem', 70, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/59a7fb9c459a4dd48d468f2add1d32b2', '银海软件/管理系统/系统管理/接入系统管理', '3', '', '', '2', 0, '1', '1', null, null, '2019-02-26 21:00:30.0', '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('0415d44401b24605a21b589b6aaa349e', '40337bdecb19484ebeb39d6c21aaca26', '管理系统', '', 'sysmg', '', 51, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e', '银海软件/管理系统', '1', '', '', '2', 0, '0', '1', null, null, '2019-02-26 21:00:30.0', '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('1d4e283ad5584e02811f6b188d3592bc', '0415d44401b24605a21b589b6aaa349e', '系统管理', '', 'sysmg', '', 41, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc', '银海软件/管理系统/系统管理', '2', '', '', '2', 0, '1', '1', null, null, '2019-02-26 21:00:30.0', '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('c578d9f8626d48f2971d7a18ac5281c5', 'fb8637c2e52e4b05bd2c07d742141ee7', '作业历史', null, 'sysmg', 'sysmg.html#/jobHistory', 10, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/fb8637c2e52e4b05bd2c07d742141ee7/c578d9f8626d48f2971d7a18ac5281c5', '银海软件/管理系统/系统管理/分布式任务管理/作业历史', '4', '', '', '2', 0, '1', '1', null, null, '2019-02-26 21:00:30.0', '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('78ad02fdb879406ebc5e7a4faf8f5905', '0415d44401b24605a21b589b6aaa349e', '资源权限管理', '', 'sysmg', '', 30, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/78ad02fdb879406ebc5e7a4faf8f5905', '银海软件/管理系统/资源权限管理', '2', '', '', '2', 0, '0', '1', null, null, '2019-02-26 21:00:30.0', '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('7c2862a57e34459484bd701c19a8de27', '1d4e283ad5584e02811f6b188d3592bc', '系统异常日志', '', 'sysmg', 'logmg.html#/systemExceptionLog', 20, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/7c2862a57e34459484bd701c19a8de27', '银海软件/管理系统/系统管理/系统异常日志', '3', '', '', '2', 0, '1', '1', null, null, '2019-02-26 21:00:30.0', '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('40337bdecb19484ebeb39d6c21aaca26', '0', '银海软件', '', 'sysmg', '', 0, '40337bdecb19484ebeb39d6c21aaca26', '银海软件', '0', '', '', '1', 1, '0', '1', '', '', '2019-02-26 21:00:30.0', '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('7c1dabd160974d8f90858c187cefa128', '1d4e283ad5584e02811f6b188d3592bc', '日志动态配置', '', 'sysmg', 'logmg.html#/logConfig', 0, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/7c1dabd160974d8f90858c187cefa128', '银海软件/管理系统/系统管理/日志动态配置', '3', '', '', '2', 0, '1', '1', null, null, '2019-02-26 21:00:30.0', '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('bd9d0bba145c458e841aa9da0aeeb1d8', '7459c1b525934151a1d309a304933644', '用户可管理字段配置', '', 'sysmg', 'sysmg.html#/userInfoManagement', 40, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/7459c1b525934151a1d309a304933644/bd9d0bba145c458e841aa9da0aeeb1d8', '银海软件/管理系统/资源管理/用户可管理字段配置', '3', '', '', '2', 0, '1', '1', null, null, '2019-02-26 21:00:30.0', '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('daceeff8a97b46cb9573b93ba3a5a792', '48afedddc8f04c668b3c1572c30a7745', '人员管理', '', 'sysmg', 'orguser.html#/userManagement', 10, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/48afedddc8f04c668b3c1572c30a7745/daceeff8a97b46cb9573b93ba3a5a792', '银海软件/管理系统/组织人员管理/人员管理', '3', '', '', '2', 0, '1', '1', null, null, '2019-02-26 21:00:30.0', '1', '1', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('7459c1b525934151a1d309a304933644', '0415d44401b24605a21b589b6aaa349e', '资源管理', '', 'sysmg', '', 40, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/7459c1b525934151a1d309a304933644', '银海软件/管理系统/资源管理', '2', '', '', '2', 0, '0', '1', null, null, '2019-02-26 21:00:30.0', '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('95bb9b749bf54e4692b0b1f14fd1b5ab', '78ad02fdb879406ebc5e7a4faf8f5905', '角色权限管理', '', 'sysmg', 'authority.html#/roleAuthorityManagement', 0, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/78ad02fdb879406ebc5e7a4faf8f5905/95bb9b749bf54e4692b0b1f14fd1b5ab', '银海软件/管理系统/资源权限管理/角色权限管理', '3', '', '', '2', 0, '1', '1', null, null, '2019-02-26 21:00:30.0', '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('84e388e319d44de585b94b039eec0092', '1d4e283ad5584e02811f6b188d3592bc', '工作台模块管理', '', 'sysmg', 'logmg.html#/defaultTemplate', 60, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/84e388e319d44de585b94b039eec0092', '银海软件/管理系统/系统管理/工作台模块管理', '3', '', '', '2', 0, '1', '1', null, null, '2019-02-26 21:00:30.0', '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('3dbde33722154503a7d22ac60f6a0e4e', '48afedddc8f04c668b3c1572c30a7745', '自定义组织管理', '', 'sysmg', 'orguser.html#/customOrgManagement', 20, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/48afedddc8f04c668b3c1572c30a7745/3dbde33722154503a7d22ac60f6a0e4e', '银海软件/管理系统/组织人员管理/自定义组织管理', '3', '', '', '2', 0, '1', '1', null, null, '2019-02-26 21:00:30.0', '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('770b2f1e77eb4d9092dc89743b5792c9', '1d4e283ad5584e02811f6b188d3592bc', '登录日志统计', '', 'sysmg', 'logmg.html#/loginLogAnalysis', 10, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/770b2f1e77eb4d9092dc89743b5792c9', '银海软件/管理系统/系统管理/登录日志统计', '3', '', '', '2', 0, '1', '1', null, null, '2019-02-26 21:00:30.0', '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('fb8637c2e52e4b05bd2c07d742141ee7', '1d4e283ad5584e02811f6b188d3592bc', '分布式任务管理', null, 'sysmg', null, 50, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/fb8637c2e52e4b05bd2c07d742141ee7', '银海软件/管理系统/系统管理/分布式任务管理', '3', '', '', '2', 0, '1', '1', null, null, '2019-02-26 21:00:30.0', '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('c88413826abd4a5b88612a6442e6db07', '1d4e283ad5584e02811f6b188d3592bc', '操作日志', null, 'sysmg', 'logmg.html#/operationLog', 40, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/c88413826abd4a5b88612a6442e6db07', '银海软件/管理系统/系统管理/操作日志', '3', null, null, '2', 0, '1', '1', null, null, '2019-02-26 21:00:30.0', '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('1e706f26bc144c1da12022359c238053', '48afedddc8f04c668b3c1572c30a7745', '组织机构管理', '', 'sysmg', 'orguser.html#/orgManagement', 0, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/48afedddc8f04c668b3c1572c30a7745/1e706f26bc144c1da12022359c238053', '银海软件/管理系统/组织人员管理/组织机构管理', '3', '', '', '2', 1, '0', '1', null, null, '2019-02-26 21:00:30.0', '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('3df588fc565d4287b3cefcd00a39cd91', '7459c1b525934151a1d309a304933644', '标签管理', '', 'sysmg', 'sysmg.html#/tagManagement', 30, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/7459c1b525934151a1d309a304933644/3df588fc565d4287b3cefcd00a39cd91', '银海软件/管理系统/资源管理/标签管理', '3', '', '', '2', 0, '1', '1', null, null, '2019-02-26 21:00:30.0', '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('ffa74f43e853441dac0ee90c787cb2e6', '1d4e283ad5584e02811f6b188d3592bc', '字典管理', '', 'sysmg', 'sysmg.html#/dictionaryManager', 30, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/ffa74f43e853441dac0ee90c787cb2e6', '银海软件/管理系统/系统管理/字典管理', '3', '', '', '2', 0, '1', '1', null, null, '2019-02-26 21:00:30.0', '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('877e407281dd48acb05a77fcb922bc73', '78ad02fdb879406ebc5e7a4faf8f5905', '权限代理', '', 'sysmg', 'authority.html#/authorityAgent', 20, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/78ad02fdb879406ebc5e7a4faf8f5905/877e407281dd48acb05a77fcb922bc73', '银海软件/管理系统/资源权限管理/权限代理', '3', '', '', '2', 0, '0', '1', null, null, '2019-02-26 21:00:30.0', '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('48afedddc8f04c668b3c1572c30a7745', '0415d44401b24605a21b589b6aaa349e', '组织人员管理', '', 'sysmg', '', 10, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/48afedddc8f04c668b3c1572c30a7745', '银海软件/管理系统/组织人员管理', '2', '', '', '2', 0, '0', '1', null, null, '2019-02-26 21:00:30.0', '1', '1', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('c2745b7cae7846acb9bcf8d0f4e836e8', '7459c1b525934151a1d309a304933644', '自定义资源管理', '', 'sysmg', 'sysmg.html#/customResource', 20, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/7459c1b525934151a1d309a304933644/c2745b7cae7846acb9bcf8d0f4e836e8', '银海软件/管理系统/资源管理/自定义资源管理', '3', '', '', '2', 0, '1', '1', null, null, '2019-02-26 21:00:30.0', '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('ec56a0a43b09429482632cb61f7c6908', '7459c1b525934151a1d309a304933644', '功能资源管理', '', 'sysmg', 'sysmg.html#/resourceManagement', 0, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/7459c1b525934151a1d309a304933644/ec56a0a43b09429482632cb61f7c6908', '银海软件/管理系统/资源管理/功能资源管理', '3', '', '', '2', 0, '1', '1', null, null, '2019-02-26 21:00:30.0', '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('a0609e4fd75049dbb3a6af7ab8de08a3', '40337bdecb19484ebeb39d6c21aaca26', '网上服务集成', '', 'sysmg', '', 61, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3', '银海软件/网上服务集成', '1', '', '', '2', 0, '0', '1', null, null, '2019-02-26 21:00:30.00000', '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('df146a87ecec4297b17329c92f422b90', 'a0609e4fd75049dbb3a6af7ab8de08a3', '静态资源管理', '', 'sysmg', 'servicemg.html#/staticResourceMg', 40, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3/df146a87ecec4297b17329c92f422b90', '银海软件/网上服务集成/静态资源管理', '2', '', '', '2', 0, '0', '1', null, null, '2019-02-26 21:00:30.00000', '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('950ceb076472425eba8dd981e0361497', 'a0609e4fd75049dbb3a6af7ab8de08a3', '服务管理', '', 'sysmg', 'servicemg.html#/serviceManagement', 10, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3/950ceb076472425eba8dd981e0361497', '银海软件/网上服务集成/服务管理', '2', '', '', '2', 0, '0', '1', null, null, '2019-02-26 21:00:30.00000', '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('f126b34ea04943249c98af7801995490', 'a0609e4fd75049dbb3a6af7ab8de08a3', '站点管理', '', 'sysmg', 'servicemg.html#/siteManagement', 0, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3/f126b34ea04943249c98af7801995490', '银海软件/网上服务集成/站点管理', '2', '', '', '2', 0, '0', '0', null, null, '2019-02-26 21:00:30.00000', '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('d5778206f27f4d889c79caa2162c9e55', 'a0609e4fd75049dbb3a6af7ab8de08a3', '应用管理', '', 'sysmg', 'servicemg.html#/appManagement', 61, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3/d5778206f27f4d889c79caa2162c9e55', '银海软件/网上服务集成/应用管理', '2', '', '', '2', 0, '0', '1', null, null, '2019-02-27 16:11:12.00000', '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('7d02437d246642ff82281d11df80f735', 'a0609e4fd75049dbb3a6af7ab8de08a3', '页面模板管理', '', 'sysmg', 'servicemg.html#/templateMg', 60, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3/7d02437d246642ff82281d11df80f735', '银海软件/网上服务集成/页面模板管理', '2', '', '', '2', 0, '0', '1', null, null, '2019-02-28 14:02:31.00000', '1', '0', null, null, null, null, null, null, null, null, null, null, '0');


--   初始化角色
INSERT INTO tarole (roleid,rolename,isadmin,rolelevel,orgid,roletype,effective,effectivetime,createuser,createtime,roledesc,rolesign,subordinate) VALUES (
'1','超级管理员',NULL,NULL,'fd811ab9c30440088df3e29ea784460a','04','1',NULL,'1',current,'超级管理员角色',NULL,NULL);

--   初始化用户组织表
INSERT INTO tauserorg (userid,orgid,isdirect) VALUES (
'1','fd811ab9c30440088df3e29ea784460a','1');

--   初始化接入系统
INSERT INTO taaccesssystem
(id,syscode,sysname,spell,protocol,domain,port,contextpath,portalsystem,menuservice,provider,effective,regtime,modifytime,backgroundaddress) VALUES (
'e55b9b7046434d66bc11b94d553fada2','sysmg','管理系统','GLXT','http','localhost','8081','sysmg','1','111','ss','1','2019-01-17 17:52:01.0','2019-01-18 10:49:22.0','192.168.0.1:8083');

--  初始化标签
INSERT INTO tataggroup (taggroupid,taggroupname,effective,createuser,createtime,updatetime,destory) VALUES (
'001','用户','1','developer',current,current,'0');
INSERT INTO tataggroup (taggroupid,taggroupname,effective,createuser,createtime,updatetime,destory) VALUES (
'002','组织','1','developer',current,current,'0');


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
VALUES ('0', current, current, '5e3a06ed889b4b40ba88c5ee2ba192f3', '0', '5e3a06ed889b4b40ba88c5ee2ba192f3', '久远银海', '1');

--  初始化自定义组织类别名称
INSERT INTO tacustomorgtypename (customorgtypenameid, customorgtypename, effective, createuser, createtime, updatetime, destory, customorgtypenamecode, customorgtypenamedesc)
VALUES ('baa315851d3c4a90a47889672404505d', '社保组织', '1', '1', '2019-01-18 10:08:05.0', '2019-01-18 10:08:05.0', '0', 'SBZZ', '这是社保组织描述');
