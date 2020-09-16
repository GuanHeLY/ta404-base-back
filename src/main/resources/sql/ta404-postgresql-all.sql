/*==============================================================*/
/* DBMS name:      PostgreSQL 9.x                               */
/* Created on:     2019/2/15 14:59:32                           */
/*==============================================================*/

drop view V_DICT;


drop table TAACCESSLOG;

drop table TAACCESSSYSTEM;

drop table TAAREA;

drop table TAAVATAR;

drop table TACONFIG;

drop table TACUSTOMORG;

drop table TACUSTOMORGTYPENAME;

drop table TACUSTOMORGUSER;

drop table TACUSTOMRESOURCE;

drop table TADICT;

drop table TAEXTENDSETTING;

drop table TALOGINHISTORYLOG;

drop table TALOGINSTATLOG;

drop table TAOBJECTTAGS;

drop table TAONLINELOG;

drop table TAONLINESERVICE;

drop table TAONLINESERVICEMG;

drop table TAONLINESERVICENAME;

drop table TAONLINESTATLOG;

drop table TAORG;

drop table TAORGCONSTRAINT;

drop table TAORGMG;

drop table TAORGOPLOG;

drop table TARESOURCE;

drop table TARESOURCECATEGORY;

drop table TARESOURCEUI;

drop table TARESOURCEURL;

drop table TAROLE;

drop table TAROLEAUTHORITY;

drop table TAROLEURLAUTHORITY;

drop table TAROLEUSER;

drop table TAROLEWORKBENCH;

drop table TASERVEREXCEPTIONLOG;

drop table TASITEMG;

drop table TATAG;

drop table TATAGGROUP;

drop table TATAGSSTORE;

drop table TAUSER;

drop table TAUSERORG;

drop table TAUSERWORKBENCH;

drop table TAZOOKEEPERADDRESSMG;

drop table TAJOBDATASOURCEMG;

drop table FREEBUSYJOBMG;

drop table TAAPPMG;

drop table TATEMPLATE;

drop table TATEMPLATECATALOG;

drop table TAAPPPAGE;

drop table TASYSCONFIG;

/*==============================================================*/
/* Table: TAACCESSLOG                                           */
/*==============================================================*/
create table TAACCESSLOG (
                            LOGID                VARCHAR(36)          not null,
                            USERID               VARCHAR(36)          not null,
                            ROLEID               VARCHAR(36)          not null,
                            MENUID               VARCHAR(36)          not null,
                            ISPERMISSION         CHAR(1)              not null,
                            ACCESSTIME           TIMESTAMP                 not null,
                            URL                  VARCHAR(1024)        null,
                            SYSFLAG              VARCHAR(50)          null,
                            FIELD01              VARCHAR(10)          null,
                            FIELD02              VARCHAR(10)          null,
                            FIELD03              VARCHAR(10)          null,
                            FIELD04              VARCHAR(10)          null,
                            FIELD05              VARCHAR(10)          null,
                            constraint PK_TAACCESSLOG primary key (LOGID)
);

comment on table TAACCESSLOG is
   '功能日志表';

comment on column TAACCESSLOG.LOGID is
   '日志id';

comment on column TAACCESSLOG.USERID is
   '人员id';

comment on column TAACCESSLOG.ROLEID is
   '角色id';

comment on column TAACCESSLOG.MENUID is
   '功能菜单id';

comment on column TAACCESSLOG.ISPERMISSION is
   '是否有权限';

comment on column TAACCESSLOG.ACCESSTIME is
   '访问时间';

comment on column TAACCESSLOG.URL is
   '访问路径';

comment on column TAACCESSLOG.SYSFLAG is
   '系统标识';

comment on column TAACCESSLOG.FIELD01 is
   '扩展字段01';

comment on column TAACCESSLOG.FIELD02 is
   '扩展字段02';

comment on column TAACCESSLOG.FIELD03 is
   '扩展字段03';

comment on column TAACCESSLOG.FIELD04 is
   '扩展字段04';

comment on column TAACCESSLOG.FIELD05 is
   '扩展字段05';

/*==============================================================*/
/* Table: TAACCESSSYSTEM                                        */
/*==============================================================*/
create table TAACCESSSYSTEM (
                               ID                   VARCHAR(36)          not null,
                               SYSCODE              VARCHAR(20)          not null,
                               SYSNAME              VARCHAR(100)         not null,
                               SPELL                VARCHAR(30)          null,
                               PROTOCOL             VARCHAR(10)          null,
                               DOMAIN               VARCHAR(100)         null,
                               PORT                 VARCHAR(5)           null,
                               CONTEXTPATH          VARCHAR(30)          null,
                               PORTALSYSTEM         VARCHAR(1)           null,
                               MENUSERVICE          VARCHAR(200)         null,
                               PROVIDER             VARCHAR(10)          null,
                               EFFECTIVE            VARCHAR(1)           not null,
                               REGTIME              TIMESTAMP                 null,
                               MODIFYTIME           TIMESTAMP                 null,
                               BACKGROUNDADDRESS    VARCHAR(100)         null,
                               constraint PK_TAACCESSSYSTEM primary key (ID)
);

comment on table TAACCESSSYSTEM is
   '接入系统表';

comment on column TAACCESSSYSTEM.ID is
   '接入系统id';

comment on column TAACCESSSYSTEM.SYSCODE is
   '系统标识';

comment on column TAACCESSSYSTEM.SYSNAME is
   '系统名称';

comment on column TAACCESSSYSTEM.SPELL is
   '拼音简写';

comment on column TAACCESSSYSTEM.PROTOCOL is
   '系统协议';

comment on column TAACCESSSYSTEM.DOMAIN is
   '域名或ip';

comment on column TAACCESSSYSTEM.PORT is
   '端口';

comment on column TAACCESSSYSTEM.CONTEXTPATH is
   '上下文';

comment on column TAACCESSSYSTEM.PORTALSYSTEM is
   '是否接入门户';

comment on column TAACCESSSYSTEM.MENUSERVICE is
   '菜单服务';

comment on column TAACCESSSYSTEM.PROVIDER is
   '系统提供方';

comment on column TAACCESSSYSTEM.EFFECTIVE is
   '有效标识';

comment on column TAACCESSSYSTEM.REGTIME is
   '注册时间';

comment on column TAACCESSSYSTEM.MODIFYTIME is
   '修改时间';

comment on column TAACCESSSYSTEM.BACKGROUNDADDRESS is
   '后台地址';

/*==============================================================*/
/* Table: TAAREA                                                */
/*==============================================================*/
create table TAAREA (
                       AREAID               VARCHAR(36)          not null,
                       PARENTID             VARCHAR(36)          not null,
                       AREANAME             VARCHAR(100)         not null,
                       AREACODE             VARCHAR(20)          not null,
                       IDPATH               VARCHAR(300)         not null,
                       NAMEPATH             VARCHAR(300)         not null,
                       AREALEVEL            NUMERIC(2,0)         null,
                       SPELL                VARCHAR(100)         null,
                       CREATEUSER           VARCHAR(36)          not null,
                       AREAORDER            NUMERIC(20,0)        null,
                       EFFECTIVE            VARCHAR(1)           not null,
                       CREATETIME           TIMESTAMP                 not null,
                       MODIFYTIME           TIMESTAMP                 not null,
                       DESTORY              VARCHAR(1)           null,
                       constraint PK_TAAREA primary key (AREAID)
);

comment on table TAAREA is
   '行政区划表';

comment on column TAAREA.AREAID is
   '行政区划ID';

comment on column TAAREA.PARENTID is
   '父级ID';

comment on column TAAREA.AREANAME is
   '行政区划名称';

comment on column TAAREA.AREACODE is
   '行政区划编码';

comment on column TAAREA.IDPATH is
   '行政区划ID全路径';

comment on column TAAREA.NAMEPATH is
   '行政区划名称路径';

comment on column TAAREA.AREALEVEL is
   '行政区划层级';

comment on column TAAREA.SPELL is
   '拼音简写';

comment on column TAAREA.CREATEUSER is
   '创建人';

comment on column TAAREA.AREAORDER is
   '排序号';

comment on column TAAREA.EFFECTIVE is
   '有效标识';

comment on column TAAREA.CREATETIME is
   '创建时间';

comment on column TAAREA.MODIFYTIME is
   '更新时间';

comment on column TAAREA.DESTORY is
   '销毁标识';

/*==============================================================*/
/* Table: TAAVATAR                                              */
/*==============================================================*/
create table TAAVATAR (
                         USERID               VARCHAR(36)          not null,
                         AVATAR               BYTEA                null,
                         UPDATETIME           TIMESTAMP                 not null,
                         constraint PK_TAAVATAR primary key (USERID, UPDATETIME)
);

comment on table TAAVATAR is
   '用户头像表';

comment on column TAAVATAR.USERID is
   '用户id';

comment on column TAAVATAR.AVATAR is
   '头像base64';

comment on column TAAVATAR.UPDATETIME is
   '更新时间';

/*==============================================================*/
/* Table: TACONFIG                                              */
/*==============================================================*/
create table TACONFIG (
                         CONFIGID             VARCHAR(36)          not null,
                         CONFIGKEY            VARCHAR(30)          not null,
                         CONFIGVALUE          VARCHAR(1000)        not null,
                         CONFIGNAME           VARCHAR(150)         null,
                         CONFIGDESC           VARCHAR(1000)        null,
                         constraint PK_TACONFIG primary key (CONFIGID)
);

comment on table TACONFIG is
   '配置表';

comment on column TACONFIG.CONFIGID is
   '配置项ID';

comment on column TACONFIG.CONFIGKEY is
   '配置项标识';

comment on column TACONFIG.CONFIGVALUE is
   '配置项内容';

comment on column TACONFIG.CONFIGNAME is
   '配置项名称';

comment on column TACONFIG.CONFIGDESC is
   '配置说明';

/*==============================================================*/
/* Table: TACUSTOMORG                                           */
/*==============================================================*/
create table TACUSTOMORG (
                            CUSTOMORGID          VARCHAR(36)          not null,
                            PARENTID             VARCHAR(36)          null,
                            CUSTOMCODE           VARCHAR(255)         null,
                            CUSTOMORGTYPENAMEID  VARCHAR(36)          not null,
                            EFFECTIVE            VARCHAR(1)           not null,
                            ORDERNO              NUMERIC(10,0)        null,
                            CUSTOMORGNAME        VARCHAR(255)         null,
                            CUSTOMORGPATHID      VARCHAR(1024)         null,
                            CUSTOMORGPATH        VARCHAR(1024)         null,
                            CREATEUSER           VARCHAR(36)          null,
                            CREATETIME           TIMESTAMP                 not null,
                            UPDATETIME           TIMESTAMP                 not null,
                            DESTORY              VARCHAR(1)           not null,
                            SPELL                VARCHAR(20)          null,
                            ORGMANAGER           VARCHAR(36)          null,
                            ORGCODE              VARCHAR(18)          null,
                            CONTACTS             VARCHAR(36)          null,
                            ADDRESS              VARCHAR(450)         null,
                            TEL                  VARCHAR(20)          null,
                            FIELD01              VARCHAR(1000)        null,
                            FIELD02              VARCHAR(1000)        null,
                            FIELD03              VARCHAR(1000)        null,
                            FIELD04              VARCHAR(1000)        null,
                            FIELD05              VARCHAR(1000)        null,
                            FIELD06              VARCHAR(1000)        null,
                            FIELD07              VARCHAR(1000)        null,
                            FIELD08              VARCHAR(1000)        null,
                            FIELD09              VARCHAR(1000)        null,
                            FIELD10              VARCHAR(1000)        null,
                            constraint PK_TACUSTOMORG primary key (CUSTOMORGID)
);

