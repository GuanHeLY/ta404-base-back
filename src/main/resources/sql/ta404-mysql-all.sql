DROP VIEW
IF
	EXISTS V_DICT;


drop table if exists TAACCESSLOG;

drop table if exists TAACCESSSYSTEM;

drop table if exists TAAREA;

drop table if exists TAAVATAR;

drop table if exists TACONFIG;

drop table if exists TACUSTOMORG;

drop table if exists TACUSTOMORGTYPENAME;

drop table if exists TACUSTOMORGUSER;

drop table if exists TACUSTOMRESOURCE;

drop table if exists TADICT;

drop table if exists TAEXTENDSETTING;

drop table if exists TALOGINHISTORYLOG;

drop table if exists TALOGINSTATLOG;

drop table if exists TAOBJECTTAGS;

drop table if exists TAONLINELOG;

drop table if exists TAONLINESERVICE;

drop table if exists TAONLINESERVICEMG;

drop table if exists TAONLINESERVICENAME;

drop table if exists TAONLINESTATLOG;

drop table if exists TAORG;

drop table if exists TAORGCONSTRAINT;

drop table if exists TAORGMG;

drop table if exists TAORGOPLOG;

drop table if exists TARESOURCE;

drop table if exists TARESOURCECATEGORY;

drop table if exists TARESOURCEUI;

drop table if exists TARESOURCEURL;

drop table if exists TAROLE;

drop table if exists TAROLEAUTHORITY;

drop table if exists TAROLEURLAUTHORITY;

drop table if exists TAROLEUSER;

drop table if exists TAROLEWORKBENCH;

drop table if exists TASERVEREXCEPTIONLOG;

drop table if exists TASITEMG;

drop table if exists TATAG;

drop table if exists TATAGGROUP;

drop table if exists TATAGSSTORE;

drop table if exists TAUSER;

drop table if exists TAUSERORG;

drop table if exists TAUSERWORKBENCH;

drop table if exists TAZOOKEEPERADDRESSMG;

drop table if exists TAJOBDATASOURCEMG;

drop table if exists FREEBUSYJOBMG;

drop table if exists TATEMPLATECATALOG;

drop table if exists TATEMPLATE;

drop table if exists TAAPPMG;

drop table if exists TAAPPPAGE;

drop table if exists TASYSCONFIG;

/*==============================================================*/
/* Table: TAACCESSLOG                                           */
/*==============================================================*/
create table TAACCESSLOG
(
 LOGID                varchar(36) not null comment '日志id',
 USERID               varchar(36) not null comment '人员id',
 ROLEID               varchar(36) not null comment '角色id',
 MENUID               varchar(36) not null comment '功能菜单id',
 ISPERMISSION         char(1) not null comment '是否有权限',
 ACCESSTIME           datetime not null comment '访问时间',
 URL                  varchar(1024) comment '访问路径',
 SYSFLAG              varchar(50) comment '系统标识',
 FIELD01              varchar(10) comment '扩展字段01',
 FIELD02              varchar(10) comment '扩展字段02',
 FIELD03              varchar(10) comment '扩展字段03',
 FIELD04              varchar(10) comment '扩展字段04',
 FIELD05              varchar(10) comment '扩展字段05',
 primary key (LOGID)
);

alter table TAACCESSLOG comment '功能日志表';

/*==============================================================*/
/* Table: TAACCESSSYSTEM                                        */
/*==============================================================*/
create table TAACCESSSYSTEM
(
 ID                   varchar(36) not null comment '接入系统id',
 SYSCODE              varchar(20) not null comment '系统标识',
 SYSNAME              varchar(100) not null comment '系统名称',
 SPELL                varchar(30) comment '拼音简写',
 PROTOCOL             varchar(10) comment '系统协议',
 DOMAIN               varchar(100) comment '域名或ip',
 PORT                 varchar(5) comment '端口',
 CONTEXTPATH          varchar(30) comment '上下文',
 PORTALSYSTEM         varchar(1) comment '是否接入门户',
 MENUSERVICE          varchar(200) comment '菜单服务',
 PROVIDER             varchar(10) comment '系统提供方',
 EFFECTIVE            varchar(1) not null comment '有效标识',
 REGTIME              datetime comment '注册时间',
 MODIFYTIME           datetime comment '修改时间',
 BACKGROUNDADDRESS    varchar(100) comment '后台地址',
 primary key (ID)
);

alter table TAACCESSSYSTEM comment '接入系统表';

/*==============================================================*/
/* Table: TAAREA                                                */
/*==============================================================*/
create table TAAREA
(
 AREAID               varchar(36) not null comment '行政区划ID',
 PARENTID             varchar(36) not null comment '父级ID',
 AREANAME             varchar(100) not null comment '行政区划名称',
 AREACODE             varchar(20) not null comment '行政区划编码',
 IDPATH               varchar(300) not null comment '行政区划ID全路径',
 NAMEPATH             varchar(300) not null comment '行政区划名称路径',
 AREALEVEL            numeric(2,0) comment '行政区划层级',
 SPELL                varchar(100) comment '拼音简写',
 CREATEUSER           varchar(36) not null comment '创建人',
 AREAORDER            numeric(20,0) comment '排序号',
 EFFECTIVE            varchar(1) not null comment '有效标识',
 CREATETIME           datetime not null comment '创建时间',
 MODIFYTIME           datetime not null comment '更新时间',
 DESTORY              varchar(1) comment '销毁标识',
 primary key (AREAID)
);

alter table TAAREA comment '行政区划表';

/*==============================================================*/
/* Table: TAAVATAR                                              */
/*==============================================================*/
create table TAAVATAR
(
 USERID               varchar(36) not null comment '用户id',
 AVATAR               longblob comment '头像base64',
 UPDATETIME           datetime not null comment '更新时间',
 primary key (USERID, UPDATETIME)
);

alter table TAAVATAR comment '用户头像表';

/*==============================================================*/
/* Table: TACONFIG                                              */
/*==============================================================*/
create table TACONFIG
(
 CONFIGID             varchar(36) not null comment '配置项ID',
 CONFIGKEY            varchar(30) not null comment '配置项标识',
 CONFIGVALUE          varchar(1000) not null comment '配置项内容',
 CONFIGNAME           varchar(150) comment '配置项名称',
 CONFIGDESC           varchar(1000) comment '配置说明',
 primary key (CONFIGID)
);

alter table TACONFIG comment '配置表';

/*==============================================================*/
/* Table: TACUSTOMORG                                           */
/*==============================================================*/
create table TACUSTOMORG
(
 CUSTOMORGID          varchar(36) not null comment '自定义组织id',
 PARENTID             varchar(36) comment '当前组织父级id',
 CUSTOMCODE           varchar(255) comment '自定义编码',
 CUSTOMORGTYPENAMEID  varchar(36) not null comment '自定义组织名称id',
 EFFECTIVE            varchar(1) not null comment '有效标识',
 ORDERNO              numeric(10,0) comment '排序号',
 CUSTOMORGNAME        varchar(255) comment '自定义组织名称',
 CUSTOMORGPATHID      varchar(1024) comment '自定义组织路径id',
 CUSTOMORGPATH        varchar(1024) comment '自定义组织全路径',
 CREATEUSER           varchar(36) comment '创建人',
 CREATETIME           datetime not null comment '创建时间',
 UPDATETIME           datetime not null comment '更新时间',
 DESTORY              varchar(1) not null comment '销毁标识',
 SPELL                varchar(20) comment '拼音简写',
 ORGMANAGER           varchar(36) comment '组织负责人',
 ORGCODE              varchar(18) comment '组织代码',
 CONTACTS             varchar(36) comment '单位联系人',
 ADDRESS              varchar(450) comment '联系地址',
 TEL                  varchar(20) comment '联系电话',
 FIELD01              varchar(1000) comment '扩展字段01',
 FIELD02              varchar(1000) comment '扩展字段02',
 FIELD03              varchar(1000) comment '扩展字段03',
 FIELD04              varchar(1000) comment '扩展字段04',
 FIELD05              varchar(1000) comment '扩展字段05',
 FIELD06              varchar(1000) comment '扩展字段06',
 FIELD07              varchar(1000) comment '扩展字段07',
 FIELD08              varchar(1000) comment '扩展字段08',
 FIELD09              varchar(1000) comment '扩展字段09',
 FIELD10              varchar(1000) comment '扩展字段10',
 primary key (CUSTOMORGID)
);

