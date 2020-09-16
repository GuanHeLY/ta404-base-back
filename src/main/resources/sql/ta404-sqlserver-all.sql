/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     2018/12/13 12:39:14                          */
/*==============================================================*/

if exists (select 1
           from  sysobjects
           where  id = object_id('v_dict')
                  and   type = 'V')
  drop view v_dict
go


if exists (select 1
           from  sysobjects
           where  id = object_id('TAACCESSLOG')
             and   type = 'U')
  drop table TAACCESSLOG
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TAACCESSSYSTEM')
             and   type = 'U')
  drop table TAACCESSSYSTEM
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TAAREA')
             and   type = 'U')
  drop table TAAREA
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TAAVATAR')
             and   type = 'U')
  drop table TAAVATAR
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TACONFIG')
             and   type = 'U')
  drop table TACONFIG
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TACUSTOMORG')
             and   type = 'U')
  drop table TACUSTOMORG
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TACUSTOMORGTYPENAME')
             and   type = 'U')
  drop table TACUSTOMORGTYPENAME
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TACUSTOMORGUSER')
             and   type = 'U')
  drop table TACUSTOMORGUSER
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TACUSTOMRESOURCE')
             and   type = 'U')
  drop table TACUSTOMRESOURCE
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TADICT')
             and   type = 'U')
  drop table TADICT
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TAEXTENDSETTING')
             and   type = 'U')
  drop table TAEXTENDSETTING
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TALOGINHISTORYLOG')
             and   type = 'U')
  drop table TALOGINHISTORYLOG
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TALOGINSTATLOG')
             and   type = 'U')
  drop table TALOGINSTATLOG
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TAOBJECTTAGS')
             and   type = 'U')
  drop table TAOBJECTTAGS
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TAONLINELOG')
             and   type = 'U')
  drop table TAONLINELOG
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TAONLINESERVICE')
             and   type = 'U')
  drop table TAONLINESERVICE
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TAONLINESERVICEMG')
             and   type = 'U')
  drop table TAONLINESERVICEMG
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TAONLINESERVICENAME')
             and   type = 'U')
  drop table TAONLINESERVICENAME
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TAONLINESTATLOG')
             and   type = 'U')
  drop table TAONLINESTATLOG
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TAORG')
             and   type = 'U')
  drop table TAORG
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TAORGCONSTRAINT')
             and   type = 'U')
  drop table TAORGCONSTRAINT
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TAORGMG')
             and   type = 'U')
  drop table TAORGMG
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TAORGOPLOG')
             and   type = 'U')
  drop table TAORGOPLOG
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TARESOURCE')
             and   type = 'U')
  drop table TARESOURCE
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TARESOURCECATEGORY')
             and   type = 'U')
  drop table TARESOURCECATEGORY
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TARESOURCEUI')
             and   type = 'U')
  drop table TARESOURCEUI
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TARESOURCEURL')
             and   type = 'U')
  drop table TARESOURCEURL
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TAROLE')
             and   type = 'U')
  drop table TAROLE
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TAROLEAUTHORITY')
             and   type = 'U')
  drop table TAROLEAUTHORITY
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TAROLEURLAUTHORITY')
             and   type = 'U')
  drop table TAROLEURLAUTHORITY
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TAROLEUSER')
             and   type = 'U')
  drop table TAROLEUSER
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TAROLEWORKBENCH')
             and   type = 'U')
  drop table TAROLEWORKBENCH
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TASERVEREXCEPTIONLOG')
             and   type = 'U')
  drop table TASERVEREXCEPTIONLOG
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TASITEMG')
             and   type = 'U')
  drop table TASITEMG
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TATAG')
             and   type = 'U')
  drop table TATAG
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TATAGGROUP')
             and   type = 'U')
  drop table TATAGGROUP
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TATAGSSTORE')
             and   type = 'U')
  drop table TATAGSSTORE
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TAUSER')
             and   type = 'U')
  drop table TAUSER
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TAUSERORG')
             and   type = 'U')
  drop table TAUSERORG
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TAUSERWORKBENCH')
             and   type = 'U')
  drop table TAUSERWORKBENCH
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TAZOOKEEPERADDRESSMG')
             and   type = 'U')
  drop table TAZOOKEEPERADDRESSMG
go

if exists (select 1
           from  sysobjects
           where  id = object_id('TAJOBDATASOURCEMG')
             and   type = 'U')
  drop table TAJOBDATASOURCEMG
go

if exists (select 1
           from  sysobjects
           where  id = object_id('FREEBUSYJOBMG')
             and   type = 'U')
  drop table FREEBUSYJOBMG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TAAPPMG')
            and   type = 'U')
   drop table TAAPPMG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TATEMPLATE')
            and   type = 'U')
   drop table TATEMPLATE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TATEMPLATECATALOG')
            and   type = 'U')
   drop table TATEMPLATECATALOG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TAAPPPAGE')
            and   type = 'U')
   drop table TAAPPPAGE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TASYSCONFIG')
            and   type = 'U')
   drop table TASYSCONFIG
go


/*==============================================================*/
/* Table: TAACCESSLOG                                           */
/*==============================================================*/
create table TAACCESSLOG (
                           LOGID                varchar(36)          not null,
                           USERID               varchar(36)          not null,
                           ROLEID               varchar(36)          not null,
                           MENUID               varchar(36)          not null,
                           ISPERMISSION         char(1)              not null,
                           ACCESSTIME           datetime             not null,
                           URL                  varchar(1024)        null,
                           SYSFLAG              varchar(50)          null,
                           FIELD01              varchar(10)          null,
                           FIELD02              varchar(10)          null,
                           FIELD03              varchar(10)          null,
                           FIELD04              varchar(10)          null,
                           FIELD05              varchar(10)          null,
                           constraint PK_TAACCESSLOG primary key nonclustered (LOGID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TAACCESSLOG') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSLOG'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '功能日志表',
        'user', @CurrentUser, 'table', 'TAACCESSLOG'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LOGID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSLOG', 'column', 'LOGID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '日志id',
        'user', @CurrentUser, 'table', 'TAACCESSLOG', 'column', 'LOGID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'USERID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSLOG', 'column', 'USERID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '人员id',
        'user', @CurrentUser, 'table', 'TAACCESSLOG', 'column', 'USERID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ROLEID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSLOG', 'column', 'ROLEID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '角色id',
        'user', @CurrentUser, 'table', 'TAACCESSLOG', 'column', 'ROLEID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MENUID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSLOG', 'column', 'MENUID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '功能菜单id',
        'user', @CurrentUser, 'table', 'TAACCESSLOG', 'column', 'MENUID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ISPERMISSION')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSLOG', 'column', 'ISPERMISSION'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '是否有权限',
        'user', @CurrentUser, 'table', 'TAACCESSLOG', 'column', 'ISPERMISSION'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ACCESSTIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSLOG', 'column', 'ACCESSTIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '访问时间',
        'user', @CurrentUser, 'table', 'TAACCESSLOG', 'column', 'ACCESSTIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'URL')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSLOG', 'column', 'URL'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '访问路径',
        'user', @CurrentUser, 'table', 'TAACCESSLOG', 'column', 'URL'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SYSFLAG')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSLOG', 'column', 'SYSFLAG'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '系统标识',
        'user', @CurrentUser, 'table', 'TAACCESSLOG', 'column', 'SYSFLAG'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD01')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSLOG', 'column', 'FIELD01'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段01',
        'user', @CurrentUser, 'table', 'TAACCESSLOG', 'column', 'FIELD01'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD02')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSLOG', 'column', 'FIELD02'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段02',
        'user', @CurrentUser, 'table', 'TAACCESSLOG', 'column', 'FIELD02'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD03')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSLOG', 'column', 'FIELD03'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段03',
        'user', @CurrentUser, 'table', 'TAACCESSLOG', 'column', 'FIELD03'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD04')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSLOG', 'column', 'FIELD04'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段04',
        'user', @CurrentUser, 'table', 'TAACCESSLOG', 'column', 'FIELD04'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD05')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSLOG', 'column', 'FIELD05'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段05',
        'user', @CurrentUser, 'table', 'TAACCESSLOG', 'column', 'FIELD05'
go

/*==============================================================*/
/* Table: TAACCESSSYSTEM                                        */
/*==============================================================*/
create table TAACCESSSYSTEM (
                              ID                   varchar(36)          not null,
                              SYSCODE              varchar(20)          not null,
                              SYSNAME              varchar(100)         not null,
                              SPELL                varchar(30)          null,
                              PROTOCOL             varchar(10)          null,
                              DOMAIN               varchar(100)         null,
                              PORT                 varchar(5)           null,
                              CONTEXTPATH          varchar(30)          null,
                              PORTALSYSTEM         varchar(1)           null,
                              MENUSERVICE          varchar(200)         null,
                              PROVIDER             varchar(10)          null,
                              EFFECTIVE            varchar(1)           not null,
                              REGTIME              datetime             null,
                              MODIFYTIME           datetime             null,
                              BACKGROUNDADDRESS    varchar(100)         null,
                              constraint PK_TAACCESSSYSTEM primary key nonclustered (ID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TAACCESSSYSTEM') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSSYSTEM'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '接入系统表',
        'user', @CurrentUser, 'table', 'TAACCESSSYSTEM'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSSYSTEM')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'ID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '接入系统id',
        'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'ID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSSYSTEM')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SYSCODE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'SYSCODE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '系统标识',
        'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'SYSCODE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSSYSTEM')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SYSNAME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'SYSNAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '系统名称',
        'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'SYSNAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSSYSTEM')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SPELL')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'SPELL'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '拼音简写',
        'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'SPELL'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSSYSTEM')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PROTOCOL')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'PROTOCOL'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '系统协议',
        'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'PROTOCOL'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSSYSTEM')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DOMAIN')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'DOMAIN'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '域名或ip',
        'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'DOMAIN'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSSYSTEM')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PORT')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'PORT'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '端口',
        'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'PORT'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSSYSTEM')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CONTEXTPATH')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'CONTEXTPATH'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '上下文',
        'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'CONTEXTPATH'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSSYSTEM')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PORTALSYSTEM')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'PORTALSYSTEM'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '是否接入门户',
        'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'PORTALSYSTEM'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSSYSTEM')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MENUSERVICE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'MENUSERVICE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '菜单服务',
        'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'MENUSERVICE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSSYSTEM')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PROVIDER')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'PROVIDER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '系统提供方',
        'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'PROVIDER'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSSYSTEM')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EFFECTIVE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'EFFECTIVE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '有效标识',
        'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'EFFECTIVE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSSYSTEM')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'REGTIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'REGTIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '注册时间',
        'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'REGTIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSSYSTEM')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MODIFYTIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'MODIFYTIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '修改时间',
        'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'MODIFYTIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAACCESSSYSTEM')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BACKGROUNDADDRESS')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'BACKGROUNDADDRESS'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '后台地址',
        'user', @CurrentUser, 'table', 'TAACCESSSYSTEM', 'column', 'BACKGROUNDADDRESS'
go

/*==============================================================*/
/* Table: TAAREA                                                */
/*==============================================================*/
create table TAAREA (
                      AREAID               varchar(36)          not null,
                      PARENTID             varchar(36)          not null,
                      AREANAME             varchar(100)         not null,
                      AREACODE             varchar(20)          not null,
                      IDPATH               varchar(300)         not null,
                      NAMEPATH             varchar(300)         not null,
                      AREALEVEL            numeric(2,0)         null,
                      SPELL                varchar(100)         null,
                      CREATEUSER           varchar(36)          not null,
                      AREAORDER            numeric(20,0)        null,
                      EFFECTIVE            varchar(1)           not null,
                      CREATETIME           datetime             not null,
                      MODIFYTIME           datetime             not null,
                      DESTORY              varchar(1)           null,
                      constraint PK_TAAREA primary key nonclustered (AREAID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TAAREA') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAAREA'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '行政区划表',
        'user', @CurrentUser, 'table', 'TAAREA'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAAREA')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AREAID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAAREA', 'column', 'AREAID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '行政区划ID',
        'user', @CurrentUser, 'table', 'TAAREA', 'column', 'AREAID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAAREA')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PARENTID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAAREA', 'column', 'PARENTID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '父级ID',
        'user', @CurrentUser, 'table', 'TAAREA', 'column', 'PARENTID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAAREA')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AREANAME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAAREA', 'column', 'AREANAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '行政区划名称',
        'user', @CurrentUser, 'table', 'TAAREA', 'column', 'AREANAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAAREA')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AREACODE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAAREA', 'column', 'AREACODE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '行政区划编码',
        'user', @CurrentUser, 'table', 'TAAREA', 'column', 'AREACODE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAAREA')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IDPATH')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAAREA', 'column', 'IDPATH'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '行政区划ID全路径',
        'user', @CurrentUser, 'table', 'TAAREA', 'column', 'IDPATH'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAAREA')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'NAMEPATH')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAAREA', 'column', 'NAMEPATH'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '行政区划名称路径',
        'user', @CurrentUser, 'table', 'TAAREA', 'column', 'NAMEPATH'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAAREA')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AREALEVEL')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAAREA', 'column', 'AREALEVEL'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '行政区划层级',
        'user', @CurrentUser, 'table', 'TAAREA', 'column', 'AREALEVEL'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAAREA')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SPELL')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAAREA', 'column', 'SPELL'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '拼音简写',
        'user', @CurrentUser, 'table', 'TAAREA', 'column', 'SPELL'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAAREA')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATEUSER')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAAREA', 'column', 'CREATEUSER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建人',
        'user', @CurrentUser, 'table', 'TAAREA', 'column', 'CREATEUSER'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAAREA')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AREAORDER')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAAREA', 'column', 'AREAORDER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '排序号',
        'user', @CurrentUser, 'table', 'TAAREA', 'column', 'AREAORDER'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAAREA')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EFFECTIVE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAAREA', 'column', 'EFFECTIVE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '有效标识',
        'user', @CurrentUser, 'table', 'TAAREA', 'column', 'EFFECTIVE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAAREA')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATETIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAAREA', 'column', 'CREATETIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建时间',
        'user', @CurrentUser, 'table', 'TAAREA', 'column', 'CREATETIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAAREA')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MODIFYTIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAAREA', 'column', 'MODIFYTIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '更新时间',
        'user', @CurrentUser, 'table', 'TAAREA', 'column', 'MODIFYTIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAAREA')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DESTORY')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAAREA', 'column', 'DESTORY'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '销毁标识',
        'user', @CurrentUser, 'table', 'TAAREA', 'column', 'DESTORY'
go

/*==============================================================*/
/* Table: TAAVATAR                                              */
/*==============================================================*/
create table TAAVATAR (
                        USERID               varchar(36)          not null,
                        AVATAR               varbinary(max)            null,
                        UPDATETIME           datetime             not null,
                        constraint PK_TAAVATAR primary key nonclustered (USERID, UPDATETIME)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TAAVATAR') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAAVATAR'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '用户头像表',
        'user', @CurrentUser, 'table', 'TAAVATAR'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAAVATAR')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'USERID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAAVATAR', 'column', 'USERID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '用户id',
        'user', @CurrentUser, 'table', 'TAAVATAR', 'column', 'USERID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAAVATAR')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AVATAR')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAAVATAR', 'column', 'AVATAR'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '头像base64',
        'user', @CurrentUser, 'table', 'TAAVATAR', 'column', 'AVATAR'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAAVATAR')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UPDATETIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAAVATAR', 'column', 'UPDATETIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '更新时间',
        'user', @CurrentUser, 'table', 'TAAVATAR', 'column', 'UPDATETIME'
go

/*==============================================================*/
/* Table: TACONFIG                                              */
/*==============================================================*/
create table TACONFIG (
                        CONFIGID             varchar(36)          not null,
                        CONFIGKEY            varchar(30)          not null,
                        CONFIGVALUE          varchar(1000)        not null,
                        CONFIGNAME           varchar(150)         null,
                        CONFIGDESC           varchar(1000)        null,
                        constraint PK_TACONFIG primary key nonclustered (CONFIGID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TACONFIG') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACONFIG'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '配置表',
        'user', @CurrentUser, 'table', 'TACONFIG'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACONFIG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CONFIGID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACONFIG', 'column', 'CONFIGID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '配置项ID',
        'user', @CurrentUser, 'table', 'TACONFIG', 'column', 'CONFIGID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACONFIG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CONFIGKEY')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACONFIG', 'column', 'CONFIGKEY'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '配置项标识',
        'user', @CurrentUser, 'table', 'TACONFIG', 'column', 'CONFIGKEY'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACONFIG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CONFIGVALUE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACONFIG', 'column', 'CONFIGVALUE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '配置项内容',
        'user', @CurrentUser, 'table', 'TACONFIG', 'column', 'CONFIGVALUE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACONFIG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CONFIGNAME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACONFIG', 'column', 'CONFIGNAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '配置项名称',
        'user', @CurrentUser, 'table', 'TACONFIG', 'column', 'CONFIGNAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACONFIG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CONFIGDESC')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACONFIG', 'column', 'CONFIGDESC'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '配置说明',
        'user', @CurrentUser, 'table', 'TACONFIG', 'column', 'CONFIGDESC'
go