comment on table TACUSTOMORG is
   '自定义组织表';

comment on column TACUSTOMORG.CUSTOMORGID is
   '自定义组织id';

comment on column TACUSTOMORG.PARENTID is
   '当前组织父级id';

comment on column TACUSTOMORG.CUSTOMCODE is
   '自定义编码';

comment on column TACUSTOMORG.CUSTOMORGTYPENAMEID is
   '自定义组织名称id';

comment on column TACUSTOMORG.EFFECTIVE is
   '有效标识';

comment on column TACUSTOMORG.ORDERNO is
   '排序号';

comment on column TACUSTOMORG.CUSTOMORGNAME is
   '自定义组织名称';

comment on column TACUSTOMORG.CUSTOMORGPATHID is
   '自定义组织路径id';

comment on column TACUSTOMORG.CUSTOMORGPATH is
   '自定义组织全路径';

comment on column TACUSTOMORG.CREATEUSER is
   '创建人';

comment on column TACUSTOMORG.CREATETIME is
   '创建时间';

comment on column TACUSTOMORG.UPDATETIME is
   '更新时间';

comment on column TACUSTOMORG.DESTORY is
   '销毁标识';

comment on column TACUSTOMORG.SPELL is
   '拼音简写';

comment on column TACUSTOMORG.ORGMANAGER is
   '组织负责人';

comment on column TACUSTOMORG.ORGCODE is
   '组织代码';

comment on column TACUSTOMORG.CONTACTS is
   '单位联系人';

comment on column TACUSTOMORG.ADDRESS is
   '联系地址';

comment on column TACUSTOMORG.TEL is
   '联系电话';

comment on column TACUSTOMORG.FIELD01 is
   '扩展字段01';

comment on column TACUSTOMORG.FIELD02 is
   '扩展字段02';

comment on column TACUSTOMORG.FIELD03 is
   '扩展字段03';

comment on column TACUSTOMORG.FIELD04 is
   '扩展字段04';

comment on column TACUSTOMORG.FIELD05 is
   '扩展字段05';

comment on column TACUSTOMORG.FIELD06 is
   '扩展字段06';

comment on column TACUSTOMORG.FIELD07 is
   '扩展字段07';

comment on column TACUSTOMORG.FIELD08 is
   '扩展字段08';

comment on column TACUSTOMORG.FIELD09 is
   '扩展字段09';

comment on column TACUSTOMORG.FIELD10 is
   '扩展字段10';

/*==============================================================*/
/* Table: TACUSTOMORGTYPENAME                                   */
/*==============================================================*/
create table TACUSTOMORGTYPENAME (
                                    CUSTOMORGTYPENAMEID  VARCHAR(36)          not null,
                                    CUSTOMORGTYPENAME    VARCHAR(255)          null,
                                    EFFECTIVE            VARCHAR(1)           not null,
                                    CREATEUSER           VARCHAR(36)          not null,
                                    CREATETIME           TIMESTAMP                 not null,
                                    UPDATETIME           TIMESTAMP                 not null,
                                    DESTORY              VARCHAR(1)           not null,
                                    CUSTOMORGTYPENAMECODE VARCHAR(255)          null,
                                    CUSTOMORGTYPENAMEDESC VARCHAR(255)          null,
                                    constraint PK_TACUSTOMORGTYPENAME primary key (CUSTOMORGTYPENAMEID)
);

comment on table TACUSTOMORGTYPENAME is
   '自定义组织类型名称表';

comment on column TACUSTOMORGTYPENAME.CUSTOMORGTYPENAMEID is
   '自定义组织类型名称ID';

comment on column TACUSTOMORGTYPENAME.CUSTOMORGTYPENAME is
   '自定义组织类型名称';

comment on column TACUSTOMORGTYPENAME.EFFECTIVE is
   '是否有效';

comment on column TACUSTOMORGTYPENAME.CREATEUSER is
   '创建人';

comment on column TACUSTOMORGTYPENAME.CREATETIME is
   '创建时间';

comment on column TACUSTOMORGTYPENAME.UPDATETIME is
   '更新时间';

comment on column TACUSTOMORGTYPENAME.DESTORY is
   '销毁状态';

comment on column TACUSTOMORGTYPENAME.CUSTOMORGTYPENAMECODE is
   '自定义组织类型名称编码';

comment on column TACUSTOMORGTYPENAME.CUSTOMORGTYPENAMEDESC is
   '自定义组织类型名称描述';

/*==============================================================*/
/* Table: TACUSTOMORGUSER                                       */
/*==============================================================*/
create table TACUSTOMORGUSER (
                                CUSTOMORGID          VARCHAR(36)          not null,
                                USERID               VARCHAR(36)          not null,
                                constraint PK_TACUSTOMORGUSER primary key (CUSTOMORGID, USERID)
);

comment on table TACUSTOMORGUSER is
   '自定义组织用户关系表';

comment on column TACUSTOMORGUSER.CUSTOMORGID is
   '自定义组织ID';

comment on column TACUSTOMORGUSER.USERID is
   '用户Id';

/*==============================================================*/
/* Table: TACUSTOMRESOURCE                                      */
/*==============================================================*/
create table TACUSTOMRESOURCE (
                                 CUSTOMRESOURCEID     VARCHAR(36)          not null,
                                 RESOURCENAME         VARCHAR(450)         not null,
                                 PARENTID             VARCHAR(36)          not null,
                                 CODE                 VARCHAR(100)         null,
                                 RESOURCECONTENT      VARCHAR(1024)        null,
                                 RESOURCECATEGORY     VARCHAR(32)          null,
                                 EFFECTIVE            VARCHAR(1)           not null,
                                 ADDTIME              TIMESTAMP                 null,
                                 MODIFYTIME           TIMESTAMP                 null,
                                 SYSTEM               VARCHAR(36)          null,
                                 constraint PK_TACUSTOMRESOURCE primary key (CUSTOMRESOURCEID)
);

comment on table TACUSTOMRESOURCE is
   '自定义资源表';

comment on column TACUSTOMRESOURCE.CUSTOMRESOURCEID is
   '自定义资源Id';

comment on column TACUSTOMRESOURCE.RESOURCENAME is
   '资源名称';

comment on column TACUSTOMRESOURCE.PARENTID is
   '父Id';

comment on column TACUSTOMRESOURCE.CODE is
   '资源编码';

comment on column TACUSTOMRESOURCE.RESOURCECONTENT is
   '自定义资源内容';

comment on column TACUSTOMRESOURCE.RESOURCECATEGORY is
   '资源所属类别';

comment on column TACUSTOMRESOURCE.EFFECTIVE is
   '有效状态';

comment on column TACUSTOMRESOURCE.ADDTIME is
   '创建事件';

comment on column TACUSTOMRESOURCE.MODIFYTIME is
   '修改时间';

comment on column TACUSTOMRESOURCE.SYSTEM is
   '资源所属系统';

/*==============================================================*/
/* Table: TADICT                                                */
/*==============================================================*/
create table TADICT (
                       NAME                 VARCHAR(50)          not null,
                       TYPE                 VARCHAR(50)          not null,
                       LABEL                VARCHAR(50)          not null,
                       VALUE                VARCHAR(6)           not null,
                       PARENTVALUE          VARCHAR(6)           null,
                       SORT                 NUMERIC(4,0)         not null,
                       AUTHORITY            VARCHAR(20)          not null,
                       CSSCLASS             VARCHAR(20)          null,
                       CSSSTYLE             VARCHAR(128)         null,
                       REMARKS              VARCHAR(256)         null,
                       CREATEDATE           TIMESTAMP                 not null,
                       CREATEUSER           VARCHAR(36)          not null,
                       VERSION              VARCHAR(10)          not null,
                       STATUS               VARCHAR(2)           not null,
                       FIELD01              VARCHAR(10)          null,
                       FIELD02              VARCHAR(10)          null,
                       FIELD03              VARCHAR(10)          null,
                       FIELD04              VARCHAR(10)          null,
                       FIELD05              VARCHAR(10)          null,
                       SYSTEM               VARCHAR(2)           not null,
                       NEWTYPE              VARCHAR(2)           not null,
                       constraint PK_TADICT primary key (TYPE, VALUE)
);

comment on table TADICT is
   '数据字典表';

comment on column TADICT.NAME is
   '字典名称';

comment on column TADICT.TYPE is
   '字典类型';

comment on column TADICT.LABEL is
   '字典标签';

comment on column TADICT.VALUE is
   '字典键值';

comment on column TADICT.PARENTVALUE is
   '父级字典值';

comment on column TADICT.SORT is
   '顺序';

comment on column TADICT.AUTHORITY is
   '权限标识';

comment on column TADICT.CSSSTYLE is
   'css样式';

comment on column TADICT.REMARKS is
   '备注';

comment on column TADICT.CREATEDATE is
   '创建时间';

comment on column TADICT.CREATEUSER is
   '创建人';

comment on column TADICT.VERSION is
   '版本';

comment on column TADICT.STATUS is
   '字典状态';

comment on column TADICT.FIELD01 is
   '备用字段1';

comment on column TADICT.FIELD02 is
   '备用字段2';

comment on column TADICT.FIELD03 is
   '备用字段3';

comment on column TADICT.FIELD04 is
   '备用字段4';

comment on column TADICT.FIELD05 is
   '备用字段5';

comment on column TADICT.SYSTEM is
   '系统字典';

comment on column TADICT.NEWTYPE is
   '新增类型标识';

/*==============================================================*/
/* Table: TAEXTENDSETTING                                       */
/*==============================================================*/
create table TAEXTENDSETTING (
                                FIELDID              VARCHAR(10)          not null,
                                TYPE                 VARCHAR(2)           not null,
                                EFFECTIVE            VARCHAR(1)           not null,
                                HIDE                 VARCHAR(1)           null,
                                DISPLAYTEXT          VARCHAR(150)         null,
                                TITEXT               VARCHAR(1500)        null,
                                ORDERNO              NUMERIC(10,0)        null,
                                REQUIRED             VARCHAR(1)           null,
                                UNCHANGEABLE         VARCHAR(1)           null,
                                FORMTYPE             VARCHAR(20)          null,
                                CONTENTSIZE          NUMERIC(16,0)        null,
                                VALIDREG             VARCHAR(1000)        null,
                                CONNECTAA10          VARCHAR(30)          null,
                                PROTECTPRIVACY       VARCHAR(1)           null,
                                FORMID               VARCHAR(10)          null,
                                MORE                 VARCHAR(1)           null,
                                constraint PK_TAEXTENDSETTING primary key (FIELDID, TYPE)
);

comment on table TAEXTENDSETTING is
   '管理字段配置表';

comment on column TAEXTENDSETTING.FIELDID is
   '字段名称';

comment on column TAEXTENDSETTING.TYPE is
   '账户类型';

comment on column TAEXTENDSETTING.EFFECTIVE is
   '是否有效';

comment on column TAEXTENDSETTING.HIDE is
   '是否隐藏';

comment on column TAEXTENDSETTING.DISPLAYTEXT is
   '标题文字';

comment on column TAEXTENDSETTING.TITEXT is
   '信息提示文字';

comment on column TAEXTENDSETTING.ORDERNO is
   '显示顺序';

comment on column TAEXTENDSETTING.REQUIRED is
   '是否必填';

comment on column TAEXTENDSETTING.UNCHANGEABLE is
   '不可编辑';

comment on column TAEXTENDSETTING.FORMTYPE is
   '表单元素类型';

comment on column TAEXTENDSETTING.CONTENTSIZE is
   '内容长度';

comment on column TAEXTENDSETTING.VALIDREG is
   '验证表达式';