alter table TACUSTOMORG comment '自定义组织表';

/*==============================================================*/
/* Table: TACUSTOMORGTYPENAME                                   */
/*==============================================================*/
create table TACUSTOMORGTYPENAME
(
 CUSTOMORGTYPENAMEID  varchar(36) not null comment '自定义组织类型名称ID',
 CUSTOMORGTYPENAME    varchar(36) comment '自定义组织类型名称',
 EFFECTIVE            varchar(1) not null comment '是否有效',
 CREATEUSER           varchar(36) not null comment '创建人',
 CREATETIME           datetime not null comment '创建时间',
 UPDATETIME           datetime not null comment '更新时间',
 DESTORY              varchar(1) not null comment '销毁状态',
 CUSTOMORGTYPENAMECODE varchar(255) comment '自定义组织类型名称编码',
 CUSTOMORGTYPENAMEDESC varchar(255) comment '自定义组织类型名称描述',
 primary key (CUSTOMORGTYPENAMEID)
);

alter table TACUSTOMORGTYPENAME comment '自定义组织类型名称表';

/*==============================================================*/
/* Table: TACUSTOMORGUSER                                       */
/*==============================================================*/
create table TACUSTOMORGUSER
(
 CUSTOMORGID          varchar(36) not null comment '自定义组织ID',
 USERID               varchar(36) not null comment '用户Id',
 primary key (CUSTOMORGID, USERID)
);

alter table TACUSTOMORGUSER comment '自定义组织用户关系表';

/*==============================================================*/
/* Table: TACUSTOMRESOURCE                                      */
/*==============================================================*/
create table TACUSTOMRESOURCE
(
 CUSTOMRESOURCEID     varchar(36) not null comment '自定义资源Id',
 RESOURCENAME         varchar(450) not null comment '资源名称',
 PARENTID             varchar(36) not null comment '父Id',
 CODE                 varchar(100) comment '资源编码',
 RESOURCECONTENT      varchar(1024) comment '自定义资源内容',
 RESOURCECATEGORY     varchar(32) comment '资源所属类别',
 EFFECTIVE            varchar(1) not null comment '有效状态',
 ADDTIME              datetime comment '创建事件',
 MODIFYTIME           datetime comment '修改时间',
 SYSTEM               varchar(36) comment '资源所属系统',
 primary key (CUSTOMRESOURCEID)
);

alter table TACUSTOMRESOURCE comment '自定义资源表';

/*==============================================================*/
/* Table: TADICT                                                */
/*==============================================================*/
create table TADICT
(
 NAME                 varchar(50) not null comment '字典名称',
 TYPE                 varchar(50) not null comment '字典类型',
 LABEL                varchar(50) not null comment '字典标签',
 VALUE                varchar(6) not null comment '字典键值',
 PARENTVALUE          varchar(6) comment '父级字典值',
 SORT                 numeric(4,0) not null comment '顺序',
 AUTHORITY            varchar(20) not null comment '权限标识',
 CSSCLASS             varchar(20),
 CSSSTYLE             varchar(128) comment 'css样式',
 REMARKS              varchar(256) comment '备注',
 CREATEDATE           datetime not null comment '创建时间',
 CREATEUSER           varchar(36) not null comment '创建人',
 VERSION              varchar(10) not null comment '版本',
 STATUS               varchar(2) not null comment '字典状态',
 FIELD01              varchar(10) comment '备用字段1',
 FIELD02              varchar(10) comment '备用字段2',
 FIELD03              varchar(10) comment '备用字段3',
 FIELD04              varchar(10) comment '备用字段4',
 FIELD05              varchar(10) comment '备用字段5',
 SYSTEM               varchar(2) not null comment '系统字典',
 NEWTYPE              varchar(2) not null comment '新增类型标识',
 primary key (TYPE, VALUE)
);

alter table TADICT comment '数据字典表';

/*==============================================================*/
/* Table: TAEXTENDSETTING                                       */
/*==============================================================*/
create table TAEXTENDSETTING
(
 FIELDID              varchar(10) not null comment '字段名称',
 TYPE                 varchar(2) not null comment '账户类型',
 EFFECTIVE            varchar(1) not null comment '是否有效',
 HIDE                 varchar(1) comment '是否隐藏',
 DISPLAYTEXT          varchar(150) comment '标题文字',
 TITEXT               varchar(1500) comment '信息提示文字',
 ORDERNO              numeric(10,0) comment '显示顺序',
 REQUIRED             varchar(1) comment '是否必填',
 UNCHANGEABLE         varchar(1) comment '不可编辑',
 FORMTYPE             varchar(20) comment '表单元素类型',
 CONTENTSIZE          numeric(16,0) comment '内容长度',
 VALIDREG             varchar(1000) comment '验证表达式',
 CONNECTAA10          varchar(30) comment '关联码表',
 PROTECTPRIVACY       varchar(1) comment '隐私保护',
 FORMID               varchar(10) comment '表单标识',
 MORE                 varchar(1) comment '是否展示在更多菜单项',
 primary key (FIELDID, TYPE)
);

alter table TAEXTENDSETTING comment '管理字段配置表';

/*==============================================================*/
/* Table: TALOGINHISTORYLOG                                     */
/*==============================================================*/
create table TALOGINHISTORYLOG
(
 LOGID                varchar(36) not null comment '日志ID',
 USERID               varchar(36) not null comment '用户ID',
 LOGINTIME            datetime not null comment '登录时间',
 LOGOUTTIME           datetime not null comment '退出时间',
 CLIENTIP             varchar(200) not null comment '客户端IP',
 SESSIONID            varchar(200) not null comment '登录时SessionID',
 SERVERIP             varchar(200) comment '服务端IP',
 SYSPATH              varchar(50) comment '系统路径',
 CLIENTSYSTEM         varchar(50) comment '客户端系统版本',
 CLIENTBROWSER        varchar(50) comment '客户端浏览器版本',
 CLIENTSCREENSIZE     varchar(50) comment '客户端分辨率',
 primary key (LOGID)
);

alter table TALOGINHISTORYLOG comment '用户登录日志表';

/*==============================================================*/
/* Table: TALOGINSTATLOG                                        */
/*==============================================================*/
create table TALOGINSTATLOG
(
 STATDATE             varchar(20) not null comment '统计时间（YYYY-MM-DD）',
 POINTINTIME          varchar(20) not null comment '统计时点（HH:MM）',
 LOGINNUM             numeric(15,0) comment '已经登录并注销的用户数',
 primary key (STATDATE, POINTINTIME)
);

alter table TALOGINSTATLOG comment '登录统计日志表';

/*==============================================================*/
/* Table: TAOBJECTTAGS                                          */
/*==============================================================*/
create table TAOBJECTTAGS
(
 OBJECTID             varchar(36) not null comment '对象编号（用户编号、机构编号等）',
 OBJECTTYPE           varchar(3) not null comment '对象类型（用户、机构等）',
 TAGID                varchar(36) not null,
 primary key (OBJECTID, OBJECTTYPE, TAGID)
);

alter table TAOBJECTTAGS comment '对象表';

/*==============================================================*/
/* Table: TAONLINELOG                                           */
/*==============================================================*/
create table TAONLINELOG
(
 LOGID                varchar(36) not null comment '日志编号',
 USERID               varchar(36) not null comment '用户编号',
 LOGINTIME            datetime not null comment '登录时间',
 CURRESOURCE          varchar(1000) comment '当前资源',
 CLIENTIP             varchar(200) not null comment '客户端ip地址',
 SESSIONID            varchar(200) not null comment '登录请求的sessionId',
 SYSPATH              varchar(50) comment '系统路径',
 SERVERIP             varchar(200) comment '服务端ip地址',
 CLIENTSYSTEM         varchar(50) comment '客户端操作系统版本',
 CLIENTBROWSER        varchar(50) comment '客户端浏览器版本',
 CLIENTSCREENSIZE     varchar(50) comment '客户端屏幕分辨率大小',
 primary key (LOGID)
);

alter table TAONLINELOG comment '用户在线日志表';

/*==============================================================*/
/* Table: TAONLINESERVICE                                       */
/*==============================================================*/
create table TAONLINESERVICE
(
 CREATEUSER           varchar(36) not null comment '创建者',
 DESTORY              varchar(1) comment '是否销毁',
 UPDATETIME           datetime comment '更新时间',
 CREATETIME           datetime not null comment '创建时间',
 EFFECTIVE            varchar(1) comment '是否有效',
 SERVICEURL           varchar(1024) comment '服务URL',
 SERVICETYPE          varchar(100) comment '服务类型',
 SERVICEID            varchar(36) not null comment '服务ID',
 SERVICENAME          varchar(255) not null comment '服务名称',
 SERVICEDESC          varchar(255) comment '服务描述',
 primary key (SERVICEID)
);