/*==============================================================*/
/* Table: TACUSTOMORG                                           */
/*==============================================================*/
create table TACUSTOMORG (
                           CUSTOMORGID          varchar(36)          not null,
                           PARENTID             varchar(36)          null,
                           CUSTOMCODE           varchar(255)         null,
                           CUSTOMORGTYPENAMEID  varchar(36)          not null,
                           EFFECTIVE            varchar(1)           not null,
                           ORDERNO              numeric(10,0)        null,
                           CUSTOMORGNAME        varchar(255)         null,
                           CUSTOMORGPATHID      varchar(1024)         null,
                           CUSTOMORGPATH        varchar(1024)         null,
                           CREATEUSER           varchar(36)          null,
                           CREATETIME           datetime             not null,
                           UPDATETIME           datetime             not null,
                           DESTORY              varchar(1)           not null,
                           SPELL                varchar(20)          null,
                           ORGMANAGER           varchar(36)          null,
                           ORGCODE              varchar(18)          null,
                           CONTACTS             varchar(36)          null,
                           ADDRESS              varchar(450)         null,
                           TEL                  varchar(20)          null,
                           FIELD01              varchar(1000)        null,
                           FIELD02              varchar(1000)        null,
                           FIELD03              varchar(1000)        null,
                           FIELD04              varchar(1000)        null,
                           FIELD05              varchar(1000)        null,
                           FIELD06              varchar(1000)        null,
                           FIELD07              varchar(1000)        null,
                           FIELD08              varchar(1000)        null,
                           FIELD09              varchar(1000)        null,
                           FIELD10              varchar(1000)        null,
                           constraint PK_TACUSTOMORG primary key nonclustered (CUSTOMORGID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TACUSTOMORG') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '自定义组织表',
        'user', @CurrentUser, 'table', 'TACUSTOMORG'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CUSTOMORGID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'CUSTOMORGID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '自定义组织id',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'CUSTOMORGID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PARENTID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'PARENTID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '当前组织父级id',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'PARENTID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CUSTOMCODE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'CUSTOMCODE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '自定义编码',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'CUSTOMCODE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CUSTOMORGTYPENAMEID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'CUSTOMORGTYPENAMEID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '自定义组织名称id',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'CUSTOMORGTYPENAMEID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EFFECTIVE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'EFFECTIVE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '有效标识',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'EFFECTIVE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ORDERNO')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'ORDERNO'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '排序号',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'ORDERNO'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CUSTOMORGNAME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'CUSTOMORGNAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '自定义组织名称',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'CUSTOMORGNAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CUSTOMORGPATHID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'CUSTOMORGPATHID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '自定义组织路径id',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'CUSTOMORGPATHID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CUSTOMORGPATH')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'CUSTOMORGPATH'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '自定义组织全路径',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'CUSTOMORGPATH'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATEUSER')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'CREATEUSER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建人',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'CREATEUSER'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATETIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'CREATETIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建时间',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'CREATETIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UPDATETIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'UPDATETIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '更新时间',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'UPDATETIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DESTORY')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'DESTORY'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '销毁标识',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'DESTORY'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SPELL')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'SPELL'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '拼音简写',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'SPELL'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ORGMANAGER')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'ORGMANAGER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '组织负责人',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'ORGMANAGER'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ORGCODE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'ORGCODE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '组织代码',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'ORGCODE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CONTACTS')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'CONTACTS'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '单位联系人',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'CONTACTS'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ADDRESS')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'ADDRESS'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '联系地址',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'ADDRESS'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TEL')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'TEL'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '联系电话',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'TEL'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD01')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'FIELD01'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段01',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'FIELD01'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD02')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'FIELD02'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段02',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'FIELD02'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD03')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'FIELD03'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段03',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'FIELD03'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD04')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'FIELD04'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段04',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'FIELD04'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD05')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'FIELD05'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段05',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'FIELD05'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD06')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'FIELD06'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段06',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'FIELD06'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD07')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'FIELD07'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段07',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'FIELD07'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD08')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'FIELD08'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段08',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'FIELD08'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD09')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'FIELD09'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段09',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'FIELD09'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD10')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'FIELD10'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段10',
        'user', @CurrentUser, 'table', 'TACUSTOMORG', 'column', 'FIELD10'
go

/*==============================================================*/
/* Table: TACUSTOMORGTYPENAME                                   */
/*==============================================================*/
create table TACUSTOMORGTYPENAME (
                                   CUSTOMORGTYPENAMEID  varchar(36)          not null,
                                   CUSTOMORGTYPENAME    varchar(255)          null,
                                   EFFECTIVE            varchar(1)           not null,
                                   CREATEUSER           varchar(36)          not null,
                                   CREATETIME           datetime             not null,
                                   UPDATETIME           datetime             not null,
                                   DESTORY              varchar(1)           not null,
                                   CUSTOMORGTYPENAMECODE varchar(255)          null,
                                   CUSTOMORGTYPENAMEDESC varchar(255)          null,
                                   constraint PK_TACUSTOMORGTYPENAME primary key nonclustered (CUSTOMORGTYPENAMEID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TACUSTOMORGTYPENAME') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORGTYPENAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '自定义组织类型名称表',
        'user', @CurrentUser, 'table', 'TACUSTOMORGTYPENAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORGTYPENAME')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CUSTOMORGTYPENAMEID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORGTYPENAME', 'column', 'CUSTOMORGTYPENAMEID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '自定义组织类型名称ID',
        'user', @CurrentUser, 'table', 'TACUSTOMORGTYPENAME', 'column', 'CUSTOMORGTYPENAMEID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORGTYPENAME')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CUSTOMORGTYPENAME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORGTYPENAME', 'column', 'CUSTOMORGTYPENAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '自定义组织类型名称',
        'user', @CurrentUser, 'table', 'TACUSTOMORGTYPENAME', 'column', 'CUSTOMORGTYPENAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORGTYPENAME')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EFFECTIVE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORGTYPENAME', 'column', 'EFFECTIVE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '是否有效',
        'user', @CurrentUser, 'table', 'TACUSTOMORGTYPENAME', 'column', 'EFFECTIVE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORGTYPENAME')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATEUSER')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORGTYPENAME', 'column', 'CREATEUSER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建人',
        'user', @CurrentUser, 'table', 'TACUSTOMORGTYPENAME', 'column', 'CREATEUSER'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORGTYPENAME')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATETIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORGTYPENAME', 'column', 'CREATETIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建时间',
        'user', @CurrentUser, 'table', 'TACUSTOMORGTYPENAME', 'column', 'CREATETIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORGTYPENAME')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UPDATETIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORGTYPENAME', 'column', 'UPDATETIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '更新时间',
        'user', @CurrentUser, 'table', 'TACUSTOMORGTYPENAME', 'column', 'UPDATETIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORGTYPENAME')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DESTORY')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORGTYPENAME', 'column', 'DESTORY'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '销毁状态',
        'user', @CurrentUser, 'table', 'TACUSTOMORGTYPENAME', 'column', 'DESTORY'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORGTYPENAME')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CUSTOMORGTYPENAMECODE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORGTYPENAME', 'column', 'CUSTOMORGTYPENAMECODE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '自定义组织类型名称编码',
        'user', @CurrentUser, 'table', 'TACUSTOMORGTYPENAME', 'column', 'CUSTOMORGTYPENAMECODE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORGTYPENAME')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CUSTOMORGTYPENAMEDESC')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORGTYPENAME', 'column', 'CUSTOMORGTYPENAMEDESC'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '自定义组织类型名称描述',
        'user', @CurrentUser, 'table', 'TACUSTOMORGTYPENAME', 'column', 'CUSTOMORGTYPENAMEDESC'
go

/*==============================================================*/
/* Table: TACUSTOMORGUSER                                       */
/*==============================================================*/
create table TACUSTOMORGUSER (
                               CUSTOMORGID          varchar(36)          not null,
                               USERID               varchar(36)          not null,
                               constraint PK_TACUSTOMORGUSER primary key nonclustered (CUSTOMORGID, USERID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TACUSTOMORGUSER') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORGUSER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '自定义组织用户关系表',
        'user', @CurrentUser, 'table', 'TACUSTOMORGUSER'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORGUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CUSTOMORGID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORGUSER', 'column', 'CUSTOMORGID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '自定义组织ID',
        'user', @CurrentUser, 'table', 'TACUSTOMORGUSER', 'column', 'CUSTOMORGID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMORGUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'USERID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMORGUSER', 'column', 'USERID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '用户Id',
        'user', @CurrentUser, 'table', 'TACUSTOMORGUSER', 'column', 'USERID'
go

/*==============================================================*/
/* Table: TACUSTOMRESOURCE                                      */
/*==============================================================*/
create table TACUSTOMRESOURCE (
                                CUSTOMRESOURCEID     varchar(36)          not null,
                                RESOURCENAME         varchar(450)         not null,
                                PARENTID             varchar(36)          not null,
                                CODE                 varchar(100)         null,
                                RESOURCECONTENT      varchar(1024)        null,
                                RESOURCECATEGORY     varchar(32)          null,
                                EFFECTIVE            varchar(1)           not null,
                                ADDTIME              datetime             null,
                                MODIFYTIME           datetime             null,
                                SYSTEM               varchar(36)          null,
                                constraint PK_TACUSTOMRESOURCE primary key nonclustered (CUSTOMRESOURCEID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TACUSTOMRESOURCE') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMRESOURCE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '自定义资源表',
        'user', @CurrentUser, 'table', 'TACUSTOMRESOURCE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMRESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CUSTOMRESOURCEID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMRESOURCE', 'column', 'CUSTOMRESOURCEID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '自定义资源Id',
        'user', @CurrentUser, 'table', 'TACUSTOMRESOURCE', 'column', 'CUSTOMRESOURCEID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMRESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RESOURCENAME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMRESOURCE', 'column', 'RESOURCENAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '资源名称',
        'user', @CurrentUser, 'table', 'TACUSTOMRESOURCE', 'column', 'RESOURCENAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMRESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PARENTID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMRESOURCE', 'column', 'PARENTID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '父Id',
        'user', @CurrentUser, 'table', 'TACUSTOMRESOURCE', 'column', 'PARENTID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMRESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMRESOURCE', 'column', 'CODE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '资源编码',
        'user', @CurrentUser, 'table', 'TACUSTOMRESOURCE', 'column', 'CODE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMRESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RESOURCECONTENT')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMRESOURCE', 'column', 'RESOURCECONTENT'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '自定义资源内容',
        'user', @CurrentUser, 'table', 'TACUSTOMRESOURCE', 'column', 'RESOURCECONTENT'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMRESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RESOURCECATEGORY')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMRESOURCE', 'column', 'RESOURCECATEGORY'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '资源所属类别',
        'user', @CurrentUser, 'table', 'TACUSTOMRESOURCE', 'column', 'RESOURCECATEGORY'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMRESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EFFECTIVE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMRESOURCE', 'column', 'EFFECTIVE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '有效状态',
        'user', @CurrentUser, 'table', 'TACUSTOMRESOURCE', 'column', 'EFFECTIVE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMRESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ADDTIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMRESOURCE', 'column', 'ADDTIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建事件',
        'user', @CurrentUser, 'table', 'TACUSTOMRESOURCE', 'column', 'ADDTIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMRESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MODIFYTIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMRESOURCE', 'column', 'MODIFYTIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '修改时间',
        'user', @CurrentUser, 'table', 'TACUSTOMRESOURCE', 'column', 'MODIFYTIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TACUSTOMRESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SYSTEM')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TACUSTOMRESOURCE', 'column', 'SYSTEM'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '资源所属系统',
        'user', @CurrentUser, 'table', 'TACUSTOMRESOURCE', 'column', 'SYSTEM'
go

/*==============================================================*/
/* Table: TADICT                                                */
/*==============================================================*/
create table TADICT (
                      NAME                 varchar(50)          not null,
                      TYPE                 varchar(50)          not null,
                      LABEL                varchar(50)          not null,
                      VALUE                varchar(6)           not null,
                      PARENTVALUE          varchar(6)           null,
                      SORT                 numeric(4,0)         not null,
                      AUTHORITY            varchar(20)          not null,
                      CSSCLASS             varchar(20)          null,
                      CSSSTYLE             varchar(128)         null,
                      REMARKS              varchar(256)         null,
                      CREATEDATE           datetime             not null,
                      CREATEUSER           varchar(36)          not null,
                      VERSION              varchar(10)          not null,
                      STATUS               varchar(2)           not null,
                      FIELD01              varchar(10)          null,
                      FIELD02              varchar(10)          null,
                      FIELD03              varchar(10)          null,
                      FIELD04              varchar(10)          null,
                      FIELD05              varchar(10)          null,
                      SYSTEM               varchar(2)           not null,
                      NEWTYPE              varchar(2)           not null,
                      constraint PK_TADICT primary key nonclustered (TYPE, VALUE)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TADICT') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TADICT'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '数据字典表',
        'user', @CurrentUser, 'table', 'TADICT'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TADICT')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'NAME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TADICT', 'column', 'NAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '字典名称',
        'user', @CurrentUser, 'table', 'TADICT', 'column', 'NAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TADICT')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TYPE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TADICT', 'column', 'TYPE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '字典类型',
        'user', @CurrentUser, 'table', 'TADICT', 'column', 'TYPE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TADICT')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LABEL')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TADICT', 'column', 'LABEL'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '字典标签',
        'user', @CurrentUser, 'table', 'TADICT', 'column', 'LABEL'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TADICT')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'VALUE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TADICT', 'column', 'VALUE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '字典键值',
        'user', @CurrentUser, 'table', 'TADICT', 'column', 'VALUE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TADICT')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PARENTVALUE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TADICT', 'column', 'PARENTVALUE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '父级字典值',
        'user', @CurrentUser, 'table', 'TADICT', 'column', 'PARENTVALUE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TADICT')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SORT')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TADICT', 'column', 'SORT'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '顺序',
        'user', @CurrentUser, 'table', 'TADICT', 'column', 'SORT'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TADICT')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AUTHORITY')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TADICT', 'column', 'AUTHORITY'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '权限标识',
        'user', @CurrentUser, 'table', 'TADICT', 'column', 'AUTHORITY'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TADICT')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CSSSTYLE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TADICT', 'column', 'CSSSTYLE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        'css样式',
        'user', @CurrentUser, 'table', 'TADICT', 'column', 'CSSSTYLE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TADICT')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'REMARKS')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TADICT', 'column', 'REMARKS'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '备注',
        'user', @CurrentUser, 'table', 'TADICT', 'column', 'REMARKS'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TADICT')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATEDATE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TADICT', 'column', 'CREATEDATE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建时间',
        'user', @CurrentUser, 'table', 'TADICT', 'column', 'CREATEDATE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TADICT')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATEUSER')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TADICT', 'column', 'CREATEUSER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建人',
        'user', @CurrentUser, 'table', 'TADICT', 'column', 'CREATEUSER'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TADICT')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'VERSION')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TADICT', 'column', 'VERSION'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '版本',
        'user', @CurrentUser, 'table', 'TADICT', 'column', 'VERSION'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TADICT')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'STATUS')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TADICT', 'column', 'STATUS'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '字典状态',
        'user', @CurrentUser, 'table', 'TADICT', 'column', 'STATUS'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TADICT')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD01')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TADICT', 'column', 'FIELD01'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '备用字段1',
        'user', @CurrentUser, 'table', 'TADICT', 'column', 'FIELD01'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TADICT')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD02')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TADICT', 'column', 'FIELD02'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '备用字段2',
        'user', @CurrentUser, 'table', 'TADICT', 'column', 'FIELD02'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TADICT')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD03')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TADICT', 'column', 'FIELD03'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '备用字段3',
        'user', @CurrentUser, 'table', 'TADICT', 'column', 'FIELD03'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TADICT')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD04')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TADICT', 'column', 'FIELD04'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '备用字段4',
        'user', @CurrentUser, 'table', 'TADICT', 'column', 'FIELD04'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TADICT')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD05')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TADICT', 'column', 'FIELD05'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '备用字段5',
        'user', @CurrentUser, 'table', 'TADICT', 'column', 'FIELD05'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TADICT')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SYSTEM')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TADICT', 'column', 'SYSTEM'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '系统字典',
        'user', @CurrentUser, 'table', 'TADICT', 'column', 'SYSTEM'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TADICT')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'NEWTYPE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TADICT', 'column', 'NEWTYPE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '新增类型标识',
        'user', @CurrentUser, 'table', 'TADICT', 'column', 'NEWTYPE'
go

/*==============================================================*/
/* Table: TAEXTENDSETTING                                       */
/*==============================================================*/
create table TAEXTENDSETTING (
                               FIELDID              varchar(10)          not null,
                               TYPE                 varchar(2)           not null,
                               EFFECTIVE            varchar(1)           not null,
                               HIDE                 varchar(1)           null,
                               DISPLAYTEXT          varchar(150)         null,
                               TITEXT               varchar(1500)        null,
                               ORDERNO              numeric(10,0)        null,
                               REQUIRED             varchar(1)           null,
                               UNCHANGEABLE         varchar(1)           null,
                               FORMTYPE             varchar(20)          null,
                               CONTENTSIZE          numeric(16,0)        null,
                               VALIDREG             varchar(1000)        null,
                               CONNECTAA10          varchar(30)          null,
                               PROTECTPRIVACY       varchar(1)           null,
                               FORMID               varchar(10)          null,
                               MORE                 varchar(1)           null,
                               constraint PK_TAEXTENDSETTING primary key nonclustered (FIELDID, TYPE)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TAEXTENDSETTING') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAEXTENDSETTING'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '管理字段配置表',
        'user', @CurrentUser, 'table', 'TAEXTENDSETTING'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAEXTENDSETTING')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELDID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'FIELDID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '字段名称',
        'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'FIELDID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAEXTENDSETTING')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TYPE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'TYPE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '账户类型',
        'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'TYPE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAEXTENDSETTING')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EFFECTIVE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'EFFECTIVE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '是否有效',
        'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'EFFECTIVE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAEXTENDSETTING')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'HIDE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'HIDE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '是否隐藏',
        'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'HIDE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAEXTENDSETTING')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DISPLAYTEXT')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'DISPLAYTEXT'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '标题文字',
        'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'DISPLAYTEXT'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAEXTENDSETTING')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TITEXT')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'TITEXT'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '信息提示文字',
        'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'TITEXT'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAEXTENDSETTING')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ORDERNO')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'ORDERNO'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '显示顺序',
        'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'ORDERNO'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAEXTENDSETTING')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'REQUIRED')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'REQUIRED'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '是否必填',
        'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'REQUIRED'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAEXTENDSETTING')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UNCHANGEABLE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'UNCHANGEABLE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '不可编辑',
        'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'UNCHANGEABLE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAEXTENDSETTING')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FORMTYPE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'FORMTYPE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '表单元素类型',
        'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'FORMTYPE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAEXTENDSETTING')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CONTENTSIZE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'CONTENTSIZE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '内容长度',
        'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'CONTENTSIZE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAEXTENDSETTING')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'VALIDREG')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'VALIDREG'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '验证表达式',
        'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'VALIDREG'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAEXTENDSETTING')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CONNECTAA10')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'CONNECTAA10'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '关联码表',
        'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'CONNECTAA10'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAEXTENDSETTING')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PROTECTPRIVACY')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'PROTECTPRIVACY'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '隐私保护',
        'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'PROTECTPRIVACY'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAEXTENDSETTING')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FORMID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'FORMID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '表单标识',
        'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'FORMID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAEXTENDSETTING')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MORE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'MORE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '是否展示在更多菜单项',
        'user', @CurrentUser, 'table', 'TAEXTENDSETTING', 'column', 'MORE'
go