comment on column TAEXTENDSETTING.CONNECTAA10 is
   '关联码表';

comment on column TAEXTENDSETTING.PROTECTPRIVACY is
   '隐私保护';

comment on column TAEXTENDSETTING.FORMID is
   '表单标识';

comment on column TAEXTENDSETTING.MORE is
   '是否展示在更多菜单项';

/*==============================================================*/
/* Table: TALOGINHISTORYLOG                                     */
/*==============================================================*/
create table TALOGINHISTORYLOG (
                                  LOGID                VARCHAR(36)          not null,
                                  USERID               VARCHAR(36)          not null,
                                  LOGINTIME            TIMESTAMP                 not null,
                                  LOGOUTTIME           TIMESTAMP                 not null,
                                  CLIENTIP             VARCHAR(200)         not null,
                                  SESSIONID            VARCHAR(200)         not null,
                                  SERVERIP             VARCHAR(200)         null,
                                  SYSPATH              VARCHAR(50)          null,
                                  CLIENTSYSTEM         VARCHAR(50)          null,
                                  CLIENTBROWSER        VARCHAR(50)          null,
                                  CLIENTSCREENSIZE     VARCHAR(50)          null,
                                  constraint PK_TALOGINHISTORYLOG primary key (LOGID)
);

comment on table TALOGINHISTORYLOG is
   '用户登录日志表';

comment on column TALOGINHISTORYLOG.LOGID is
   '日志ID';

comment on column TALOGINHISTORYLOG.USERID is
   '用户ID';

comment on column TALOGINHISTORYLOG.LOGINTIME is
   '登录时间';

comment on column TALOGINHISTORYLOG.LOGOUTTIME is
   '退出时间';

comment on column TALOGINHISTORYLOG.CLIENTIP is
   '客户端IP';

comment on column TALOGINHISTORYLOG.SESSIONID is
   '登录时SessionID';

comment on column TALOGINHISTORYLOG.SERVERIP is
   '服务端IP';

comment on column TALOGINHISTORYLOG.SYSPATH is
   '系统路径';

comment on column TALOGINHISTORYLOG.CLIENTSYSTEM is
   '客户端系统版本';

comment on column TALOGINHISTORYLOG.CLIENTBROWSER is
   '客户端浏览器版本';

comment on column TALOGINHISTORYLOG.CLIENTSCREENSIZE is
   '客户端分辨率';

/*==============================================================*/
/* Table: TALOGINSTATLOG                                        */
/*==============================================================*/
create table TALOGINSTATLOG (
                               STATDATE             VARCHAR(20)          not null,
                               POINTINTIME          VARCHAR(20)          not null,
                               LOGINNUM             NUMERIC(15,0)        null,
                               constraint PK_TALOGINSTATLOG primary key (STATDATE, POINTINTIME)
);

comment on table TALOGINSTATLOG is
   '登录统计日志表';

comment on column TALOGINSTATLOG.STATDATE is
   '统计时间（YYYY-MM-DD）';

comment on column TALOGINSTATLOG.POINTINTIME is
   '统计时点（HH:MM）';

comment on column TALOGINSTATLOG.LOGINNUM is
   '已经登录并注销的用户数';

/*==============================================================*/
/* Table: TAOBJECTTAGS                                          */
/*==============================================================*/
create table TAOBJECTTAGS (
                             OBJECTID             VARCHAR(36)          not null,
                             OBJECTTYPE           VARCHAR(3)           not null,
                             TAGID                VARCHAR(36)          not null,
                             constraint PK_TAOBJECTTAGS primary key (OBJECTID, OBJECTTYPE, TAGID)
);

comment on table TAOBJECTTAGS is
   '对象表';

comment on column TAOBJECTTAGS.OBJECTID is
   '对象编号（用户编号、机构编号等）';

comment on column TAOBJECTTAGS.OBJECTTYPE is
   '对象类型（用户、机构等）';

/*==============================================================*/
/* Table: TAONLINELOG                                           */
/*==============================================================*/
create table TAONLINELOG (
                            LOGID                VARCHAR(36)          not null,
                            USERID               VARCHAR(36)          not null,
                            LOGINTIME            TIMESTAMP                 not null,
                            CURRESOURCE          VARCHAR(1000)        null,
                            CLIENTIP             VARCHAR(200)         not null,
                            SESSIONID            VARCHAR(200)         not null,
                            SYSPATH              VARCHAR(50)          null,
                            SERVERIP             VARCHAR(200)         null,
                            CLIENTSYSTEM         VARCHAR(50)          null,
                            CLIENTBROWSER        VARCHAR(50)          null,
                            CLIENTSCREENSIZE     VARCHAR(50)          null,
                            constraint PK_TAONLINELOG primary key (LOGID)
);

comment on table TAONLINELOG is
   '用户在线日志表';

comment on column TAONLINELOG.LOGID is
   '日志编号';

comment on column TAONLINELOG.USERID is
   '用户编号';

comment on column TAONLINELOG.LOGINTIME is
   '登录时间';

comment on column TAONLINELOG.CURRESOURCE is
   '当前资源';

comment on column TAONLINELOG.CLIENTIP is
   '客户端ip地址';

comment on column TAONLINELOG.SESSIONID is
   '登录请求的sessionId';

comment on column TAONLINELOG.SYSPATH is
   '系统路径';

comment on column TAONLINELOG.SERVERIP is
   '服务端ip地址';

comment on column TAONLINELOG.CLIENTSYSTEM is
   '客户端操作系统版本';

comment on column TAONLINELOG.CLIENTBROWSER is
   '客户端浏览器版本';

comment on column TAONLINELOG.CLIENTSCREENSIZE is
   '客户端屏幕分辨率大小';