alter table TAONLINESERVICE comment '在线服务';

/*==============================================================*/
/* Table: TAONLINESERVICEMG                                     */
/*==============================================================*/
create table TAONLINESERVICEMG
(
 SERVICEID            varchar(36) not null comment '服务ID',
 SERVICENAMEID        varchar(36) not null comment '服务项ID',
 primary key (SERVICEID, SERVICENAMEID)
);

alter table TAONLINESERVICEMG comment '在线服务管理';

/*==============================================================*/
/* Table: TAONLINESERVICENAME                                   */
/*==============================================================*/
create table TAONLINESERVICENAME
(
 DESTORY              varchar(1) not null comment '是否销毁',
 UPDATETIME           datetime comment '更新时间',
 CREATETIME           datetime comment '创建时间',
 IDPATH               varchar(1024) comment '服务项路径',
 PARENTID             varchar(36) not null comment '父级id',
 SERVICENAMEID        varchar(36) not null comment '服务项名称id',
 SERVICENAME          varchar(255) not null comment '服务名称',
 CREATEUSER           varchar(36) not null comment '创建者',
 primary key (SERVICENAMEID)
);

alter table TAONLINESERVICENAME comment '在线服务项名称';

/*==============================================================*/
/* Table: TAONLINESTATLOG                                       */
/*==============================================================*/
create table TAONLINESTATLOG
(
 STATDATE             varchar(20) not null comment '统计时间（YYYY-MM-DD）',
 POINTINTIME          varchar(20) not null comment '统计时点（HH:MM）',
 LOGINNUM             numeric(15,0) comment '在线用户数',
 primary key (STATDATE, POINTINTIME)
);

alter table TAONLINESTATLOG comment '在线统计日志表';

/*==============================================================*/
/* Table: TAORG                                                 */
/*==============================================================*/
create table TAORG
(
 ORGID                varchar(36) not null comment '组织编号',
 ORGNAME              varchar(300) not null comment '组织名称',
 SPELL                varchar(100) not null comment '组织名称拼音简写（如：民政部简写MZB）',
 PARENTID             varchar(36) not null comment '父组织编号',
 IDPATH               varchar(1024) not null comment '组织编号路径',
 NAMEPATH             varchar(1024) not null comment '组织名称路径',
 CUSTOMNO             varchar(30) comment '自定义编码',
 ORDERNO              numeric(10,0) not null comment '排序号',
 ORGLEVEL             numeric(16,0) comment '组织层级',
 AREA                 varchar(36) comment '行政区划编号',
 EFFECTIVE            varchar(1) not null comment '有效性',
 ORGTYPE              varchar(2) not null comment '组织类型（机构（集团、子公司）、部门、组）',
 CREATEUSER           varchar(36) not null comment '创建人',
 CREATETIME           datetime comment '创建时间',
 MODIFYTIME           datetime comment '最后更新时间',
 ORGMANAGER           varchar(36) comment '机构负责人',
 ORGCODE              varchar(18) comment '机构编码',
 CONTACTS             varchar(36) comment '机构联系人',
 ADDRESS              varchar(450) comment '联系人地址',
 TEL                  varchar(20) comment '联系人电话',
 DESTORY              varchar(1) comment '是否销毁',
 FIELD01              varchar(1000) comment '备用字段1',
 FIELD02              varchar(1000) comment '备用字段2',
 FIELD03              varchar(1000) comment '备用字段3',
 FIELD04              varchar(1000) comment '备用字段4',
 FIELD05              varchar(1000) comment '备用字段5',
 FIELD06              varchar(1000) comment '备用字段6',
 FIELD07              varchar(1000) comment '备用字段7',
 FIELD08              varchar(1000) comment '备用字段8',
 FIELD09              varchar(1000) comment '备用字段9',
 FIELD10              varchar(1000) comment '备用字段10',
 primary key (ORGID)
);

alter table TAORG comment '组织机构表';

/*==============================================================*/
/* Table: TAORGCONSTRAINT                                       */
/*==============================================================*/
create table TAORGCONSTRAINT
(
 CATEGORYID           varchar(2) not null,
 ALLOWCATEGORYID      varchar(2) not null,
 primary key (CATEGORYID, ALLOWCATEGORYID)
);

alter table TAORGCONSTRAINT comment '暂未使用';

/*==============================================================*/
/* Table: TAORGMG                                               */
/*==============================================================*/
create table TAORGMG
(
 ROLEID               varchar(36) not null comment '角色ID',
 ORGID                varchar(36) not null comment '组织ID',
 EFFECTTIME           datetime comment '有效期',
 primary key (ROLEID, ORGID)
);

alter table TAORGMG comment '角色组织表';

/*==============================================================*/
/* Table: TAORGOPLOG                                            */
/*==============================================================*/
create table TAORGOPLOG
(
 LOGID                varchar(36) not null comment '日志ID',
 BATCHNO              varchar(36) not null comment '操作批次号',
 OPTYPE               varchar(2) not null comment '操作类型',
 INFLUENCEBODYTYPE    varchar(2) not null comment '影响主体类型',
 INFLUENCEBODY        varchar(36) not null comment '影响主体',
 OPBODYTYPE           varchar(2) comment '操作主体类型',
 OPSUBJECT            varchar(36) comment '操作主体',
 CHANGECONTENT        longblob comment '操作内容',
 OPTIME               datetime not null comment '操作时间',
 OPUSER               varchar(36) not null comment '操作者',
 ISPERMISSION         varchar(1) not null comment '操作权限',
 primary key (LOGID)
);

alter table TAORGOPLOG comment '组织操作日志表';

/*==============================================================*/
/* Table: TARESOURCE                                            */
/*==============================================================*/
create table TARESOURCE
(
 RESOURCEID           varchar(36) not null comment '功能资源ID',
 PRESOURCEID          varchar(36) not null comment '父级功能资源ID',
 NAME                 varchar(100) not null comment '功能名称',
 CODE                 varchar(30) comment '自定义编码',
 SYSCODE              varchar(20) not null comment '功能所属系统',
 URL                  varchar(100) comment '功能路径',
 ORDERNO              numeric(10,0) comment '排序号',
 IDPATH               varchar(1024) not null comment '资源ID路径',
 NAMEPATH             varchar(1024) not null comment '功能名称路径',
 RESOURCELEVEL        varchar(2) not null comment '功能资源层级',
 ICON                 varchar(30) comment '图标名称',
 ICONCOLOR            varchar(7) comment '图标颜色',
 SECURITYPOLICY       varchar(2) not null comment '安全策略',
 SECURITYLEVEL        numeric(4,0) not null comment '安全认证级别',
 RESOURCETYPE         varchar(2) not null comment '菜单类型',
 EFFECTIVE            varchar(1) not null comment '有效性',
 ISDISPLAY            varchar(1) comment '是否显示',
 ISFILEDSCONTROL      varchar(1) comment '是否字段权限控制',
 CREATEDATE           datetime not null comment '创建时间',
 CREATEUSER           varchar(36) not null comment '创建者',
 UIAUTHORITYPOLICY    varchar(2) comment '界面元素授权',
 FIELD01              varchar(10) comment '扩展字段01',
 FIELD02              varchar(10) comment '扩展字段02',
 FIELD03              varchar(10) comment '扩展字段03',
 FIELD04              varchar(10) comment '扩展字段04',
 FIELD05              varchar(10) comment '扩展字段05',
 FIELD06              varchar(10) comment '扩展字段06',
 FIELD07              varchar(10) comment '扩展字段07',
 FIELD08              varchar(10) comment '扩展字段08',
 FIELD09              varchar(10) comment '扩展字段09',
 FIELD10              varchar(10) comment '扩展字段10',
 WORKBENCH            varchar(1) comment '是否工作台模块',
 primary key (RESOURCEID)
);

alter table TARESOURCE comment '功能资源表';