/*==============================================================*/
/* Table: TALOGINHISTORYLOG                                     */
/*==============================================================*/
create table TALOGINHISTORYLOG (
                                 LOGID                varchar(36)          not null,
                                 USERID               varchar(36)          not null,
                                 LOGINTIME            datetime             not null,
                                 LOGOUTTIME           datetime             not null,
                                 CLIENTIP             varchar(200)         not null,
                                 SESSIONID            varchar(200)         not null,
                                 SERVERIP             varchar(200)         null,
                                 SYSPATH              varchar(50)          null,
                                 CLIENTSYSTEM         varchar(50)          null,
                                 CLIENTBROWSER        varchar(50)          null,
                                 CLIENTSCREENSIZE     varchar(50)          null,
                                 constraint PK_TALOGINHISTORYLOG primary key nonclustered (LOGID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TALOGINHISTORYLOG') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TALOGINHISTORYLOG'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '用户登录日志表',
        'user', @CurrentUser, 'table', 'TALOGINHISTORYLOG'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TALOGINHISTORYLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LOGID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TALOGINHISTORYLOG', 'column', 'LOGID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '日志ID',
        'user', @CurrentUser, 'table', 'TALOGINHISTORYLOG', 'column', 'LOGID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TALOGINHISTORYLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'USERID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TALOGINHISTORYLOG', 'column', 'USERID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '用户ID',
        'user', @CurrentUser, 'table', 'TALOGINHISTORYLOG', 'column', 'USERID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TALOGINHISTORYLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LOGINTIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TALOGINHISTORYLOG', 'column', 'LOGINTIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '登录时间',
        'user', @CurrentUser, 'table', 'TALOGINHISTORYLOG', 'column', 'LOGINTIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TALOGINHISTORYLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LOGOUTTIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TALOGINHISTORYLOG', 'column', 'LOGOUTTIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '退出时间',
        'user', @CurrentUser, 'table', 'TALOGINHISTORYLOG', 'column', 'LOGOUTTIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TALOGINHISTORYLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CLIENTIP')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TALOGINHISTORYLOG', 'column', 'CLIENTIP'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '客户端IP',
        'user', @CurrentUser, 'table', 'TALOGINHISTORYLOG', 'column', 'CLIENTIP'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TALOGINHISTORYLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SESSIONID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TALOGINHISTORYLOG', 'column', 'SESSIONID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '登录时SessionID',
        'user', @CurrentUser, 'table', 'TALOGINHISTORYLOG', 'column', 'SESSIONID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TALOGINHISTORYLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SERVERIP')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TALOGINHISTORYLOG', 'column', 'SERVERIP'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '服务端IP',
        'user', @CurrentUser, 'table', 'TALOGINHISTORYLOG', 'column', 'SERVERIP'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TALOGINHISTORYLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SYSPATH')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TALOGINHISTORYLOG', 'column', 'SYSPATH'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '系统路径',
        'user', @CurrentUser, 'table', 'TALOGINHISTORYLOG', 'column', 'SYSPATH'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TALOGINHISTORYLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CLIENTSYSTEM')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TALOGINHISTORYLOG', 'column', 'CLIENTSYSTEM'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '客户端系统版本',
        'user', @CurrentUser, 'table', 'TALOGINHISTORYLOG', 'column', 'CLIENTSYSTEM'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TALOGINHISTORYLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CLIENTBROWSER')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TALOGINHISTORYLOG', 'column', 'CLIENTBROWSER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '客户端浏览器版本',
        'user', @CurrentUser, 'table', 'TALOGINHISTORYLOG', 'column', 'CLIENTBROWSER'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TALOGINHISTORYLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CLIENTSCREENSIZE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TALOGINHISTORYLOG', 'column', 'CLIENTSCREENSIZE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '客户端分辨率',
        'user', @CurrentUser, 'table', 'TALOGINHISTORYLOG', 'column', 'CLIENTSCREENSIZE'
go

/*==============================================================*/
/* Table: TALOGINSTATLOG                                        */
/*==============================================================*/
create table TALOGINSTATLOG (
                              STATDATE             varchar(20)          not null,
                              POINTINTIME          varchar(20)          not null,
                              LOGINNUM             numeric(15,0)        null,
                              constraint PK_TALOGINSTATLOG primary key nonclustered (STATDATE, POINTINTIME)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TALOGINSTATLOG') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TALOGINSTATLOG'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '登录统计日志表',
        'user', @CurrentUser, 'table', 'TALOGINSTATLOG'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TALOGINSTATLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'STATDATE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TALOGINSTATLOG', 'column', 'STATDATE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '统计时间（YYYY-MM-DD）',
        'user', @CurrentUser, 'table', 'TALOGINSTATLOG', 'column', 'STATDATE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TALOGINSTATLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'POINTINTIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TALOGINSTATLOG', 'column', 'POINTINTIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '统计时点（HH:MM）',
        'user', @CurrentUser, 'table', 'TALOGINSTATLOG', 'column', 'POINTINTIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TALOGINSTATLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LOGINNUM')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TALOGINSTATLOG', 'column', 'LOGINNUM'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '已经登录并注销的用户数',
        'user', @CurrentUser, 'table', 'TALOGINSTATLOG', 'column', 'LOGINNUM'
go

/*==============================================================*/
/* Table: TAOBJECTTAGS                                          */
/*==============================================================*/
create table TAOBJECTTAGS (
                            OBJECTID             varchar(36)          not null,
                            OBJECTTYPE           varchar(3)           not null,
                            TAGID                varchar(36)          not null,
                            constraint PK_TAOBJECTTAGS primary key nonclustered (OBJECTID, OBJECTTYPE, TAGID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TAOBJECTTAGS') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAOBJECTTAGS'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '对象表',
        'user', @CurrentUser, 'table', 'TAOBJECTTAGS'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAOBJECTTAGS')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'OBJECTID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAOBJECTTAGS', 'column', 'OBJECTID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '对象编号（用户编号、机构编号等）',
        'user', @CurrentUser, 'table', 'TAOBJECTTAGS', 'column', 'OBJECTID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAOBJECTTAGS')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'OBJECTTYPE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAOBJECTTAGS', 'column', 'OBJECTTYPE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '对象类型（用户、机构等）',
        'user', @CurrentUser, 'table', 'TAOBJECTTAGS', 'column', 'OBJECTTYPE'
go

/*==============================================================*/
/* Table: TAONLINELOG                                           */
/*==============================================================*/
create table TAONLINELOG (
                           LOGID                varchar(36)          not null,
                           USERID               varchar(36)          not null,
                           LOGINTIME            datetime             not null,
                           CURRESOURCE          varchar(1000)        null,
                           CLIENTIP             varchar(200)         not null,
                           SESSIONID            varchar(200)         not null,
                           SYSPATH              varchar(50)          null,
                           SERVERIP             varchar(200)         null,
                           CLIENTSYSTEM         varchar(50)          null,
                           CLIENTBROWSER        varchar(50)          null,
                           CLIENTSCREENSIZE     varchar(50)          null,
                           constraint PK_TAONLINELOG primary key nonclustered (LOGID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TAONLINELOG') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINELOG'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '用户在线日志表',
        'user', @CurrentUser, 'table', 'TAONLINELOG'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINELOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LOGID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINELOG', 'column', 'LOGID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '日志编号',
        'user', @CurrentUser, 'table', 'TAONLINELOG', 'column', 'LOGID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINELOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'USERID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINELOG', 'column', 'USERID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '用户编号',
        'user', @CurrentUser, 'table', 'TAONLINELOG', 'column', 'USERID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINELOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LOGINTIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINELOG', 'column', 'LOGINTIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '登录时间',
        'user', @CurrentUser, 'table', 'TAONLINELOG', 'column', 'LOGINTIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINELOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CURRESOURCE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINELOG', 'column', 'CURRESOURCE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '当前资源',
        'user', @CurrentUser, 'table', 'TAONLINELOG', 'column', 'CURRESOURCE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINELOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CLIENTIP')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINELOG', 'column', 'CLIENTIP'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '客户端ip地址',
        'user', @CurrentUser, 'table', 'TAONLINELOG', 'column', 'CLIENTIP'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINELOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SESSIONID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINELOG', 'column', 'SESSIONID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '登录请求的sessionId',
        'user', @CurrentUser, 'table', 'TAONLINELOG', 'column', 'SESSIONID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINELOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SYSPATH')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINELOG', 'column', 'SYSPATH'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '系统路径',
        'user', @CurrentUser, 'table', 'TAONLINELOG', 'column', 'SYSPATH'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINELOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SERVERIP')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINELOG', 'column', 'SERVERIP'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '服务端ip地址',
        'user', @CurrentUser, 'table', 'TAONLINELOG', 'column', 'SERVERIP'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINELOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CLIENTSYSTEM')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINELOG', 'column', 'CLIENTSYSTEM'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '客户端操作系统版本',
        'user', @CurrentUser, 'table', 'TAONLINELOG', 'column', 'CLIENTSYSTEM'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINELOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CLIENTBROWSER')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINELOG', 'column', 'CLIENTBROWSER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '客户端浏览器版本',
        'user', @CurrentUser, 'table', 'TAONLINELOG', 'column', 'CLIENTBROWSER'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINELOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CLIENTSCREENSIZE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINELOG', 'column', 'CLIENTSCREENSIZE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '客户端屏幕分辨率大小',
        'user', @CurrentUser, 'table', 'TAONLINELOG', 'column', 'CLIENTSCREENSIZE'
go

/*==============================================================*/
/* Table: TAONLINESERVICE                                       */
/*==============================================================*/
create table TAONLINESERVICE (
                               CREATEUSER           varchar(36)          not null,
                               DESTORY              varchar(1)           null,
                               UPDATETIME           datetime             null,
                               CREATETIME           datetime             not null,
                               EFFECTIVE            varchar(1)           null,
                               SERVICEURL           text                 null,
                               SERVICETYPE          varchar(100)         null,
                               SERVICEID            varchar(36)          not null,
                               SERVICENAME          varchar(255)         not null,
                               SERVICEDESC          varchar(255)         null,
                               constraint PK_TAONLINESERVICE primary key nonclustered (SERVICEID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TAONLINESERVICE') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINESERVICE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '在线服务',
        'user', @CurrentUser, 'table', 'TAONLINESERVICE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINESERVICE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATEUSER')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINESERVICE', 'column', 'CREATEUSER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建者',
        'user', @CurrentUser, 'table', 'TAONLINESERVICE', 'column', 'CREATEUSER'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINESERVICE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DESTORY')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINESERVICE', 'column', 'DESTORY'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '是否销毁',
        'user', @CurrentUser, 'table', 'TAONLINESERVICE', 'column', 'DESTORY'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINESERVICE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UPDATETIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINESERVICE', 'column', 'UPDATETIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '更新时间',
        'user', @CurrentUser, 'table', 'TAONLINESERVICE', 'column', 'UPDATETIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINESERVICE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATETIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINESERVICE', 'column', 'CREATETIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建时间',
        'user', @CurrentUser, 'table', 'TAONLINESERVICE', 'column', 'CREATETIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINESERVICE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EFFECTIVE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINESERVICE', 'column', 'EFFECTIVE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '是否有效',
        'user', @CurrentUser, 'table', 'TAONLINESERVICE', 'column', 'EFFECTIVE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINESERVICE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SERVICEURL')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINESERVICE', 'column', 'SERVICEURL'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '服务URL',
        'user', @CurrentUser, 'table', 'TAONLINESERVICE', 'column', 'SERVICEURL'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINESERVICE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SERVICETYPE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINESERVICE', 'column', 'SERVICETYPE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '服务类型',
        'user', @CurrentUser, 'table', 'TAONLINESERVICE', 'column', 'SERVICETYPE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINESERVICE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SERVICEID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINESERVICE', 'column', 'SERVICEID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '服务ID',
        'user', @CurrentUser, 'table', 'TAONLINESERVICE', 'column', 'SERVICEID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINESERVICE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SERVICENAME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINESERVICE', 'column', 'SERVICENAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '服务名称',
        'user', @CurrentUser, 'table', 'TAONLINESERVICE', 'column', 'SERVICENAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINESERVICE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SERVICEDESC')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINESERVICE', 'column', 'SERVICEDESC'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '服务描述',
        'user', @CurrentUser, 'table', 'TAONLINESERVICE', 'column', 'SERVICEDESC'
go

/*==============================================================*/
/* Table: TAONLINESERVICEMG                                     */
/*==============================================================*/
create table TAONLINESERVICEMG (
                                 SERVICEID            varchar(36)          not null,
                                 SERVICENAMEID        varchar(36)          not null,
                                 constraint PK_TAONLINESERVICEMG primary key nonclustered (SERVICEID, SERVICENAMEID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TAONLINESERVICEMG') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINESERVICEMG'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '在线服务管理',
        'user', @CurrentUser, 'table', 'TAONLINESERVICEMG'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINESERVICEMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SERVICEID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINESERVICEMG', 'column', 'SERVICEID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '服务ID',
        'user', @CurrentUser, 'table', 'TAONLINESERVICEMG', 'column', 'SERVICEID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINESERVICEMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SERVICENAMEID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINESERVICEMG', 'column', 'SERVICENAMEID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '服务项ID',
        'user', @CurrentUser, 'table', 'TAONLINESERVICEMG', 'column', 'SERVICENAMEID'
go

/*==============================================================*/
/* Table: TAONLINESERVICENAME                                   */
/*==============================================================*/
create table TAONLINESERVICENAME (
                                   DESTORY              varchar(1)           not null,
                                   UPDATETIME           datetime             null,
                                   CREATETIME           datetime             null,
                                   IDPATH               text                 null,
                                   PARENTID             varchar(36)          not null,
                                   SERVICENAMEID        varchar(36)          not null,
                                   SERVICENAME          varchar(255)         not null,
                                   CREATEUSER           varchar(36)          not null,
                                   constraint PK_TAONLINESERVICENAME primary key nonclustered (SERVICENAMEID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TAONLINESERVICENAME') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINESERVICENAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '在线服务项名称',
        'user', @CurrentUser, 'table', 'TAONLINESERVICENAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINESERVICENAME')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DESTORY')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINESERVICENAME', 'column', 'DESTORY'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '是否销毁',
        'user', @CurrentUser, 'table', 'TAONLINESERVICENAME', 'column', 'DESTORY'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINESERVICENAME')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UPDATETIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINESERVICENAME', 'column', 'UPDATETIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '更新时间',
        'user', @CurrentUser, 'table', 'TAONLINESERVICENAME', 'column', 'UPDATETIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINESERVICENAME')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATETIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINESERVICENAME', 'column', 'CREATETIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建时间',
        'user', @CurrentUser, 'table', 'TAONLINESERVICENAME', 'column', 'CREATETIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINESERVICENAME')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IDPATH')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINESERVICENAME', 'column', 'IDPATH'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '服务项路径',
        'user', @CurrentUser, 'table', 'TAONLINESERVICENAME', 'column', 'IDPATH'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINESERVICENAME')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PARENTID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINESERVICENAME', 'column', 'PARENTID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '父级id',
        'user', @CurrentUser, 'table', 'TAONLINESERVICENAME', 'column', 'PARENTID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINESERVICENAME')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SERVICENAMEID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINESERVICENAME', 'column', 'SERVICENAMEID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '服务项名称id',
        'user', @CurrentUser, 'table', 'TAONLINESERVICENAME', 'column', 'SERVICENAMEID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINESERVICENAME')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SERVICENAME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINESERVICENAME', 'column', 'SERVICENAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '服务名称',
        'user', @CurrentUser, 'table', 'TAONLINESERVICENAME', 'column', 'SERVICENAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINESERVICENAME')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATEUSER')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINESERVICENAME', 'column', 'CREATEUSER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建者',
        'user', @CurrentUser, 'table', 'TAONLINESERVICENAME', 'column', 'CREATEUSER'
go

/*==============================================================*/
/* Table: TAONLINESTATLOG                                       */
/*==============================================================*/
create table TAONLINESTATLOG (
                               STATDATE             varchar(20)          not null,
                               POINTINTIME          varchar(20)          not null,
                               LOGINNUM             numeric(15,0)        null,
                               constraint PK_TAONLINESTATLOG primary key nonclustered (STATDATE, POINTINTIME)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TAONLINESTATLOG') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINESTATLOG'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '在线统计日志表',
        'user', @CurrentUser, 'table', 'TAONLINESTATLOG'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINESTATLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'STATDATE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINESTATLOG', 'column', 'STATDATE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '统计时间（YYYY-MM-DD）',
        'user', @CurrentUser, 'table', 'TAONLINESTATLOG', 'column', 'STATDATE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINESTATLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'POINTINTIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINESTATLOG', 'column', 'POINTINTIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '统计时点（HH:MM）',
        'user', @CurrentUser, 'table', 'TAONLINESTATLOG', 'column', 'POINTINTIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAONLINESTATLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LOGINNUM')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAONLINESTATLOG', 'column', 'LOGINNUM'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '在线用户数',
        'user', @CurrentUser, 'table', 'TAONLINESTATLOG', 'column', 'LOGINNUM'
go