/*==============================================================*/
/* Table: TAONLINESERVICE                                       */
/*==============================================================*/
create table TAONLINESERVICE (
                                CREATEUSER           VARCHAR(36)          not null,
                                DESTORY              VARCHAR(1)           not null,
                                UPDATETIME           TIMESTAMP            not null,
                                CREATETIME           TIMESTAMP            not null,
                                EFFECTIVE            VARCHAR(1)           not null,
                                SERVICEURL           VARCHAR(1024)        not null,
                                SERVICETYPE          VARCHAR(100)         null,
                                SERVICEID            VARCHAR(36)          not null,
                                SERVICENAME          VARCHAR(255)         not null,
                                SERVICEDESC          VARCHAR(255)         null,
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
create table TAONLINESERVICEMG (
                                  SERVICEID            VARCHAR(36)          not null,
                                  SERVICENAMEID        VARCHAR(36)          not null,
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
create table TAONLINESERVICENAME (
                                    DESTORY              VARCHAR(1)           not null,
                                    UPDATETIME           TIMESTAMP                 null,
                                    CREATETIME           TIMESTAMP                 null,
                                    IDPATH               VARCHAR(1024)        not null,
                                    PARENTID             VARCHAR(36)          not null,
                                    SERVICENAMEID        VARCHAR(36)          not null,
                                    SERVICENAME          VARCHAR(255)         not null,
                                    CREATEUSER           VARCHAR(36)          not null,
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
/* Table: TAONLINESTATLOG                                       */
/*==============================================================*/
create table TAONLINESTATLOG (
                                STATDATE             VARCHAR(20)          not null,
                                POINTINTIME          VARCHAR(20)          not null,
                                LOGINNUM             NUMERIC(15,0)        null,
                                constraint PK_TAONLINESTATLOG primary key (STATDATE, POINTINTIME)
);

comment on table TAONLINESTATLOG is
   '在线统计日志表';

comment on column TAONLINESTATLOG.STATDATE is
   '统计时间（YYYY-MM-DD）';

comment on column TAONLINESTATLOG.POINTINTIME is
   '统计时点（HH:MM）';

comment on column TAONLINESTATLOG.LOGINNUM is
   '在线用户数';

/*==============================================================*/
/* Table: TAORG                                                 */
/*==============================================================*/
create table TAORG (
                      ORGID                VARCHAR(36)          not null,
                      ORGNAME              VARCHAR(300)         not null,
                      SPELL                VARCHAR(100)         not null,
                      PARENTID             VARCHAR(36)          not null,
                      IDPATH               VARCHAR(1024)        not null,
                      NAMEPATH             VARCHAR(1024)        not null,
                      CUSTOMNO             VARCHAR(30)          null,
                      ORDERNO              NUMERIC(10,0)        not null,
                      ORGLEVEL             NUMERIC(16,0)        null,
                      AREA                 VARCHAR(36)          null,
                      EFFECTIVE            VARCHAR(1)           not null,
                      ORGTYPE              VARCHAR(2)           not null,
                      CREATEUSER           VARCHAR(36)          not null,
                      CREATETIME           TIMESTAMP                 null,
                      MODIFYTIME           TIMESTAMP                 null,
                      ORGMANAGER           VARCHAR(36)          null,
                      ORGCODE              VARCHAR(18)          null,
                      CONTACTS             VARCHAR(36)          null,
                      ADDRESS              VARCHAR(450)         null,
                      TEL                  VARCHAR(20)          null,
                      DESTORY              VARCHAR(1)           null,
                      FIELD01              VARCHAR(1000)        null,
                      FIELD02              VARCHAR(1000)        null,
                      FIELD03              VARCHAR(1000)        null,
                      FIELD04              VARCHAR(1000)        null,
                      FIELD05              VARCHAR(1000)        null,
                      FIELD06              VARCHAR(1000)        null,
                      FIELD07              VARCHAR(1000)        null,
                      FIELD08              VARCHAR(1000)        null,
                      FIELD09              VARCHAR(1000)        null,
                      FIELD10              VARCHAR(1000)        null,
                      constraint PK_TAORG primary key (ORGID)
);

comment on table TAORG is
   '组织机构表';

comment on column TAORG.ORGID is
   '组织编号';

comment on column TAORG.ORGNAME is
   '组织名称';

comment on column TAORG.SPELL is
   '组织名称拼音简写（如：民政部简写MZB）';

comment on column TAORG.PARENTID is
   '父组织编号';

comment on column TAORG.IDPATH is
   '组织编号路径';

comment on column TAORG.NAMEPATH is
   '组织名称路径';

comment on column TAORG.CUSTOMNO is
   '自定义编码';

comment on column TAORG.ORDERNO is
   '排序号';

comment on column TAORG.ORGLEVEL is
   '组织层级';

comment on column TAORG.AREA is
   '行政区划编号';

comment on column TAORG.EFFECTIVE is
   '有效性';

comment on column TAORG.ORGTYPE is
   '组织类型（机构（集团、子公司）、部门、组）';

comment on column TAORG.CREATEUSER is
   '创建人';

comment on column TAORG.CREATETIME is
   '创建时间';

comment on column TAORG.MODIFYTIME is
   '最后更新时间';

comment on column TAORG.ORGMANAGER is
   '机构负责人';

comment on column TAORG.ORGCODE is
   '机构编码';

comment on column TAORG.CONTACTS is
   '机构联系人';

comment on column TAORG.ADDRESS is
   '联系人地址';

comment on column TAORG.TEL is
   '联系人电话';

comment on column TAORG.DESTORY is
   '是否销毁';

comment on column TAORG.FIELD01 is
   '备用字段1';

comment on column TAORG.FIELD02 is
   '备用字段2';

comment on column TAORG.FIELD03 is
   '备用字段3';

comment on column TAORG.FIELD04 is
   '备用字段4';

comment on column TAORG.FIELD05 is
   '备用字段5';

comment on column TAORG.FIELD06 is
   '备用字段6';

comment on column TAORG.FIELD07 is
   '备用字段7';

comment on column TAORG.FIELD08 is
   '备用字段8';

comment on column TAORG.FIELD09 is
   '备用字段9';

comment on column TAORG.FIELD10 is
   '备用字段10';

/*==============================================================*/
/* Table: TAORGCONSTRAINT                                       */
/*==============================================================*/
create table TAORGCONSTRAINT (
                                CATEGORYID           VARCHAR(2)           not null,
                                ALLOWCATEGORYID      VARCHAR(2)           not null,
                                constraint PK_TAORGCONSTRAINT primary key (CATEGORYID, ALLOWCATEGORYID)
);

comment on table TAORGCONSTRAINT is
   '暂未使用';

/*==============================================================*/
/* Table: TAORGMG                                               */
/*==============================================================*/
create table TAORGMG (
                        ROLEID               VARCHAR(36)          not null,
                        ORGID                VARCHAR(36)          not null,
                        EFFECTTIME           TIMESTAMP                 null,
                        constraint PK_TAORGMG primary key (ROLEID, ORGID)
);

comment on table TAORGMG is
   '角色组织表';

comment on column TAORGMG.ROLEID is
   '角色ID';

comment on column TAORGMG.ORGID is
   '组织ID';

comment on column TAORGMG.EFFECTTIME is
   '有效期';

/*==============================================================*/
/* Table: TAORGOPLOG                                            */
/*==============================================================*/
create table TAORGOPLOG (
                           LOGID                VARCHAR(36)          not null,
                           BATCHNO              VARCHAR(36)          not null,
                           OPTYPE               VARCHAR(2)           not null,
                           INFLUENCEBODYTYPE    VARCHAR(2)           not null,
                           INFLUENCEBODY        VARCHAR(36)          not null,
                           OPBODYTYPE           VARCHAR(2)           null,
                           OPSUBJECT            VARCHAR(36)          null,
                           CHANGECONTENT        BYTEA                null,
                           OPTIME               TIMESTAMP            not null,
                           OPUSER               VARCHAR(36)          not null,
                           ISPERMISSION         VARCHAR(1)           not null,
                           constraint PK_TAORGOPLOG primary key (LOGID)
);

comment on table TAORGOPLOG is
   '组织操作日志表';

comment on column TAORGOPLOG.LOGID is
   '日志ID';

comment on column TAORGOPLOG.BATCHNO is
   '操作批次号';

comment on column TAORGOPLOG.OPTYPE is
   '操作类型';

comment on column TAORGOPLOG.INFLUENCEBODYTYPE is
   '影响主体类型';

comment on column TAORGOPLOG.INFLUENCEBODY is
   '影响主体';

comment on column TAORGOPLOG.OPBODYTYPE is
   '操作主体类型';

comment on column TAORGOPLOG.OPSUBJECT is
   '操作主体';

comment on column TAORGOPLOG.CHANGECONTENT is
   '操作内容';

comment on column TAORGOPLOG.OPTIME is
   '操作时间';

comment on column TAORGOPLOG.OPUSER is
   '操作者';

comment on column TAORGOPLOG.ISPERMISSION is
   '操作权限';

/*==============================================================*/
/* Table: TARESOURCE                                            */
/*==============================================================*/
create table TARESOURCE (
                           RESOURCEID           VARCHAR(36)          not null,
                           PRESOURCEID          VARCHAR(36)          not null,
                           NAME                 VARCHAR(100)         not null,
                           CODE                 VARCHAR(30)          null,
                           SYSCODE              VARCHAR(20)          not null,
                           URL                  VARCHAR(100)         null,
                           ORDERNO              NUMERIC(10,0)        null,
                           IDPATH               VARCHAR(1024)        not null,
                           NAMEPATH             VARCHAR(1024)        not null,
                           RESOURCELEVEL        VARCHAR(2)           not null,
                           ICON                 VARCHAR(30)          null,
                           ICONCOLOR            VARCHAR(7)           null,
                           SECURITYPOLICY       VARCHAR(2)           not null,
                           SECURITYLEVEL        NUMERIC(4,0)         not null,
                           RESOURCETYPE         VARCHAR(2)           not null,
                           EFFECTIVE            VARCHAR(1)           not null,
                           ISDISPLAY            VARCHAR(1)           null,
                           ISFILEDSCONTROL      VARCHAR(1)           null,
                           CREATEDATE           TIMESTAMP                 not null,
                           CREATEUSER           VARCHAR(36)          not null,
                           UIAUTHORITYPOLICY    VARCHAR(2)           null,
                           FIELD01              VARCHAR(10)          null,
                           FIELD02              VARCHAR(10)          null,
                           FIELD03              VARCHAR(10)          null,
                           FIELD04              VARCHAR(10)          null,
                           FIELD05              VARCHAR(10)          null,
                           FIELD06              VARCHAR(10)          null,
                           FIELD07              VARCHAR(10)          null,
                           FIELD08              VARCHAR(10)          null,
                           FIELD09              VARCHAR(10)          null,
                           FIELD10              VARCHAR(10)          null,
                           WORKBENCH            VARCHAR(1)           null,
                           constraint PK_TARESOURCE primary key (RESOURCEID)
);

comment on table TARESOURCE is
   '功能资源表';

comment on column TARESOURCE.RESOURCEID is
   '功能资源ID';

comment on column TARESOURCE.PRESOURCEID is
   '父级功能资源ID';

comment on column TARESOURCE.NAME is
   '功能名称';

comment on column TARESOURCE.CODE is
   '自定义编码';

comment on column TARESOURCE.SYSCODE is
   '功能所属系统';

comment on column TARESOURCE.URL is
   '功能路径';

comment on column TARESOURCE.ORDERNO is
   '排序号';

comment on column TARESOURCE.IDPATH is
   '资源ID路径';

comment on column TARESOURCE.NAMEPATH is
   '功能名称路径';

comment on column TARESOURCE.RESOURCELEVEL is
   '功能资源层级';

comment on column TARESOURCE.ICON is
   '图标名称';

comment on column TARESOURCE.ICONCOLOR is
   '图标颜色';

comment on column TARESOURCE.SECURITYPOLICY is
   '安全策略';

comment on column TARESOURCE.SECURITYLEVEL is
   '安全认证级别';

comment on column TARESOURCE.RESOURCETYPE is
   '菜单类型';

comment on column TARESOURCE.EFFECTIVE is
   '有效性';

comment on column TARESOURCE.ISDISPLAY is
   '是否显示';

comment on column TARESOURCE.ISFILEDSCONTROL is
   '是否字段权限控制';

comment on column TARESOURCE.CREATEDATE is
   '创建时间';

comment on column TARESOURCE.CREATEUSER is
   '创建者';

comment on column TARESOURCE.UIAUTHORITYPOLICY is
   '界面元素授权';

comment on column TARESOURCE.FIELD01 is
   '扩展字段01';

comment on column TARESOURCE.FIELD02 is
   '扩展字段02';

comment on column TARESOURCE.FIELD03 is
   '扩展字段03';

comment on column TARESOURCE.FIELD04 is
   '扩展字段04';

comment on column TARESOURCE.FIELD05 is
   '扩展字段05';

comment on column TARESOURCE.FIELD06 is
   '扩展字段06';

comment on column TARESOURCE.FIELD07 is
   '扩展字段07';

comment on column TARESOURCE.FIELD08 is
   '扩展字段08';

comment on column TARESOURCE.FIELD09 is
   '扩展字段09';

comment on column TARESOURCE.FIELD10 is
   '扩展字段10';

comment on column TARESOURCE.WORKBENCH is
   '是否工作台模块';

/*==============================================================*/
/* Table: TARESOURCECATEGORY                                    */
/*==============================================================*/
create table TARESOURCECATEGORY (
                                   CATEGORYID           VARCHAR(36)          not null,
                                   CATEGORYNAME         VARCHAR(300)         not null,
                                   EFFECTIVE            VARCHAR(1)           not null,
                                   CODE                 VARCHAR(100)         null,
                                   CATEGORYCONTENT      VARCHAR(1024)        null,
                                   constraint PK_TARESOURCECATEGORY primary key (CATEGORYID)
);

comment on table TARESOURCECATEGORY is
   '资源类型表';

comment on column TARESOURCECATEGORY.CATEGORYID is
   '类别ID';

comment on column TARESOURCECATEGORY.CATEGORYNAME is
   '类别名称';

comment on column TARESOURCECATEGORY.EFFECTIVE is
   '有效性';

comment on column TARESOURCECATEGORY.CODE is
   '类别编码';

comment on column TARESOURCECATEGORY.CATEGORYCONTENT is
   '类别描述';

/*==============================================================*/
/* Table: TARESOURCEUI                                          */
/*==============================================================*/
create table TARESOURCEUI (
                             PAGEELEMENTID        VARCHAR(36)          not null,
                             RESOURCEID           VARCHAR(36)          not null,
                             ELENMENTNAME         VARCHAR(20)          not null,
                             ELEMENTID            VARCHAR(30)          not null,
                             CODE                 VARCHAR(20)          null,
                             AUTHORITYPOLICY      VARCHAR(2)           not null,
                             CREATEUSER           VARCHAR(36)          not null,
                             CREATEDATE           TIMESTAMP                 not null,
                             FIELD01              VARCHAR(10)          null,
                             FIELD02              VARCHAR(10)          null,
                             FIELD03              VARCHAR(10)          null,
                             EFFECTIVE            VARCHAR(1)           not null,
                             constraint PK_TARESOURCEUI primary key (PAGEELEMENTID)
);

comment on table TARESOURCEUI is
   '界面元素表';

comment on column TARESOURCEUI.PAGEELEMENTID is
   '界面元素配置ID';

comment on column TARESOURCEUI.RESOURCEID is
   '功能资源ID';

comment on column TARESOURCEUI.ELENMENTNAME is
   '界面元素名称';

comment on column TARESOURCEUI.ELEMENTID is
   '界面元素ID';

comment on column TARESOURCEUI.CODE is
   '自定义编码';

comment on column TARESOURCEUI.AUTHORITYPOLICY is
   '授权策略';

comment on column TARESOURCEUI.CREATEUSER is
   '创建者';

comment on column TARESOURCEUI.CREATEDATE is
   '创建时间';

comment on column TARESOURCEUI.FIELD01 is
   '扩展字段01';

comment on column TARESOURCEUI.FIELD02 is
   '扩展字段02';

comment on column TARESOURCEUI.FIELD03 is
   '扩展字段03';

comment on column TARESOURCEUI.EFFECTIVE is
   '有效性';

/*==============================================================*/
/* Table: TARESOURCEURL                                         */
/*==============================================================*/
create table TARESOURCEURL (
                              RESOURCEID           VARCHAR(36)          not null,
                              RESTURL              VARCHAR(256)         not null,
                              URLNAME              VARCHAR(40)          null,
                              URLID                VARCHAR(36)          not null,
                              AUTHORITYPOLICY      VARCHAR(1)           not null,
                              constraint PK_TARESOURCEURL primary key (URLID)
);

comment on table TARESOURCEURL is
   '功能资源表';

comment on column TARESOURCEURL.RESOURCEID is
   '功能资源ID';

comment on column TARESOURCEURL.RESTURL is
   '服务路径';

comment on column TARESOURCEURL.URLNAME is
   '服务名称';

comment on column TARESOURCEURL.URLID is
   '服务ID';

comment on column TARESOURCEURL.AUTHORITYPOLICY is
   '是否独立授权';

/*==============================================================*/
/* Table: TAROLE                                                */
/*==============================================================*/
create table TAROLE (
                       ROLEID               VARCHAR(36)          not null,
                       ROLENAME             VARCHAR(150)         not null,
                       ISADMIN              VARCHAR(1)           null,
                       ROLELEVEL            NUMERIC(32,0)        null,
                       ORGID                VARCHAR(36)          not null,
                       ROLETYPE             VARCHAR(2)           not null,
                       EFFECTIVE            VARCHAR(1)           not null,
                       EFFECTIVETIME        TIMESTAMP                 null,
                       CREATEUSER           VARCHAR(36)          null,
                       CREATETIME           TIMESTAMP                 null,
                       ROLEDESC             VARCHAR(150)         null,
                       ROLESIGN             VARCHAR(2)           null,
                       SUBORDINATE          VARCHAR(1)           null,
                       constraint PK_TAROLE primary key (ROLEID)
);

comment on table TAROLE is
   '角色表';

comment on column TAROLE.ROLEID is
   '角色id';

comment on column TAROLE.ROLENAME is
   '角色名称';

comment on column TAROLE.ISADMIN is
   '是否为管理员';

comment on column TAROLE.ROLELEVEL is
   '角色层级';

comment on column TAROLE.ORGID is
   '组织id';

comment on column TAROLE.ROLETYPE is
   '角色类型';

comment on column TAROLE.EFFECTIVE is
   '有效状态';

comment on column TAROLE.EFFECTIVETIME is
   '有效时间';

comment on column TAROLE.CREATEUSER is
   '创建人';

comment on column TAROLE.CREATETIME is
   '创建时间';

comment on column TAROLE.ROLEDESC is
   '角色排序号';

comment on column TAROLE.ROLESIGN is
   '角色标志';

comment on column TAROLE.SUBORDINATE is
   '下属';

/*==============================================================*/
/* Table: TAROLEAUTHORITY                                       */
/*==============================================================*/
create table TAROLEAUTHORITY (
                                ROLEID               VARCHAR(36)          not null,
                                RESOURCEID           VARCHAR(36)          not null,
                                RESOURCETYPE         VARCHAR(1)           not null,
                                USEPERMISSION        VARCHAR(1)           null,
                                REPERMISSION         VARCHAR(1)           null,
                                REAUTHRITY           VARCHAR(1)           null,
                                CREATEUSER           VARCHAR(36)          null,
                                CREATETIME           TIMESTAMP                 null,
                                EFFECTTIME           TIMESTAMP                 null,
                                constraint PK_TAROLEAUTHORITY primary key (ROLEID, RESOURCEID, RESOURCETYPE)
);

comment on table TAROLEAUTHORITY is
   '角色权限表';

comment on column TAROLEAUTHORITY.ROLEID is
   '角色id';

comment on column TAROLEAUTHORITY.RESOURCEID is
   '资源id';

comment on column TAROLEAUTHORITY.RESOURCETYPE is
   '资源类型';

comment on column TAROLEAUTHORITY.USEPERMISSION is
   '用户使用权限';

comment on column TAROLEAUTHORITY.REPERMISSION is
   '授权权限';

comment on column TAROLEAUTHORITY.REAUTHRITY is
   '再授权权限';

comment on column TAROLEAUTHORITY.CREATEUSER is
   '创建人';

comment on column TAROLEAUTHORITY.CREATETIME is
   '创建时间';

comment on column TAROLEAUTHORITY.EFFECTTIME is
   '有效时间';

/*==============================================================*/
/* Table: TAROLEURLAUTHORITY                                    */
/*==============================================================*/
create table TAROLEURLAUTHORITY (
                                   ROLEID               VARCHAR(36)          not null,
                                   URLID                VARCHAR(36)          not null,
                                   RESOURCEID           VARCHAR(36)          not null,
                                   constraint PK_TAROLEURLAUTHORITY primary key (ROLEID, URLID)
);

comment on column TAROLEURLAUTHORITY.ROLEID is
   '角色id';

comment on column TAROLEURLAUTHORITY.URLID is
   '路径id';

comment on column TAROLEURLAUTHORITY.RESOURCEID is
   '资源id';

/*==============================================================*/
/* Table: TAROLEUSER                                            */
/*==============================================================*/
create table TAROLEUSER (
                           USERID               VARCHAR(36)          not null,
                           ROLEID               VARCHAR(36)          not null,
                           DEFAULTROLE          VARCHAR(1)           null,
                           CREATEUSER           VARCHAR(36)          not null,
                           CREATETIME           TIMESTAMP                 not null,
                           constraint PK_TAROLEUSER primary key (ROLEID, USERID)
);

comment on table TAROLEUSER is
   '角色用户关系表';

comment on column TAROLEUSER.USERID is
   '人员id';

comment on column TAROLEUSER.ROLEID is
   '角色id';

comment on column TAROLEUSER.DEFAULTROLE is
   '默认角色';

comment on column TAROLEUSER.CREATEUSER is
   '创建人';

comment on column TAROLEUSER.CREATETIME is
   '创建时间';

/*==============================================================*/
/* Table: TAROLEWORKBENCH                                       */
/*==============================================================*/
create table TAROLEWORKBENCH (
                                ROLEID               VARCHAR(36)          not null,
                                WORKBENCHJSON        BYTEA             null,
                                constraint PK_TAROLEWORKBENCH primary key (ROLEID)
);

comment on table TAROLEWORKBENCH is
   '角色工作台模板';

comment on column TAROLEWORKBENCH.ROLEID is
   '角色id';

comment on column TAROLEWORKBENCH.WORKBENCHJSON is
   '工作台内容';

/*==============================================================*/
/* Table: TASERVEREXCEPTIONLOG                                  */
/*==============================================================*/
create table TASERVEREXCEPTIONLOG (
                                     LOGID                VARCHAR(50)          not null,
                                     IPADDRESS            VARCHAR(100)         null,
                                     PORT                 VARCHAR(10)          null,
                                     EXCEPTIONNAME        VARCHAR(255)         null,
                                     CONTENT              BYTEA              null,
                                     CREATETIME           TIMESTAMP                 null,
                                     SYSPATH              VARCHAR(50)          null,
                                     CLIENTIP             VARCHAR(50)          null,
                                     URL                  VARCHAR(100)         null,
                                     MENUID               VARCHAR(50)          null,
                                     MENUNAME             VARCHAR(30)          null,
                                     USERAGENT            VARCHAR(200)         null,
                                     EXCEPTIONTYPE        VARCHAR(2)           null,
                                     REQUESTPARAMETER     BYTEA              null,
                                     constraint PK_TASERVEREXCEPTIONLOG primary key (LOGID)
);

comment on table TASERVEREXCEPTIONLOG is
   '服务器异常日志表';

comment on column TASERVEREXCEPTIONLOG.LOGID is
   '日志id';

comment on column TASERVEREXCEPTIONLOG.IPADDRESS is
   'ip地址';

comment on column TASERVEREXCEPTIONLOG.PORT is
   '端口号';

comment on column TASERVEREXCEPTIONLOG.EXCEPTIONNAME is
   '异常名称';

comment on column TASERVEREXCEPTIONLOG.CONTENT is
   '异常内容';

comment on column TASERVEREXCEPTIONLOG.CREATETIME is
   '创建时间';

comment on column TASERVEREXCEPTIONLOG.SYSPATH is
   '系统上下文';

comment on column TASERVEREXCEPTIONLOG.CLIENTIP is
   '客户端ip';

comment on column TASERVEREXCEPTIONLOG.URL is
   '请求地址';

comment on column TASERVEREXCEPTIONLOG.MENUID is
   '菜单id';

comment on column TASERVEREXCEPTIONLOG.MENUNAME is
   '菜单名称';

comment on column TASERVEREXCEPTIONLOG.EXCEPTIONTYPE is
   '异常类型';

comment on column TASERVEREXCEPTIONLOG.REQUESTPARAMETER is
   '请求参数';

/*==============================================================*/
/* Table: TASITEMG                                              */
/*==============================================================*/
create table TASITEMG (
                         PARENTID             VARCHAR(36)          null,
                         IDPATH               VARCHAR(1024)        null,
                         SITEDESC             VARCHAR(255)         null,
                         UPDATETIME           TIMESTAMP                 null,
                         CREATETIME           TIMESTAMP                 null,
                         EFFECTIVE            VARCHAR(1)           not null,
                         SITETYPE             VARCHAR(100)           not null,
                         SITEDOMAIN           VARCHAR(255)         null,
                         SITENAME             VARCHAR(255)         not null,
                         SITEID               VARCHAR(36)          not null,
                         DESTORY              VARCHAR(1)           not null,
                         CREATEUSER           VARCHAR(36)          not null,
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
/* Table: TATAG                                                 */
/*==============================================================*/
create table TATAG (
                      TAGID                VARCHAR(36)          not null,
                      TAGNAME              VARCHAR(255)          null,
                      TAGGROUPID           VARCHAR(36)          null,
                      CREATETIME           TIMESTAMP                 not null,
                      EFFECTIVE            VARCHAR(1)           not null,
                      CREATEUSER           VARCHAR(36)          not null,
                      DESTORY              VARCHAR(1)           not null,
                      UPDATETIME           TIMESTAMP                 not null,
                      constraint PK_TATAG primary key (TAGID)
);

comment on table TATAG is
   '标签表';

comment on column TATAG.TAGID is
   '标签id';

comment on column TATAG.TAGNAME is
   '标签名';

comment on column TATAG.TAGGROUPID is
   '标签组id';

comment on column TATAG.CREATETIME is
   '创建时间';

comment on column TATAG.EFFECTIVE is
   '有效标识';

comment on column TATAG.CREATEUSER is
   '创建人';

comment on column TATAG.DESTORY is
   '销毁标识';

comment on column TATAG.UPDATETIME is
   '更新时间';

/*==============================================================*/
/* Table: TATAGGROUP                                            */
/*==============================================================*/
create table TATAGGROUP (
                           TAGGROUPID           VARCHAR(36)          not null,
                           TAGGROUPNAME         VARCHAR(255)          not null,
                           EFFECTIVE            VARCHAR(1)           not null,
                           CREATEUSER           VARCHAR(36)          not null,
                           CREATETIME           TIMESTAMP                 not null,
                           UPDATETIME           TIMESTAMP                 not null,
                           DESTORY              VARCHAR(1)          not null
);

comment on table TATAGGROUP is
   '标签组表';

comment on column TATAGGROUP.TAGGROUPID is
   '标签组id';

comment on column TATAGGROUP.TAGGROUPNAME is
   '标签组名称';

comment on column TATAGGROUP.EFFECTIVE is
   '有效标识';

comment on column TATAGGROUP.CREATEUSER is
   '创建人';

comment on column TATAGGROUP.CREATETIME is
   '创建时间';

comment on column TATAGGROUP.UPDATETIME is
   '更新时间';

comment on column TATAGGROUP.DESTORY is
   '销毁标识';

/*==============================================================*/
/* Table: TATAGSSTORE                                           */
/*==============================================================*/
create table TATAGSSTORE (
                            TAGID                VARCHAR(36)          not null,
                            TAGNAME              VARCHAR(100)         not null,
                            TAGCODE              VARCHAR(30)          not null,
                            TAGCATEGORY          VARCHAR(2)           not null,
                            constraint PK_TATAGSSTORE primary key (TAGID)
);

comment on table TATAGSSTORE is
   '暂未使用';

comment on column TATAGSSTORE.TAGID is
   '标签id';

comment on column TATAGSSTORE.TAGNAME is
   '标签名';

comment on column TATAGSSTORE.TAGCODE is
   '标签代码';

comment on column TATAGSSTORE.TAGCATEGORY is
   '标签类别';

/*==============================================================*/
/* Table: TAUSER                                                */
/*==============================================================*/
create table TAUSER (
                       USERID               VARCHAR(36)          not null,
                       LOGINID              VARCHAR(30)          not null,
                       PASSWORD             VARCHAR(100)         not null,
                       PASSWORDDEFAULTNUM   NUMERIC(16,0)        null,
                       PWDLASTMODIFYDATE    TIMESTAMP                 null,
                       ISLOCK               VARCHAR(1)           null,
                       ORDERNO              NUMERIC(10,0)        null,
                       NAME                 VARCHAR(450)         not null,
                       SEX                  VARCHAR(2)           null,
                       IDCARDTYPE           VARCHAR(2)           null,
                       IDCARDNO             VARCHAR(30)          null,
                       MOBILE               VARCHAR(20)          null,
                       CREATEUSER           VARCHAR(36)          null,
                       CREATETIME           TIMESTAMP                 null,
                       MODIFYTIME           TIMESTAMP                 null,
                       DESTORY              VARCHAR(1)           not null,
                       ACCOUNTSOURCE        VARCHAR(2)           null,
                       EFFECTIVE            VARCHAR(1)           not null,
                       EFFECTIVETIME        TIMESTAMP                 null,
                       JOBNUMBER            VARCHAR(15)          null,
                       STATE                VARCHAR(10)          null,
                       BIRTHPLACE           VARCHAR(12)          null,
                       ADDRESS              VARCHAR(450)         null,
                       ZIPCODE              VARCHAR(10)          null,
                       EMAIL                VARCHAR(100)         null,
                       PHONE                VARCHAR(20)          null,
                       EDUCATION            VARCHAR(30)          null,
                       GRADUATESCHOOL       VARCHAR(150)         null,
                       WORKPLACE            VARCHAR(300)         null,
                       FIELD01              VARCHAR(1000)        null,
                       FIELD02              VARCHAR(1000)        null,
                       FIELD03              VARCHAR(1000)        null,
                       FIELD04              VARCHAR(1000)        null,
                       FIELD05              VARCHAR(1000)        null,
                       FIELD06              VARCHAR(1000)        null,
                       FIELD07              VARCHAR(1000)        null,
                       FIELD08              VARCHAR(1000)        null,
                       FIELD09              VARCHAR(1000)        null,
                       FIELD10              VARCHAR(1000)        null,
                       constraint PK_TAUSER primary key (USERID)
);

comment on table TAUSER is
   '用户表';

comment on column TAUSER.USERID is
   '用户编号';

comment on column TAUSER.LOGINID is
   '登录账号';

comment on column TAUSER.PASSWORD is
   '登录密码';

comment on column TAUSER.PASSWORDDEFAULTNUM is
   '密码错误次数';

comment on column TAUSER.PWDLASTMODIFYDATE is
   '密码最后修改时间';

comment on column TAUSER.ISLOCK is
   '是否锁定';

comment on column TAUSER.ORDERNO is
   '排序号';

comment on column TAUSER.NAME is
   '姓名';

comment on column TAUSER.SEX is
   '性别';

comment on column TAUSER.IDCARDTYPE is
   '证件类型';

comment on column TAUSER.IDCARDNO is
   '证件号码';

comment on column TAUSER.MOBILE is
   '手机号码';

comment on column TAUSER.CREATEUSER is
   '创建人';

comment on column TAUSER.CREATETIME is
   '创建时间';

comment on column TAUSER.MODIFYTIME is
   '修改时间';

comment on column TAUSER.DESTORY is
   '销毁标识';

comment on column TAUSER.ACCOUNTSOURCE is
   '账户注册渠道';

comment on column TAUSER.EFFECTIVE is
   '有效标识';

comment on column TAUSER.EFFECTIVETIME is
   '有效时间';

comment on column TAUSER.JOBNUMBER is
   '工号';

comment on column TAUSER.STATE is
   '国家地区';

comment on column TAUSER.BIRTHPLACE is
   '户籍地（行政区划代码）';

comment on column TAUSER.ADDRESS is
   '联系地址';

comment on column TAUSER.ZIPCODE is
   '邮政编码';

comment on column TAUSER.EMAIL is
   '邮箱地址';

comment on column TAUSER.PHONE is
   '联系电话';

comment on column TAUSER.EDUCATION is
   '学历';

comment on column TAUSER.GRADUATESCHOOL is
   '毕业学校';

comment on column TAUSER.WORKPLACE is
   '工作单位';

comment on column TAUSER.FIELD01 is
   '扩展字段01';

comment on column TAUSER.FIELD02 is
   '扩展字段02';

comment on column TAUSER.FIELD03 is
   '扩展字段03';

comment on column TAUSER.FIELD04 is
   '扩展字段04';

comment on column TAUSER.FIELD05 is
   '扩展字段05';

comment on column TAUSER.FIELD06 is
   '扩展字段06';

comment on column TAUSER.FIELD07 is
   '扩展字段07';

comment on column TAUSER.FIELD08 is
   '扩展字段08';

comment on column TAUSER.FIELD09 is
   '扩展字段09';

comment on column TAUSER.FIELD10 is
   '扩展字段10';

/*==============================================================*/
/* Table: TAUSERORG                                             */
/*==============================================================*/
create table TAUSERORG (
                          USERID               VARCHAR(32)          not null,
                          ORGID                VARCHAR(32)          not null,
                          ISDIRECT             VARCHAR(1)           not null,
                          constraint PK_TAUSERORG primary key (USERID, ORGID)
);

comment on table TAUSERORG is
   '用户组织关联表';

comment on column TAUSERORG.USERID is
   '用户id';

comment on column TAUSERORG.ORGID is
   '组织id';

comment on column TAUSERORG.ISDIRECT is
   '是否直属';

/*==============================================================*/
/* Table: TAUSERWORKBENCH                                       */
/*==============================================================*/
create table TAUSERWORKBENCH (
                                USERID               VARCHAR(36)          not null,
                                WORKBENCHJSON        BYTEA              null,
                                constraint PK_TAUSERWORKBENCH primary key (USERID)
);

comment on table TAUSERWORKBENCH is
   '用户工作台模板';

comment on column TAUSERWORKBENCH.USERID is
   '用户id';

comment on column TAUSERWORKBENCH.WORKBENCHJSON is
   '工作台内容';

/*==============================================================*/
/* Table: TAZOOKEEPERADDRESSMG                                       */
/*==============================================================*/
create table TAZOOKEEPERADDRESSMG (
                                ZKID               VARCHAR(36)          not null,
                                ZKADDRESS          VARCHAR(200)         null,
                                APPNAME            VARCHAR(60)          null,
                                APPNAMESPACE       VARCHAR(30)          null,
                                CONNECTFLAG        VARCHAR(1)           null,
                                constraint PK_TAZOOKEEPERADDRESSMG primary key (ZKID)
);

comment on table TAZOOKEEPERADDRESSMG is
   '注册中心管理';

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
/* Table: TAJOBDATASOURCEMG                                       */
/*==============================================================*/
create table TAJOBDATASOURCEMG (
                                DATASOURCEID       VARCHAR(36)          not null,
                                DATASOURCENAME     VARCHAR(60)          null,
                                DRIVER             VARCHAR(200)         null,
                                URL                VARCHAR(200)         null,
                                USERNAME           VARCHAR(450)          null,
                                PASSWORD           VARCHAR(100)          null,
                                constraint PK_TAJOBDATASOURCEMG primary key (DATASOURCEID)
);

comment on table TAJOBDATASOURCEMG is
   '作业历史数据源管理';

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
/* Table: FREEBUSYJOBMG                                       */
/*==============================================================*/
create table FREEBUSYJOBMG (
                                ID               VARCHAR(36)          not null,
                                JOBNAME          VARCHAR(60)          null,
                                FREEMOMENT       VARCHAR(20)          null,
                                BUSYMOMENT       VARCHAR(20)          null,
                                SERVERIPS        VARCHAR(200)         null,
                                ZKID             VARCHAR(36)          null,
                                constraint PK_FREEBUSYJOBMG primary key (ID)
);

comment on table FREEBUSYJOBMG is
   '闲忙任务管理';

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
create table TATEMPLATECATALOG (
   UPDATETIME           TIMESTAMP                 null,
   CREATETIME           TIMESTAMP                 null,
   ID                   VARCHAR(36)          not null,
   IDPATH               VARCHAR(1024)        null,
   PARENTID             VARCHAR(36)          not null,
   NAME                 VARCHAR(100)         not null,
   NAMEPATH             VARCHAR(1024)        not null,
   CREATEUSER           VARCHAR(36)          null,
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
create table TATEMPLATE (
   TEMPLATEID           VARCHAR(36)          not null,
   CATALOGID            VARCHAR(36)          not null,
   TEMPLATENAME         VARCHAR(100)         not null,
   TEMPLATECODE         VARCHAR(36)          null,
   TEMPLATETYPE         VARCHAR(10)           not null,
   TEMPLATESOURCE       VARCHAR(1)           not null,
   TEMPLATECONTENT      BYTEA                 null,
   EFFECTIVE            VARCHAR(1)           null,
   CREATEUSER           VARCHAR(36)          null,
   UPDATETIME           TIMESTAMP                 null,
   CREATETIME           TIMESTAMP                 null,
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
create table TAAPPMG (
   APPID                VARCHAR(36)          not null,
   APPNAME              VARCHAR(100)         not null,
   APPTYPE              VARCHAR(1)           null,
   APPEFFECTIVE         VARCHAR(1)           null,
   CREATEUSER           VARCHAR(36)          null,
   UPDATETIME           TIMESTAMP                 null,
   CREATETIME           TIMESTAMP                 null,
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
create table TAAPPPAGE (
   APPID                VARCHAR(36)          not null,
   PAGEID               VARCHAR(36)          not null,
   PAGEPID              VARCHAR(36)          not null,
   PAGENAME             VARCHAR(100)         not null,
   PAGEINDEX            VARCHAR(10)          not null,
   PAGECODE             BYTEA                 null,
   PAGEURL              VARCHAR(200)         not null,
   PAGETYPE             VARCHAR(2)           not null,
   TEMPLATEID           VARCHAR(36)          null,
   constraint PK_TAAPPPAGE primary key (PAGEID)
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
create table TASYSCONFIG (
   ID                      VARCHAR(36)          not null,
   FIELDNAME               VARCHAR(100),
   DEFAULTVALUE            VARCHAR(200),
   DATATYPE                VARCHAR(1),
   FUNCTIONTYPE            VARCHAR(1),
   COLLECTIONNAME          VARCHAR(100),
   COLLECTIONDATAS         VARCHAR(2000),
   FLAG                    NUMERIC(10,0),
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

/*==============================================================*/
/* 创建视图                                  */
/*==============================================================*/
create view v_dict (name,type,label,value,parentvalue,sort,authority,cssclass,cssstyle,remarks,createdate,createuser,version,status,field01,field02,field03,field04,field05,system,newtype) as select x0.name ,x0.type ,x0.label ,x0.value ,x0.parentvalue ,x0.sort ,x0.authority ,x0.cssclass ,x0.cssstyle ,x0.remarks ,x0.createdate ,x0.createuser ,x0.version ,x0.status ,x0.field01 ,x0.field02 ,x0.field03 ,x0.field04 ,x0.field05 ,x0.system ,x0.newtype from tadict x0 ;


--  初始化人员表
INSERT INTO tauser (userid,loginid,password,passworddefaultnum,pwdlastmodifydate,islock,orderno,name,sex,idcardtype,idcardno,mobile,createuser,createtime,modifytime,destory,accountsource,effective,effectivetime,jobnumber,state,birthplace,address,zipcode,email,phone,education,graduateschool,workplace,field01,field02,field03,field04,field05,field06,field07,field08,field09,field10) VALUES (
'1','developer','$2a$10$ZI3ewI1LvnS8bvTDiZk5X.w9/u.LXy8vPTwQFl8SlDtMTYBQHnIEm',0,now(),'0',1,'超级管理员','1','0',null,'18011567700','1',now(),NULL,'0',NULL,'1',NULL,NULL,NULL,NULL,'成都市/锦江区/久远银海',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

--  初始化组织表
INSERT INTO taorg
(orgid, orgname, spell, parentid, idpath, namepath, customno, orderno, orglevel, area, effective, orgtype, createuser, createtime, modifytime, orgmanager, orgcode, contacts, address, tel, destory, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10)
VALUES('fd811ab9c30440088df3e29ea784460a', '顶级组织', 'MZB', '0', 'fd811ab9c30440088df3e29ea784460a', '顶级组织', '', 0, 0, '', '1', '01', '1', NULL, now() , '', '', '', '', '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--  初始化码表
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('角色类型', 'ROLETYPE', '管理角色', '04', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('角色标识', 'ROLESIGN', '稽核角色', '2', null, '2', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('角色标识', 'ROLESIGN', '业务角色', '1', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('元素在界面中的授权策略', 'ELEMENTAUTHORITYPOLICY', '不显示', '0', null, '31', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('元素在界面中的授权策略', 'ELEMENTAUTHORITYPOLICY', '数据可见不可编辑', '1', '', '21', '0', '', '', null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('元素在界面中的授权策略', 'ELEMENTAUTHORITYPOLICY', '数据可见可编辑', '2', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('账户类型', 'ACCOUNTTYPE', '组织账户', '2', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('账户类型', 'ACCOUNTTYPE', '个人账户', '1', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('界面元素授权策略', 'UIAUTHORITYPOLICY', '继承当前菜单权限', '0', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('界面元素授权策略', 'UIAUTHORITYPOLICY', '独立授权', '1', null, '10', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全策略', 'SECURITYPOLICY', '无需登录可访问', '0', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全策略', 'SECURITYPOLICY', '登陆均可访问', '1', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全策略', 'SECURITYPOLICY', '授权可访问', '2', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('有效标识', 'EFFECTIVE', '有效', '1', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('有效标识', 'EFFECTIVE', '无效', '0', null, '0', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('证件类型', 'IDCARDTYPE', '居民身份证(户口簿)', '0', '', '10', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('证件类型', 'IDCARDTYPE', '护照', '1', '', '20', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('证件类型', 'IDCARDTYPE', '军官证', '2', '', '30', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('证件类型', 'IDCARDTYPE', '其他', '3', '', '40', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('权限认证方式', 'AUTHMODE', '用户名密码', '01', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('权限认证方式', 'AUTHMODE', '指纹识别', '02', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('权限认证方式', 'AUTHMODE', '人脸识别', '03', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('认证方式类型', 'AUTHMODE', 'Key盘', '04', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '新增组织', '01', null, '10', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '编辑组织', '02', null, '20', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '禁用组织', '03', null, '30', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '启用组织', '04', null, '40', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除组织', '05', null, '50', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '新增用户', '06', null, '60', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '编辑用户', '07', null, '70', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '禁用用户', '08', null, '80', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '启用用户', '09', null, '90', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '解锁账号', '10', null, '100', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更新用户直属组织', '12', null, '110', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '重置密码', '13', null, '120', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除用户', '14', null, '130', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '新增角色', '15', null, '140', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '新增用户和角色关联关系', '16', null, '150', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '编辑角色', '17', null, '160', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除角色', '18', null, '170', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '角色禁用', '19', null, '180', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '启用角色', '20', null, '190', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '新增功能资源', '21', null, '200', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '编辑功能资源', '22', null, '210', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除功能资源', '23', null, '220', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '禁用功能资源', '24', null, '230', '0', null, null, null, now(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '启用功能资源', '25', null, '240', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改组织权限（授予）', '26', null, '250', '0', null, null, null, now(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改组织权限（回收）', '27', null, '260', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改使用权限（授权）', '28', null, '270', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改使用权限（回收）', '29', null, '280', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改授权权限（授权）', '30', null, '290', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改授权权限（回收）', '31', null, '300', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改再授权权限（授权）', '32', null, '310', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改再授权权限（回收）', '33', null, '320', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除角色人员关联关系', '34', null, '330', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '角色复制', '35', null, '340', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '权限复制', '36', null, '350', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '添加界面元素', '37', null, '360', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除界面元素', '38', null, '370', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '根据功能资源删除界面元素', '39', null, '380', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '编辑界面元素', '40', null, '390', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '根据功能资源编辑界面元素', '41', null, '400', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '组织机构', '01', null, '10', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '人员用户', '02', null, '20', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '角色', '03', null, '30', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '功能资源', '04', null, '40', '0', null, null, null, now(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '界面元素', '05', null, '50', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '组织权限', '06', null, '60', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '权限信息', '07', null, '70', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '自定义资源', '08', null, '80', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'OFF', '0', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'ERROR', '1', null, '1', '0', null, null, null, now(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'WARN', '2', null, '1', '0', null, null, null, now(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'INFO', '3', null, '1', '0', null, null, null, now(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'DEBUG', '4', null, '1', '0', null, null, null, now(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'TRACE', '5', null, '1', '0', null, null, null, now(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'ALL', '6', null, '1', '0', null, null, null, now(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全认证级别', 'SECURIYTLEVEL', '无限制', '0', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全认证级别', 'SECURIYTLEVEL', '一级', '1', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全认证级别', 'SECURIYTLEVEL', '二级', '2', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全认证级别', 'SECURIYTLEVEL', '三级', '3', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全认证级别', 'SECURIYTLEVEL', '四级', '4', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('字典数据类型', 'DICTDATATYPE', '未同步', '0', '', '0', '0', '', '', null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('字典数据类型', 'DICTDATATYPE', '已同步', '2', '', '2', '0', '', '', null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('字典数据类型', 'DICTDATATYPE', '脏数据', '1', '', '1', '0', '', '', null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('是否', 'YESORNO', '是', '1', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('是否', 'YESORNO', '否', '0', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('性别', 'SEX', '无', '0', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('性别', 'SEX', '男', '1', null, '11', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('性别', 'SEX', '女', '2', null, '21', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('组织类型', 'ORGTYPE', '机构', '01', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('组织类型', 'ORGTYPE', '部门', '02', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('组织类型', 'ORGTYPE', '组', '03', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('角色类型', 'ROLETYPE', '公有角色', '01', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('角色类型', 'ROLETYPE', '代理角色', '03', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('有无', 'HAVAORNOT', '无', '0', null, '10', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('资源类型', 'RESOURCETYPE', '通用菜单', '0', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('资源类型', 'RESOURCETYPE', '管理菜单', '1', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('资源类型', 'RESOURCETYPE', '经办菜单', '2', null, '1', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('有无', 'HAVAORNOT', '有', '1', null, '20', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('状态', 'STATE', '启用', '1', null, '10', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('状态', 'STATE', '禁用', '0', null, '20', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点有效标识', 'SITEEFFECTIVE', '有效', '1', null, '10', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点有效标识', 'SITEEFFECTIVE', '无效', '0', null, '20', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点类型', 'SITETYPE', '网厅', '1', null, '20', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点类型', 'SITETYPE', '业务系统', '2', null, '30', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点类型', 'SITETYPE', '公众号', '3', null, '40', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('静态资源类型', 'FILERESOURCETYPE', '目录', '1', null, '10', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('静态资源类型', 'FILERESOURCETYPE', '未知类型', '3', null, '30', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('静态资源类型', 'FILERESOURCETYPE', '资源文件', '2', null, '20', '0', null, null, null, now(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点类型', 'SITETYPE', 'APP', '0', null, '10', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('行政区划级别', 'AREALEVEL', '市', '1', null, '20', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('行政区划级别', 'AREALEVEL', '区/县', '2', null, '30', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('行政区划级别', 'AREALEVEL', '其他', '4', null, '50', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('行政区划级别', 'AREALEVEL', '省/自治区', '0', null, '10', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('行政区划级别', 'AREALEVEL', '街道/镇', '3', null, '40', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('成功标识', 'ISSUCCESS', '失败', '0', null, '10', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('成功标识', 'ISSUCCESS', '成功', '1', null, '20', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('模版来源', 'TEMPLATESOURCE', '外部上传', '1', null, '10', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('模版来源', 'TEMPLATESOURCE', '内部绘制', '2', null, '20', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('模版类型', 'TEMPLATETYPE', 'code模版', '1', null, '10', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('模版类型', 'TEMPLATETYPE', '表单模版', '2', null, '20', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('模版类型', 'TEMPLATETYPE', '在线开发', '3', null, '30', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('可用标识', 'AVAILABLE', '不可用', '0', null, '20', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('可用标识', 'AVAILABLE', '可用', '1', null, '10', '0', null, null, null, now(), '1', '0', '1', null, null, null, null, null, '1', '0');

--  初始化功能菜单
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('4b2eee0d7ded4e8094d4acf439fd3a1c', '48afedddc8f04c668b3c1572c30a7745', '行政区划管理', '', 'sysmg', 'orguser.html#/areaManagement', 30, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/48afedddc8f04c668b3c1572c30a7745/4b2eee0d7ded4e8094d4acf439fd3a1c', '银海软件/管理系统/组织人员管理/行政区划管理', '3', '', '', '2', 0, '1', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('8aa86ed4c7f84183935a262db4a605d3', '78ad02fdb879406ebc5e7a4faf8f5905', '管理员权限管理', '', 'sysmg', 'authority.html#/adminAuthority', 10, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/78ad02fdb879406ebc5e7a4faf8f5905/8aa86ed4c7f84183935a262db4a605d3', '银海软件/管理系统/资源权限管理/管理员权限管理', '3', '', '', '2', 0, '1', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('5e67c7acef914c349d8aff076921f6b5', '78ad02fdb879406ebc5e7a4faf8f5905', '相似权限管理', '', 'sysmg', 'authority.html#/similarAuthority', 30, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/78ad02fdb879406ebc5e7a4faf8f5905/5e67c7acef914c349d8aff076921f6b5', '银海软件/管理系统/资源权限管理/相似权限管理', '3', '', '', '2', 0, '0', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('72888507aba5484a8942e8dd0e6b6f7f', 'fb8637c2e52e4b05bd2c07d742141ee7', '作业管理', null, 'sysmg', 'sysmg.html#/jobManager', 0, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/fb8637c2e52e4b05bd2c07d742141ee7/72888507aba5484a8942e8dd0e6b6f7f', '银海软件/管理系统/系统管理/分布式任务管理/作业管理', '4', '', '', '2', 0, '1', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('59a7fb9c459a4dd48d468f2add1d32b2', '1d4e283ad5584e02811f6b188d3592bc', '接入系统管理', '', 'sysmg', 'sysmg.html#/accessSystem', 70, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/59a7fb9c459a4dd48d468f2add1d32b2', '银海软件/管理系统/系统管理/接入系统管理', '3', '', '', '2', 0, '1', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('0415d44401b24605a21b589b6aaa349e', '40337bdecb19484ebeb39d6c21aaca26', '管理系统', '', 'sysmg', '', 51, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e', '银海软件/管理系统', '1', '', '', '2', 0, '0', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('1d4e283ad5584e02811f6b188d3592bc', '0415d44401b24605a21b589b6aaa349e', '系统管理', '', 'sysmg', '', 41, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc', '银海软件/管理系统/系统管理', '2', '', '', '2', 0, '1', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('c578d9f8626d48f2971d7a18ac5281c5', 'fb8637c2e52e4b05bd2c07d742141ee7', '作业历史', null, 'sysmg', 'sysmg.html#/jobHistory', 10, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/fb8637c2e52e4b05bd2c07d742141ee7/c578d9f8626d48f2971d7a18ac5281c5', '银海软件/管理系统/系统管理/分布式任务管理/作业历史', '4', '', '', '2', 0, '1', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('78ad02fdb879406ebc5e7a4faf8f5905', '0415d44401b24605a21b589b6aaa349e', '资源权限管理', '', 'sysmg', '', 30, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/78ad02fdb879406ebc5e7a4faf8f5905', '银海软件/管理系统/资源权限管理', '2', '', '', '2', 0, '0', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('7c2862a57e34459484bd701c19a8de27', '1d4e283ad5584e02811f6b188d3592bc', '系统异常日志', '', 'sysmg', 'logmg.html#/systemExceptionLog', 20, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/7c2862a57e34459484bd701c19a8de27', '银海软件/管理系统/系统管理/系统异常日志', '3', '', '', '2', 0, '1', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('40337bdecb19484ebeb39d6c21aaca26', '0', '银海软件', '', 'sysmg', '', 0, '40337bdecb19484ebeb39d6c21aaca26', '银海软件', '0', '', '', '1', 1, '0', '1', '', '', now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('7c1dabd160974d8f90858c187cefa128', '1d4e283ad5584e02811f6b188d3592bc', '日志动态配置', '', 'sysmg', 'logmg.html#/logConfig', 0, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/7c1dabd160974d8f90858c187cefa128', '银海软件/管理系统/系统管理/日志动态配置', '3', '', '', '2', 0, '1', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('bd9d0bba145c458e841aa9da0aeeb1d8', '7459c1b525934151a1d309a304933644', '用户可管理字段配置', '', 'sysmg', 'sysmg.html#/userInfoManagement', 40, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/7459c1b525934151a1d309a304933644/bd9d0bba145c458e841aa9da0aeeb1d8', '银海软件/管理系统/资源管理/用户可管理字段配置', '3', '', '', '2', 0, '1', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('daceeff8a97b46cb9573b93ba3a5a792', '48afedddc8f04c668b3c1572c30a7745', '人员管理', '', 'sysmg', 'orguser.html#/userManagement', 10, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/48afedddc8f04c668b3c1572c30a7745/daceeff8a97b46cb9573b93ba3a5a792', '银海软件/管理系统/组织人员管理/人员管理', '3', '', '', '2', 0, '1', '1', null, null, now(), '1', '1', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('7459c1b525934151a1d309a304933644', '0415d44401b24605a21b589b6aaa349e', '资源管理', '', 'sysmg', '', 40, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/7459c1b525934151a1d309a304933644', '银海软件/管理系统/资源管理', '2', '', '', '2', 0, '0', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('95bb9b749bf54e4692b0b1f14fd1b5ab', '78ad02fdb879406ebc5e7a4faf8f5905', '角色权限管理', '', 'sysmg', 'authority.html#/roleAuthorityManagement', 0, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/78ad02fdb879406ebc5e7a4faf8f5905/95bb9b749bf54e4692b0b1f14fd1b5ab', '银海软件/管理系统/资源权限管理/角色权限管理', '3', '', '', '2', 0, '1', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('84e388e319d44de585b94b039eec0092', '1d4e283ad5584e02811f6b188d3592bc', '工作台模块管理', '', 'sysmg', 'logmg.html#/defaultTemplate', 60, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/84e388e319d44de585b94b039eec0092', '银海软件/管理系统/系统管理/工作台模块管理', '3', '', '', '2', 0, '1', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('3dbde33722154503a7d22ac60f6a0e4e', '48afedddc8f04c668b3c1572c30a7745', '自定义组织管理', '', 'sysmg', 'orguser.html#/customOrgManagement', 20, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/48afedddc8f04c668b3c1572c30a7745/3dbde33722154503a7d22ac60f6a0e4e', '银海软件/管理系统/组织人员管理/自定义组织管理', '3', '', '', '2', 0, '1', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('770b2f1e77eb4d9092dc89743b5792c9', '1d4e283ad5584e02811f6b188d3592bc', '登录日志统计', '', 'sysmg', 'logmg.html#/loginLogAnalysis', 10, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/770b2f1e77eb4d9092dc89743b5792c9', '银海软件/管理系统/系统管理/登录日志统计', '3', '', '', '2', 0, '1', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('fb8637c2e52e4b05bd2c07d742141ee7', '1d4e283ad5584e02811f6b188d3592bc', '分布式任务管理', null, 'sysmg', null, 50, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/fb8637c2e52e4b05bd2c07d742141ee7', '银海软件/管理系统/系统管理/分布式任务管理', '3', '', '', '2', 0, '1', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('c88413826abd4a5b88612a6442e6db07', '1d4e283ad5584e02811f6b188d3592bc', '操作日志', null, 'sysmg', 'logmg.html#/operationLog', 40, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/c88413826abd4a5b88612a6442e6db07', '银海软件/管理系统/系统管理/操作日志', '3', null, null, '2', 0, '1', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('1e706f26bc144c1da12022359c238053', '48afedddc8f04c668b3c1572c30a7745', '组织机构管理', '', 'sysmg', 'orguser.html#/orgManagement', 0, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/48afedddc8f04c668b3c1572c30a7745/1e706f26bc144c1da12022359c238053', '银海软件/管理系统/组织人员管理/组织机构管理', '3', '', '', '2', 1, '0', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('3df588fc565d4287b3cefcd00a39cd91', '7459c1b525934151a1d309a304933644', '标签管理', '', 'sysmg', 'sysmg.html#/tagManagement', 30, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/7459c1b525934151a1d309a304933644/3df588fc565d4287b3cefcd00a39cd91', '银海软件/管理系统/资源管理/标签管理', '3', '', '', '2', 0, '1', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('ffa74f43e853441dac0ee90c787cb2e6', '1d4e283ad5584e02811f6b188d3592bc', '字典管理', '', 'sysmg', 'sysmg.html#/dictionaryManager', 30, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/ffa74f43e853441dac0ee90c787cb2e6', '银海软件/管理系统/系统管理/字典管理', '3', '', '', '2', 0, '1', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('877e407281dd48acb05a77fcb922bc73', '78ad02fdb879406ebc5e7a4faf8f5905', '权限代理', '', 'sysmg', 'authority.html#/authorityAgent', 20, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/78ad02fdb879406ebc5e7a4faf8f5905/877e407281dd48acb05a77fcb922bc73', '银海软件/管理系统/资源权限管理/权限代理', '3', '', '', '2', 0, '0', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('48afedddc8f04c668b3c1572c30a7745', '0415d44401b24605a21b589b6aaa349e', '组织人员管理', '', 'sysmg', '', 10, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/48afedddc8f04c668b3c1572c30a7745', '银海软件/管理系统/组织人员管理', '2', '', '', '2', 0, '0', '1', null, null, now(), '1', '1', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('c2745b7cae7846acb9bcf8d0f4e836e8', '7459c1b525934151a1d309a304933644', '自定义资源管理', '', 'sysmg', 'sysmg.html#/customResource', 20, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/7459c1b525934151a1d309a304933644/c2745b7cae7846acb9bcf8d0f4e836e8', '银海软件/管理系统/资源管理/自定义资源管理', '3', '', '', '2', 0, '1', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('ec56a0a43b09429482632cb61f7c6908', '7459c1b525934151a1d309a304933644', '功能资源管理', '', 'sysmg', 'sysmg.html#/resourceManagement', 0, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/7459c1b525934151a1d309a304933644/ec56a0a43b09429482632cb61f7c6908', '银海软件/管理系统/资源管理/功能资源管理', '3', '', '', '2', 0, '1', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('a0609e4fd75049dbb3a6af7ab8de08a3', '40337bdecb19484ebeb39d6c21aaca26', '网上服务集成', '', 'sysmg', '', 61, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3', '银海软件/网上服务集成', '1', '', '', '2', 0, '0', '1', null, null, '2019-02-26 21:00:30.00000', '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('df146a87ecec4297b17329c92f422b90', 'a0609e4fd75049dbb3a6af7ab8de08a3', '静态资源管理', '', 'sysmg', 'servicemg.html#/staticResourceMg', 40, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3/df146a87ecec4297b17329c92f422b90', '银海软件/网上服务集成/静态资源管理', '2', '', '', '2', 0, '0', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('950ceb076472425eba8dd981e0361497', 'a0609e4fd75049dbb3a6af7ab8de08a3', '服务管理', '', 'sysmg', 'servicemg.html#/serviceManagement', 10, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3/950ceb076472425eba8dd981e0361497', '银海软件/网上服务集成/服务管理', '2', '', '', '2', 0, '0', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('f126b34ea04943249c98af7801995490', 'a0609e4fd75049dbb3a6af7ab8de08a3', '站点管理', '', 'sysmg', 'servicemg.html#/siteManagement', 0, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3/f126b34ea04943249c98af7801995490', '银海软件/网上服务集成/站点管理', '2', '', '', '2', 0, '0', '0', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('d5778206f27f4d889c79caa2162c9e55', 'a0609e4fd75049dbb3a6af7ab8de08a3', '应用管理', '', 'sysmg', 'servicemg.html#/appManagement', 61, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3/d5778206f27f4d889c79caa2162c9e55', '银海软件/网上服务集成/应用管理', '2', '', '', '2', 0, '0', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('7d02437d246642ff82281d11df80f735', 'a0609e4fd75049dbb3a6af7ab8de08a3', '页面模板管理', '', 'sysmg', 'servicemg.html#/templateMg', 60, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3/7d02437d246642ff82281d11df80f735', '银海软件/网上服务集成/页面模板管理', '2', '', '', '2', 0, '0', '1', null, null, now(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');


--  初始化角色
INSERT INTO tarole (roleid,rolename,isadmin,rolelevel,orgid,roletype,effective,effectivetime,createuser,createtime,roledesc,rolesign,subordinate) VALUES (
'1','超级管理员',NULL,NULL,'fd811ab9c30440088df3e29ea784460a','04','1',NULL,'1',now(),'超级管理员角色',NULL,NULL);

--  初始化用户组织表
INSERT INTO tauserorg (userid,orgid,isdirect) VALUES (
'1','fd811ab9c30440088df3e29ea784460a','1');

--  初始化接入系统
INSERT INTO taaccesssystem
(id,syscode,sysname,spell,protocol,domain,port,contextpath,portalsystem,menuservice,provider,effective,regtime,modifytime,backgroundaddress) VALUES (
'e55b9b7046434d66bc11b94d553fada2','sysmg','管理系统','GLXT','http','localhost','8081','sysmg','1','111','ss','1',now(),now(),'192.168.0.1:8083');


--  初始化标签
INSERT INTO tataggroup (taggroupid,taggroupname,effective,createuser,createtime,updatetime,destory) VALUES (
'001','用户','1','developer',now(),now(),'0');
INSERT INTO tataggroup (taggroupid,taggroupname,effective,createuser,createtime,updatetime,destory) VALUES (
'002','组织','1','developer',now(),now(),'0');

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
VALUES ('0', now(), now(), '5e3a06ed889b4b40ba88c5ee2ba192f3', '0', '5e3a06ed889b4b40ba88c5ee2ba192f3', '久远银海', '1');

--  初始化自定义组织类别名称
INSERT INTO tacustomorgtypename (customorgtypenameid, customorgtypename, effective, createuser, createtime, updatetime, destory, customorgtypenamecode, customorgtypenamedesc)
VALUES ('baa315851d3c4a90a47889672404505d', '社保组织', '1', '1', now(), now(), '0', 'SBZZ', '这是社保组织描述');