/*==============================================================*/
/* Table: TARESOURCECATEGORY                                    */
/*==============================================================*/
create table TARESOURCECATEGORY
(
 CATEGORYID           varchar(36) not null comment '类别ID',
 CATEGORYNAME         varchar(300) not null comment '类别名称',
 EFFECTIVE            varchar(1) not null comment '有效性',
 CODE                 varchar(100) comment '类别编码',
 CATEGORYCONTENT      varchar(1024) comment '类别描述',
 primary key (CATEGORYID)
);

alter table TARESOURCECATEGORY comment '资源类型表';

/*==============================================================*/
/* Table: TARESOURCEUI                                          */
/*==============================================================*/
create table TARESOURCEUI
(
 PAGEELEMENTID        varchar(36) not null comment '界面元素配置ID',
 RESOURCEID           varchar(36) not null comment '功能资源ID',
 ELENMENTNAME         varchar(20) not null comment '界面元素名称',
 ELEMENTID            varchar(30) not null comment '界面元素ID',
 CODE                 varchar(20) comment '自定义编码',
 AUTHORITYPOLICY      varchar(2) not null comment '授权策略',
 CREATEUSER           varchar(36) not null comment '创建者',
 CREATEDATE           datetime not null comment '创建时间',
 FIELD01              varchar(10) comment '扩展字段01',
 FIELD02              varchar(10) comment '扩展字段02',
 FIELD03              varchar(10) comment '扩展字段03',
 EFFECTIVE            varchar(1) not null comment '有效性',
 primary key (PAGEELEMENTID)
);

alter table TARESOURCEUI comment '界面元素表';

/*==============================================================*/
/* Table: TARESOURCEURL                                         */
/*==============================================================*/
create table TARESOURCEURL
(
 RESOURCEID           varchar(36) not null comment '功能资源ID',
 RESTURL              varchar(256) not null comment '服务路径',
 URLNAME              varchar(40) comment '服务名称',
 URLID                varchar(36) not null comment '服务ID',
 AUTHORITYPOLICY      varchar(1) not null comment '是否独立授权',
 primary key (URLID)
);

alter table TARESOURCEURL comment '功能资源表';

/*==============================================================*/
/* Table: TAROLE                                                */
/*==============================================================*/
create table TAROLE
(
 ROLEID               varchar(36) not null comment '角色id',
 ROLENAME             varchar(150) not null comment '角色名称',
 ISADMIN              varchar(1) comment '是否为管理员',
 ROLELEVEL            numeric(32,0) comment '角色层级',
 ORGID                varchar(36) not null comment '组织id',
 ROLETYPE             varchar(2) not null comment '角色类型',
 EFFECTIVE            varchar(1) not null comment '有效状态',
 EFFECTIVETIME        datetime comment '有效时间',
 CREATEUSER           varchar(36) comment '创建人',
 CREATETIME           datetime comment '创建时间',
 ROLEDESC             varchar(150) comment '角色排序号',
 ROLESIGN             varchar(2) comment '角色标志',
 SUBORDINATE          varchar(1) comment '下属',
 primary key (ROLEID)
);

alter table TAROLE comment '角色表';

/*==============================================================*/
/* Table: TAROLEAUTHORITY                                       */
/*==============================================================*/
create table TAROLEAUTHORITY
(
 ROLEID               varchar(36) not null comment '角色id',
 RESOURCEID           varchar(36) not null comment '资源id',
 RESOURCETYPE         varchar(1) not null comment '资源类型',
 USEPERMISSION        varchar(1) comment '用户使用权限',
 REPERMISSION         varchar(1) comment '授权权限',
 REAUTHRITY           varchar(1) comment '再授权权限',
 CREATEUSER           varchar(36) comment '创建人',
 CREATETIME           datetime comment '创建时间',
 EFFECTTIME           datetime comment '有效时间',
 primary key (ROLEID, RESOURCEID, RESOURCETYPE)
);

alter table TAROLEAUTHORITY comment '角色权限表';

/*==============================================================*/
/* Table: TAROLEURLAUTHORITY                                    */
/*==============================================================*/
create table TAROLEURLAUTHORITY
(
 ROLEID               varchar(36) not null comment '角色id',
 URLID                varchar(36) not null comment '路径id',
 RESOURCEID           varchar(36) not null comment '资源id',
 primary key (ROLEID, URLID)
);

/*==============================================================*/
/* Table: TAROLEUSER                                            */
/*==============================================================*/
create table TAROLEUSER
(
 USERID               varchar(36) not null comment '人员id',
 ROLEID               varchar(36) not null comment '角色id',
 DEFAULTROLE          varchar(1) comment '默认角色',
 CREATEUSER           varchar(36) not null comment '创建人',
 CREATETIME           datetime not null comment '创建时间',
 primary key (ROLEID, USERID)
);

alter table TAROLEUSER comment '角色用户关系表';

/*==============================================================*/
/* Table: TAROLEWORKBENCH                                       */
/*==============================================================*/
create table TAROLEWORKBENCH
(
 ROLEID               varchar(36) not null comment '角色id',
 WORKBENCHJSON        longblob comment '工作台内容',
 primary key (ROLEID)
);

alter table TAROLEWORKBENCH comment '角色工作台模板';

/*==============================================================*/
/* Table: TASERVEREXCEPTIONLOG                                  */
/*==============================================================*/
create table TASERVEREXCEPTIONLOG
(
 LOGID                varchar(50) not null comment '日志id',
 IPADDRESS            varchar(100) comment 'ip地址',
 PORT                 varchar(10) comment '端口号',
 EXCEPTIONNAME        varchar(255) comment '异常名称',
 CONTENT              longblob comment '异常内容',
 CREATETIME           datetime comment '创建时间',
 SYSPATH              varchar(50) comment '系统上下文',
 CLIENTIP             varchar(50) comment '客户端ip',
 URL                  varchar(100) comment '请求地址',
 MENUID               varchar(50) comment '菜单id',
 MENUNAME             varchar(30) comment '菜单名称',
 USERAGENT            varchar(200),
 EXCEPTIONTYPE        varchar(2) comment '异常类型',
 REQUESTPARAMETER     longblob comment '请求参数',
 primary key (LOGID)
);

alter table TASERVEREXCEPTIONLOG comment '服务器异常日志表';

/*==============================================================*/
/* Table: TASITEMG                                              */
/*==============================================================*/
create table TASITEMG
(
 PARENTID             varchar(36) comment '父级ID',
 IDPATH               varchar(1024) comment '组织路径',
 SITEDESC             varchar(255) comment '站点描述',
 UPDATETIME           datetime comment '更新时间',
 CREATETIME           datetime comment '创建时间',
 EFFECTIVE            varchar(1) not null comment '是否有效',
 SITETYPE             varchar(100) not null comment '站点类型',
 SITEDOMAIN           varchar(255) comment '站点域名',
 SITENAME             varchar(255) not null comment '站点名称',
 SITEID               varchar(36) not null comment '站点ID',
 DESTORY              varchar(1) not null comment '是否销毁',
 CREATEUSER           varchar(36) not null comment '创建者',
 primary key (SITEID)
);

/*==============================================================*/
/* Table: TATAG                                                 */
/*==============================================================*/
create table TATAG
(
 TAGID                varchar(36) not null comment '标签id',
 TAGNAME              varchar(255) comment '标签名',
 TAGGROUPID           varchar(36) comment '标签组id',
 CREATETIME           datetime not null comment '创建时间',
 EFFECTIVE            varchar(1) not null comment '有效标识',
 CREATEUSER           varchar(36) not null comment '创建人',
 DESTORY              varchar(1) not null comment '销毁标识',
 UPDATETIME           datetime not null comment '更新时间',
 primary key (TAGID)
);

alter table TATAG comment '标签表';

/*==============================================================*/
/* Table: TATAGGROUP                                            */
/*==============================================================*/
create table TATAGGROUP
(
 TAGGROUPID           varchar(36) not null comment '标签组id',
 TAGGROUPNAME         varchar(255) not null comment '标签组名称',
 EFFECTIVE            varchar(1) not null comment '有效标识',
 CREATEUSER           varchar(36) not null comment '创建人',
 CREATETIME           datetime not null comment '创建时间',
 UPDATETIME           datetime not null comment '更新时间',
 DESTORY              varchar(1) not null comment '销毁标识'
);

alter table TATAGGROUP comment '标签组表';

/*==============================================================*/
/* Table: TATAGSSTORE                                           */
/*==============================================================*/
create table TATAGSSTORE
(
 TAGID                varchar(36) not null comment '标签id',
 TAGNAME              varchar(100) not null comment '标签名',
 TAGCODE              varchar(30) not null comment '标签代码',
 TAGCATEGORY          varchar(2) not null comment '标签类别',
 primary key (TAGID)
);