/*==============================================================*/
/* Table: TAORG                                                 */
/*==============================================================*/
create table TAORG (
                     ORGID                varchar(36)          not null,
                     ORGNAME              varchar(300)         not null,
                     SPELL                varchar(100)         not null,
                     PARENTID             varchar(36)          not null,
                     IDPATH               varchar(1024)        not null,
                     NAMEPATH             varchar(1024)        not null,
                     CUSTOMNO             varchar(30)          null,
                     ORDERNO              numeric(10,0)        not null,
                     ORGLEVEL             numeric(16,0)        null,
                     AREA                 varchar(36)          null,
                     EFFECTIVE            varchar(1)           not null,
                     ORGTYPE              varchar(2)           not null,
                     CREATEUSER           varchar(36)          not null,
                     CREATETIME           datetime             null,
                     MODIFYTIME           datetime             null,
                     ORGMANAGER           varchar(36)          null,
                     ORGCODE              varchar(18)          null,
                     CONTACTS             varchar(36)          null,
                     ADDRESS              varchar(450)         null,
                     TEL                  varchar(20)          null,
                     DESTORY              varchar(1)           null,
                     FIELD01              varchar(1000)        null,
                     FIELD02              varchar(1000)        null,
                     FIELD03              varchar(1000)        null,
                     FIELD04              varchar(1000)        null,
                     FIELD05              varchar(1000)        null,
                     FIELD06              varchar(1000)        null,
                     FIELD07              varchar(1000)        null,
                     FIELD08              varchar(1000)        null,
                     FIELD09              varchar(1000)        null,
                     FIELD10              varchar(1000)        null,
                     constraint PK_TAORG primary key nonclustered (ORGID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TAORG') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '组织机构表',
        'user', @CurrentUser, 'table', 'TAORG'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ORGID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'ORGID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '组织编号',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'ORGID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ORGNAME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'ORGNAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '组织名称',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'ORGNAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SPELL')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'SPELL'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '组织名称拼音简写（如：民政部简写MZB）',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'SPELL'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PARENTID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'PARENTID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '父组织编号',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'PARENTID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IDPATH')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'IDPATH'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '组织编号路径',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'IDPATH'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'NAMEPATH')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'NAMEPATH'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '组织名称路径',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'NAMEPATH'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CUSTOMNO')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'CUSTOMNO'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '自定义编码',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'CUSTOMNO'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ORDERNO')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'ORDERNO'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '排序号',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'ORDERNO'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ORGLEVEL')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'ORGLEVEL'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '组织层级',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'ORGLEVEL'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AREA')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'AREA'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '行政区划编号',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'AREA'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EFFECTIVE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'EFFECTIVE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '有效性',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'EFFECTIVE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ORGTYPE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'ORGTYPE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '组织类型（机构（集团、子公司）、部门、组）',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'ORGTYPE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATEUSER')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'CREATEUSER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建人',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'CREATEUSER'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATETIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'CREATETIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建时间',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'CREATETIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MODIFYTIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'MODIFYTIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '最后更新时间',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'MODIFYTIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ORGMANAGER')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'ORGMANAGER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '机构负责人',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'ORGMANAGER'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ORGCODE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'ORGCODE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '机构编码',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'ORGCODE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CONTACTS')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'CONTACTS'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '机构联系人',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'CONTACTS'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ADDRESS')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'ADDRESS'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '联系人地址',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'ADDRESS'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TEL')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'TEL'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '联系人电话',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'TEL'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DESTORY')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'DESTORY'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '是否销毁',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'DESTORY'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD01')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'FIELD01'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '备用字段1',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'FIELD01'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD02')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'FIELD02'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '备用字段2',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'FIELD02'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD03')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'FIELD03'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '备用字段3',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'FIELD03'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD04')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'FIELD04'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '备用字段4',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'FIELD04'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD05')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'FIELD05'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '备用字段5',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'FIELD05'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD06')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'FIELD06'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '备用字段6',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'FIELD06'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD07')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'FIELD07'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '备用字段7',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'FIELD07'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD08')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'FIELD08'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '备用字段8',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'FIELD08'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD09')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'FIELD09'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '备用字段9',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'FIELD09'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD10')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORG', 'column', 'FIELD10'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '备用字段10',
        'user', @CurrentUser, 'table', 'TAORG', 'column', 'FIELD10'
go

/*==============================================================*/
/* Table: TAORGCONSTRAINT                                       */
/*==============================================================*/
create table TAORGCONSTRAINT (
                               CATEGORYID           varchar(2)           not null,
                               ALLOWCATEGORYID      varchar(2)           not null,
                               constraint PK_TAORGCONSTRAINT primary key nonclustered (CATEGORYID, ALLOWCATEGORYID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TAORGCONSTRAINT') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORGCONSTRAINT'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '暂未使用',
        'user', @CurrentUser, 'table', 'TAORGCONSTRAINT'
go

/*==============================================================*/
/* Table: TAORGMG                                               */
/*==============================================================*/
create table TAORGMG (
                       ROLEID               varchar(36)          not null,
                       ORGID                varchar(36)          not null,
                       EFFECTTIME           datetime             null,
                       constraint PK_TAORGMG primary key nonclustered (ROLEID, ORGID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TAORGMG') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORGMG'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '角色组织表',
        'user', @CurrentUser, 'table', 'TAORGMG'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORGMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ROLEID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORGMG', 'column', 'ROLEID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '角色ID',
        'user', @CurrentUser, 'table', 'TAORGMG', 'column', 'ROLEID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORGMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ORGID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORGMG', 'column', 'ORGID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '组织ID',
        'user', @CurrentUser, 'table', 'TAORGMG', 'column', 'ORGID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORGMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EFFECTTIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORGMG', 'column', 'EFFECTTIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '有效期',
        'user', @CurrentUser, 'table', 'TAORGMG', 'column', 'EFFECTTIME'
go

/*==============================================================*/
/* Table: TAORGOPLOG                                            */
/*==============================================================*/
create table TAORGOPLOG (
                          LOGID                varchar(36)          not null,
                          BATCHNO              varchar(36)          not null,
                          OPTYPE               varchar(2)           not null,
                          INFLUENCEBODYTYPE    varchar(2)           not null,
                          INFLUENCEBODY        varchar(36)          not null,
                          OPBODYTYPE           varchar(2)           null,
                          OPSUBJECT            varchar(36)          null,
                          CHANGECONTENT        varbinary(max)            null,
                          OPTIME               datetime             not null,
                          OPUSER               varchar(36)          not null,
                          ISPERMISSION         varchar(1)           not null,
                          constraint PK_TAORGOPLOG primary key nonclustered (LOGID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TAORGOPLOG') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORGOPLOG'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '组织操作日志表',
        'user', @CurrentUser, 'table', 'TAORGOPLOG'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORGOPLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LOGID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORGOPLOG', 'column', 'LOGID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '日志ID',
        'user', @CurrentUser, 'table', 'TAORGOPLOG', 'column', 'LOGID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORGOPLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BATCHNO')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORGOPLOG', 'column', 'BATCHNO'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '操作批次号',
        'user', @CurrentUser, 'table', 'TAORGOPLOG', 'column', 'BATCHNO'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORGOPLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'OPTYPE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORGOPLOG', 'column', 'OPTYPE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '操作类型',
        'user', @CurrentUser, 'table', 'TAORGOPLOG', 'column', 'OPTYPE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORGOPLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'INFLUENCEBODYTYPE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORGOPLOG', 'column', 'INFLUENCEBODYTYPE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '影响主体类型',
        'user', @CurrentUser, 'table', 'TAORGOPLOG', 'column', 'INFLUENCEBODYTYPE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORGOPLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'INFLUENCEBODY')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORGOPLOG', 'column', 'INFLUENCEBODY'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '影响主体',
        'user', @CurrentUser, 'table', 'TAORGOPLOG', 'column', 'INFLUENCEBODY'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORGOPLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'OPBODYTYPE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORGOPLOG', 'column', 'OPBODYTYPE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '操作主体类型',
        'user', @CurrentUser, 'table', 'TAORGOPLOG', 'column', 'OPBODYTYPE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORGOPLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'OPSUBJECT')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORGOPLOG', 'column', 'OPSUBJECT'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '操作主体',
        'user', @CurrentUser, 'table', 'TAORGOPLOG', 'column', 'OPSUBJECT'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORGOPLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CHANGECONTENT')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORGOPLOG', 'column', 'CHANGECONTENT'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '操作内容',
        'user', @CurrentUser, 'table', 'TAORGOPLOG', 'column', 'CHANGECONTENT'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORGOPLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'OPTIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORGOPLOG', 'column', 'OPTIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '操作时间',
        'user', @CurrentUser, 'table', 'TAORGOPLOG', 'column', 'OPTIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORGOPLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'OPUSER')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORGOPLOG', 'column', 'OPUSER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '操作者',
        'user', @CurrentUser, 'table', 'TAORGOPLOG', 'column', 'OPUSER'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAORGOPLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ISPERMISSION')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAORGOPLOG', 'column', 'ISPERMISSION'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '操作权限',
        'user', @CurrentUser, 'table', 'TAORGOPLOG', 'column', 'ISPERMISSION'
go

/*==============================================================*/
/* Table: TARESOURCE                                            */
/*==============================================================*/
create table TARESOURCE (
                          RESOURCEID           varchar(36)          not null,
                          PRESOURCEID          varchar(36)          not null,
                          NAME                 varchar(100)         not null,
                          CODE                 varchar(30)          null,
                          SYSCODE              varchar(20)          not null,
                          URL                  varchar(100)         null,
                          ORDERNO              numeric(10,0)        null,
                          IDPATH               varchar(1024)        not null,
                          NAMEPATH             varchar(1024)        not null,
                          RESOURCELEVEL        varchar(2)           not null,
                          ICON                 varchar(30)          null,
                          ICONCOLOR            varchar(7)           null,
                          SECURITYPOLICY       varchar(2)           not null,
                          SECURITYLEVEL        numeric(4,0)         not null,
                          RESOURCETYPE         varchar(2)           not null,
                          EFFECTIVE            varchar(1)           not null,
                          ISDISPLAY            varchar(1)           null,
                          ISFILEDSCONTROL      varchar(1)           null,
                          CREATEDATE           datetime             not null,
                          CREATEUSER           varchar(36)          not null,
                          UIAUTHORITYPOLICY    varchar(2)           null,
                          FIELD01              varchar(10)          null,
                          FIELD02              varchar(10)          null,
                          FIELD03              varchar(10)          null,
                          FIELD04              varchar(10)          null,
                          FIELD05              varchar(10)          null,
                          FIELD06              varchar(10)          null,
                          FIELD07              varchar(10)          null,
                          FIELD08              varchar(10)          null,
                          FIELD09              varchar(10)          null,
                          FIELD10              varchar(10)          null,
                          WORKBENCH            varchar(1)           null,
                          constraint PK_TARESOURCE primary key nonclustered (RESOURCEID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TARESOURCE') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '功能资源表',
        'user', @CurrentUser, 'table', 'TARESOURCE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RESOURCEID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'RESOURCEID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '功能资源ID',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'RESOURCEID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PRESOURCEID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'PRESOURCEID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '父级功能资源ID',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'PRESOURCEID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'NAME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'NAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '功能名称',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'NAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'CODE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '自定义编码',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'CODE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SYSCODE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'SYSCODE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '功能所属系统',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'SYSCODE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'URL')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'URL'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '功能路径',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'URL'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ORDERNO')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'ORDERNO'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '排序号',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'ORDERNO'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IDPATH')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'IDPATH'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '资源ID路径',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'IDPATH'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'NAMEPATH')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'NAMEPATH'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '功能名称路径',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'NAMEPATH'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RESOURCELEVEL')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'RESOURCELEVEL'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '功能资源层级',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'RESOURCELEVEL'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ICON')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'ICON'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '图标名称',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'ICON'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ICONCOLOR')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'ICONCOLOR'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '图标颜色',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'ICONCOLOR'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SECURITYPOLICY')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'SECURITYPOLICY'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '安全策略',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'SECURITYPOLICY'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SECURITYLEVEL')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'SECURITYLEVEL'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '安全认证级别',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'SECURITYLEVEL'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RESOURCETYPE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'RESOURCETYPE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '菜单类型',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'RESOURCETYPE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EFFECTIVE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'EFFECTIVE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '有效性',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'EFFECTIVE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ISDISPLAY')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'ISDISPLAY'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '是否显示',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'ISDISPLAY'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ISFILEDSCONTROL')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'ISFILEDSCONTROL'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '是否字段权限控制',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'ISFILEDSCONTROL'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATEDATE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'CREATEDATE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建时间',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'CREATEDATE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATEUSER')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'CREATEUSER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建者',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'CREATEUSER'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UIAUTHORITYPOLICY')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'UIAUTHORITYPOLICY'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '界面元素授权',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'UIAUTHORITYPOLICY'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD01')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'FIELD01'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段01',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'FIELD01'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD02')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'FIELD02'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段02',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'FIELD02'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD03')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'FIELD03'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段03',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'FIELD03'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD04')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'FIELD04'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段04',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'FIELD04'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD05')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'FIELD05'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段05',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'FIELD05'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD06')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'FIELD06'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段06',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'FIELD06'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD07')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'FIELD07'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段07',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'FIELD07'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD08')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'FIELD08'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段08',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'FIELD08'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD09')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'FIELD09'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段09',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'FIELD09'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD10')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'FIELD10'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段10',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'FIELD10'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'WORKBENCH')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'WORKBENCH'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '是否工作台模块',
        'user', @CurrentUser, 'table', 'TARESOURCE', 'column', 'WORKBENCH'
go

/*==============================================================*/
/* Table: TARESOURCECATEGORY                                    */
/*==============================================================*/
create table TARESOURCECATEGORY (
                                  CATEGORYID           varchar(36)          not null,
                                  CATEGORYNAME         varchar(300)         not null,
                                  EFFECTIVE            varchar(1)           not null,
                                  CODE                 varchar(100)         null,
                                  CATEGORYCONTENT      varchar(1024)        null,
                                  constraint PK_TARESOURCECATEGORY primary key nonclustered (CATEGORYID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TARESOURCECATEGORY') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCECATEGORY'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '资源类型表',
        'user', @CurrentUser, 'table', 'TARESOURCECATEGORY'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCECATEGORY')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CATEGORYID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCECATEGORY', 'column', 'CATEGORYID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '类别ID',
        'user', @CurrentUser, 'table', 'TARESOURCECATEGORY', 'column', 'CATEGORYID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCECATEGORY')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CATEGORYNAME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCECATEGORY', 'column', 'CATEGORYNAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '类别名称',
        'user', @CurrentUser, 'table', 'TARESOURCECATEGORY', 'column', 'CATEGORYNAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCECATEGORY')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EFFECTIVE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCECATEGORY', 'column', 'EFFECTIVE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '有效性',
        'user', @CurrentUser, 'table', 'TARESOURCECATEGORY', 'column', 'EFFECTIVE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCECATEGORY')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCECATEGORY', 'column', 'CODE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '类别编码',
        'user', @CurrentUser, 'table', 'TARESOURCECATEGORY', 'column', 'CODE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCECATEGORY')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CATEGORYCONTENT')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCECATEGORY', 'column', 'CATEGORYCONTENT'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '类别描述',
        'user', @CurrentUser, 'table', 'TARESOURCECATEGORY', 'column', 'CATEGORYCONTENT'
go

/*==============================================================*/
/* Table: TARESOURCEUI                                          */
/*==============================================================*/
create table TARESOURCEUI (
                            PAGEELEMENTID        varchar(36)          not null,
                            RESOURCEID           varchar(36)          not null,
                            ELENMENTNAME         varchar(20)          not null,
                            ELEMENTID            varchar(30)          not null,
                            CODE                 varchar(20)          null,
                            AUTHORITYPOLICY      varchar(2)           not null,
                            CREATEUSER           varchar(36)          not null,
                            CREATEDATE           datetime             not null,
                            FIELD01              varchar(10)          null,
                            FIELD02              varchar(10)          null,
                            FIELD03              varchar(10)          null,
                            EFFECTIVE            varchar(1)           not null,
                            constraint PK_TARESOURCEUI primary key nonclustered (PAGEELEMENTID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TARESOURCEUI') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCEUI'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '界面元素表',
        'user', @CurrentUser, 'table', 'TARESOURCEUI'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCEUI')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PAGEELEMENTID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCEUI', 'column', 'PAGEELEMENTID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '界面元素配置ID',
        'user', @CurrentUser, 'table', 'TARESOURCEUI', 'column', 'PAGEELEMENTID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCEUI')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RESOURCEID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCEUI', 'column', 'RESOURCEID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '功能资源ID',
        'user', @CurrentUser, 'table', 'TARESOURCEUI', 'column', 'RESOURCEID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCEUI')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ELENMENTNAME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCEUI', 'column', 'ELENMENTNAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '界面元素名称',
        'user', @CurrentUser, 'table', 'TARESOURCEUI', 'column', 'ELENMENTNAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCEUI')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ELEMENTID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCEUI', 'column', 'ELEMENTID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '界面元素ID',
        'user', @CurrentUser, 'table', 'TARESOURCEUI', 'column', 'ELEMENTID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCEUI')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CODE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCEUI', 'column', 'CODE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '自定义编码',
        'user', @CurrentUser, 'table', 'TARESOURCEUI', 'column', 'CODE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCEUI')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AUTHORITYPOLICY')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCEUI', 'column', 'AUTHORITYPOLICY'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '授权策略',
        'user', @CurrentUser, 'table', 'TARESOURCEUI', 'column', 'AUTHORITYPOLICY'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCEUI')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATEUSER')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCEUI', 'column', 'CREATEUSER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建者',
        'user', @CurrentUser, 'table', 'TARESOURCEUI', 'column', 'CREATEUSER'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCEUI')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATEDATE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCEUI', 'column', 'CREATEDATE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建时间',
        'user', @CurrentUser, 'table', 'TARESOURCEUI', 'column', 'CREATEDATE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCEUI')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD01')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCEUI', 'column', 'FIELD01'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段01',
        'user', @CurrentUser, 'table', 'TARESOURCEUI', 'column', 'FIELD01'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCEUI')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD02')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCEUI', 'column', 'FIELD02'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段02',
        'user', @CurrentUser, 'table', 'TARESOURCEUI', 'column', 'FIELD02'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCEUI')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD03')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCEUI', 'column', 'FIELD03'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段03',
        'user', @CurrentUser, 'table', 'TARESOURCEUI', 'column', 'FIELD03'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCEUI')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EFFECTIVE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCEUI', 'column', 'EFFECTIVE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '有效性',
        'user', @CurrentUser, 'table', 'TARESOURCEUI', 'column', 'EFFECTIVE'
go

/*==============================================================*/
/* Table: TARESOURCEURL                                         */
/*==============================================================*/
create table TARESOURCEURL (
                             RESOURCEID           varchar(36)          not null,
                             RESTURL              varchar(256)         not null,
                             URLNAME              varchar(40)          null,
                             URLID                varchar(36)          not null,
                             AUTHORITYPOLICY      varchar(1)           not null,
                             constraint PK_TARESOURCEURL primary key nonclustered (URLID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TARESOURCEURL') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCEURL'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '功能资源表',
        'user', @CurrentUser, 'table', 'TARESOURCEURL'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCEURL')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RESOURCEID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCEURL', 'column', 'RESOURCEID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '功能资源ID',
        'user', @CurrentUser, 'table', 'TARESOURCEURL', 'column', 'RESOURCEID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCEURL')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RESTURL')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCEURL', 'column', 'RESTURL'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '服务路径',
        'user', @CurrentUser, 'table', 'TARESOURCEURL', 'column', 'RESTURL'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCEURL')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'URLNAME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCEURL', 'column', 'URLNAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '服务名称',
        'user', @CurrentUser, 'table', 'TARESOURCEURL', 'column', 'URLNAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCEURL')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'URLID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCEURL', 'column', 'URLID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '服务ID',
        'user', @CurrentUser, 'table', 'TARESOURCEURL', 'column', 'URLID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TARESOURCEURL')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AUTHORITYPOLICY')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TARESOURCEURL', 'column', 'AUTHORITYPOLICY'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '是否独立授权',
        'user', @CurrentUser, 'table', 'TARESOURCEURL', 'column', 'AUTHORITYPOLICY'
go