alter table TATAGSSTORE comment '暂未使用';

/*==============================================================*/
/* Table: TAUSER                                                */
/*==============================================================*/
create table TAUSER
(
 USERID               varchar(36) not null comment '用户编号',
 LOGINID              varchar(30) not null comment '登录账号',
 PASSWORD             varchar(256) not null comment '登录密码',
 PASSWORDDEFAULTNUM   numeric(16,0) comment '密码错误次数',
 PWDLASTMODIFYDATE    datetime comment '密码最后修改时间',
 ISLOCK               varchar(1) comment '是否锁定',
 ORDERNO              numeric(10,0) comment '排序号',
 NAME                 varchar(450) not null comment '姓名',
 SEX                  varchar(2) comment '性别',
 IDCARDTYPE           varchar(2) comment '证件类型',
 IDCARDNO             varchar(30) comment '证件号码',
 MOBILE               varchar(20) comment '手机号码',
 CREATEUSER           varchar(36) comment '创建人',
 CREATETIME           datetime comment '创建时间',
 MODIFYTIME           datetime comment '修改时间',
 DESTORY              varchar(1) not null comment '销毁标识',
 ACCOUNTSOURCE        varchar(2) comment '账户注册渠道',
 EFFECTIVE            varchar(1) not null comment '有效标识',
 EFFECTIVETIME        datetime comment '有效时间',
 JOBNUMBER            varchar(15) comment '工号',
 STATE                varchar(10) comment '国家地区',
 BIRTHPLACE           varchar(12) comment '户籍地（行政区划代码）',
 ADDRESS              varchar(450) comment '联系地址',
 ZIPCODE              varchar(10) comment '邮政编码',
 EMAIL                varchar(100) comment '邮箱地址',
 PHONE                varchar(20) comment '联系电话',
 EDUCATION            varchar(30) comment '学历',
 GRADUATESCHOOL       varchar(150) comment '毕业学校',
 WORKPLACE            varchar(300) comment '工作单位',
 FIELD01              varchar(1000) comment '扩展字段01',
 FIELD02              varchar(1000) comment '扩展字段02',
 FIELD03              varchar(1000) comment '扩展字段03',
 FIELD04              varchar(1000) comment '扩展字段04',
 FIELD05              varchar(1000) comment '扩展字段05',
 FIELD06              varchar(1000) comment '扩展字段06',
 FIELD07              varchar(1000) comment '扩展字段07',
 FIELD08              varchar(1000) comment '扩展字段08',
 FIELD09              varchar(1000) comment '扩展字段09',
 FIELD10              varchar(1000) comment '扩展字段10',
 primary key (USERID)
);

alter table TAUSER comment '用户表';

/*==============================================================*/
/* Table: TAUSERORG                                             */
/*==============================================================*/
create table TAUSERORG
(
 USERID               varchar(32) not null comment '用户id',
 ORGID                varchar(32) not null comment '组织id',
 ISDIRECT             varchar(1) not null comment '是否直属',
 primary key (USERID, ORGID)
);

alter table TAUSERORG comment '用户组织关联表';

/*==============================================================*/
/* Table: TAUSERWORKBENCH                                       */
/*==============================================================*/
create table TAUSERWORKBENCH
(
 USERID               varchar(36) not null comment '用户id',
 WORKBENCHJSON        longblob comment '工作台内容',
 primary key (USERID)
);

alter table TAUSERWORKBENCH comment '用户工作台模板';

/*==============================================================*/
/* Table: TAZOOKEEPERADDRESSMG                                       */
/*==============================================================*/
create table TAZOOKEEPERADDRESSMG
(
 ZKID               varchar(36)  not null comment '注册中心ID',
 ZKADDRESS          varchar(200)          comment '注册中心地址',
 APPNAME            varchar(60)           comment '应用名称',
 APPNAMESPACE       varchar(30)           comment '命名空间',
 CONNECTFLAG        varchar(1)            comment '连接标志',
 primary key (ZKID)
);

alter table TAZOOKEEPERADDRESSMG comment 'ZK注册中心管理';

/*==============================================================*/
/* Table: TAJOBDATASOURCEMG                                       */
/*==============================================================*/
create table TAJOBDATASOURCEMG
(
 DATASOURCEID       varchar(36) not null comment '数据源ID',
 DATASOURCENAME     varchar(60)          comment '数据源名称',
 DRIVER             varchar(200)         comment '数据源驱动',
 URL                varchar(200)         comment '数据源URL',
 USERNAME           varchar(450)         comment '数据源用户',
 PASSWORD           varchar(100)         comment '数据源密码',
 primary key (DATASOURCEID)
);

alter table TAJOBDATASOURCEMG comment '作业历史数据源管理';

/*==============================================================*/
/* Table: FREEBUSYJOBMG                                       */
/*==============================================================*/
create table FREEBUSYJOBMG
(
 ID                 varchar(36) not null comment '闲忙任务ID',
 JOBNAME            varchar(60)          comment '任务名称',
 FREEMOMENT         varchar(20)          comment '空闲时刻',
 BUSYMOMENT         varchar(20)          comment '繁忙时刻',
 SERVERIPS          varchar(200)         comment '服务器IP地址',
 ZKID               varchar(36)          comment 'zk注册中心ID',
 primary key (ID)
);

alter table FREEBUSYJOBMG comment '闲忙任务管理';

CREATE TABLE TATEMPLATECATALOG  (
  UPDATETIME           datetime           comment '更新时间',
  CREATETIME           datetime            comment '创建时间',
  ID                   varchar(36)           not null comment '页面模板功能id',
  IDPATH               varchar(1024)        comment 'id路径',
  PARENTID             varchar(36)          not null comment '页面模板功能父id',
  NAME                 varchar(100)		      not null comment '页面模板功能名称',
  NAMEPATH             varchar(1024)       not null comment '页面模板功能名称路径',
  CREATEUSER           varchar(36)         comment '创建人',
  primary key (ID)
);

alter table TATEMPLATECATALOG comment '页面模板功能表';

CREATE TABLE TATEMPLATE(
	TEMPLATEID        varchar(36)     not null comment '页面模板id' ,
	CATALOGID         varchar(36)     not null comment '页面模板功能id',
	TEMPLATENAME      varchar(100)     not null comment '页面模板名称',
	TEMPLATECODE      varchar(36) comment '页面模板编码',
	TEMPLATETYPE      varchar(10)     not null comment '页面模板类型',
	TEMPLATESOURCE    varchar(1)     not null comment '页面模板来源',
	TEMPLATECONTENT   longblob comment '页面模板内容',
	EFFECTIVE         varchar(1)    comment '页面模板有效标识',
	CREATEUSER        varchar(36) comment '创建人',
	UPDATETIME        datetime  comment '更新时间',
	CREATETIME        datetime  comment '创建时间',
	primary key (TEMPLATEID)
);

alter table TATEMPLATE comment '页面模板表';

CREATE TABLE TAAPPMG  (
  APPID                   varchar(36)                    not null comment '应用id',
  APPNAME              varchar(100)                      not null comment '应用名称',
  APPTYPE             varchar(1) comment '应用类型',
  APPEFFECTIVE        varchar(1) comment '应有有效标识',
  CREATEUSER           varchar(36) comment '创建人',
  UPDATETIME           datetime comment '更新时间',
  CREATETIME           datetime comment '创建时间',
  primary key  (APPID)
);

alter table TAAPPMG comment '应用管理表';

/*==============================================================*/
/* Table: TAAPPPAGE                                             */
/*==============================================================*/
create table TAAPPPAGE
(
   APPID                varchar(36) not null comment '应用id',
   PAGEID               varchar(36) not null comment '页面id',
   PAGEPID              varchar(36) not null comment '页面父id',
   PAGENAME             varchar(100) not null comment '页面名称',
   PAGEINDEX            varchar(10) not null comment '页面顺序',
   PAGECODE             longblob comment '页面代码',
   PAGEURL              varchar(200) not null comment '页面url',
   PAGETYPE             varchar(2) not null comment '页面类型',
   TEMPLATEID           varchar(36) comment '页面所用得模版id',
   primary key (PAGEID)
);

alter table TAAPPPAGE comment '应用页面';

/*==============================================================*/
/* Table: TASYSCONFIG                                             */
/*==============================================================*/
create table TASYSCONFIG
(
   ID                      varchar(36)   comment '系统配置id',
   FIELDNAME               varchar(100)  comment '字段名称',
   DEFAULTVALUE            varchar(200)  comment '默认值',
   DATATYPE                varchar(1)    comment '数据类型',
   FUNCTIONTYPE            varchar(1)    comment '所属配置区域',
   COLLECTIONNAME          varchar(100)  comment '码表类型',
   COLLECTIONDATAS         varchar(2000) comment '码表值',
   FLAG                    numeric(10,0) comment '更新标志',
   primary key (ID)
);

alter table TASYSCONFIG comment '系统配置';


create OR REPLACE view v_dict (name,type,label,value,parentvalue,sort,authority,cssclass,cssstyle,remarks,createdate,createuser,version,status,field01,field02,field03,field04,field05,system,newtype) as select x0.name ,x0.type ,x0.label ,x0.value ,x0.parentvalue ,x0.sort ,x0.authority ,x0.cssclass ,x0.cssstyle ,x0.remarks ,x0.createdate ,x0.createuser ,x0.version ,x0.status ,x0.field01 ,x0.field02 ,x0.field03 ,x0.field04 ,x0.field05 ,x0.system ,x0.newtype from tadict x0 ;