/*==============================================================*/
/* Table: TAROLE                                                */
/*==============================================================*/
create table TAROLE (
                      ROLEID               varchar(36)          not null,
                      ROLENAME             varchar(150)         not null,
                      ISADMIN              varchar(1)           null,
                      ROLELEVEL            numeric(32,0)        null,
                      ORGID                varchar(36)          not null,
                      ROLETYPE             varchar(2)           not null,
                      EFFECTIVE            varchar(1)           not null,
                      EFFECTIVETIME        datetime             null,
                      CREATEUSER           varchar(36)          null,
                      CREATETIME           datetime             null,
                      ROLEDESC             varchar(150)         null,
                      ROLESIGN             varchar(2)           null,
                      SUBORDINATE          varchar(1)           null,
                      constraint PK_TAROLE primary key nonclustered (ROLEID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TAROLE') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '角色表',
        'user', @CurrentUser, 'table', 'TAROLE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ROLEID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLE', 'column', 'ROLEID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '角色id',
        'user', @CurrentUser, 'table', 'TAROLE', 'column', 'ROLEID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ROLENAME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLE', 'column', 'ROLENAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '角色名称',
        'user', @CurrentUser, 'table', 'TAROLE', 'column', 'ROLENAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ISADMIN')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLE', 'column', 'ISADMIN'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '是否为管理员',
        'user', @CurrentUser, 'table', 'TAROLE', 'column', 'ISADMIN'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ROLELEVEL')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLE', 'column', 'ROLELEVEL'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '角色层级',
        'user', @CurrentUser, 'table', 'TAROLE', 'column', 'ROLELEVEL'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ORGID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLE', 'column', 'ORGID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '组织id',
        'user', @CurrentUser, 'table', 'TAROLE', 'column', 'ORGID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ROLETYPE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLE', 'column', 'ROLETYPE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '角色类型',
        'user', @CurrentUser, 'table', 'TAROLE', 'column', 'ROLETYPE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EFFECTIVE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLE', 'column', 'EFFECTIVE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '有效状态',
        'user', @CurrentUser, 'table', 'TAROLE', 'column', 'EFFECTIVE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EFFECTIVETIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLE', 'column', 'EFFECTIVETIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '有效时间',
        'user', @CurrentUser, 'table', 'TAROLE', 'column', 'EFFECTIVETIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATEUSER')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLE', 'column', 'CREATEUSER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建人',
        'user', @CurrentUser, 'table', 'TAROLE', 'column', 'CREATEUSER'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATETIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLE', 'column', 'CREATETIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建时间',
        'user', @CurrentUser, 'table', 'TAROLE', 'column', 'CREATETIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ROLEDESC')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLE', 'column', 'ROLEDESC'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '角色排序号',
        'user', @CurrentUser, 'table', 'TAROLE', 'column', 'ROLEDESC'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ROLESIGN')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLE', 'column', 'ROLESIGN'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '角色标志',
        'user', @CurrentUser, 'table', 'TAROLE', 'column', 'ROLESIGN'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SUBORDINATE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLE', 'column', 'SUBORDINATE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '下属',
        'user', @CurrentUser, 'table', 'TAROLE', 'column', 'SUBORDINATE'
go

/*==============================================================*/
/* Table: TAROLEAUTHORITY                                       */
/*==============================================================*/
create table TAROLEAUTHORITY (
                               ROLEID               varchar(36)          not null,
                               RESOURCEID           varchar(36)          not null,
                               RESOURCETYPE         varchar(1)           not null,
                               USEPERMISSION        varchar(1)           null,
                               REPERMISSION         varchar(1)           null,
                               REAUTHRITY           varchar(1)           null,
                               CREATEUSER           varchar(36)          null,
                               CREATETIME           datetime             null,
                               EFFECTTIME           datetime             null,
                               constraint PK_TAROLEAUTHORITY primary key nonclustered (ROLEID, RESOURCEID, RESOURCETYPE)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TAROLEAUTHORITY') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLEAUTHORITY'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '角色权限表',
        'user', @CurrentUser, 'table', 'TAROLEAUTHORITY'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLEAUTHORITY')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ROLEID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLEAUTHORITY', 'column', 'ROLEID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '角色id',
        'user', @CurrentUser, 'table', 'TAROLEAUTHORITY', 'column', 'ROLEID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLEAUTHORITY')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RESOURCEID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLEAUTHORITY', 'column', 'RESOURCEID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '资源id',
        'user', @CurrentUser, 'table', 'TAROLEAUTHORITY', 'column', 'RESOURCEID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLEAUTHORITY')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RESOURCETYPE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLEAUTHORITY', 'column', 'RESOURCETYPE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '资源类型',
        'user', @CurrentUser, 'table', 'TAROLEAUTHORITY', 'column', 'RESOURCETYPE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLEAUTHORITY')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'USEPERMISSION')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLEAUTHORITY', 'column', 'USEPERMISSION'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '用户使用权限',
        'user', @CurrentUser, 'table', 'TAROLEAUTHORITY', 'column', 'USEPERMISSION'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLEAUTHORITY')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'REPERMISSION')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLEAUTHORITY', 'column', 'REPERMISSION'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '授权权限',
        'user', @CurrentUser, 'table', 'TAROLEAUTHORITY', 'column', 'REPERMISSION'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLEAUTHORITY')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'REAUTHRITY')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLEAUTHORITY', 'column', 'REAUTHRITY'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '再授权权限',
        'user', @CurrentUser, 'table', 'TAROLEAUTHORITY', 'column', 'REAUTHRITY'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLEAUTHORITY')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATEUSER')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLEAUTHORITY', 'column', 'CREATEUSER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建人',
        'user', @CurrentUser, 'table', 'TAROLEAUTHORITY', 'column', 'CREATEUSER'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLEAUTHORITY')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATETIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLEAUTHORITY', 'column', 'CREATETIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建时间',
        'user', @CurrentUser, 'table', 'TAROLEAUTHORITY', 'column', 'CREATETIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLEAUTHORITY')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EFFECTTIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLEAUTHORITY', 'column', 'EFFECTTIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '有效时间',
        'user', @CurrentUser, 'table', 'TAROLEAUTHORITY', 'column', 'EFFECTTIME'
go

/*==============================================================*/
/* Table: TAROLEURLAUTHORITY                                    */
/*==============================================================*/
create table TAROLEURLAUTHORITY (
                                  ROLEID               varchar(36)          not null,
                                  URLID                varchar(36)          not null,
                                  RESOURCEID           varchar(36)          not null,
                                  constraint PK_TAROLEURLAUTHORITY primary key nonclustered (ROLEID, URLID)
)
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLEURLAUTHORITY')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ROLEID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLEURLAUTHORITY', 'column', 'ROLEID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '角色id',
        'user', @CurrentUser, 'table', 'TAROLEURLAUTHORITY', 'column', 'ROLEID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLEURLAUTHORITY')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'URLID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLEURLAUTHORITY', 'column', 'URLID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '路径id',
        'user', @CurrentUser, 'table', 'TAROLEURLAUTHORITY', 'column', 'URLID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLEURLAUTHORITY')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'RESOURCEID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLEURLAUTHORITY', 'column', 'RESOURCEID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '资源id',
        'user', @CurrentUser, 'table', 'TAROLEURLAUTHORITY', 'column', 'RESOURCEID'
go

/*==============================================================*/
/* Table: TAROLEUSER                                            */
/*==============================================================*/
create table TAROLEUSER (
                          USERID               varchar(36)          not null,
                          ROLEID               varchar(36)          not null,
                          DEFAULTROLE          varchar(1)           null,
                          CREATEUSER           varchar(36)          not null,
                          CREATETIME           datetime             not null,
                          constraint PK_TAROLEUSER primary key nonclustered (ROLEID, USERID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TAROLEUSER') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLEUSER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '角色用户关系表',
        'user', @CurrentUser, 'table', 'TAROLEUSER'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLEUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'USERID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLEUSER', 'column', 'USERID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '人员id',
        'user', @CurrentUser, 'table', 'TAROLEUSER', 'column', 'USERID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLEUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ROLEID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLEUSER', 'column', 'ROLEID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '角色id',
        'user', @CurrentUser, 'table', 'TAROLEUSER', 'column', 'ROLEID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLEUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DEFAULTROLE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLEUSER', 'column', 'DEFAULTROLE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '默认角色',
        'user', @CurrentUser, 'table', 'TAROLEUSER', 'column', 'DEFAULTROLE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLEUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATEUSER')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLEUSER', 'column', 'CREATEUSER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建人',
        'user', @CurrentUser, 'table', 'TAROLEUSER', 'column', 'CREATEUSER'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLEUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATETIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLEUSER', 'column', 'CREATETIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建时间',
        'user', @CurrentUser, 'table', 'TAROLEUSER', 'column', 'CREATETIME'
go

/*==============================================================*/
/* Table: TAROLEWORKBENCH                                       */
/*==============================================================*/
create table TAROLEWORKBENCH (
                               ROLEID               varchar(36)          not null,
                               WORKBENCHJSON        varbinary(max)            null,
                               constraint PK_TAROLEWORKBENCH primary key nonclustered (ROLEID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TAROLEWORKBENCH') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLEWORKBENCH'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '角色工作台模板',
        'user', @CurrentUser, 'table', 'TAROLEWORKBENCH'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLEWORKBENCH')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ROLEID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLEWORKBENCH', 'column', 'ROLEID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '角色id',
        'user', @CurrentUser, 'table', 'TAROLEWORKBENCH', 'column', 'ROLEID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAROLEWORKBENCH')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'WORKBENCHJSON')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAROLEWORKBENCH', 'column', 'WORKBENCHJSON'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '工作台内容',
        'user', @CurrentUser, 'table', 'TAROLEWORKBENCH', 'column', 'WORKBENCHJSON'
go

/*==============================================================*/
/* Table: TASERVEREXCEPTIONLOG                                  */
/*==============================================================*/
create table TASERVEREXCEPTIONLOG (
                                    LOGID                varchar(50)          not null,
                                    IPADDRESS            varchar(100)         null,
                                    PORT                 varchar(10)          null,
                                    EXCEPTIONNAME        varchar(255)         null,
                                    CONTENT              varbinary(max)            null,
                                    CREATETIME           datetime             null,
                                    SYSPATH              varchar(50)          null,
                                    CLIENTIP             varchar(50)          null,
                                    URL                  varchar(100)         null,
                                    MENUID               varchar(50)          null,
                                    MENUNAME             varchar(30)          null,
                                    USERAGENT            varchar(200)         null,
                                    EXCEPTIONTYPE        varchar(2)           null,
                                    REQUESTPARAMETER     varbinary(max)            null,
                                    constraint PK_TASERVEREXCEPTIONLOG primary key nonclustered (LOGID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TASERVEREXCEPTIONLOG') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '服务器异常日志表',
        'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TASERVEREXCEPTIONLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LOGID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG', 'column', 'LOGID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '日志id',
        'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG', 'column', 'LOGID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TASERVEREXCEPTIONLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IPADDRESS')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG', 'column', 'IPADDRESS'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        'ip地址',
        'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG', 'column', 'IPADDRESS'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TASERVEREXCEPTIONLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PORT')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG', 'column', 'PORT'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '端口号',
        'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG', 'column', 'PORT'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TASERVEREXCEPTIONLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EXCEPTIONNAME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG', 'column', 'EXCEPTIONNAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '异常名称',
        'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG', 'column', 'EXCEPTIONNAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TASERVEREXCEPTIONLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CONTENT')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG', 'column', 'CONTENT'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '异常内容',
        'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG', 'column', 'CONTENT'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TASERVEREXCEPTIONLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATETIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG', 'column', 'CREATETIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建时间',
        'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG', 'column', 'CREATETIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TASERVEREXCEPTIONLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SYSPATH')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG', 'column', 'SYSPATH'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '系统上下文',
        'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG', 'column', 'SYSPATH'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TASERVEREXCEPTIONLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CLIENTIP')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG', 'column', 'CLIENTIP'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '客户端ip',
        'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG', 'column', 'CLIENTIP'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TASERVEREXCEPTIONLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'URL')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG', 'column', 'URL'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '请求地址',
        'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG', 'column', 'URL'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TASERVEREXCEPTIONLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MENUID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG', 'column', 'MENUID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '菜单id',
        'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG', 'column', 'MENUID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TASERVEREXCEPTIONLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MENUNAME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG', 'column', 'MENUNAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '菜单名称',
        'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG', 'column', 'MENUNAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TASERVEREXCEPTIONLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EXCEPTIONTYPE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG', 'column', 'EXCEPTIONTYPE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '异常类型',
        'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG', 'column', 'EXCEPTIONTYPE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TASERVEREXCEPTIONLOG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'REQUESTPARAMETER')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG', 'column', 'REQUESTPARAMETER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '请求参数',
        'user', @CurrentUser, 'table', 'TASERVEREXCEPTIONLOG', 'column', 'REQUESTPARAMETER'
go

/*==============================================================*/
/* Table: TASITEMG                                              */
/*==============================================================*/
create table TASITEMG (
                        PARENTID             varchar(36)          null,
                        IDPATH               text                 null,
                        SITEDESC             varchar(255)         null,
                        UPDATETIME           datetime             null,
                        CREATETIME           datetime             null,
                        EFFECTIVE            varchar(1)           not null,
                        SITETYPE             varchar(2)           not null,
                        SITEDOMAIN           varchar(255)         null,
                        SITENAME             varchar(255)         not null,
                        SITEID               varchar(36)          not null,
                        DESTORY              varchar(1)           not null,
                        CREATEUSER           varchar(36)          not null,
                        constraint PK_TASITEMG primary key nonclustered (SITEID)
)
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TASITEMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PARENTID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TASITEMG', 'column', 'PARENTID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '父级ID',
        'user', @CurrentUser, 'table', 'TASITEMG', 'column', 'PARENTID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TASITEMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IDPATH')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TASITEMG', 'column', 'IDPATH'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '组织路径',
        'user', @CurrentUser, 'table', 'TASITEMG', 'column', 'IDPATH'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TASITEMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SITEDESC')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TASITEMG', 'column', 'SITEDESC'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '站点描述',
        'user', @CurrentUser, 'table', 'TASITEMG', 'column', 'SITEDESC'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TASITEMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UPDATETIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TASITEMG', 'column', 'UPDATETIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '更新时间',
        'user', @CurrentUser, 'table', 'TASITEMG', 'column', 'UPDATETIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TASITEMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATETIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TASITEMG', 'column', 'CREATETIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建时间',
        'user', @CurrentUser, 'table', 'TASITEMG', 'column', 'CREATETIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TASITEMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EFFECTIVE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TASITEMG', 'column', 'EFFECTIVE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '是否有效',
        'user', @CurrentUser, 'table', 'TASITEMG', 'column', 'EFFECTIVE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TASITEMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SITETYPE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TASITEMG', 'column', 'SITETYPE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '站点类型',
        'user', @CurrentUser, 'table', 'TASITEMG', 'column', 'SITETYPE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TASITEMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SITEDOMAIN')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TASITEMG', 'column', 'SITEDOMAIN'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '站点域名',
        'user', @CurrentUser, 'table', 'TASITEMG', 'column', 'SITEDOMAIN'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TASITEMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SITENAME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TASITEMG', 'column', 'SITENAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '站点名称',
        'user', @CurrentUser, 'table', 'TASITEMG', 'column', 'SITENAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TASITEMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SITEID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TASITEMG', 'column', 'SITEID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '站点ID',
        'user', @CurrentUser, 'table', 'TASITEMG', 'column', 'SITEID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TASITEMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DESTORY')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TASITEMG', 'column', 'DESTORY'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '是否销毁',
        'user', @CurrentUser, 'table', 'TASITEMG', 'column', 'DESTORY'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TASITEMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATEUSER')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TASITEMG', 'column', 'CREATEUSER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建者',
        'user', @CurrentUser, 'table', 'TASITEMG', 'column', 'CREATEUSER'
go

/*==============================================================*/
/* Table: TATAG                                                 */
/*==============================================================*/
create table TATAG (
                     TAGID                varchar(36)          not null,
                     TAGNAME              varchar(255)          null,
                     TAGGROUPID           varchar(36)          null,
                     CREATETIME           datetime             not null,
                     EFFECTIVE            varchar(1)           not null,
                     CREATEUSER           varchar(36)          not null,
                     DESTORY              varchar(1)           not null,
                     UPDATETIME           datetime             not null,
                     constraint PK_TATAG primary key nonclustered (TAGID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TATAG') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TATAG'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '标签表',
        'user', @CurrentUser, 'table', 'TATAG'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TATAG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TAGID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TATAG', 'column', 'TAGID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '标签id',
        'user', @CurrentUser, 'table', 'TATAG', 'column', 'TAGID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TATAG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TAGNAME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TATAG', 'column', 'TAGNAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '标签名',
        'user', @CurrentUser, 'table', 'TATAG', 'column', 'TAGNAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TATAG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TAGGROUPID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TATAG', 'column', 'TAGGROUPID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '标签组id',
        'user', @CurrentUser, 'table', 'TATAG', 'column', 'TAGGROUPID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TATAG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATETIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TATAG', 'column', 'CREATETIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建时间',
        'user', @CurrentUser, 'table', 'TATAG', 'column', 'CREATETIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TATAG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EFFECTIVE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TATAG', 'column', 'EFFECTIVE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '有效标识',
        'user', @CurrentUser, 'table', 'TATAG', 'column', 'EFFECTIVE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TATAG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATEUSER')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TATAG', 'column', 'CREATEUSER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建人',
        'user', @CurrentUser, 'table', 'TATAG', 'column', 'CREATEUSER'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TATAG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DESTORY')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TATAG', 'column', 'DESTORY'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '销毁标识',
        'user', @CurrentUser, 'table', 'TATAG', 'column', 'DESTORY'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TATAG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UPDATETIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TATAG', 'column', 'UPDATETIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '更新时间',
        'user', @CurrentUser, 'table', 'TATAG', 'column', 'UPDATETIME'
go

/*==============================================================*/
/* Table: TATAGGROUP                                            */
/*==============================================================*/
create table TATAGGROUP (
                          TAGGROUPID           varchar(36)          not null,
                          TAGGROUPNAME         varchar(255)          not null,
                          EFFECTIVE            varchar(1)           not null,
                          CREATEUSER           varchar(36)          not null,
                          CREATETIME           datetime             not null,
                          UPDATETIME           datetime             not null,
                          DESTORY              varchar(1)          not null
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TATAGGROUP') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TATAGGROUP'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '标签组表',
        'user', @CurrentUser, 'table', 'TATAGGROUP'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TATAGGROUP')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TAGGROUPID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TATAGGROUP', 'column', 'TAGGROUPID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '标签组id',
        'user', @CurrentUser, 'table', 'TATAGGROUP', 'column', 'TAGGROUPID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TATAGGROUP')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TAGGROUPNAME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TATAGGROUP', 'column', 'TAGGROUPNAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '标签组名称',
        'user', @CurrentUser, 'table', 'TATAGGROUP', 'column', 'TAGGROUPNAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TATAGGROUP')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EFFECTIVE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TATAGGROUP', 'column', 'EFFECTIVE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '有效标识',
        'user', @CurrentUser, 'table', 'TATAGGROUP', 'column', 'EFFECTIVE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TATAGGROUP')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATEUSER')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TATAGGROUP', 'column', 'CREATEUSER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建人',
        'user', @CurrentUser, 'table', 'TATAGGROUP', 'column', 'CREATEUSER'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TATAGGROUP')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATETIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TATAGGROUP', 'column', 'CREATETIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建时间',
        'user', @CurrentUser, 'table', 'TATAGGROUP', 'column', 'CREATETIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TATAGGROUP')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UPDATETIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TATAGGROUP', 'column', 'UPDATETIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '更新时间',
        'user', @CurrentUser, 'table', 'TATAGGROUP', 'column', 'UPDATETIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TATAGGROUP')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DESTORY')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TATAGGROUP', 'column', 'DESTORY'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '销毁标识',
        'user', @CurrentUser, 'table', 'TATAGGROUP', 'column', 'DESTORY'
go

/*==============================================================*/
/* Table: TATAGSSTORE                                           */
/*==============================================================*/
create table TATAGSSTORE (
                           TAGID                varchar(36)          not null,
                           TAGNAME              varchar(100)         not null,
                           TAGCODE              varchar(30)          not null,
                           TAGCATEGORY          varchar(2)           not null,
                           constraint PK_TATAGSSTORE primary key nonclustered (TAGID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TATAGSSTORE') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TATAGSSTORE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '暂未使用',
        'user', @CurrentUser, 'table', 'TATAGSSTORE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TATAGSSTORE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TAGID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TATAGSSTORE', 'column', 'TAGID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '标签id',
        'user', @CurrentUser, 'table', 'TATAGSSTORE', 'column', 'TAGID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TATAGSSTORE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TAGNAME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TATAGSSTORE', 'column', 'TAGNAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '标签名',
        'user', @CurrentUser, 'table', 'TATAGSSTORE', 'column', 'TAGNAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TATAGSSTORE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TAGCODE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TATAGSSTORE', 'column', 'TAGCODE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '标签代码',
        'user', @CurrentUser, 'table', 'TATAGSSTORE', 'column', 'TAGCODE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TATAGSSTORE')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TAGCATEGORY')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TATAGSSTORE', 'column', 'TAGCATEGORY'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '标签类别',
        'user', @CurrentUser, 'table', 'TATAGSSTORE', 'column', 'TAGCATEGORY'
go

/*==============================================================*/
/* Table: TAUSER                                                */
/*==============================================================*/
create table TAUSER (
                      USERID               varchar(36)          not null,
                      LOGINID              varchar(30)          not null,
                      PASSWORD             varchar(256)         not null,
                      PASSWORDDEFAULTNUM   numeric(16,0)        null,
                      PWDLASTMODIFYDATE    datetime             null,
                      ISLOCK               varchar(1)           null,
                      ORDERNO              numeric(10,0)        null,
                      NAME                 varchar(450)         not null,
                      SEX                  varchar(2)           null,
                      IDCARDTYPE           varchar(2)           null,
                      IDCARDNO             varchar(30)          null,
                      MOBILE               varchar(20)          null,
                      CREATEUSER           varchar(36)          null,
                      CREATETIME           datetime             null,
                      MODIFYTIME           datetime             null,
                      DESTORY              varchar(1)           not null,
                      ACCOUNTSOURCE        varchar(2)           null,
                      EFFECTIVE            varchar(1)           not null,
                      EFFECTIVETIME        datetime             null,
                      JOBNUMBER            varchar(15)          null,
                      STATE                varchar(10)          null,
                      BIRTHPLACE           varchar(12)          null,
                      ADDRESS              varchar(450)         null,
                      ZIPCODE              varchar(10)          null,
                      EMAIL                varchar(100)         null,
                      PHONE                varchar(20)          null,
                      EDUCATION            varchar(30)          null,
                      GRADUATESCHOOL       varchar(150)         null,
                      WORKPLACE            varchar(300)         null,
                      FIELD01              varchar(1000)        null,
                      FIELD02              varchar(1000)        null,
                      FIELD03              varchar(1000)        null,
                      FIELD04              varchar(1000)        null,
                      FIELD05              varchar(1000)        null,
                      FIELD06              varchar(1000)        null,
                      FIELD07              varchar(1000)        null,
                      FIELD08              varchar(1000)        null,
                      FIELD09              varchar(1000)        null,
                      FIELD10              varchar(1000)        null,
                      constraint PK_TAUSER primary key nonclustered (USERID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TAUSER') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '用户表',
        'user', @CurrentUser, 'table', 'TAUSER'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'USERID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'USERID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '用户编号',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'USERID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LOGINID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'LOGINID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '登录账号',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'LOGINID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PASSWORD')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'PASSWORD'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '登录密码',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'PASSWORD'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PASSWORDDEFAULTNUM')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'PASSWORDDEFAULTNUM'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '密码错误次数',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'PASSWORDDEFAULTNUM'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PWDLASTMODIFYDATE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'PWDLASTMODIFYDATE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '密码最后修改时间',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'PWDLASTMODIFYDATE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ISLOCK')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'ISLOCK'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '是否锁定',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'ISLOCK'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ORDERNO')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'ORDERNO'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '排序号',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'ORDERNO'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'NAME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'NAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '姓名',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'NAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SEX')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'SEX'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '性别',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'SEX'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IDCARDTYPE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'IDCARDTYPE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '证件类型',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'IDCARDTYPE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IDCARDNO')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'IDCARDNO'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '证件号码',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'IDCARDNO'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MOBILE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'MOBILE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '手机号码',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'MOBILE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATEUSER')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'CREATEUSER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建人',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'CREATEUSER'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATETIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'CREATETIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '创建时间',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'CREATETIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MODIFYTIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'MODIFYTIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '修改时间',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'MODIFYTIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DESTORY')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'DESTORY'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '销毁标识',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'DESTORY'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ACCOUNTSOURCE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'ACCOUNTSOURCE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '账户注册渠道',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'ACCOUNTSOURCE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EFFECTIVE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'EFFECTIVE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '有效标识',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'EFFECTIVE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EFFECTIVETIME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'EFFECTIVETIME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '有效时间',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'EFFECTIVETIME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'JOBNUMBER')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'JOBNUMBER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '工号',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'JOBNUMBER'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'STATE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'STATE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '国家地区',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'STATE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BIRTHPLACE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'BIRTHPLACE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '户籍地（行政区划代码）',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'BIRTHPLACE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ADDRESS')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'ADDRESS'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '联系地址',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'ADDRESS'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ZIPCODE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'ZIPCODE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '邮政编码',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'ZIPCODE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EMAIL')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'EMAIL'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '邮箱地址',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'EMAIL'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PHONE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'PHONE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '联系电话',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'PHONE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EDUCATION')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'EDUCATION'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '学历',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'EDUCATION'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'GRADUATESCHOOL')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'GRADUATESCHOOL'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '毕业学校',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'GRADUATESCHOOL'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'WORKPLACE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'WORKPLACE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '工作单位',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'WORKPLACE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD01')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'FIELD01'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段01',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'FIELD01'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD02')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'FIELD02'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段02',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'FIELD02'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD03')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'FIELD03'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段03',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'FIELD03'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD04')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'FIELD04'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段04',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'FIELD04'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD05')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'FIELD05'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段05',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'FIELD05'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD06')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'FIELD06'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段06',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'FIELD06'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD07')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'FIELD07'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段07',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'FIELD07'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD08')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'FIELD08'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段08',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'FIELD08'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD09')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'FIELD09'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段09',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'FIELD09'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSER')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELD10')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSER', 'column', 'FIELD10'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '扩展字段10',
        'user', @CurrentUser, 'table', 'TAUSER', 'column', 'FIELD10'
go

/*==============================================================*/
/* Table: TAUSERORG                                             */
/*==============================================================*/
create table TAUSERORG (
                         USERID               varchar(32)          not null,
                         ORGID                varchar(32)          not null,
                         ISDIRECT             varchar(1)           not null,
                         constraint PK_TAUSERORG primary key nonclustered (USERID, ORGID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TAUSERORG') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSERORG'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '用户组织关联表',
        'user', @CurrentUser, 'table', 'TAUSERORG'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSERORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'USERID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSERORG', 'column', 'USERID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '用户id',
        'user', @CurrentUser, 'table', 'TAUSERORG', 'column', 'USERID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSERORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ORGID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSERORG', 'column', 'ORGID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '组织id',
        'user', @CurrentUser, 'table', 'TAUSERORG', 'column', 'ORGID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSERORG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ISDIRECT')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSERORG', 'column', 'ISDIRECT'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '是否直属',
        'user', @CurrentUser, 'table', 'TAUSERORG', 'column', 'ISDIRECT'
go

/*==============================================================*/
/* Table: TAUSERWORKBENCH                                       */
/*==============================================================*/
create table TAUSERWORKBENCH (
                               USERID               varchar(36)          not null,
                               WORKBENCHJSON        varbinary(max)            null,
                               constraint PK_TAUSERWORKBENCH primary key nonclustered (USERID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TAUSERWORKBENCH') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSERWORKBENCH'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '用户工作台模板',
        'user', @CurrentUser, 'table', 'TAUSERWORKBENCH'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSERWORKBENCH')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'USERID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSERWORKBENCH', 'column', 'USERID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '用户id',
        'user', @CurrentUser, 'table', 'TAUSERWORKBENCH', 'column', 'USERID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAUSERWORKBENCH')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'WORKBENCHJSON')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAUSERWORKBENCH', 'column', 'WORKBENCHJSON'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '工作台内容',
        'user', @CurrentUser, 'table', 'TAUSERWORKBENCH', 'column', 'WORKBENCHJSON'
go

/*==============================================================*/
/* Table: TAZOOKEEPERADDRESSMG                                       */
/*==============================================================*/
create table TAZOOKEEPERADDRESSMG (
                               ZKID               varchar(36)          not null,
                               ZKADDRESS          varchar(200)         null,
                               APPNAME            varchar(60)          null,
                               APPNAMESPACE       varchar(30)          null,
                               CONNECTFLAG        varchar(1)           null,
                               constraint PK_TAZOOKEEPERADDRESSMG primary key nonclustered (ZKID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TAZOOKEEPERADDRESSMG') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAZOOKEEPERADDRESSMG'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '注册中心管理',
        'user', @CurrentUser, 'table', 'TAZOOKEEPERADDRESSMG'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAZOOKEEPERADDRESSMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ZKID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAZOOKEEPERADDRESSMG', 'column', 'ZKID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '注册中心ID',
        'user', @CurrentUser, 'table', 'TAZOOKEEPERADDRESSMG', 'column', 'ZKID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAZOOKEEPERADDRESSMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ZKADDRESS')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAZOOKEEPERADDRESSMG', 'column', 'ZKADDRESS'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '注册中心地址',
        'user', @CurrentUser, 'table', 'TAZOOKEEPERADDRESSMG', 'column', 'ZKADDRESS'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAZOOKEEPERADDRESSMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'APPNAME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAZOOKEEPERADDRESSMG', 'column', 'APPNAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '应用名称',
        'user', @CurrentUser, 'table', 'TAZOOKEEPERADDRESSMG', 'column', 'APPNAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAZOOKEEPERADDRESSMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'APPNAMESPACE')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAZOOKEEPERADDRESSMG', 'column', 'APPNAMESPACE'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '命名空间',
        'user', @CurrentUser, 'table', 'TAZOOKEEPERADDRESSMG', 'column', 'APPNAMESPACE'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAZOOKEEPERADDRESSMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CONNECTFLAG')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAZOOKEEPERADDRESSMG', 'column', 'CONNECTFLAG'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '连接标志',
        'user', @CurrentUser, 'table', 'TAZOOKEEPERADDRESSMG', 'column', 'CONNECTFLAG'
go

/*==============================================================*/
/* Table: TAJOBDATASOURCEMG                                       */
/*==============================================================*/
create table TAJOBDATASOURCEMG (
                               DATASOURCEID           varchar(36)          not null,
                               DATASOURCENAME         varchar(60)          null,
                               DRIVER                 varchar(200)         null,
                               URL                    varchar(200)         null,
                               USERNAME               varchar(450)         null,
                               PASSWORD               varchar(100)         null,
                               constraint PK_TAJOBDATASOURCEMG primary key nonclustered (DATASOURCEID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TAJOBDATASOURCEMG') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAJOBDATASOURCEMG'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '作业历史数据源管理',
        'user', @CurrentUser, 'table', 'TAJOBDATASOURCEMG'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAJOBDATASOURCEMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DATASOURCEID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAJOBDATASOURCEMG', 'column', 'DATASOURCEID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '数据源ID',
        'user', @CurrentUser, 'table', 'TAJOBDATASOURCEMG', 'column', 'DATASOURCEID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAJOBDATASOURCEMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DATASOURCENAME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAJOBDATASOURCEMG', 'column', 'DATASOURCENAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '数据源名称',
        'user', @CurrentUser, 'table', 'TAJOBDATASOURCEMG', 'column', 'DATASOURCENAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAJOBDATASOURCEMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DRIVER')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAJOBDATASOURCEMG', 'column', 'DRIVER'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '数据源驱动',
        'user', @CurrentUser, 'table', 'TAJOBDATASOURCEMG', 'column', 'DRIVER'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAJOBDATASOURCEMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'URL')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAJOBDATASOURCEMG', 'column', 'URL'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '数据源URL',
        'user', @CurrentUser, 'table', 'TAJOBDATASOURCEMG', 'column', 'URL'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAJOBDATASOURCEMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'USERNAME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAJOBDATASOURCEMG', 'column', 'USERNAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '数据源用户',
        'user', @CurrentUser, 'table', 'TAJOBDATASOURCEMG', 'column', 'USERNAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('TAJOBDATASOURCEMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PASSWORD')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'TAJOBDATASOURCEMG', 'column', 'PASSWORD'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '数据源密码',
        'user', @CurrentUser, 'table', 'TAJOBDATASOURCEMG', 'column', 'PASSWORD'
go

/*==============================================================*/
/* Table: FREEBUSYJOBMG                                       */
/*==============================================================*/
create table FREEBUSYJOBMG (
                               ID               varchar(36)          not null,
                               JOBNAME          varchar(60)          null,
                               FREEMOMENT       varchar(20)         null,
                               BUSYMOMENT       varchar(20)         null,
                               SERVERIPS        varchar(200)         null,
                               ZKID             varchar(36)         null,
                               constraint PK_FREEBUSYJOBMG primary key nonclustered (ID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('FREEBUSYJOBMG') and minor_id = 0)
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'FREEBUSYJOBMG'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '闲忙任务管理',
        'user', @CurrentUser, 'table', 'FREEBUSYJOBMG'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('FREEBUSYJOBMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'FREEBUSYJOBMG', 'column', 'ID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '闲忙任务ID',
        'user', @CurrentUser, 'table', 'FREEBUSYJOBMG', 'column', 'ID'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('FREEBUSYJOBMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'JOBNAME')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'FREEBUSYJOBMG', 'column', 'JOBNAME'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '任务名称',
        'user', @CurrentUser, 'table', 'FREEBUSYJOBMG', 'column', 'JOBNAME'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('FREEBUSYJOBMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FREEMOMENT')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'FREEBUSYJOBMG', 'column', 'FREEMOMENT'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '空闲时刻',
        'user', @CurrentUser, 'table', 'FREEBUSYJOBMG', 'column', 'FREEMOMENT'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('FREEBUSYJOBMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BUSYMOMENT')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'FREEBUSYJOBMG', 'column', 'BUSYMOMENT'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '繁忙时刻',
        'user', @CurrentUser, 'table', 'FREEBUSYJOBMG', 'column', 'BUSYMOMENT'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('FREEBUSYJOBMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SERVERIPS')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'FREEBUSYJOBMG', 'column', 'SERVERIPS'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        '服务器IP地址',
        'user', @CurrentUser, 'table', 'FREEBUSYJOBMG', 'column', 'SERVERIPS'
go

if exists(select 1 from sys.extended_properties p where
    p.major_id = object_id('FREEBUSYJOBMG')
                                                    and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ZKID')
  )
  begin
    declare @CurrentUser sysname
    select @CurrentUser = user_name()
    execute sp_dropextendedproperty 'MS_Description',
            'user', @CurrentUser, 'table', 'FREEBUSYJOBMG', 'column', 'ZKID'

  end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
        'zk注册中心ID',
        'user', @CurrentUser, 'table', 'FREEBUSYJOBMG', 'column', 'ZKID'
go


/*==============================================================*/
/* View: v_dict                                                 */
/*==============================================================*/
create view v_dict as
  select x0.name ,x0.type ,x0.label ,x0.value ,x0.parentvalue ,x0.sort ,x0.authority ,x0.cssclass ,x0.cssstyle ,x0.remarks ,x0.createdate ,x0.createuser ,x0.version ,x0.status ,x0.field01 ,x0.field02 ,x0.field03 ,x0.field04 ,x0.field05 ,x0.system ,x0.newtype from tadict x0 ;
go



/*==============================================================*/
/* Table: TATEMPLATECATALOG                                     */
/*==============================================================*/
create table TATEMPLATECATALOG (
   UPDATETIME           datetime             null,
   CREATETIME           datetime             null,
   ID                   varchar(36)          not null,
   IDPATH               varchar(1024)        null,
   PARENTID             varchar(36)          not null,
   NAME                 varchar(100)         not null,
   NAMEPATH             varchar(1024)        not null,
   CREATEUSER           varchar(36)          null,
   constraint PK_TATEMPLATECATALOG primary key nonclustered (ID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TATEMPLATECATALOG') and minor_id = 0)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TATEMPLATECATALOG'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '页面模板功能表',
   'user', @CurrentUser, 'table', 'TATEMPLATECATALOG'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TATEMPLATECATALOG')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UPDATETIME')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TATEMPLATECATALOG', 'column', 'UPDATETIME'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '更新时间',
   'user', @CurrentUser, 'table', 'TATEMPLATECATALOG', 'column', 'UPDATETIME'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TATEMPLATECATALOG')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATETIME')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TATEMPLATECATALOG', 'column', 'CREATETIME'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '创建时间',
   'user', @CurrentUser, 'table', 'TATEMPLATECATALOG', 'column', 'CREATETIME'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TATEMPLATECATALOG')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TATEMPLATECATALOG', 'column', 'ID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '页面模板功能id',
   'user', @CurrentUser, 'table', 'TATEMPLATECATALOG', 'column', 'ID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TATEMPLATECATALOG')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IDPATH')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TATEMPLATECATALOG', 'column', 'IDPATH'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   'id路径',
   'user', @CurrentUser, 'table', 'TATEMPLATECATALOG', 'column', 'IDPATH'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TATEMPLATECATALOG')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PARENTID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TATEMPLATECATALOG', 'column', 'PARENTID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '页面模板功能父id',
   'user', @CurrentUser, 'table', 'TATEMPLATECATALOG', 'column', 'PARENTID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TATEMPLATECATALOG')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'NAME')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TATEMPLATECATALOG', 'column', 'NAME'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '页面模板功能名称',
   'user', @CurrentUser, 'table', 'TATEMPLATECATALOG', 'column', 'NAME'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TATEMPLATECATALOG')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'NAMEPATH')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TATEMPLATECATALOG', 'column', 'NAMEPATH'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '页面模板功能名称路径',
   'user', @CurrentUser, 'table', 'TATEMPLATECATALOG', 'column', 'NAMEPATH'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TATEMPLATECATALOG')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATEUSER')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TATEMPLATECATALOG', 'column', 'CREATEUSER'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '创建人',
   'user', @CurrentUser, 'table', 'TATEMPLATECATALOG', 'column', 'CREATEUSER'
go



/*==============================================================*/
/* Table: TATEMPLATE                                            */
/*==============================================================*/
create table TATEMPLATE (
   TEMPLATEID           varchar(36)          not null,
   CATALOGID            varchar(36)          not null,
   TEMPLATENAME         varchar(100)         not null,
   TEMPLATECODE         varchar(36)          null,
   TEMPLATETYPE         varchar(10)           not null,
   TEMPLATESOURCE       varchar(1)           not null,
   TEMPLATECONTENT      varbinary(max)            null,
   EFFECTIVE            varchar(1)           null,
   CREATEUSER           varchar(36)          null,
   UPDATETIME           datetime             null,
   CREATETIME           datetime             null,
   constraint PK_TATEMPLATE primary key nonclustered (TEMPLATEID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TATEMPLATE') and minor_id = 0)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TATEMPLATE'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '页面模板表',
   'user', @CurrentUser, 'table', 'TATEMPLATE'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TATEMPLATE')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TEMPLATEID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TATEMPLATE', 'column', 'TEMPLATEID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '页面模板id',
   'user', @CurrentUser, 'table', 'TATEMPLATE', 'column', 'TEMPLATEID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TATEMPLATE')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CATALOGID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TATEMPLATE', 'column', 'CATALOGID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '页面模板功能id',
   'user', @CurrentUser, 'table', 'TATEMPLATE', 'column', 'CATALOGID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TATEMPLATE')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TEMPLATENAME')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TATEMPLATE', 'column', 'TEMPLATENAME'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '页面模板名称',
   'user', @CurrentUser, 'table', 'TATEMPLATE', 'column', 'TEMPLATENAME'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TATEMPLATE')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TEMPLATECODE')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TATEMPLATE', 'column', 'TEMPLATECODE'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '页面模板编码',
   'user', @CurrentUser, 'table', 'TATEMPLATE', 'column', 'TEMPLATECODE'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TATEMPLATE')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TEMPLATETYPE')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TATEMPLATE', 'column', 'TEMPLATETYPE'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '页面模板类型',
   'user', @CurrentUser, 'table', 'TATEMPLATE', 'column', 'TEMPLATETYPE'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TATEMPLATE')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TEMPLATESOURCE')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TATEMPLATE', 'column', 'TEMPLATESOURCE'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '页面模板来源',
   'user', @CurrentUser, 'table', 'TATEMPLATE', 'column', 'TEMPLATESOURCE'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TATEMPLATE')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TEMPLATECONTENT')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TATEMPLATE', 'column', 'TEMPLATECONTENT'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '页面模板内容',
   'user', @CurrentUser, 'table', 'TATEMPLATE', 'column', 'TEMPLATECONTENT'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TATEMPLATE')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'EFFECTIVE')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TATEMPLATE', 'column', 'EFFECTIVE'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '页面模板有效标识',
   'user', @CurrentUser, 'table', 'TATEMPLATE', 'column', 'EFFECTIVE'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TATEMPLATE')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATEUSER')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TATEMPLATE', 'column', 'CREATEUSER'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '创建人',
   'user', @CurrentUser, 'table', 'TATEMPLATE', 'column', 'CREATEUSER'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TATEMPLATE')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UPDATETIME')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TATEMPLATE', 'column', 'UPDATETIME'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '更新时间',
   'user', @CurrentUser, 'table', 'TATEMPLATE', 'column', 'UPDATETIME'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TATEMPLATE')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATETIME')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TATEMPLATE', 'column', 'CREATETIME'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '创建时间',
   'user', @CurrentUser, 'table', 'TATEMPLATE', 'column', 'CREATETIME'