--     初始化人员表
INSERT INTO tauser (userid,loginid,password,passworddefaultnum,pwdlastmodifydate,islock,orderno,name,sex,idcardtype,idcardno,mobile,createuser,createtime,modifytime,destory,accountsource,effective,effectivetime,jobnumber,state,birthplace,address,zipcode,email,phone,education,graduateschool,workplace,field01,field02,field03,field04,field05,field06,field07,field08,field09,field10) VALUES (
'1','developer','$2a$10$ZI3ewI1LvnS8bvTDiZk5X.w9/u.LXy8vPTwQFl8SlDtMTYBQHnIEm',0, sysdate(),'0',1,'超级管理员','1','0',null,'18011567700','1', sysdate(),NULL,'0',NULL,'1',NULL,NULL,NULL,NULL,'成都市/锦江区/久远银海',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

--     初始化组织表
INSERT INTO taorg
(orgid, orgname, spell, parentid, idpath, namepath, customno, orderno, orglevel, area, effective, orgtype, createuser, createtime, modifytime, orgmanager, orgcode, contacts, address, tel, destory, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10)
VALUES('fd811ab9c30440088df3e29ea784460a', '顶级组织', 'MZB', '0', 'fd811ab9c30440088df3e29ea784460a', '顶级组织', '', 0, 0, '', '1', '01', '1', NULL, sysdate() , '', '', '', '', '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--     初始化码表
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('角色类型', 'ROLETYPE', '管理角色', '04', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('角色标识', 'ROLESIGN', '稽核角色', '2', null, '2', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('角色标识', 'ROLESIGN', '业务角色', '1', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('元素在界面中的授权策略', 'ELEMENTAUTHORITYPOLICY', '不显示', '0', null, '31', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('元素在界面中的授权策略', 'ELEMENTAUTHORITYPOLICY', '数据可见不可编辑', '1', '', '21', '0', '', '', null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('元素在界面中的授权策略', 'ELEMENTAUTHORITYPOLICY', '数据可见可编辑', '2', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('账户类型', 'ACCOUNTTYPE', '组织账户', '2', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('账户类型', 'ACCOUNTTYPE', '个人账户', '1', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('界面元素授权策略', 'UIAUTHORITYPOLICY', '继承当前菜单权限', '0', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('界面元素授权策略', 'UIAUTHORITYPOLICY', '独立授权', '1', null, '10', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全策略', 'SECURITYPOLICY', '无需登录可访问', '0', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全策略', 'SECURITYPOLICY', '登陆均可访问', '1', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全策略', 'SECURITYPOLICY', '授权可访问', '2', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('有效标识', 'EFFECTIVE', '有效', '1', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('有效标识', 'EFFECTIVE', '无效', '0', null, '0', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('证件类型', 'IDCARDTYPE', '居民身份证(户口簿)', '0', '', '10', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('证件类型', 'IDCARDTYPE', '护照', '1', '', '20', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('证件类型', 'IDCARDTYPE', '军官证', '2', '', '30', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('证件类型', 'IDCARDTYPE', '其他', '3', '', '40', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('权限认证方式', 'AUTHMODE', '用户名密码', '01', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('权限认证方式', 'AUTHMODE', '指纹识别', '02', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('权限认证方式', 'AUTHMODE', '人脸识别', '03', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('认证方式类型', 'AUTHMODE', 'Key盘', '04', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '新增组织', '01', null, '10', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '编辑组织', '02', null, '20', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '禁用组织', '03', null, '30', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '启用组织', '04', null, '40', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除组织', '05', null, '50', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '新增用户', '06', null, '60', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '编辑用户', '07', null, '70', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '禁用用户', '08', null, '80', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '启用用户', '09', null, '90', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '解锁账号', '10', null, '100', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更新用户直属组织', '12', null, '110', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '重置密码', '13', null, '120', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除用户', '14', null, '130', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '新增角色', '15', null, '140', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '新增用户和角色关联关系', '16', null, '150', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '编辑角色', '17', null, '160', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除角色', '18', null, '170', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '角色禁用', '19', null, '180', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '启用角色', '20', null, '190', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '新增功能资源', '21', null, '200', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '编辑功能资源', '22', null, '210', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除功能资源', '23', null, '220', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '禁用功能资源', '24', null, '230', '0', null, null, null, sysdate(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '启用功能资源', '25', null, '240', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改组织权限（授予）', '26', null, '250', '0', null, null, null, sysdate(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改组织权限（回收）', '27', null, '260', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改使用权限（授权）', '28', null, '270', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改使用权限（回收）', '29', null, '280', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改授权权限（授权）', '30', null, '290', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改授权权限（回收）', '31', null, '300', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改再授权权限（授权）', '32', null, '310', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改再授权权限（回收）', '33', null, '320', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除角色人员关联关系', '34', null, '330', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '角色复制', '35', null, '340', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '权限复制', '36', null, '350', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '添加界面元素', '37', null, '360', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除界面元素', '38', null, '370', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '根据功能资源删除界面元素', '39', null, '380', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '编辑界面元素', '40', null, '390', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '根据功能资源编辑界面元素', '41', null, '400', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '组织机构', '01', null, '10', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '人员用户', '02', null, '20', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '角色', '03', null, '30', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '功能资源', '04', null, '40', '0', null, null, null, sysdate(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '界面元素', '05', null, '50', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '组织权限', '06', null, '60', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '权限信息', '07', null, '70', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '自定义资源', '08', null, '80', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'OFF', '0', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'ERROR', '1', null, '1', '0', null, null, null, sysdate(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'WARN', '2', null, '1', '0', null, null, null, sysdate(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'INFO', '3', null, '1', '0', null, null, null, sysdate(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'DEBUG', '4', null, '1', '0', null, null, null, sysdate(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'TRACE', '5', null, '1', '0', null, null, null, sysdate(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'ALL', '6', null, '1', '0', null, null, null, sysdate(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全认证级别', 'SECURIYTLEVEL', '无限制', '0', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全认证级别', 'SECURIYTLEVEL', '一级', '1', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全认证级别', 'SECURIYTLEVEL', '二级', '2', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全认证级别', 'SECURIYTLEVEL', '三级', '3', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全认证级别', 'SECURIYTLEVEL', '四级', '4', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('字典数据类型', 'DICTDATATYPE', '未同步', '0', '', '0', '0', '', '', null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('字典数据类型', 'DICTDATATYPE', '已同步', '2', '', '2', '0', '', '', null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('字典数据类型', 'DICTDATATYPE', '脏数据', '1', '', '1', '0', '', '', null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('是否', 'YESORNO', '是', '1', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('是否', 'YESORNO', '否', '0', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('性别', 'SEX', '无', '0', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('性别', 'SEX', '男', '1', null, '11', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('性别', 'SEX', '女', '2', null, '21', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('组织类型', 'ORGTYPE', '机构', '01', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('组织类型', 'ORGTYPE', '部门', '02', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('组织类型', 'ORGTYPE', '组', '03', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('角色类型', 'ROLETYPE', '公有角色', '01', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('角色类型', 'ROLETYPE', '代理角色', '03', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('有无', 'HAVAORNOT', '无', '0', null, '10', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('资源类型', 'RESOURCETYPE', '通用菜单', '0', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('资源类型', 'RESOURCETYPE', '管理菜单', '1', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('资源类型', 'RESOURCETYPE', '经办菜单', '2', null, '1', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('有无', 'HAVAORNOT', '有', '1', null, '20', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('状态', 'STATE', '启用', '1', null, '10', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('状态', 'STATE', '禁用', '0', null, '20', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点有效标识', 'SITEEFFECTIVE', '有效', '1', null, '10', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点有效标识', 'SITEEFFECTIVE', '无效', '0', null, '20', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点类型', 'SITETYPE', '网厅', '1', null, '20', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点类型', 'SITETYPE', '业务系统', '2', null, '30', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点类型', 'SITETYPE', '公众号', '3', null, '40', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('静态资源类型', 'FILERESOURCETYPE', '目录', '1', null, '10', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('静态资源类型', 'FILERESOURCETYPE', '未知类型', '3', null, '30', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('静态资源类型', 'FILERESOURCETYPE', '资源文件', '2', null, '20', '0', null, null, null, sysdate(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点类型', 'SITETYPE', 'APP', '0', null, '10', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('行政区划级别', 'AREALEVEL', '市', '1', null, '20', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('行政区划级别', 'AREALEVEL', '区/县', '2', null, '30', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('行政区划级别', 'AREALEVEL', '其他', '4', null, '50', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('行政区划级别', 'AREALEVEL', '省/自治区', '0', null, '10', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('行政区划级别', 'AREALEVEL', '街道/镇', '3', null, '40', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('成功标识', 'ISSUCCESS', '失败', '0', null, '10', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('成功标识', 'ISSUCCESS', '成功', '1', null, '20', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('模版来源', 'TEMPLATESOURCE', '外部上传', '1', null, '10', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('模版来源', 'TEMPLATESOURCE', '内部绘制', '2', null, '20', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('模版类型', 'TEMPLATETYPE', 'code模版', '1', null, '10', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('模版类型', 'TEMPLATETYPE', '表单模版', '2', null, '20', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('模版类型', 'TEMPLATETYPE', '在线开发', '3', null, '30', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('可用标识', 'AVAILABLE', '不可用', '0', null, '20', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('可用标识', 'AVAILABLE', '可用', '1', null, '10', '0', null, null, null, sysdate(), '1', '0', '1', null, null, null, null, null, '1', '0');


--     初始化功能菜单
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('4b2eee0d7ded4e8094d4acf439fd3a1c', '48afedddc8f04c668b3c1572c30a7745', '行政区划管理', '', 'sysmg', 'orguser.html#/areaManagement', 30, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/48afedddc8f04c668b3c1572c30a7745/4b2eee0d7ded4e8094d4acf439fd3a1c', '银海软件/管理系统/组织人员管理/行政区划管理', '3', '', '', '2', 0, '1', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('8aa86ed4c7f84183935a262db4a605d3', '78ad02fdb879406ebc5e7a4faf8f5905', '管理员权限管理', '', 'sysmg', 'authority.html#/adminAuthority', 10, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/78ad02fdb879406ebc5e7a4faf8f5905/8aa86ed4c7f84183935a262db4a605d3', '银海软件/管理系统/资源权限管理/管理员权限管理', '3', '', '', '2', 0, '1', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('5e67c7acef914c349d8aff076921f6b5', '78ad02fdb879406ebc5e7a4faf8f5905', '相似权限管理', '', 'sysmg', 'authority.html#/similarAuthority', 30, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/78ad02fdb879406ebc5e7a4faf8f5905/5e67c7acef914c349d8aff076921f6b5', '银海软件/管理系统/资源权限管理/相似权限管理', '3', '', '', '2', 0, '0', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('72888507aba5484a8942e8dd0e6b6f7f', 'fb8637c2e52e4b05bd2c07d742141ee7', '作业管理', null, 'sysmg', 'sysmg.html#/jobManager', 0, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/fb8637c2e52e4b05bd2c07d742141ee7/72888507aba5484a8942e8dd0e6b6f7f', '银海软件/管理系统/系统管理/分布式任务管理/作业管理', '4', '', '', '2', 0, '1', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('59a7fb9c459a4dd48d468f2add1d32b2', '1d4e283ad5584e02811f6b188d3592bc', '接入系统管理', '', 'sysmg', 'sysmg.html#/accessSystem', 70, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/59a7fb9c459a4dd48d468f2add1d32b2', '银海软件/管理系统/系统管理/接入系统管理', '3', '', '', '2', 0, '1', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('0415d44401b24605a21b589b6aaa349e', '40337bdecb19484ebeb39d6c21aaca26', '管理系统', '', 'sysmg', '', 51, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e', '银海软件/管理系统', '1', '', '', '2', 0, '0', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('1d4e283ad5584e02811f6b188d3592bc', '0415d44401b24605a21b589b6aaa349e', '系统管理', '', 'sysmg', '', 41, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc', '银海软件/管理系统/系统管理', '2', '', '', '2', 0, '1', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('c578d9f8626d48f2971d7a18ac5281c5', 'fb8637c2e52e4b05bd2c07d742141ee7', '作业历史', null, 'sysmg', 'sysmg.html#/jobHistory', 10, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/fb8637c2e52e4b05bd2c07d742141ee7/c578d9f8626d48f2971d7a18ac5281c5', '银海软件/管理系统/系统管理/分布式任务管理/作业历史', '4', '', '', '2', 0, '1', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('78ad02fdb879406ebc5e7a4faf8f5905', '0415d44401b24605a21b589b6aaa349e', '资源权限管理', '', 'sysmg', '', 30, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/78ad02fdb879406ebc5e7a4faf8f5905', '银海软件/管理系统/资源权限管理', '2', '', '', '2', 0, '0', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('7c2862a57e34459484bd701c19a8de27', '1d4e283ad5584e02811f6b188d3592bc', '系统异常日志', '', 'sysmg', 'logmg.html#/systemExceptionLog', 20, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/7c2862a57e34459484bd701c19a8de27', '银海软件/管理系统/系统管理/系统异常日志', '3', '', '', '2', 0, '1', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('40337bdecb19484ebeb39d6c21aaca26', '0', '银海软件', '', 'sysmg', '', 0, '40337bdecb19484ebeb39d6c21aaca26', '银海软件', '0', '', '', '1', 1, '0', '1', '', '', sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('7c1dabd160974d8f90858c187cefa128', '1d4e283ad5584e02811f6b188d3592bc', '日志动态配置', '', 'sysmg', 'logmg.html#/logConfig', 0, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/7c1dabd160974d8f90858c187cefa128', '银海软件/管理系统/系统管理/日志动态配置', '3', '', '', '2', 0, '1', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('bd9d0bba145c458e841aa9da0aeeb1d8', '7459c1b525934151a1d309a304933644', '用户可管理字段配置', '', 'sysmg', 'sysmg.html#/userInfoManagement', 40, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/7459c1b525934151a1d309a304933644/bd9d0bba145c458e841aa9da0aeeb1d8', '银海软件/管理系统/资源管理/用户可管理字段配置', '3', '', '', '2', 0, '1', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('daceeff8a97b46cb9573b93ba3a5a792', '48afedddc8f04c668b3c1572c30a7745', '人员管理', '', 'sysmg', 'orguser.html#/userManagement', 10, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/48afedddc8f04c668b3c1572c30a7745/daceeff8a97b46cb9573b93ba3a5a792', '银海软件/管理系统/组织人员管理/人员管理', '3', '', '', '2', 0, '1', '1', null, null, sysdate(), '1', '1', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('7459c1b525934151a1d309a304933644', '0415d44401b24605a21b589b6aaa349e', '资源管理', '', 'sysmg', '', 40, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/7459c1b525934151a1d309a304933644', '银海软件/管理系统/资源管理', '2', '', '', '2', 0, '0', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('95bb9b749bf54e4692b0b1f14fd1b5ab', '78ad02fdb879406ebc5e7a4faf8f5905', '角色权限管理', '', 'sysmg', 'authority.html#/roleAuthorityManagement', 0, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/78ad02fdb879406ebc5e7a4faf8f5905/95bb9b749bf54e4692b0b1f14fd1b5ab', '银海软件/管理系统/资源权限管理/角色权限管理', '3', '', '', '2', 0, '1', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('84e388e319d44de585b94b039eec0092', '1d4e283ad5584e02811f6b188d3592bc', '工作台模块管理', '', 'sysmg', 'logmg.html#/defaultTemplate', 60, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/84e388e319d44de585b94b039eec0092', '银海软件/管理系统/系统管理/工作台模块管理', '3', '', '', '2', 0, '1', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('3dbde33722154503a7d22ac60f6a0e4e', '48afedddc8f04c668b3c1572c30a7745', '自定义组织管理', '', 'sysmg', 'orguser.html#/customOrgManagement', 20, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/48afedddc8f04c668b3c1572c30a7745/3dbde33722154503a7d22ac60f6a0e4e', '银海软件/管理系统/组织人员管理/自定义组织管理', '3', '', '', '2', 0, '1', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('770b2f1e77eb4d9092dc89743b5792c9', '1d4e283ad5584e02811f6b188d3592bc', '登录日志统计', '', 'sysmg', 'logmg.html#/loginLogAnalysis', 10, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/770b2f1e77eb4d9092dc89743b5792c9', '银海软件/管理系统/系统管理/登录日志统计', '3', '', '', '2', 0, '1', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('fb8637c2e52e4b05bd2c07d742141ee7', '1d4e283ad5584e02811f6b188d3592bc', '分布式任务管理', null, 'sysmg', null, 50, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/fb8637c2e52e4b05bd2c07d742141ee7', '银海软件/管理系统/系统管理/分布式任务管理', '3', '', '', '2', 0, '1', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('c88413826abd4a5b88612a6442e6db07', '1d4e283ad5584e02811f6b188d3592bc', '操作日志', null, 'sysmg', 'logmg.html#/operationLog', 40, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/c88413826abd4a5b88612a6442e6db07', '银海软件/管理系统/系统管理/操作日志', '3', null, null, '2', 0, '1', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('1e706f26bc144c1da12022359c238053', '48afedddc8f04c668b3c1572c30a7745', '组织机构管理', '', 'sysmg', 'orguser.html#/orgManagement', 0, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/48afedddc8f04c668b3c1572c30a7745/1e706f26bc144c1da12022359c238053', '银海软件/管理系统/组织人员管理/组织机构管理', '3', '', '', '2', 1, '0', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('3df588fc565d4287b3cefcd00a39cd91', '7459c1b525934151a1d309a304933644', '标签管理', '', 'sysmg', 'sysmg.html#/tagManagement', 30, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/7459c1b525934151a1d309a304933644/3df588fc565d4287b3cefcd00a39cd91', '银海软件/管理系统/资源管理/标签管理', '3', '', '', '2', 0, '1', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('ffa74f43e853441dac0ee90c787cb2e6', '1d4e283ad5584e02811f6b188d3592bc', '字典管理', '', 'sysmg', 'sysmg.html#/dictionaryManager', 30, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/ffa74f43e853441dac0ee90c787cb2e6', '银海软件/管理系统/系统管理/字典管理', '3', '', '', '2', 0, '1', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('877e407281dd48acb05a77fcb922bc73', '78ad02fdb879406ebc5e7a4faf8f5905', '权限代理', '', 'sysmg', 'authority.html#/authorityAgent', 20, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/78ad02fdb879406ebc5e7a4faf8f5905/877e407281dd48acb05a77fcb922bc73', '银海软件/管理系统/资源权限管理/权限代理', '3', '', '', '2', 0, '0', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('48afedddc8f04c668b3c1572c30a7745', '0415d44401b24605a21b589b6aaa349e', '组织人员管理', '', 'sysmg', '', 10, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/48afedddc8f04c668b3c1572c30a7745', '银海软件/管理系统/组织人员管理', '2', '', '', '2', 0, '0', '1', null, null, sysdate(), '1', '1', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('c2745b7cae7846acb9bcf8d0f4e836e8', '7459c1b525934151a1d309a304933644', '自定义资源管理', '', 'sysmg', 'sysmg.html#/customResource', 20, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/7459c1b525934151a1d309a304933644/c2745b7cae7846acb9bcf8d0f4e836e8', '银海软件/管理系统/资源管理/自定义资源管理', '3', '', '', '2', 0, '1', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('ec56a0a43b09429482632cb61f7c6908', '7459c1b525934151a1d309a304933644', '功能资源管理', '', 'sysmg', 'sysmg.html#/resourceManagement', 0, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/7459c1b525934151a1d309a304933644/ec56a0a43b09429482632cb61f7c6908', '银海软件/管理系统/资源管理/功能资源管理', '3', '', '', '2', 0, '1', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('a0609e4fd75049dbb3a6af7ab8de08a3', '40337bdecb19484ebeb39d6c21aaca26', '网上服务集成', '', 'sysmg', '', 61, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3', '银海软件/网上服务集成', '1', '', '', '2', 0, '0', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('df146a87ecec4297b17329c92f422b90', 'a0609e4fd75049dbb3a6af7ab8de08a3', '静态资源管理', '', 'sysmg', 'servicemg.html#/staticResourceMg', 40, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3/df146a87ecec4297b17329c92f422b90', '银海软件/网上服务集成/静态资源管理', '2', '', '', '2', 0, '0', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('950ceb076472425eba8dd981e0361497', 'a0609e4fd75049dbb3a6af7ab8de08a3', '服务管理', '', 'sysmg', 'servicemg.html#/serviceManagement', 10, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3/950ceb076472425eba8dd981e0361497', '银海软件/网上服务集成/服务管理', '2', '', '', '2', 0, '0', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('f126b34ea04943249c98af7801995490', 'a0609e4fd75049dbb3a6af7ab8de08a3', '站点管理', '', 'sysmg', 'servicemg.html#/siteManagement', 0, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3/f126b34ea04943249c98af7801995490', '银海软件/网上服务集成/站点管理', '2', '', '', '2', 0, '0', '0', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('d5778206f27f4d889c79caa2162c9e55', 'a0609e4fd75049dbb3a6af7ab8de08a3', '应用管理', '', 'sysmg', 'servicemg.html#/appManagement', 61, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3/d5778206f27f4d889c79caa2162c9e55', '银海软件/网上服务集成/应用管理', '2', '', '', '2', 0, '0', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('7d02437d246642ff82281d11df80f735', 'a0609e4fd75049dbb3a6af7ab8de08a3', '页面模板管理', '', 'sysmg', 'servicemg.html#/templateMg', 60, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3/7d02437d246642ff82281d11df80f735', '银海软件/网上服务集成/页面模板管理', '2', '', '', '2', 0, '0', '1', null, null, sysdate(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
--    初始化角色
INSERT INTO tarole (roleid,rolename,isadmin,rolelevel,orgid,roletype,effective,effectivetime,createuser,createtime,roledesc,rolesign,subordinate) VALUES (
'1','超级管理员',NULL,NULL,'fd811ab9c30440088df3e29ea784460a','04','1',NULL,'1', sysdate(),'超级管理员角色',NULL,NULL);

--    初始化用户组织表
INSERT INTO tauserorg (userid,orgid,isdirect) VALUES (
'1','fd811ab9c30440088df3e29ea784460a','1');

--    初始化接入系统
INSERT INTO taaccesssystem
(id,syscode,sysname,spell,protocol,domain,port,contextpath,portalsystem,menuservice,provider,effective,regtime,modifytime,backgroundaddress) VALUES (
'e55b9b7046434d66bc11b94d553fada2','sysmg','管理系统','GLXT','http','localhost','8081','sysmg','1','111','ss','1',sysdate(),sysdate(),'192.168.0.1:8083');

--    初始化标签
INSERT INTO tataggroup (taggroupid,taggroupname,effective,createuser,createtime,updatetime,destory) VALUES (
'001','用户','1','developer', sysdate(), sysdate(),'0');
INSERT INTO tataggroup (taggroupid,taggroupname,effective,createuser,createtime,updatetime,destory) VALUES (
'002','组织','1','developer', sysdate(), sysdate(),'0');

--     初始化菜单路径表taresourceurl
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
VALUES ('0', sysdate(), sysdate(), '5e3a06ed889b4b40ba88c5ee2ba192f3', '0', '5e3a06ed889b4b40ba88c5ee2ba192f3', '久远银海', '1');

--  初始化自定义组织类别名称
INSERT INTO tacustomorgtypename (customorgtypenameid, customorgtypename, effective, createuser, createtime, updatetime, destory, customorgtypenamecode, customorgtypenamedesc)
VALUES ('baa315851d3c4a90a47889672404505d', '社保组织', '1', '1', sysdate(), sysdate(), '0', 'SBZZ', '这是社保组织描述');