go


/*==============================================================*/
/* Table: TAAPPMG                                               */
/*==============================================================*/
create table TAAPPMG (
   APPID                varchar(36)          not null,
   APPNAME              varchar(100)         not null,
   APPTYPE              varchar(1)           null,
   APPEFFECTIVE         varchar(1)           null,
   CREATEUSER           varchar(36)          null,
   UPDATETIME           datetime             null,
   CREATETIME           datetime             null,
   constraint PK_TAAPPMG primary key nonclustered (APPID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TAAPPMG') and minor_id = 0)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TAAPPMG'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '应用管理表',
   'user', @CurrentUser, 'table', 'TAAPPMG'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TAAPPMG')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'APPID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TAAPPMG', 'column', 'APPID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '应用id',
   'user', @CurrentUser, 'table', 'TAAPPMG', 'column', 'APPID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TAAPPMG')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'APPNAME')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TAAPPMG', 'column', 'APPNAME'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '应用名称',
   'user', @CurrentUser, 'table', 'TAAPPMG', 'column', 'APPNAME'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TAAPPMG')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'APPTYPE')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TAAPPMG', 'column', 'APPTYPE'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '应用类型',
   'user', @CurrentUser, 'table', 'TAAPPMG', 'column', 'APPTYPE'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TAAPPMG')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'APPEFFECTIVE')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TAAPPMG', 'column', 'APPEFFECTIVE'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '应有有效标识',
   'user', @CurrentUser, 'table', 'TAAPPMG', 'column', 'APPEFFECTIVE'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TAAPPMG')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATEUSER')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TAAPPMG', 'column', 'CREATEUSER'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '创建人',
   'user', @CurrentUser, 'table', 'TAAPPMG', 'column', 'CREATEUSER'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TAAPPMG')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UPDATETIME')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TAAPPMG', 'column', 'UPDATETIME'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '更新时间',
   'user', @CurrentUser, 'table', 'TAAPPMG', 'column', 'UPDATETIME'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TAAPPMG')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CREATETIME')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TAAPPMG', 'column', 'CREATETIME'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '创建时间',
   'user', @CurrentUser, 'table', 'TAAPPMG', 'column', 'CREATETIME'
go

/*==============================================================*/
/* Table: TAAPPPAGE                                             */
/*==============================================================*/
create table TAAPPPAGE (
   APPID                varchar(36)          not null,
   PAGEID               varchar(36)          not null,
   PAGEPID              varchar(36)          not null,
   PAGENAME             varchar(100)         not null,
   PAGEINDEX            varchar(10)          not null,
   PAGECODE             varbinary(max)           null,
   PAGEURL              varchar(200)         not null,
   PAGETYPE             varchar(2)           not null,
   TEMPLATEID           varchar(36)          null,
   constraint PK_TAAPPPAGE primary key nonclustered (PAGEID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TAAPPPAGE') and minor_id = 0)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TAAPPPAGE'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '应用页面',
   'user', @CurrentUser, 'table', 'TAAPPPAGE'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TAAPPPAGE')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'APPID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TAAPPPAGE', 'column', 'APPID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '应用id',
   'user', @CurrentUser, 'table', 'TAAPPPAGE', 'column', 'APPID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TAAPPPAGE')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PAGEID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TAAPPPAGE', 'column', 'PAGEID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '页面id',
   'user', @CurrentUser, 'table', 'TAAPPPAGE', 'column', 'PAGEID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TAAPPPAGE')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PAGEPID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TAAPPPAGE', 'column', 'PAGEPID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '页面父id',
   'user', @CurrentUser, 'table', 'TAAPPPAGE', 'column', 'PAGEPID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TAAPPPAGE')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PAGENAME')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TAAPPPAGE', 'column', 'PAGENAME'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '页面名称',
   'user', @CurrentUser, 'table', 'TAAPPPAGE', 'column', 'PAGENAME'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TAAPPPAGE')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PAGEINDEX')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TAAPPPAGE', 'column', 'PAGEINDEX'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '页面顺序',
   'user', @CurrentUser, 'table', 'TAAPPPAGE', 'column', 'PAGEINDEX'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TAAPPPAGE')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PAGECODE')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TAAPPPAGE', 'column', 'PAGECODE'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '页面代码',
   'user', @CurrentUser, 'table', 'TAAPPPAGE', 'column', 'PAGECODE'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TAAPPPAGE')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PAGEURL')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TAAPPPAGE', 'column', 'PAGEURL'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '页面url',
   'user', @CurrentUser, 'table', 'TAAPPPAGE', 'column', 'PAGEURL'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TAAPPPAGE')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PAGETYPE')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TAAPPPAGE', 'column', 'PAGETYPE'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '页面类型',
   'user', @CurrentUser, 'table', 'TAAPPPAGE', 'column', 'PAGETYPE'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TAAPPPAGE')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TEMPLATEID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TAAPPPAGE', 'column', 'TEMPLATEID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '页面所用得模版id',
   'user', @CurrentUser, 'table', 'TAAPPPAGE', 'column', 'TEMPLATEID'
go

/*==============================================================*/
/* Table: TASYSCONFIG                                             */
/*==============================================================*/
create table TASYSCONFIG (
   ID                   varchar(36)          not null,
   FIELDNAME            varchar(100),
   DEFAULTVALUE         varchar(200),
   DATATYPE             varchar(1),
   FUNCTIONTYPE         varchar(1),
   COLLECTIONNAME       varchar(100),
   COLLECTIONDATAS      varchar(2000),
   FLAG                 numeric(10,0),
   constraint PK_TASYSCONFIG primary key nonclustered (ID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('TASYSCONFIG') and minor_id = 0)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TASYSCONFIG'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '系统配置',
   'user', @CurrentUser, 'table', 'TASYSCONFIG'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TASYSCONFIG')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TASYSCONFIG', 'column', 'ID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '系统配置id',
   'user', @CurrentUser, 'table', 'TASYSCONFIG', 'column', 'ID'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TASYSCONFIG')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FIELDNAME')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TASYSCONFIG', 'column', 'FIELDNAME'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '字段名称',
   'user', @CurrentUser, 'table', 'TASYSCONFIG', 'column', 'FIELDNAME'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TASYSCONFIG')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DEFAULTVALUE')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TASYSCONFIG', 'column', 'DEFAULTVALUE'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '默认值',
   'user', @CurrentUser, 'table', 'TASYSCONFIG', 'column', 'DEFAULTVALUE'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TASYSCONFIG')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DATATYPE')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TASYSCONFIG', 'column', 'DATATYPE'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '数据类型',
   'user', @CurrentUser, 'table', 'TASYSCONFIG', 'column', 'DATATYPE'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TASYSCONFIG')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FUNCTIONTYPE')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TASYSCONFIG', 'column', 'FUNCTIONTYPE'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '所属配置区域',
   'user', @CurrentUser, 'table', 'TASYSCONFIG', 'column', 'FUNCTIONTYPE'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TASYSCONFIG')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'COLLECTIONNAME')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TASYSCONFIG', 'column', 'COLLECTIONNAME'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '码表类型',
   'user', @CurrentUser, 'table', 'TASYSCONFIG', 'column', 'COLLECTIONNAME'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TASYSCONFIG')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'COLLECTIONDATAS')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TASYSCONFIG', 'column', 'COLLECTIONDATAS'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '码表值',
   'user', @CurrentUser, 'table', 'TASYSCONFIG', 'column', 'COLLECTIONDATAS'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TASYSCONFIG')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FLAG')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description',
   'user', @CurrentUser, 'table', 'TASYSCONFIG', 'column', 'FLAG'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description',
   '更新标志',
   'user', @CurrentUser, 'table', 'TASYSCONFIG', 'column', 'FLAG'
go


--    初始化人员表
INSERT INTO tauser (userid,loginid,password,passworddefaultnum,pwdlastmodifydate,islock,orderno,name,sex,idcardtype,idcardno,mobile,createuser,createtime,modifytime,destory,accountsource,effective,effectivetime,jobnumber,state,birthplace,address,zipcode,email,phone,education,graduateschool,workplace,field01,field02,field03,field04,field05,field06,field07,field08,field09,field10) VALUES (
  '1','developer','$2a$10$ZI3ewI1LvnS8bvTDiZk5X.w9/u.LXy8vPTwQFl8SlDtMTYBQHnIEm',0,GETDATE(),'0',1,'超级管理员','1','0',null,'18011567700','1',GETDATE(),NULL,'0',NULL,'1',NULL,NULL,NULL,NULL,'成都市/锦江区/久远银海',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

--    初始化组织表
INSERT INTO taorg
(orgid, orgname, spell, parentid, idpath, namepath, customno, orderno, orglevel, area, effective, orgtype, createuser, createtime, modifytime, orgmanager, orgcode, contacts, address, tel, destory, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10)
VALUES('fd811ab9c30440088df3e29ea784460a', '顶级组织', 'MZB', '0', 'fd811ab9c30440088df3e29ea784460a', '顶级组织', '', 0, 0, '', '1', '01', '1', NULL, GETDATE() , '', '', '', '', '', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--    初始化码表
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('角色类型', 'ROLETYPE', '管理角色', '04', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('角色标识', 'ROLESIGN', '稽核角色', '2', null, '2', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('角色标识', 'ROLESIGN', '业务角色', '1', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('元素在界面中的授权策略', 'ELEMENTAUTHORITYPOLICY', '不显示', '0', null, '31', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('元素在界面中的授权策略', 'ELEMENTAUTHORITYPOLICY', '数据可见不可编辑', '1', '', '21', '0', '', '', null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('元素在界面中的授权策略', 'ELEMENTAUTHORITYPOLICY', '数据可见可编辑', '2', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('账户类型', 'ACCOUNTTYPE', '组织账户', '2', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('账户类型', 'ACCOUNTTYPE', '个人账户', '1', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('界面元素授权策略', 'UIAUTHORITYPOLICY', '继承当前菜单权限', '0', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('界面元素授权策略', 'UIAUTHORITYPOLICY', '独立授权', '1', null, '10', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全策略', 'SECURITYPOLICY', '无需登录可访问', '0', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全策略', 'SECURITYPOLICY', '登陆均可访问', '1', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全策略', 'SECURITYPOLICY', '授权可访问', '2', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('有效标识', 'EFFECTIVE', '有效', '1', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('有效标识', 'EFFECTIVE', '无效', '0', null, '0', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('证件类型', 'IDCARDTYPE', '居民身份证(户口簿)', '0', '', '10', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('证件类型', 'IDCARDTYPE', '护照', '1', '', '20', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('证件类型', 'IDCARDTYPE', '军官证', '2', '', '30', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('证件类型', 'IDCARDTYPE', '其他', '3', '', '40', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('权限认证方式', 'AUTHMODE', '用户名密码', '01', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('权限认证方式', 'AUTHMODE', '指纹识别', '02', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('权限认证方式', 'AUTHMODE', '人脸识别', '03', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('认证方式类型', 'AUTHMODE', 'Key盘', '04', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '新增组织', '01', null, '10', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '编辑组织', '02', null, '20', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '禁用组织', '03', null, '30', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '启用组织', '04', null, '40', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除组织', '05', null, '50', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '新增用户', '06', null, '60', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '编辑用户', '07', null, '70', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '禁用用户', '08', null, '80', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '启用用户', '09', null, '90', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '解锁账号', '10', null, '100', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更新用户直属组织', '12', null, '110', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '重置密码', '13', null, '120', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除用户', '14', null, '130', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '新增角色', '15', null, '140', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '新增用户和角色关联关系', '16', null, '150', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '编辑角色', '17', null, '160', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除角色', '18', null, '170', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '角色禁用', '19', null, '180', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '启用角色', '20', null, '190', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '新增功能资源', '21', null, '200', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '编辑功能资源', '22', null, '210', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除功能资源', '23', null, '220', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '禁用功能资源', '24', null, '230', '0', null, null, null, GETDATE(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '启用功能资源', '25', null, '240', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改组织权限（授予）', '26', null, '250', '0', null, null, null, GETDATE(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改组织权限（回收）', '27', null, '260', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改使用权限（授权）', '28', null, '270', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改使用权限（回收）', '29', null, '280', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改授权权限（授权）', '30', null, '290', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改授权权限（回收）', '31', null, '300', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改再授权权限（授权）', '32', null, '310', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '更改再授权权限（回收）', '33', null, '320', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除角色人员关联关系', '34', null, '330', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '角色复制', '35', null, '340', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '权限复制', '36', null, '350', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '添加界面元素', '37', null, '360', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '删除界面元素', '38', null, '370', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '根据功能资源删除界面元素', '39', null, '380', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '编辑界面元素', '40', null, '390', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作类型', 'OPTYPE', '根据功能资源编辑界面元素', '41', null, '400', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '组织机构', '01', null, '10', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '人员用户', '02', null, '20', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '角色', '03', null, '30', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '功能资源', '04', null, '40', '0', null, null, null, GETDATE(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '界面元素', '05', null, '50', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '组织权限', '06', null, '60', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '权限信息', '07', null, '70', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01,field02, field03, field04, field05, system, newtype) VALUES ('操作对象类型', 'OPOBJTYPE', '自定义资源', '08', null, '80', '0', null, null, null, GETDATE(), '1', '0', '1',null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'OFF', '0', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'ERROR', '1', null, '1', '0', null, null, null, GETDATE(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'WARN', '2', null, '1', '0', null, null, null, GETDATE(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'INFO', '3', null, '1', '0', null, null, null, GETDATE(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'DEBUG', '4', null, '1', '0', null, null, null, GETDATE(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'TRACE', '5', null, '1', '0', null, null, null, GETDATE(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('日志等级', 'LOGLEVEL', 'ALL', '6', null, '1', '0', null, null, null, GETDATE(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全认证级别', 'SECURIYTLEVEL', '无限制', '0', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全认证级别', 'SECURIYTLEVEL', '一级', '1', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全认证级别', 'SECURIYTLEVEL', '二级', '2', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全认证级别', 'SECURIYTLEVEL', '三级', '3', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('安全认证级别', 'SECURIYTLEVEL', '四级', '4', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('字典数据类型', 'DICTDATATYPE', '未同步', '0', '', '0', '0', '', '', null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('字典数据类型', 'DICTDATATYPE', '已同步', '2', '', '2', '0', '', '', null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('字典数据类型', 'DICTDATATYPE', '脏数据', '1', '', '1', '0', '', '', null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('是否', 'YESORNO', '是', '1', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('是否', 'YESORNO', '否', '0', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('性别', 'SEX', '无', '0', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('性别', 'SEX', '男', '1', null, '11', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('性别', 'SEX', '女', '2', null, '21', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('组织类型', 'ORGTYPE', '机构', '01', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('组织类型', 'ORGTYPE', '部门', '02', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('组织类型', 'ORGTYPE', '组', '03', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('角色类型', 'ROLETYPE', '公有角色', '01', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('角色类型', 'ROLETYPE', '代理角色', '03', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('有无', 'HAVAORNOT', '无', '0', null, '10', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('资源类型', 'RESOURCETYPE', '通用菜单', '0', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('资源类型', 'RESOURCETYPE', '管理菜单', '1', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('资源类型', 'RESOURCETYPE', '经办菜单', '2', null, '1', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('有无', 'HAVAORNOT', '有', '1', null, '20', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('状态', 'STATE', '启用', '1', null, '10', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('状态', 'STATE', '禁用', '0', null, '20', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点有效标识', 'SITEEFFECTIVE', '有效', '1', null, '10', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点有效标识', 'SITEEFFECTIVE', '无效', '0', null, '20', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点类型', 'SITETYPE', '网厅', '1', null, '20', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点类型', 'SITETYPE', '业务系统', '2', null, '30', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点类型', 'SITETYPE', '公众号', '3', null, '40', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('静态资源类型', 'FILERESOURCETYPE', '目录', '1', null, '10', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('静态资源类型', 'FILERESOURCETYPE', '未知类型', '3', null, '30', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('静态资源类型', 'FILERESOURCETYPE', '资源文件', '2', null, '20', '0', null, null, null, GETDATE(), '1', '1', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('站点类型', 'SITETYPE', 'APP', '0', null, '10', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('行政区划级别', 'AREALEVEL', '市', '1', null, '20', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('行政区划级别', 'AREALEVEL', '区/县', '2', null, '30', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('行政区划级别', 'AREALEVEL', '其他', '4', null, '50', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('行政区划级别', 'AREALEVEL', '省/自治区', '0', null, '10', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('行政区划级别', 'AREALEVEL', '街道/镇', '3', null, '40', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('成功标识', 'ISSUCCESS', '失败', '0', null, '10', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('成功标识', 'ISSUCCESS', '成功', '1', null, '20', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('模版来源', 'TEMPLATESOURCE', '外部上传', '1', null, '10', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('模版来源', 'TEMPLATESOURCE', '内部绘制', '2', null, '20', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('模版类型', 'TEMPLATETYPE', 'code模版', '1', null, '10', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('模版类型', 'TEMPLATETYPE', '表单模版', '2', null, '20', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('模版类型', 'TEMPLATETYPE', '在线开发', '3', null, '30', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('可用标识', 'AVAILABLE', '不可用', '0', null, '20', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');
INSERT INTO tadict(name, type, label, value, parentvalue, sort, authority, cssclass, cssstyle, remarks, createdate, createuser, version, status, field01, field02, field03, field04, field05, system, newtype) VALUES ('可用标识', 'AVAILABLE', '可用', '1', null, '10', '0', null, null, null, GETDATE(), '1', '0', '1', null, null, null, null, null, '1', '0');

--    初始化功能菜单
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('4b2eee0d7ded4e8094d4acf439fd3a1c', '48afedddc8f04c668b3c1572c30a7745', '行政区划管理', '', 'sysmg', 'orguser.html#/areaManagement', 30, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/48afedddc8f04c668b3c1572c30a7745/4b2eee0d7ded4e8094d4acf439fd3a1c', '银海软件/管理系统/组织人员管理/行政区划管理', '3', '', '', '2', 0, '1', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('8aa86ed4c7f84183935a262db4a605d3', '78ad02fdb879406ebc5e7a4faf8f5905', '管理员权限管理', '', 'sysmg', 'authority.html#/adminAuthority', 10, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/78ad02fdb879406ebc5e7a4faf8f5905/8aa86ed4c7f84183935a262db4a605d3', '银海软件/管理系统/资源权限管理/管理员权限管理', '3', '', '', '2', 0, '1', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('5e67c7acef914c349d8aff076921f6b5', '78ad02fdb879406ebc5e7a4faf8f5905', '相似权限管理', '', 'sysmg', 'authority.html#/similarAuthority', 30, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/78ad02fdb879406ebc5e7a4faf8f5905/5e67c7acef914c349d8aff076921f6b5', '银海软件/管理系统/资源权限管理/相似权限管理', '3', '', '', '2', 0, '0', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('72888507aba5484a8942e8dd0e6b6f7f', 'fb8637c2e52e4b05bd2c07d742141ee7', '作业管理', null, 'sysmg', 'sysmg.html#/jobManager', 0, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/fb8637c2e52e4b05bd2c07d742141ee7/72888507aba5484a8942e8dd0e6b6f7f', '银海软件/管理系统/系统管理/分布式任务管理/作业管理', '4', '', '', '2', 0, '1', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('59a7fb9c459a4dd48d468f2add1d32b2', '1d4e283ad5584e02811f6b188d3592bc', '接入系统管理', '', 'sysmg', 'sysmg.html#/accessSystem', 70, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/59a7fb9c459a4dd48d468f2add1d32b2', '银海软件/管理系统/系统管理/接入系统管理', '3', '', '', '2', 0, '1', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('0415d44401b24605a21b589b6aaa349e', '40337bdecb19484ebeb39d6c21aaca26', '管理系统', '', 'sysmg', '', 51, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e', '银海软件/管理系统', '1', '', '', '2', 0, '0', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('1d4e283ad5584e02811f6b188d3592bc', '0415d44401b24605a21b589b6aaa349e', '系统管理', '', 'sysmg', '', 41, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc', '银海软件/管理系统/系统管理', '2', '', '', '2', 0, '1', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('c578d9f8626d48f2971d7a18ac5281c5', 'fb8637c2e52e4b05bd2c07d742141ee7', '作业历史', null, 'sysmg', 'sysmg.html#/jobHistory', 10, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/fb8637c2e52e4b05bd2c07d742141ee7/c578d9f8626d48f2971d7a18ac5281c5', '银海软件/管理系统/系统管理/分布式任务管理/作业历史', '4', '', '', '2', 0, '1', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('78ad02fdb879406ebc5e7a4faf8f5905', '0415d44401b24605a21b589b6aaa349e', '资源权限管理', '', 'sysmg', '', 30, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/78ad02fdb879406ebc5e7a4faf8f5905', '银海软件/管理系统/资源权限管理', '2', '', '', '2', 0, '0', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('7c2862a57e34459484bd701c19a8de27', '1d4e283ad5584e02811f6b188d3592bc', '系统异常日志', '', 'sysmg', 'logmg.html#/systemExceptionLog', 20, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/7c2862a57e34459484bd701c19a8de27', '银海软件/管理系统/系统管理/系统异常日志', '3', '', '', '2', 0, '1', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('40337bdecb19484ebeb39d6c21aaca26', '0', '银海软件', '', 'sysmg', '', 0, '40337bdecb19484ebeb39d6c21aaca26', '银海软件', '0', '', '', '1', 1, '0', '1', '', '', GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('7c1dabd160974d8f90858c187cefa128', '1d4e283ad5584e02811f6b188d3592bc', '日志动态配置', '', 'sysmg', 'logmg.html#/logConfig', 0, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/7c1dabd160974d8f90858c187cefa128', '银海软件/管理系统/系统管理/日志动态配置', '3', '', '', '2', 0, '1', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('bd9d0bba145c458e841aa9da0aeeb1d8', '7459c1b525934151a1d309a304933644', '用户可管理字段配置', '', 'sysmg', 'sysmg.html#/userInfoManagement', 40, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/7459c1b525934151a1d309a304933644/bd9d0bba145c458e841aa9da0aeeb1d8', '银海软件/管理系统/资源管理/用户可管理字段配置', '3', '', '', '2', 0, '1', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('daceeff8a97b46cb9573b93ba3a5a792', '48afedddc8f04c668b3c1572c30a7745', '人员管理', '', 'sysmg', 'orguser.html#/userManagement', 10, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/48afedddc8f04c668b3c1572c30a7745/daceeff8a97b46cb9573b93ba3a5a792', '银海软件/管理系统/组织人员管理/人员管理', '3', '', '', '2', 0, '1', '1', null, null, GETDATE(), '1', '1', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('7459c1b525934151a1d309a304933644', '0415d44401b24605a21b589b6aaa349e', '资源管理', '', 'sysmg', '', 40, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/7459c1b525934151a1d309a304933644', '银海软件/管理系统/资源管理', '2', '', '', '2', 0, '0', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('95bb9b749bf54e4692b0b1f14fd1b5ab', '78ad02fdb879406ebc5e7a4faf8f5905', '角色权限管理', '', 'sysmg', 'authority.html#/roleAuthorityManagement', 0, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/78ad02fdb879406ebc5e7a4faf8f5905/95bb9b749bf54e4692b0b1f14fd1b5ab', '银海软件/管理系统/资源权限管理/角色权限管理', '3', '', '', '2', 0, '1', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('84e388e319d44de585b94b039eec0092', '1d4e283ad5584e02811f6b188d3592bc', '工作台模块管理', '', 'sysmg', 'logmg.html#/defaultTemplate', 60, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/84e388e319d44de585b94b039eec0092', '银海软件/管理系统/系统管理/工作台模块管理', '3', '', '', '2', 0, '1', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('3dbde33722154503a7d22ac60f6a0e4e', '48afedddc8f04c668b3c1572c30a7745', '自定义组织管理', '', 'sysmg', 'orguser.html#/customOrgManagement', 20, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/48afedddc8f04c668b3c1572c30a7745/3dbde33722154503a7d22ac60f6a0e4e', '银海软件/管理系统/组织人员管理/自定义组织管理', '3', '', '', '2', 0, '1', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('770b2f1e77eb4d9092dc89743b5792c9', '1d4e283ad5584e02811f6b188d3592bc', '登录日志统计', '', 'sysmg', 'logmg.html#/loginLogAnalysis', 10, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/770b2f1e77eb4d9092dc89743b5792c9', '银海软件/管理系统/系统管理/登录日志统计', '3', '', '', '2', 0, '1', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('fb8637c2e52e4b05bd2c07d742141ee7', '1d4e283ad5584e02811f6b188d3592bc', '分布式任务管理', null, 'sysmg', null, 50, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/fb8637c2e52e4b05bd2c07d742141ee7', '银海软件/管理系统/系统管理/分布式任务管理', '3', '', '', '2', 0, '1', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('c88413826abd4a5b88612a6442e6db07', '1d4e283ad5584e02811f6b188d3592bc', '操作日志', null, 'sysmg', 'logmg.html#/operationLog', 40, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/c88413826abd4a5b88612a6442e6db07', '银海软件/管理系统/系统管理/操作日志', '3', null, null, '2', 0, '1', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('1e706f26bc144c1da12022359c238053', '48afedddc8f04c668b3c1572c30a7745', '组织机构管理', '', 'sysmg', 'orguser.html#/orgManagement', 0, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/48afedddc8f04c668b3c1572c30a7745/1e706f26bc144c1da12022359c238053', '银海软件/管理系统/组织人员管理/组织机构管理', '3', '', '', '2', 1, '0', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('3df588fc565d4287b3cefcd00a39cd91', '7459c1b525934151a1d309a304933644', '标签管理', '', 'sysmg', 'sysmg.html#/tagManagement', 30, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/7459c1b525934151a1d309a304933644/3df588fc565d4287b3cefcd00a39cd91', '银海软件/管理系统/资源管理/标签管理', '3', '', '', '2', 0, '1', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('ffa74f43e853441dac0ee90c787cb2e6', '1d4e283ad5584e02811f6b188d3592bc', '字典管理', '', 'sysmg', 'sysmg.html#/dictionaryManager', 30, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/1d4e283ad5584e02811f6b188d3592bc/ffa74f43e853441dac0ee90c787cb2e6', '银海软件/管理系统/系统管理/字典管理', '3', '', '', '2', 0, '1', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('877e407281dd48acb05a77fcb922bc73', '78ad02fdb879406ebc5e7a4faf8f5905', '权限代理', '', 'sysmg', 'authority.html#/authorityAgent', 20, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/78ad02fdb879406ebc5e7a4faf8f5905/877e407281dd48acb05a77fcb922bc73', '银海软件/管理系统/资源权限管理/权限代理', '3', '', '', '2', 0, '0', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('48afedddc8f04c668b3c1572c30a7745', '0415d44401b24605a21b589b6aaa349e', '组织人员管理', '', 'sysmg', '', 10, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/48afedddc8f04c668b3c1572c30a7745', '银海软件/管理系统/组织人员管理', '2', '', '', '2', 0, '0', '1', null, null, GETDATE(), '1', '1', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('c2745b7cae7846acb9bcf8d0f4e836e8', '7459c1b525934151a1d309a304933644', '自定义资源管理', '', 'sysmg', 'sysmg.html#/customResource', 20, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/7459c1b525934151a1d309a304933644/c2745b7cae7846acb9bcf8d0f4e836e8', '银海软件/管理系统/资源管理/自定义资源管理', '3', '', '', '2', 0, '1', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('ec56a0a43b09429482632cb61f7c6908', '7459c1b525934151a1d309a304933644', '功能资源管理', '', 'sysmg', 'sysmg.html#/resourceManagement', 0, '40337bdecb19484ebeb39d6c21aaca26/0415d44401b24605a21b589b6aaa349e/7459c1b525934151a1d309a304933644/ec56a0a43b09429482632cb61f7c6908', '银海软件/管理系统/资源管理/功能资源管理', '3', '', '', '2', 0, '1', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('df146a87ecec4297b17329c92f422b90', 'a0609e4fd75049dbb3a6af7ab8de08a3', '静态资源管理', '', 'sysmg', 'servicemg.html#/staticResourceMg', 40, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3/df146a87ecec4297b17329c92f422b90', '银海软件/网上服务集成/静态资源管理', '2', '', '', '2', 0, '0', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('950ceb076472425eba8dd981e0361497', 'a0609e4fd75049dbb3a6af7ab8de08a3', '服务管理', '', 'sysmg', 'servicemg.html#/serviceManagement', 10, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3/950ceb076472425eba8dd981e0361497', '银海软件/网上服务集成/服务管理', '2', '', '', '2', 0, '0', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('f126b34ea04943249c98af7801995490', 'a0609e4fd75049dbb3a6af7ab8de08a3', '站点管理', '', 'sysmg', 'servicemg.html#/siteManagement', 0, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3/f126b34ea04943249c98af7801995490', '银海软件/网上服务集成/站点管理', '2', '', '', '2', 0, '0', '0', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('d5778206f27f4d889c79caa2162c9e55', 'a0609e4fd75049dbb3a6af7ab8de08a3', '应用管理', '', 'sysmg', 'servicemg.html#/appManagement', 61, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3/d5778206f27f4d889c79caa2162c9e55', '银海软件/网上服务集成/应用管理', '2', '', '', '2', 0, '0', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO taresource(resourceid, presourceid, name, code, syscode, url, orderno, idpath, namepath, resourcelevel, icon, iconcolor, securitypolicy, securitylevel, resourcetype, effective, isdisplay, isfiledscontrol, createdate, createuser, uiauthoritypolicy, field01, field02, field03, field04, field05, field06, field07, field08, field09, field10, workbench) VALUES ('7d02437d246642ff82281d11df80f735', 'a0609e4fd75049dbb3a6af7ab8de08a3', '页面模板管理', '', 'sysmg', 'servicemg.html#/templateMg', 60, '40337bdecb19484ebeb39d6c21aaca26/a0609e4fd75049dbb3a6af7ab8de08a3/7d02437d246642ff82281d11df80f735', '银海软件/网上服务集成/页面模板管理', '2', '', '', '2', 0, '0', '1', null, null, GETDATE(), '1', '0', null, null, null, null, null, null, null, null, null, null, '0');

t
--    初始化角色
INSERT INTO tarole (roleid,rolename,isadmin,rolelevel,orgid,roletype,effective,effectivetime,createuser,createtime,roledesc,rolesign,subordinate) VALUES (
  '1','超级管理员',NULL,NULL,'fd811ab9c30440088df3e29ea784460a','04','1',NULL,'1',GETDATE(),'超级管理员角色',NULL,NULL);

--    初始化用户组织表
INSERT INTO tauserorg (userid,orgid,isdirect) VALUES (
  '1','fd811ab9c30440088df3e29ea784460a','1');

--   初始化接入系统
INSERT INTO taaccesssystem
(id,syscode,sysname,spell,protocol,domain,port,contextpath,portalsystem,menuservice,provider,effective,regtime,modifytime,backgroundaddress) VALUES (
  'e55b9b7046434d66bc11b94d553fada2','sysmg','管理系统','GLXT','http','localhost','8081','sysmg','1','111','ss','1',GETDATE(),GETDATE(),'192.168.0.1:8083');


--   初始化标签
INSERT INTO tataggroup (taggroupid,taggroupname,effective,createuser,createtime,updatetime,destory) VALUES (
  '001','用户','1','developer',GETDATE(),GETDATE(),'0');
INSERT INTO tataggroup (taggroupid,taggroupname,effective,createuser,createtime,updatetime,destory) VALUES (
  '002','组织','1','developer',GETDATE(),GETDATE(),'0');

--   初始化 Resource Url 表
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
VALUES ('0', GETDATE(), GETDATE(), '5e3a06ed889b4b40ba88c5ee2ba192f3', '0', '5e3a06ed889b4b40ba88c5ee2ba192f3', '久远银海', '1');

--  初始化自定义组织类别名称
INSERT INTO tacustomorgtypename (customorgtypenameid, customorgtypename, effective, createuser, createtime, updatetime, destory, customorgtypenamecode, customorgtypenamedesc)
VALUES ('baa315851d3c4a90a47889672404505d', '社保组织', '1', '1', GETDATE(), GETDATE(), '0', 'SBZZ', '这是社保组织描述');
