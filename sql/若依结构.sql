prompt PL/SQL Developer Export User Objects for user RY@PDBORCL
prompt Created by Administrator on 2022年5月6日
set define off
spool ry.log

prompt
prompt Creating table DEMO_AREA
prompt ========================
prompt
create table DEMO_AREA
(
  area_id    INTEGER not null,
  area_name  VARCHAR2(255),
  area_code  INTEGER,
  area_size  INTEGER,
  area_post  INTEGER,
  area_level INTEGER,
  parent_id  INTEGER
)
;
comment on table DEMO_AREA
  is '地域信息表';
comment on column DEMO_AREA.area_id
  is '主键';
comment on column DEMO_AREA.area_name
  is '地域名称';
comment on column DEMO_AREA.area_code
  is '地域编码';
comment on column DEMO_AREA.area_size
  is '地域面积';
comment on column DEMO_AREA.area_post
  is '邮编';
comment on column DEMO_AREA.area_level
  is '地域等级';
comment on column DEMO_AREA.parent_id
  is '父节点ID';
alter table DEMO_AREA
  add constraint DEMO_AREA_PK primary key (AREA_ID);

prompt
prompt Creating table DEMO_GOODS
prompt =========================
prompt
create table DEMO_GOODS
(
  goods_id    INTEGER not null,
  order_id    INTEGER,
  goods_code  VARCHAR2(255),
  goods_name  VARCHAR2(255),
  goods_store VARCHAR2(255),
  goods_num   NUMBER(10),
  goods_price NUMBER(13,3)
)
;
comment on column DEMO_GOODS.goods_id
  is '主键';
comment on column DEMO_GOODS.order_id
  is '外键';
comment on column DEMO_GOODS.goods_code
  is '货物编号';
comment on column DEMO_GOODS.goods_name
  is '货物名称';
comment on column DEMO_GOODS.goods_store
  is '所属仓库';
comment on column DEMO_GOODS.goods_num
  is '货物数量';
comment on column DEMO_GOODS.goods_price
  is '货物单价1';
alter table DEMO_GOODS
  add constraint DEMO_GOODS_PK primary key (GOODS_ID);

prompt
prompt Creating table DEMO_ORDER
prompt =========================
prompt
create table DEMO_ORDER
(
  order_id      INTEGER not null,
  order_code    VARCHAR2(255),
  order_money   NUMBER(13,3),
  order_address VARCHAR2(1500),
  order_date    DATE,
  order_user    VARCHAR2(255),
  order_phone   VARCHAR2(255)
)
;
comment on column DEMO_ORDER.order_id
  is '主键';
comment on column DEMO_ORDER.order_code
  is '订单编号';
comment on column DEMO_ORDER.order_money
  is '订单金额';
comment on column DEMO_ORDER.order_address
  is '配送地址';
comment on column DEMO_ORDER.order_date
  is '创建时间';
comment on column DEMO_ORDER.order_user
  is '收件人';
comment on column DEMO_ORDER.order_phone
  is '联系方式';
alter table DEMO_ORDER
  add constraint DEMO_ORDER_PK primary key (ORDER_ID);

prompt
prompt Creating table GEN_TABLE
prompt ========================
prompt
create table GEN_TABLE
(
  table_id          NUMBER(20) not null,
  table_name        VARCHAR2(200) default '',
  table_comment     VARCHAR2(500) default '',
  sub_table_name    VARCHAR2(64),
  sub_table_fk_name VARCHAR2(64),
  class_name        VARCHAR2(100) default '',
  tpl_category      VARCHAR2(200) default 'crud',
  package_name      VARCHAR2(100),
  module_name       VARCHAR2(30),
  business_name     VARCHAR2(30),
  function_name     VARCHAR2(50),
  function_author   VARCHAR2(50),
  gen_type          CHAR(1) default '0',
  gen_path          VARCHAR2(200) default '/',
  options           VARCHAR2(1000),
  create_by         VARCHAR2(64) default '',
  create_time       DATE,
  update_by         VARCHAR2(64) default '',
  update_time       DATE,
  remark            VARCHAR2(500)
)
;
comment on table GEN_TABLE
  is '代码生成业务表';
comment on column GEN_TABLE.table_id
  is '编号';
comment on column GEN_TABLE.table_name
  is '表名称';
comment on column GEN_TABLE.table_comment
  is '表描述';
comment on column GEN_TABLE.sub_table_name
  is '关联子表的表名';
comment on column GEN_TABLE.sub_table_fk_name
  is '子表关联的外键名';
comment on column GEN_TABLE.class_name
  is '实体类名称';
comment on column GEN_TABLE.tpl_category
  is '使用的模板（crud单表操作 tree树表操作）';
comment on column GEN_TABLE.package_name
  is '生成包路径';
comment on column GEN_TABLE.module_name
  is '生成模块名';
comment on column GEN_TABLE.business_name
  is '生成业务名';
comment on column GEN_TABLE.function_name
  is '生成功能名';
comment on column GEN_TABLE.function_author
  is '生成功能作者';
comment on column GEN_TABLE.gen_type
  is '生成代码方式（0zip压缩包 1自定义路径）';
comment on column GEN_TABLE.gen_path
  is '生成路径（不填默认项目路径）';
comment on column GEN_TABLE.options
  is '其它生成选项';
comment on column GEN_TABLE.create_by
  is '创建者';
comment on column GEN_TABLE.create_time
  is '创建时间';
comment on column GEN_TABLE.update_by
  is '更新者';
comment on column GEN_TABLE.update_time
  is '更新时间';
comment on column GEN_TABLE.remark
  is '备注';
alter table GEN_TABLE
  add constraint PK_GEN_TABLE primary key (TABLE_ID);

prompt
prompt Creating table GEN_TABLE_COLUMN
prompt ===============================
prompt
create table GEN_TABLE_COLUMN
(
  column_id      NUMBER(20) not null,
  table_id       VARCHAR2(64),
  column_name    VARCHAR2(200),
  column_comment VARCHAR2(500),
  column_type    VARCHAR2(100),
  java_type      VARCHAR2(500),
  java_field     VARCHAR2(200),
  is_pk          CHAR(1),
  is_increment   CHAR(1),
  is_required    CHAR(1),
  is_insert      CHAR(1),
  is_edit        CHAR(1),
  is_list        CHAR(1),
  is_query       CHAR(1),
  query_type     VARCHAR2(200) default 'EQ',
  html_type      VARCHAR2(200),
  dict_type      VARCHAR2(200) default '',
  sort           NUMBER(4),
  create_by      VARCHAR2(64) default '',
  create_time    DATE,
  update_by      VARCHAR2(64) default '',
  update_time    DATE
)
;
comment on table GEN_TABLE_COLUMN
  is '代码生成业务表字段';
comment on column GEN_TABLE_COLUMN.column_id
  is '编号';
comment on column GEN_TABLE_COLUMN.table_id
  is '归属表编号';
comment on column GEN_TABLE_COLUMN.column_name
  is '列名称';
comment on column GEN_TABLE_COLUMN.column_comment
  is '列描述';
comment on column GEN_TABLE_COLUMN.column_type
  is '列类型';
comment on column GEN_TABLE_COLUMN.java_type
  is 'JAVA类型';
comment on column GEN_TABLE_COLUMN.java_field
  is 'JAVA字段名';
comment on column GEN_TABLE_COLUMN.is_pk
  is '是否主键（1是）';
comment on column GEN_TABLE_COLUMN.is_increment
  is '是否自增（1是）';
comment on column GEN_TABLE_COLUMN.is_required
  is '是否必填（1是）';
comment on column GEN_TABLE_COLUMN.is_insert
  is '是否为插入字段（1是）';
comment on column GEN_TABLE_COLUMN.is_edit
  is '是否编辑字段（1是）';
comment on column GEN_TABLE_COLUMN.is_list
  is '是否列表字段（1是）';
comment on column GEN_TABLE_COLUMN.is_query
  is '是否查询字段（1是）';
comment on column GEN_TABLE_COLUMN.query_type
  is '查询方式（等于、不等于、大于、小于、范围）';
comment on column GEN_TABLE_COLUMN.html_type
  is '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）';
comment on column GEN_TABLE_COLUMN.dict_type
  is '字典类型';
comment on column GEN_TABLE_COLUMN.sort
  is '排序';
comment on column GEN_TABLE_COLUMN.create_by
  is '创建者';
comment on column GEN_TABLE_COLUMN.create_time
  is '创建时间';
comment on column GEN_TABLE_COLUMN.update_by
  is '更新者';
comment on column GEN_TABLE_COLUMN.update_time
  is '更新时间';
alter table GEN_TABLE_COLUMN
  add constraint PK_GEN_TABLE_COLUMN primary key (COLUMN_ID);

prompt
prompt Creating table JIMU_DICT
prompt ========================
prompt
create table JIMU_DICT
(
  id          NVARCHAR2(32) not null,
  dict_name   NVARCHAR2(100),
  dict_code   NVARCHAR2(100),
  description NVARCHAR2(255),
  del_flag    NUMBER(11),
  create_by   NVARCHAR2(32),
  create_time DATE,
  update_by   NVARCHAR2(32),
  update_time DATE,
  type        NUMBER(11)
)
;
comment on column JIMU_DICT.dict_name
  is '字典名称';
comment on column JIMU_DICT.dict_code
  is '字典编码';
comment on column JIMU_DICT.description
  is '描述';
comment on column JIMU_DICT.del_flag
  is '删除状态';
comment on column JIMU_DICT.create_by
  is '创建人';
comment on column JIMU_DICT.create_time
  is '创建时间';
comment on column JIMU_DICT.update_by
  is '更新人';
comment on column JIMU_DICT.update_time
  is '更新时间';
comment on column JIMU_DICT.type
  is '字典类型0为string,1为number';
create unique index UK_SD_DICT_CODE on JIMU_DICT (DICT_CODE);
alter table JIMU_DICT
  add primary key (ID);

prompt
prompt Creating table JIMU_DICT_ITEM
prompt =============================
prompt
create table JIMU_DICT_ITEM
(
  id          NVARCHAR2(32) not null,
  dict_id     NVARCHAR2(32),
  item_text   NVARCHAR2(100),
  item_value  NVARCHAR2(100),
  description NVARCHAR2(255),
  sort_order  NUMBER(11),
  status      NUMBER(11),
  create_by   NVARCHAR2(32),
  create_time DATE,
  update_by   NVARCHAR2(32),
  update_time DATE
)
;
comment on column JIMU_DICT_ITEM.dict_id
  is '字典id';
comment on column JIMU_DICT_ITEM.item_text
  is '字典项文本';
comment on column JIMU_DICT_ITEM.item_value
  is '字典项值';
comment on column JIMU_DICT_ITEM.description
  is '描述';
comment on column JIMU_DICT_ITEM.sort_order
  is '排序';
comment on column JIMU_DICT_ITEM.status
  is '状态（1启用 0不启用）';
create index IDX_SDI_DICT_VAL on JIMU_DICT_ITEM (DICT_ID, ITEM_VALUE);
create index IDX_SDI_ROLE_DICT_ID on JIMU_DICT_ITEM (DICT_ID);
create index IDX_SDI_ROLE_SORT_ORDER on JIMU_DICT_ITEM (SORT_ORDER);
create index IDX_SDI_STATUS on JIMU_DICT_ITEM (STATUS);
alter table JIMU_DICT_ITEM
  add primary key (ID);

prompt
prompt Creating table JIMU_REPORT
prompt ==========================
prompt
create table JIMU_REPORT
(
  id          NVARCHAR2(32) not null,
  code        NVARCHAR2(50),
  name        NVARCHAR2(50),
  note        NVARCHAR2(255),
  status      NVARCHAR2(10),
  type        NVARCHAR2(10),
  json_str    NCLOB,
  api_url     NVARCHAR2(255),
  thumb       NCLOB,
  create_by   NVARCHAR2(50),
  create_time DATE,
  update_by   NVARCHAR2(50),
  update_time DATE,
  del_flag    NUMBER(4),
  api_method  NVARCHAR2(255),
  api_code    NVARCHAR2(255),
  template    NUMBER(4),
  view_count  NUMBER(20),
  css_str     NCLOB,
  js_str      NCLOB
)
;
comment on table JIMU_REPORT
  is '在线excel设计器';
comment on column JIMU_REPORT.id
  is '主键';
comment on column JIMU_REPORT.code
  is '编码';
comment on column JIMU_REPORT.name
  is '名称';
comment on column JIMU_REPORT.note
  is '说明';
comment on column JIMU_REPORT.status
  is '状态';
comment on column JIMU_REPORT.type
  is '类型';
comment on column JIMU_REPORT.json_str
  is 'json字符串';
comment on column JIMU_REPORT.api_url
  is '请求地址';
comment on column JIMU_REPORT.thumb
  is '缩略图';
comment on column JIMU_REPORT.create_by
  is '创建人';
comment on column JIMU_REPORT.create_time
  is '创建时间';
comment on column JIMU_REPORT.update_by
  is '修改人';
comment on column JIMU_REPORT.update_time
  is '修改时间';
comment on column JIMU_REPORT.del_flag
  is '删除标识0-正常,1-已删除';
comment on column JIMU_REPORT.api_method
  is '请求方法0-get,1-post';
comment on column JIMU_REPORT.api_code
  is '请求编码';
comment on column JIMU_REPORT.template
  is '是否是模板 0-是,1-不是';
comment on column JIMU_REPORT.view_count
  is '浏览次数';
comment on column JIMU_REPORT.css_str
  is 'css增强';
comment on column JIMU_REPORT.js_str
  is 'js增强';
create unique index UNIQ_JMREPORT_CODE on JIMU_REPORT (CODE);
create index UNIQ_JMREPORT_CREATEBY on JIMU_REPORT (CREATE_BY);
create index UNIQ_JMREPORT_DELFLAG on JIMU_REPORT (DEL_FLAG);
alter table JIMU_REPORT
  add primary key (ID);

prompt
prompt Creating table JIMU_REPORT_DATA_SOURCE
prompt ======================================
prompt
create table JIMU_REPORT_DATA_SOURCE
(
  id            NVARCHAR2(36) not null,
  name          NVARCHAR2(100),
  report_id     NVARCHAR2(100),
  code          NVARCHAR2(100),
  remark        NVARCHAR2(200),
  db_type       NVARCHAR2(10),
  db_driver     NVARCHAR2(100),
  db_url        NVARCHAR2(500),
  db_username   NVARCHAR2(100),
  db_password   NVARCHAR2(100),
  create_by     NVARCHAR2(50),
  create_time   DATE,
  update_by     NVARCHAR2(50),
  update_time   DATE,
  connect_times NUMBER(11)
)
;
comment on column JIMU_REPORT_DATA_SOURCE.name
  is '数据源名称';
comment on column JIMU_REPORT_DATA_SOURCE.report_id
  is '报表_id';
comment on column JIMU_REPORT_DATA_SOURCE.code
  is '编码';
comment on column JIMU_REPORT_DATA_SOURCE.remark
  is '备注';
comment on column JIMU_REPORT_DATA_SOURCE.db_type
  is '数据库类型';
comment on column JIMU_REPORT_DATA_SOURCE.db_driver
  is '驱动类';
comment on column JIMU_REPORT_DATA_SOURCE.db_url
  is '数据源地址';
comment on column JIMU_REPORT_DATA_SOURCE.db_username
  is '用户名';
comment on column JIMU_REPORT_DATA_SOURCE.db_password
  is '密码';
comment on column JIMU_REPORT_DATA_SOURCE.create_by
  is '创建人';
comment on column JIMU_REPORT_DATA_SOURCE.create_time
  is '创建日期';
comment on column JIMU_REPORT_DATA_SOURCE.update_by
  is '更新人';
comment on column JIMU_REPORT_DATA_SOURCE.update_time
  is '更新日期';
comment on column JIMU_REPORT_DATA_SOURCE.connect_times
  is '连接失败次数';
create index IDX_JMDATASOURCE_CODE on JIMU_REPORT_DATA_SOURCE (CODE);
create index IDX_JMDATASOURCE_REPORT_ID on JIMU_REPORT_DATA_SOURCE (REPORT_ID);
alter table JIMU_REPORT_DATA_SOURCE
  add primary key (ID);

prompt
prompt Creating table JIMU_REPORT_DB
prompt =============================
prompt
create table JIMU_REPORT_DB
(
  id               NVARCHAR2(36) not null,
  jimu_report_id   NVARCHAR2(32),
  create_by        NVARCHAR2(50),
  update_by        NVARCHAR2(50),
  create_time      DATE,
  update_time      DATE,
  db_code          NVARCHAR2(32),
  db_ch_name       NVARCHAR2(50),
  db_type          NVARCHAR2(32),
  db_table_name    NVARCHAR2(32),
  db_dyn_sql       NCLOB,
  db_key           NVARCHAR2(32),
  tb_db_key        NVARCHAR2(32),
  tb_db_table_name NVARCHAR2(32),
  java_type        NVARCHAR2(32),
  java_value       NVARCHAR2(255),
  api_url          NVARCHAR2(255),
  api_method       NVARCHAR2(255),
  is_list          NVARCHAR2(10),
  is_page          NVARCHAR2(10),
  db_source        NVARCHAR2(255),
  db_source_type   NVARCHAR2(50),
  json_data        NCLOB,
  api_convert      NVARCHAR2(255)
)
;
comment on column JIMU_REPORT_DB.id
  is 'id';
comment on column JIMU_REPORT_DB.jimu_report_id
  is '主键字段';
comment on column JIMU_REPORT_DB.create_by
  is '创建人登录名称';
comment on column JIMU_REPORT_DB.update_by
  is '更新人登录名称';
comment on column JIMU_REPORT_DB.create_time
  is '创建日期';
comment on column JIMU_REPORT_DB.update_time
  is '更新日期';
comment on column JIMU_REPORT_DB.db_code
  is '数据集编码';
comment on column JIMU_REPORT_DB.db_ch_name
  is '数据集名字';
comment on column JIMU_REPORT_DB.db_type
  is '数据源类型';
comment on column JIMU_REPORT_DB.db_table_name
  is '数据库表名';
comment on column JIMU_REPORT_DB.db_dyn_sql
  is '动态查询SQL';
comment on column JIMU_REPORT_DB.db_key
  is '数据源KEY';
comment on column JIMU_REPORT_DB.tb_db_key
  is '填报数据源';
comment on column JIMU_REPORT_DB.tb_db_table_name
  is '填报数据表';
comment on column JIMU_REPORT_DB.java_type
  is 'java类数据集  类型（spring:springkey,class:java类名）';
comment on column JIMU_REPORT_DB.java_value
  is 'java类数据源  数值（bean key/java类名）';
comment on column JIMU_REPORT_DB.api_url
  is '请求地址';
comment on column JIMU_REPORT_DB.api_method
  is '请求方法0-get,1-post';
comment on column JIMU_REPORT_DB.is_list
  is '是否是列表0否1是 默认0';
comment on column JIMU_REPORT_DB.is_page
  is '是否作为分页,0:不分页，1:分页';
comment on column JIMU_REPORT_DB.db_source
  is '数据源';
comment on column JIMU_REPORT_DB.db_source_type
  is '数据库类型 MYSQL ORACLE SQLSERVER';
comment on column JIMU_REPORT_DB.json_data
  is 'json数据，直接解析json内容';
comment on column JIMU_REPORT_DB.api_convert
  is 'api转换器';
create index IDX_DB_SOURCE_ID on JIMU_REPORT_DB (DB_SOURCE);
create index IDX_JIMU_REPORT_ID on JIMU_REPORT_DB (JIMU_REPORT_ID);
create index IDX_JMREPORTDB_DB_KEY on JIMU_REPORT_DB (DB_KEY);
alter table JIMU_REPORT_DB
  add primary key (ID);

prompt
prompt Creating table JIMU_REPORT_DB_FIELD
prompt ===================================
prompt
create table JIMU_REPORT_DB_FIELD
(
  id                NVARCHAR2(36) not null,
  create_by         NVARCHAR2(50),
  create_time       DATE,
  update_by         NVARCHAR2(50),
  update_time       DATE,
  jimu_report_db_id NVARCHAR2(32),
  field_name        NVARCHAR2(80),
  field_text        NVARCHAR2(50),
  widget_type       NVARCHAR2(50),
  widget_width      NUMBER(11),
  order_num         NUMBER(11),
  search_flag       NUMBER(11),
  search_mode       NUMBER(11),
  dict_code         NVARCHAR2(255),
  search_value      NVARCHAR2(100),
  search_format     NVARCHAR2(50),
  ext_json          NCLOB
)
;
comment on column JIMU_REPORT_DB_FIELD.id
  is 'id';
comment on column JIMU_REPORT_DB_FIELD.create_by
  is '创建人登录名称';
comment on column JIMU_REPORT_DB_FIELD.create_time
  is '创建日期';
comment on column JIMU_REPORT_DB_FIELD.update_by
  is '更新人登录名称';
comment on column JIMU_REPORT_DB_FIELD.update_time
  is '更新日期';
comment on column JIMU_REPORT_DB_FIELD.jimu_report_db_id
  is '数据源ID';
comment on column JIMU_REPORT_DB_FIELD.field_name
  is '字段名';
comment on column JIMU_REPORT_DB_FIELD.field_text
  is '字段文本';
comment on column JIMU_REPORT_DB_FIELD.widget_type
  is '控件类型';
comment on column JIMU_REPORT_DB_FIELD.widget_width
  is '控件宽度';
comment on column JIMU_REPORT_DB_FIELD.order_num
  is '排序';
comment on column JIMU_REPORT_DB_FIELD.search_flag
  is '查询标识0否1是 默认0';
comment on column JIMU_REPORT_DB_FIELD.search_mode
  is '查询模式1简单2范围';
comment on column JIMU_REPORT_DB_FIELD.dict_code
  is '字典编码支持从表中取数据';
comment on column JIMU_REPORT_DB_FIELD.search_value
  is '查询默认值';
comment on column JIMU_REPORT_DB_FIELD.search_format
  is '查询时间格式化表达式';
comment on column JIMU_REPORT_DB_FIELD.ext_json
  is '参数配置';
create index IDX_DBFIELD_ORDER_NUM on JIMU_REPORT_DB_FIELD (ORDER_NUM);
create index IDX_JRDF_JIMU_REPORT_DB_ID on JIMU_REPORT_DB_FIELD (JIMU_REPORT_DB_ID);
alter table JIMU_REPORT_DB_FIELD
  add primary key (ID);

prompt
prompt Creating table JIMU_REPORT_DB_PARAM
prompt ===================================
prompt
create table JIMU_REPORT_DB_PARAM
(
  id                  NVARCHAR2(36) not null,
  jimu_report_head_id NVARCHAR2(36) not null,
  param_name          NVARCHAR2(32) not null,
  param_txt           NVARCHAR2(32),
  param_value         NVARCHAR2(1000),
  order_num           NUMBER(11),
  create_by           NVARCHAR2(50),
  create_time         DATE,
  update_by           NVARCHAR2(50),
  update_time         DATE,
  search_flag         NUMBER(11),
  widget_type         NVARCHAR2(50),
  search_mode         NUMBER(11),
  dict_code           NVARCHAR2(255),
  search_format       NVARCHAR2(50),
  ext_json            NCLOB
)
;
comment on column JIMU_REPORT_DB_PARAM.jimu_report_head_id
  is '动态报表ID';
comment on column JIMU_REPORT_DB_PARAM.param_name
  is '参数字段';
comment on column JIMU_REPORT_DB_PARAM.param_txt
  is '参数文本';
comment on column JIMU_REPORT_DB_PARAM.param_value
  is '参数默认值';
comment on column JIMU_REPORT_DB_PARAM.order_num
  is '排序';
comment on column JIMU_REPORT_DB_PARAM.create_by
  is '创建人登录名称';
comment on column JIMU_REPORT_DB_PARAM.create_time
  is '创建日期';
comment on column JIMU_REPORT_DB_PARAM.update_by
  is '更新人登录名称';
comment on column JIMU_REPORT_DB_PARAM.update_time
  is '更新日期';
comment on column JIMU_REPORT_DB_PARAM.search_flag
  is '查询标识0否1是 默认0';
comment on column JIMU_REPORT_DB_PARAM.widget_type
  is '查询控件类型';
comment on column JIMU_REPORT_DB_PARAM.search_mode
  is '查询模式1简单2范围';
comment on column JIMU_REPORT_DB_PARAM.dict_code
  is '字典';
comment on column JIMU_REPORT_DB_PARAM.search_format
  is '查询时间格式化表达式';
comment on column JIMU_REPORT_DB_PARAM.ext_json
  is '参数配置';
create index IDX_JMRHEADID on JIMU_REPORT_DB_PARAM (JIMU_REPORT_HEAD_ID);
alter table JIMU_REPORT_DB_PARAM
  add primary key (ID);

prompt
prompt Creating table JIMU_REPORT_LINK
prompt ===============================
prompt
create table JIMU_REPORT_LINK
(
  id            NVARCHAR2(32) not null,
  report_id     NVARCHAR2(32),
  parameter     NCLOB,
  eject_type    NVARCHAR2(1),
  link_name     NVARCHAR2(255),
  api_method    NVARCHAR2(1),
  link_type     NVARCHAR2(1),
  api_url       NVARCHAR2(1000),
  link_chart_id NVARCHAR2(50),
  expression    NVARCHAR2(255),
  requirement   NVARCHAR2(255)
)
;
comment on table JIMU_REPORT_LINK
  is '超链接配置表';
comment on column JIMU_REPORT_LINK.id
  is '主键id';
comment on column JIMU_REPORT_LINK.report_id
  is '积木设计器id';
comment on column JIMU_REPORT_LINK.parameter
  is '参数';
comment on column JIMU_REPORT_LINK.eject_type
  is '弹出方式（0 当前页面 1 新窗口）';
comment on column JIMU_REPORT_LINK.link_name
  is '链接名称';
comment on column JIMU_REPORT_LINK.api_method
  is '请求方法0-get,1-post';
comment on column JIMU_REPORT_LINK.link_type
  is '链接方式(0 网络报表 1 网络连接 2 图表联动)';
comment on column JIMU_REPORT_LINK.api_url
  is '外网api';
comment on column JIMU_REPORT_LINK.link_chart_id
  is '联动图表的ID';
comment on column JIMU_REPORT_LINK.expression
  is '表达式';
comment on column JIMU_REPORT_LINK.requirement
  is '条件';
create index UNIQ_LINK_REPORTID on JIMU_REPORT_LINK (REPORT_ID);
alter table JIMU_REPORT_LINK
  add primary key (ID);

prompt
prompt Creating table JIMU_REPORT_MAP
prompt ==============================
prompt
create table JIMU_REPORT_MAP
(
  id           NVARCHAR2(64) not null,
  label        NVARCHAR2(125),
  name         NVARCHAR2(125),
  data         NCLOB,
  create_by    NVARCHAR2(32),
  create_time  DATE,
  update_by    NVARCHAR2(32),
  update_time  DATE,
  del_flag     NVARCHAR2(1),
  sys_org_code NVARCHAR2(64)
)
;
comment on table JIMU_REPORT_MAP
  is '地图配置表';
comment on column JIMU_REPORT_MAP.id
  is '主键';
comment on column JIMU_REPORT_MAP.label
  is '地图名称';
comment on column JIMU_REPORT_MAP.name
  is '地图编码';
comment on column JIMU_REPORT_MAP.data
  is '地图数据';
comment on column JIMU_REPORT_MAP.create_by
  is '创建人';
comment on column JIMU_REPORT_MAP.create_time
  is '创建时间';
comment on column JIMU_REPORT_MAP.update_by
  is '修改人';
comment on column JIMU_REPORT_MAP.update_time
  is '修改时间';
comment on column JIMU_REPORT_MAP.del_flag
  is '0表示未删除,1表示删除';
comment on column JIMU_REPORT_MAP.sys_org_code
  is '所属部门';
create unique index UNIQ_JMREPORT_MAP_NAME on JIMU_REPORT_MAP (NAME);
alter table JIMU_REPORT_MAP
  add primary key (ID);

prompt
prompt Creating table JIMU_REPORT_SHARE
prompt ================================
prompt
create table JIMU_REPORT_SHARE
(
  id               NVARCHAR2(32) not null,
  report_id        NVARCHAR2(32),
  preview_url      NVARCHAR2(1000),
  preview_lock     NVARCHAR2(4),
  last_update_time DATE,
  term_of_validity NVARCHAR2(1),
  status           NVARCHAR2(1)
)
;
comment on table JIMU_REPORT_SHARE
  is '积木报表预览权限表';
comment on column JIMU_REPORT_SHARE.id
  is '主键';
comment on column JIMU_REPORT_SHARE.report_id
  is '在线excel设计器id';
comment on column JIMU_REPORT_SHARE.preview_url
  is '预览地址';
comment on column JIMU_REPORT_SHARE.preview_lock
  is '密码锁';
comment on column JIMU_REPORT_SHARE.last_update_time
  is '最后更新时间';
comment on column JIMU_REPORT_SHARE.term_of_validity
  is '有效期(0:永久有效，1:1天，2:7天)';
comment on column JIMU_REPORT_SHARE.status
  is '是否过期(0未过期，1已过期)';
alter table JIMU_REPORT_SHARE
  add primary key (ID);

prompt
prompt Creating table QRTZ_JOB_DETAILS
prompt ===============================
prompt
create table QRTZ_JOB_DETAILS
(
  sched_name        VARCHAR2(120) not null,
  job_name          VARCHAR2(200) not null,
  job_group         VARCHAR2(200) not null,
  description       VARCHAR2(250),
  job_class_name    VARCHAR2(250) not null,
  is_durable        VARCHAR2(1) not null,
  is_nonconcurrent  VARCHAR2(1) not null,
  is_update_data    VARCHAR2(1) not null,
  requests_recovery VARCHAR2(1) not null,
  job_data          BLOB
)
;
comment on table QRTZ_JOB_DETAILS
  is '任务详细信息表';
comment on column QRTZ_JOB_DETAILS.sched_name
  is '调度名称';
comment on column QRTZ_JOB_DETAILS.job_name
  is '任务名称';
comment on column QRTZ_JOB_DETAILS.job_group
  is '任务组名';
comment on column QRTZ_JOB_DETAILS.description
  is '相关介绍';
comment on column QRTZ_JOB_DETAILS.job_class_name
  is '执行任务类名称';
comment on column QRTZ_JOB_DETAILS.is_durable
  is '是否持久化';
comment on column QRTZ_JOB_DETAILS.is_nonconcurrent
  is '是否并发';
comment on column QRTZ_JOB_DETAILS.is_update_data
  is '是否更新数据';
comment on column QRTZ_JOB_DETAILS.requests_recovery
  is '是否接受恢复执行';
comment on column QRTZ_JOB_DETAILS.job_data
  is '存放持久化job对象';
create index IDX_QRTZ_J_GRP on QRTZ_JOB_DETAILS (SCHED_NAME, JOB_GROUP);
create index IDX_QRTZ_J_REQ_RECOVERY on QRTZ_JOB_DETAILS (SCHED_NAME, REQUESTS_RECOVERY);
alter table QRTZ_JOB_DETAILS
  add constraint QRTZ_JOB_DETAILS_PK primary key (SCHED_NAME, JOB_NAME, JOB_GROUP);

prompt
prompt Creating table QRTZ_TRIGGERS
prompt ============================
prompt
create table QRTZ_TRIGGERS
(
  sched_name     VARCHAR2(120) not null,
  trigger_name   VARCHAR2(200) not null,
  trigger_group  VARCHAR2(200) not null,
  job_name       VARCHAR2(200) not null,
  job_group      VARCHAR2(200) not null,
  description    VARCHAR2(250),
  next_fire_time NUMBER(13),
  prev_fire_time NUMBER(13),
  priority       NUMBER(13),
  trigger_state  VARCHAR2(16) not null,
  trigger_type   VARCHAR2(8) not null,
  start_time     NUMBER(13) not null,
  end_time       NUMBER(13),
  calendar_name  VARCHAR2(200),
  misfire_instr  NUMBER(2),
  job_data       BLOB
)
;
comment on table QRTZ_TRIGGERS
  is '触发器详细信息表';
comment on column QRTZ_TRIGGERS.sched_name
  is '调度名称';
comment on column QRTZ_TRIGGERS.trigger_name
  is '触发器的名字';
comment on column QRTZ_TRIGGERS.trigger_group
  is '触发器所属组的名字';
comment on column QRTZ_TRIGGERS.job_name
  is 'qrtz_job_details表job_name的外键';
comment on column QRTZ_TRIGGERS.job_group
  is 'qrtz_job_details表job_group的外键';
comment on column QRTZ_TRIGGERS.description
  is '相关介绍';
comment on column QRTZ_TRIGGERS.next_fire_time
  is '上一次触发时间（毫秒）';
comment on column QRTZ_TRIGGERS.prev_fire_time
  is '下一次触发时间（默认为-1表示不触发）';
comment on column QRTZ_TRIGGERS.priority
  is '优先级';
comment on column QRTZ_TRIGGERS.trigger_state
  is '触发器状态';
comment on column QRTZ_TRIGGERS.trigger_type
  is '触发器的类型';
comment on column QRTZ_TRIGGERS.start_time
  is '开始时间';
comment on column QRTZ_TRIGGERS.end_time
  is '结束时间';
comment on column QRTZ_TRIGGERS.calendar_name
  is '日程表名称';
comment on column QRTZ_TRIGGERS.misfire_instr
  is '补偿执行的策略';
comment on column QRTZ_TRIGGERS.job_data
  is '存放持久化job对象';
create index IDX_QRTZ_T_C on QRTZ_TRIGGERS (SCHED_NAME, CALENDAR_NAME);
create index IDX_QRTZ_T_G on QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_GROUP);
create index IDX_QRTZ_T_J on QRTZ_TRIGGERS (SCHED_NAME, JOB_NAME, JOB_GROUP);
create index IDX_QRTZ_T_JG on QRTZ_TRIGGERS (SCHED_NAME, JOB_GROUP);
create index IDX_QRTZ_T_NEXT_FIRE_TIME on QRTZ_TRIGGERS (SCHED_NAME, NEXT_FIRE_TIME);
create index IDX_QRTZ_T_NFT_MISFIRE on QRTZ_TRIGGERS (SCHED_NAME, MISFIRE_INSTR, NEXT_FIRE_TIME);
create index IDX_QRTZ_T_NFT_ST on QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_STATE, NEXT_FIRE_TIME);
create index IDX_QRTZ_T_NFT_ST_MISFIRE on QRTZ_TRIGGERS (SCHED_NAME, MISFIRE_INSTR, NEXT_FIRE_TIME, TRIGGER_STATE);
create index IDX_QRTZ_T_NFT_ST_MISFIRE_GRP on QRTZ_TRIGGERS (SCHED_NAME, MISFIRE_INSTR, NEXT_FIRE_TIME, TRIGGER_GROUP, TRIGGER_STATE);
create index IDX_QRTZ_T_N_G_STATE on QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_GROUP, TRIGGER_STATE);
create index IDX_QRTZ_T_N_STATE on QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, TRIGGER_STATE);
create index IDX_QRTZ_T_STATE on QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_STATE);
alter table QRTZ_TRIGGERS
  add constraint QRTZ_TRIGGERS_PK primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);
alter table QRTZ_TRIGGERS
  add constraint QRTZ_TRIGGER_TO_JOBS_FK foreign key (SCHED_NAME, JOB_NAME, JOB_GROUP)
  references QRTZ_JOB_DETAILS (SCHED_NAME, JOB_NAME, JOB_GROUP);

prompt
prompt Creating table QRTZ_BLOB_TRIGGERS
prompt =================================
prompt
create table QRTZ_BLOB_TRIGGERS
(
  sched_name    VARCHAR2(120) not null,
  trigger_name  VARCHAR2(200) not null,
  trigger_group VARCHAR2(200) not null,
  blob_data     BLOB
)
;
comment on table QRTZ_BLOB_TRIGGERS
  is 'Blob类型的触发器表';
comment on column QRTZ_BLOB_TRIGGERS.sched_name
  is '调度名称';
comment on column QRTZ_BLOB_TRIGGERS.trigger_name
  is 'qrtz_triggers表trigger_name的外键';
comment on column QRTZ_BLOB_TRIGGERS.trigger_group
  is 'qrtz_triggers表trigger_group的外键';
comment on column QRTZ_BLOB_TRIGGERS.blob_data
  is '存放持久化Trigger对象';
alter table QRTZ_BLOB_TRIGGERS
  add constraint QRTZ_BLOB_TRIG_PK primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);
alter table QRTZ_BLOB_TRIGGERS
  add constraint QRTZ_BLOB_TRIG_TO_TRIG_FK foreign key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
  references QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);

prompt
prompt Creating table QRTZ_CALENDARS
prompt =============================
prompt
create table QRTZ_CALENDARS
(
  sched_name    VARCHAR2(120) not null,
  calendar_name VARCHAR2(200) not null,
  calendar      BLOB not null
)
;
comment on table QRTZ_CALENDARS
  is '日历信息表';
comment on column QRTZ_CALENDARS.sched_name
  is '调度名称';
comment on column QRTZ_CALENDARS.calendar_name
  is '日历名称';
comment on column QRTZ_CALENDARS.calendar
  is '存放持久化calendar对象';
alter table QRTZ_CALENDARS
  add constraint QRTZ_CALENDARS_PK primary key (SCHED_NAME, CALENDAR_NAME);

prompt
prompt Creating table QRTZ_CRON_TRIGGERS
prompt =================================
prompt
create table QRTZ_CRON_TRIGGERS
(
  sched_name      VARCHAR2(120) not null,
  trigger_name    VARCHAR2(200) not null,
  trigger_group   VARCHAR2(200) not null,
  cron_expression VARCHAR2(120) not null,
  time_zone_id    VARCHAR2(80)
)
;
comment on table QRTZ_CRON_TRIGGERS
  is 'Cron类型的触发器表';
comment on column QRTZ_CRON_TRIGGERS.sched_name
  is '调度名称';
comment on column QRTZ_CRON_TRIGGERS.trigger_name
  is 'qrtz_triggers表trigger_name的外键';
comment on column QRTZ_CRON_TRIGGERS.trigger_group
  is 'qrtz_triggers表trigger_group的外键';
comment on column QRTZ_CRON_TRIGGERS.cron_expression
  is 'cron表达式';
comment on column QRTZ_CRON_TRIGGERS.time_zone_id
  is '时区';
alter table QRTZ_CRON_TRIGGERS
  add constraint QRTZ_CRON_TRIG_PK primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);
alter table QRTZ_CRON_TRIGGERS
  add constraint QRTZ_CRON_TRIG_TO_TRIG_FK foreign key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
  references QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);

prompt
prompt Creating table QRTZ_FIRED_TRIGGERS
prompt ==================================
prompt
create table QRTZ_FIRED_TRIGGERS
(
  sched_name        VARCHAR2(120) not null,
  entry_id          VARCHAR2(95) not null,
  trigger_name      VARCHAR2(200) not null,
  trigger_group     VARCHAR2(200) not null,
  instance_name     VARCHAR2(200) not null,
  fired_time        NUMBER(13) not null,
  sched_time        NUMBER(13) not null,
  priority          NUMBER(13) not null,
  state             VARCHAR2(16) not null,
  job_name          VARCHAR2(200),
  job_group         VARCHAR2(200),
  is_nonconcurrent  VARCHAR2(1),
  requests_recovery VARCHAR2(1)
)
;
comment on table QRTZ_FIRED_TRIGGERS
  is '已触发的触发器表';
comment on column QRTZ_FIRED_TRIGGERS.sched_name
  is '调度名称';
comment on column QRTZ_FIRED_TRIGGERS.entry_id
  is '调度器实例id';
comment on column QRTZ_FIRED_TRIGGERS.trigger_name
  is 'qrtz_triggers表trigger_name的外键';
comment on column QRTZ_FIRED_TRIGGERS.trigger_group
  is 'qrtz_triggers表trigger_group的外键';
comment on column QRTZ_FIRED_TRIGGERS.instance_name
  is '调度器实例名';
comment on column QRTZ_FIRED_TRIGGERS.fired_time
  is '触发的时间';
comment on column QRTZ_FIRED_TRIGGERS.sched_time
  is '定时器制定的时间';
comment on column QRTZ_FIRED_TRIGGERS.priority
  is '优先级';
comment on column QRTZ_FIRED_TRIGGERS.state
  is '状态';
comment on column QRTZ_FIRED_TRIGGERS.job_name
  is '任务名称';
comment on column QRTZ_FIRED_TRIGGERS.job_group
  is '任务组名';
comment on column QRTZ_FIRED_TRIGGERS.is_nonconcurrent
  is '是否并发';
comment on column QRTZ_FIRED_TRIGGERS.requests_recovery
  is '是否接受恢复执行';
create index IDX_QRTZ_FT_INST_JOB_REQ_RCVRY on QRTZ_FIRED_TRIGGERS (SCHED_NAME, INSTANCE_NAME, REQUESTS_RECOVERY);
create index IDX_QRTZ_FT_JG on QRTZ_FIRED_TRIGGERS (SCHED_NAME, JOB_GROUP);
create index IDX_QRTZ_FT_J_G on QRTZ_FIRED_TRIGGERS (SCHED_NAME, JOB_NAME, JOB_GROUP);
create index IDX_QRTZ_FT_TG on QRTZ_FIRED_TRIGGERS (SCHED_NAME, TRIGGER_GROUP);
create index IDX_QRTZ_FT_TRIG_INST_NAME on QRTZ_FIRED_TRIGGERS (SCHED_NAME, INSTANCE_NAME);
create index IDX_QRTZ_FT_T_G on QRTZ_FIRED_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);
alter table QRTZ_FIRED_TRIGGERS
  add constraint QRTZ_FIRED_TRIGGER_PK primary key (SCHED_NAME, ENTRY_ID);

prompt
prompt Creating table QRTZ_LOCKS
prompt =========================
prompt
create table QRTZ_LOCKS
(
  sched_name VARCHAR2(120) not null,
  lock_name  VARCHAR2(40) not null
)
;
comment on table QRTZ_LOCKS
  is '存储的悲观锁信息表';
comment on column QRTZ_LOCKS.sched_name
  is '调度名称';
comment on column QRTZ_LOCKS.lock_name
  is '悲观锁名称';
alter table QRTZ_LOCKS
  add constraint QRTZ_LOCKS_PK primary key (SCHED_NAME, LOCK_NAME);

prompt
prompt Creating table QRTZ_PAUSED_TRIGGER_GRPS
prompt =======================================
prompt
create table QRTZ_PAUSED_TRIGGER_GRPS
(
  sched_name    VARCHAR2(120) not null,
  trigger_group VARCHAR2(200) not null
)
;
comment on table QRTZ_PAUSED_TRIGGER_GRPS
  is '暂停的触发器表';
comment on column QRTZ_PAUSED_TRIGGER_GRPS.sched_name
  is '调度名称';
comment on column QRTZ_PAUSED_TRIGGER_GRPS.trigger_group
  is 'qrtz_triggers表trigger_group的外键';
alter table QRTZ_PAUSED_TRIGGER_GRPS
  add constraint QRTZ_PAUSED_TRIG_GRPS_PK primary key (SCHED_NAME, TRIGGER_GROUP);

prompt
prompt Creating table QRTZ_SCHEDULER_STATE
prompt ===================================
prompt
create table QRTZ_SCHEDULER_STATE
(
  sched_name        VARCHAR2(120) not null,
  instance_name     VARCHAR2(200) not null,
  last_checkin_time NUMBER(13) not null,
  checkin_interval  NUMBER(13) not null
)
;
comment on table QRTZ_SCHEDULER_STATE
  is '调度器状态表';
comment on column QRTZ_SCHEDULER_STATE.sched_name
  is '调度名称';
comment on column QRTZ_SCHEDULER_STATE.instance_name
  is '实例名称';
comment on column QRTZ_SCHEDULER_STATE.last_checkin_time
  is '上次检查时间';
comment on column QRTZ_SCHEDULER_STATE.checkin_interval
  is '检查间隔时间';
alter table QRTZ_SCHEDULER_STATE
  add constraint QRTZ_SCHEDULER_STATE_PK primary key (SCHED_NAME, INSTANCE_NAME);

prompt
prompt Creating table QRTZ_SIMPLE_TRIGGERS
prompt ===================================
prompt
create table QRTZ_SIMPLE_TRIGGERS
(
  sched_name      VARCHAR2(120) not null,
  trigger_name    VARCHAR2(200) not null,
  trigger_group   VARCHAR2(200) not null,
  repeat_count    NUMBER(7) not null,
  repeat_interval NUMBER(12) not null,
  times_triggered NUMBER(10) not null
)
;
comment on table QRTZ_SIMPLE_TRIGGERS
  is '简单触发器的信息表';
comment on column QRTZ_SIMPLE_TRIGGERS.sched_name
  is '调度名称';
comment on column QRTZ_SIMPLE_TRIGGERS.trigger_name
  is 'qrtz_triggers表trigger_name的外键';
comment on column QRTZ_SIMPLE_TRIGGERS.trigger_group
  is 'qrtz_triggers表trigger_group的外键';
comment on column QRTZ_SIMPLE_TRIGGERS.repeat_count
  is '重复的次数统计';
comment on column QRTZ_SIMPLE_TRIGGERS.repeat_interval
  is '重复的间隔时间';
comment on column QRTZ_SIMPLE_TRIGGERS.times_triggered
  is '已经触发的次数';
alter table QRTZ_SIMPLE_TRIGGERS
  add constraint QRTZ_SIMPLE_TRIG_PK primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);
alter table QRTZ_SIMPLE_TRIGGERS
  add constraint QRTZ_SIMPLE_TRIG_TO_TRIG_FK foreign key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
  references QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);

prompt
prompt Creating table QRTZ_SIMPROP_TRIGGERS
prompt ====================================
prompt
create table QRTZ_SIMPROP_TRIGGERS
(
  sched_name    VARCHAR2(120) not null,
  trigger_name  VARCHAR2(200) not null,
  trigger_group VARCHAR2(200) not null,
  str_prop_1    VARCHAR2(512),
  str_prop_2    VARCHAR2(512),
  str_prop_3    VARCHAR2(512),
  int_prop_1    NUMBER(10),
  int_prop_2    NUMBER(10),
  long_prop_1   NUMBER(13),
  long_prop_2   NUMBER(13),
  dec_prop_1    NUMBER(13,4),
  dec_prop_2    NUMBER(13,4),
  bool_prop_1   VARCHAR2(1),
  bool_prop_2   VARCHAR2(1)
)
;
comment on table QRTZ_SIMPROP_TRIGGERS
  is '同步机制的行锁表';
comment on column QRTZ_SIMPROP_TRIGGERS.sched_name
  is '调度名称';
comment on column QRTZ_SIMPROP_TRIGGERS.trigger_name
  is 'qrtz_triggers表trigger_name的外键';
comment on column QRTZ_SIMPROP_TRIGGERS.trigger_group
  is 'qrtz_triggers表trigger_group的外键';
comment on column QRTZ_SIMPROP_TRIGGERS.str_prop_1
  is 'String类型的trigger的第一个参数';
comment on column QRTZ_SIMPROP_TRIGGERS.str_prop_2
  is 'String类型的trigger的第二个参数';
comment on column QRTZ_SIMPROP_TRIGGERS.str_prop_3
  is 'String类型的trigger的第三个参数';
comment on column QRTZ_SIMPROP_TRIGGERS.int_prop_1
  is 'int类型的trigger的第一个参数';
comment on column QRTZ_SIMPROP_TRIGGERS.int_prop_2
  is 'int类型的trigger的第二个参数';
comment on column QRTZ_SIMPROP_TRIGGERS.long_prop_1
  is 'long类型的trigger的第一个参数';
comment on column QRTZ_SIMPROP_TRIGGERS.long_prop_2
  is 'long类型的trigger的第二个参数';
comment on column QRTZ_SIMPROP_TRIGGERS.dec_prop_1
  is 'decimal类型的trigger的第一个参数';
comment on column QRTZ_SIMPROP_TRIGGERS.dec_prop_2
  is 'decimal类型的trigger的第二个参数';
comment on column QRTZ_SIMPROP_TRIGGERS.bool_prop_1
  is 'Boolean类型的trigger的第一个参数';
comment on column QRTZ_SIMPROP_TRIGGERS.bool_prop_2
  is 'Boolean类型的trigger的第二个参数';
alter table QRTZ_SIMPROP_TRIGGERS
  add constraint QRTZ_SIMPROP_TRIG_PK primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);
alter table QRTZ_SIMPROP_TRIGGERS
  add constraint QRTZ_SIMPROP_TRIG_TO_TRIG_FK foreign key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
  references QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);

prompt
prompt Creating table REP_DEMO_DXTJ
prompt ============================
prompt
create table REP_DEMO_DXTJ
(
  id        NVARCHAR2(36) not null,
  name      NVARCHAR2(50),
  gtime     DATE,
  update_by NVARCHAR2(50),
  jphone    NVARCHAR2(125),
  birth     DATE,
  hukou     NVARCHAR2(32),
  laddress  NVARCHAR2(125),
  jperson   NVARCHAR2(32),
  sex       NVARCHAR2(32)
)
;
comment on column REP_DEMO_DXTJ.id
  is '主键';
comment on column REP_DEMO_DXTJ.name
  is '姓名';
comment on column REP_DEMO_DXTJ.gtime
  is '雇佣日期';
comment on column REP_DEMO_DXTJ.update_by
  is '职务';
comment on column REP_DEMO_DXTJ.jphone
  is '家庭电话';
comment on column REP_DEMO_DXTJ.birth
  is '出生日期';
comment on column REP_DEMO_DXTJ.hukou
  is '户口所在地';
comment on column REP_DEMO_DXTJ.laddress
  is '联系地址';
comment on column REP_DEMO_DXTJ.jperson
  is '紧急联系人';
comment on column REP_DEMO_DXTJ.sex
  is 'xingbie';
alter table REP_DEMO_DXTJ
  add primary key (ID);

prompt
prompt Creating table REP_DEMO_EMPLOYEE
prompt ================================
prompt
create table REP_DEMO_EMPLOYEE
(
  id                     NVARCHAR2(10) not null,
  num                    NVARCHAR2(50),
  name                   NVARCHAR2(100),
  sex                    NVARCHAR2(10),
  birthday               DATE,
  nation                 NVARCHAR2(30),
  political              NVARCHAR2(30),
  native_place           NVARCHAR2(30),
  height                 NVARCHAR2(30),
  weight                 NVARCHAR2(30),
  health                 NVARCHAR2(30),
  id_card                NVARCHAR2(80),
  education              NVARCHAR2(30),
  school                 NVARCHAR2(80),
  major                  NVARCHAR2(80),
  address                NVARCHAR2(100),
  zip_code               NVARCHAR2(30),
  email                  NVARCHAR2(30),
  phone                  NVARCHAR2(30),
  foreign_language       NVARCHAR2(30),
  foreign_language_level NVARCHAR2(30),
  computer_level         NVARCHAR2(30),
  graduation_time        DATE,
  arrival_time           DATE,
  positional_titles      NVARCHAR2(30),
  education_experience   NCLOB,
  work_experience        NCLOB,
  create_by              NVARCHAR2(32),
  create_time            DATE,
  update_by              NVARCHAR2(32),
  update_time            DATE,
  del_flag               NUMBER(4)
)
;
comment on column REP_DEMO_EMPLOYEE.id
  is '主键';
comment on column REP_DEMO_EMPLOYEE.num
  is '编号';
comment on column REP_DEMO_EMPLOYEE.name
  is '姓名';
comment on column REP_DEMO_EMPLOYEE.sex
  is '性别';
comment on column REP_DEMO_EMPLOYEE.birthday
  is '出生日期';
comment on column REP_DEMO_EMPLOYEE.nation
  is '民族';
comment on column REP_DEMO_EMPLOYEE.political
  is '政治面貌';
comment on column REP_DEMO_EMPLOYEE.native_place
  is '籍贯';
comment on column REP_DEMO_EMPLOYEE.height
  is '身高';
comment on column REP_DEMO_EMPLOYEE.weight
  is '体重';
comment on column REP_DEMO_EMPLOYEE.health
  is '健康状况';
comment on column REP_DEMO_EMPLOYEE.id_card
  is '身份证号';
comment on column REP_DEMO_EMPLOYEE.education
  is '学历';
comment on column REP_DEMO_EMPLOYEE.school
  is '毕业学校';
comment on column REP_DEMO_EMPLOYEE.major
  is '专业';
comment on column REP_DEMO_EMPLOYEE.address
  is '联系地址';
comment on column REP_DEMO_EMPLOYEE.zip_code
  is '邮编';
comment on column REP_DEMO_EMPLOYEE.email
  is 'Email';
comment on column REP_DEMO_EMPLOYEE.phone
  is '手机号';
comment on column REP_DEMO_EMPLOYEE.foreign_language
  is '外语语种';
comment on column REP_DEMO_EMPLOYEE.foreign_language_level
  is '外语水平';
comment on column REP_DEMO_EMPLOYEE.computer_level
  is '计算机水平';
comment on column REP_DEMO_EMPLOYEE.graduation_time
  is '毕业时间';
comment on column REP_DEMO_EMPLOYEE.arrival_time
  is '到职时间';
comment on column REP_DEMO_EMPLOYEE.positional_titles
  is '职称';
comment on column REP_DEMO_EMPLOYEE.education_experience
  is '教育经历';
comment on column REP_DEMO_EMPLOYEE.work_experience
  is '工作经历';
comment on column REP_DEMO_EMPLOYEE.create_by
  is '创建人';
comment on column REP_DEMO_EMPLOYEE.create_time
  is '创建时间';
comment on column REP_DEMO_EMPLOYEE.update_by
  is '修改人';
comment on column REP_DEMO_EMPLOYEE.update_time
  is '修改时间';
comment on column REP_DEMO_EMPLOYEE.del_flag
  is '删除标识0-正常,1-已删除';
alter table REP_DEMO_EMPLOYEE
  add primary key (ID);

prompt
prompt Creating table REP_DEMO_GONGSI
prompt ==============================
prompt
create table REP_DEMO_GONGSI
(
  id      NUMBER(11) not null,
  gname   NVARCHAR2(125) not null,
  gdata   NVARCHAR2(255) not null,
  tdata   NVARCHAR2(125) not null,
  didian  NVARCHAR2(255) not null,
  zhaiyao NVARCHAR2(255) not null,
  num     NVARCHAR2(255) not null
)
;
comment on column REP_DEMO_GONGSI.gname
  is '货品名称';
comment on column REP_DEMO_GONGSI.gdata
  is '返利';
comment on column REP_DEMO_GONGSI.tdata
  is '备注';
alter table REP_DEMO_GONGSI
  add primary key (ID);

prompt
prompt Creating table REP_DEMO_JIANPIAO
prompt ================================
prompt
create table REP_DEMO_JIANPIAO
(
  id       NUMBER(11) not null,
  bnum     NVARCHAR2(125) not null,
  ftime    NVARCHAR2(125) not null,
  sfkong   NVARCHAR2(125) not null,
  kaishi   NVARCHAR2(125) not null,
  jieshu   NVARCHAR2(125) not null,
  hezairen NVARCHAR2(125) not null,
  jpnum    NVARCHAR2(125) not null,
  shihelv  NVARCHAR2(125) not null,
  s_id     NUMBER(11) not null
)
;
alter table REP_DEMO_JIANPIAO
  add primary key (ID);

prompt
prompt Creating table SYS_CONFIG
prompt =========================
prompt
create table SYS_CONFIG
(
  config_id    NUMBER(20) not null,
  config_name  VARCHAR2(100) default '',
  config_key   VARCHAR2(100) default '',
  config_value VARCHAR2(100) default '',
  config_type  CHAR(1) default 'N',
  create_by    VARCHAR2(64) default '',
  create_time  DATE,
  update_by    VARCHAR2(64) default '',
  update_time  DATE,
  remark       VARCHAR2(500)
)
;
comment on table SYS_CONFIG
  is '参数配置表';
comment on column SYS_CONFIG.config_id
  is '参数主键seq_sys_config.nextval';
comment on column SYS_CONFIG.config_name
  is '参数名称';
comment on column SYS_CONFIG.config_key
  is '参数键名';
comment on column SYS_CONFIG.config_value
  is '参数键值';
comment on column SYS_CONFIG.config_type
  is '系统内置（Y是 N否）';
comment on column SYS_CONFIG.create_by
  is '创建者';
comment on column SYS_CONFIG.create_time
  is '创建时间';
comment on column SYS_CONFIG.update_by
  is '更新者';
comment on column SYS_CONFIG.update_time
  is '更新时间';
comment on column SYS_CONFIG.remark
  is '备注';
alter table SYS_CONFIG
  add constraint PK_SYS_CONFIG primary key (CONFIG_ID);

prompt
prompt Creating table SYS_DEPT
prompt =======================
prompt
create table SYS_DEPT
(
  dept_id     NUMBER(20) not null,
  parent_id   NUMBER(20) default 0,
  ancestors   VARCHAR2(50) default '',
  dept_name   VARCHAR2(30) default '',
  order_num   NUMBER(4) default 0,
  leader      VARCHAR2(20),
  phone       VARCHAR2(11),
  email       VARCHAR2(50),
  status      CHAR(1) default '0',
  del_flag    CHAR(1) default '0',
  create_by   VARCHAR2(64) default '',
  create_time DATE,
  update_by   VARCHAR2(64) default '',
  update_time DATE
)
;
comment on table SYS_DEPT
  is '部门信息表';
comment on column SYS_DEPT.dept_id
  is '部门主键seq_sys_dept.nextval';
comment on column SYS_DEPT.parent_id
  is '父部门id';
comment on column SYS_DEPT.ancestors
  is '祖级列表';
comment on column SYS_DEPT.dept_name
  is '部门名称';
comment on column SYS_DEPT.order_num
  is '显示顺序';
comment on column SYS_DEPT.leader
  is '负责人';
comment on column SYS_DEPT.phone
  is '联系电话';
comment on column SYS_DEPT.email
  is '邮箱';
comment on column SYS_DEPT.status
  is '部门状态（0正常 1停用）';
comment on column SYS_DEPT.del_flag
  is '删除标志（0代表存在 2代表删除）';
comment on column SYS_DEPT.create_by
  is '创建者';
comment on column SYS_DEPT.create_time
  is '创建时间';
comment on column SYS_DEPT.update_by
  is '更新者';
comment on column SYS_DEPT.update_time
  is '更新时间';
alter table SYS_DEPT
  add constraint PK_SYS_DEPT primary key (DEPT_ID);

prompt
prompt Creating table SYS_DICT_DATA
prompt ============================
prompt
create table SYS_DICT_DATA
(
  dict_code   NUMBER(20) not null,
  dict_sort   NUMBER(4) default 0,
  dict_label  VARCHAR2(100) default '',
  dict_value  VARCHAR2(100) default '',
  dict_type   VARCHAR2(100) default '',
  css_class   VARCHAR2(100),
  list_class  VARCHAR2(100),
  is_default  CHAR(1) default 'N',
  status      CHAR(1) default '0',
  create_by   VARCHAR2(64) default '',
  create_time DATE,
  update_by   VARCHAR2(64) default '',
  update_time DATE,
  remark      VARCHAR2(500)
)
;
comment on table SYS_DICT_DATA
  is '字典数据表';
comment on column SYS_DICT_DATA.dict_code
  is '字典主键seq_sys_dict_data.nextval';
comment on column SYS_DICT_DATA.dict_sort
  is '字典排序';
comment on column SYS_DICT_DATA.dict_label
  is '字典标签';
comment on column SYS_DICT_DATA.dict_value
  is '字典键值';
comment on column SYS_DICT_DATA.dict_type
  is '字典类型';
comment on column SYS_DICT_DATA.css_class
  is '样式属性（其他样式扩展）';
comment on column SYS_DICT_DATA.list_class
  is '表格回显样式';
comment on column SYS_DICT_DATA.is_default
  is '是否默认（Y是 N否）';
comment on column SYS_DICT_DATA.status
  is '状态（0正常 1停用）';
comment on column SYS_DICT_DATA.create_by
  is '创建者';
comment on column SYS_DICT_DATA.create_time
  is '创建时间';
comment on column SYS_DICT_DATA.update_by
  is '更新者';
comment on column SYS_DICT_DATA.update_time
  is '更新时间';
comment on column SYS_DICT_DATA.remark
  is '备注';
alter table SYS_DICT_DATA
  add constraint PK_SYS_DICT_DATA primary key (DICT_CODE);

prompt
prompt Creating table SYS_DICT_TYPE
prompt ============================
prompt
create table SYS_DICT_TYPE
(
  dict_id     NUMBER(20) not null,
  dict_name   VARCHAR2(100) default '',
  dict_type   VARCHAR2(100) default '',
  status      CHAR(1) default '0',
  create_by   VARCHAR2(64) default '',
  create_time DATE,
  update_by   VARCHAR2(64) default '',
  update_time DATE,
  remark      VARCHAR2(500)
)
;
comment on table SYS_DICT_TYPE
  is '字典类型表';
comment on column SYS_DICT_TYPE.dict_id
  is '字典主键seq_sys_dict_type.nextval';
comment on column SYS_DICT_TYPE.dict_name
  is '字典名称';
comment on column SYS_DICT_TYPE.dict_type
  is '字典类型';
comment on column SYS_DICT_TYPE.status
  is '状态（0正常 1停用）';
comment on column SYS_DICT_TYPE.create_by
  is '创建者';
comment on column SYS_DICT_TYPE.create_time
  is '创建时间';
comment on column SYS_DICT_TYPE.update_by
  is '更新者';
comment on column SYS_DICT_TYPE.update_time
  is '更新时间';
comment on column SYS_DICT_TYPE.remark
  is '备注';
create unique index SYS_DICT_TYPE_INDEX1 on SYS_DICT_TYPE (DICT_TYPE);
alter table SYS_DICT_TYPE
  add constraint PK_SYS_DICT_TYPE primary key (DICT_ID);

prompt
prompt Creating table SYS_JOB
prompt ======================
prompt
create table SYS_JOB
(
  job_id          NUMBER(20) not null,
  job_name        VARCHAR2(64) default '' not null,
  job_group       VARCHAR2(64) default '' not null,
  invoke_target   VARCHAR2(500) not null,
  cron_expression VARCHAR2(255) default '',
  misfire_policy  VARCHAR2(20) default '3',
  concurrent      CHAR(1) default '1',
  status          CHAR(1) default '0',
  create_by       VARCHAR2(64) default '',
  create_time     DATE,
  update_by       VARCHAR2(64) default '',
  update_time     DATE,
  remark          VARCHAR2(500) default ''
)
;
comment on table SYS_JOB
  is '定时任务调度表';
comment on column SYS_JOB.job_id
  is '任务主键seq_sys_job.nextval';
comment on column SYS_JOB.job_name
  is '任务名称';
comment on column SYS_JOB.job_group
  is '任务组名';
comment on column SYS_JOB.invoke_target
  is '调用目标字符串';
comment on column SYS_JOB.cron_expression
  is 'cron执行表达式';
comment on column SYS_JOB.misfire_policy
  is '计划执行错误策略（1立即执行 2执行一次 3放弃执行）';
comment on column SYS_JOB.concurrent
  is '是否并发执行（0允许 1禁止）';
comment on column SYS_JOB.status
  is '状态（0正常 1暂停）';
comment on column SYS_JOB.create_by
  is '创建者';
comment on column SYS_JOB.create_time
  is '创建时间';
comment on column SYS_JOB.update_by
  is '更新者';
comment on column SYS_JOB.update_time
  is '更新时间';
comment on column SYS_JOB.remark
  is '备注信息';
alter table SYS_JOB
  add constraint PK_SYS_JOB primary key (JOB_ID, JOB_NAME, JOB_GROUP);

prompt
prompt Creating table SYS_JOB_LOG
prompt ==========================
prompt
create table SYS_JOB_LOG
(
  job_log_id     NUMBER(20) not null,
  job_name       VARCHAR2(64) not null,
  job_group      VARCHAR2(64) not null,
  invoke_target  VARCHAR2(500) not null,
  job_message    VARCHAR2(500),
  status         CHAR(1) default '0',
  exception_info VARCHAR2(2000) default '',
  create_time    DATE
)
;
comment on table SYS_JOB_LOG
  is '定时任务调度日志表';
comment on column SYS_JOB_LOG.job_log_id
  is '日志主键seq_sys_job_log.nextval';
comment on column SYS_JOB_LOG.job_name
  is '任务名称';
comment on column SYS_JOB_LOG.job_group
  is '任务组名';
comment on column SYS_JOB_LOG.invoke_target
  is '调用目标字符串';
comment on column SYS_JOB_LOG.job_message
  is '日志信息';
comment on column SYS_JOB_LOG.status
  is '执行状态（0正常 1失败）';
comment on column SYS_JOB_LOG.exception_info
  is '异常信息';
comment on column SYS_JOB_LOG.create_time
  is '创建时间';
alter table SYS_JOB_LOG
  add constraint PK_SYS_JOB_LOG primary key (JOB_LOG_ID);

prompt
prompt Creating table SYS_LOGININFOR
prompt =============================
prompt
create table SYS_LOGININFOR
(
  info_id        NUMBER(20) not null,
  user_name      VARCHAR2(50) default '',
  ipaddr         VARCHAR2(128) default '',
  login_location VARCHAR2(255) default '',
  browser        VARCHAR2(50) default '',
  os             VARCHAR2(50) default '',
  status         CHAR(1) default '0',
  msg            VARCHAR2(255) default '',
  login_time     DATE
)
;
comment on table SYS_LOGININFOR
  is '系统访问记录';
comment on column SYS_LOGININFOR.info_id
  is '访问主键seq_seq_sys_logininfor.nextval';
comment on column SYS_LOGININFOR.user_name
  is '登录账号';
comment on column SYS_LOGININFOR.ipaddr
  is '登录IP地址';
comment on column SYS_LOGININFOR.login_location
  is '登录地点';
comment on column SYS_LOGININFOR.browser
  is '浏览器类型';
comment on column SYS_LOGININFOR.os
  is '操作系统';
comment on column SYS_LOGININFOR.status
  is '登录状态（0成功 1失败）';
comment on column SYS_LOGININFOR.msg
  is '提示消息';
comment on column SYS_LOGININFOR.login_time
  is '访问时间';
alter table SYS_LOGININFOR
  add constraint PK_SYS_LOGININFOR primary key (INFO_ID);

prompt
prompt Creating table SYS_MENU
prompt =======================
prompt
create table SYS_MENU
(
  menu_id     NUMBER(20) not null,
  menu_name   VARCHAR2(50) not null,
  parent_id   NUMBER(20) default 0,
  order_num   NUMBER(4) default 0,
  path        VARCHAR2(200) default '',
  component   VARCHAR2(255),
  query       VARCHAR2(255),
  is_frame    NUMBER(1) default 1,
  is_cache    NUMBER(1) default 0,
  menu_type   CHAR(1) default '',
  visible     CHAR(1) default 0,
  status      CHAR(1) default 0,
  perms       VARCHAR2(100),
  icon        VARCHAR2(100) default '#',
  create_by   VARCHAR2(64) default '',
  create_time DATE,
  update_by   VARCHAR2(64) default '',
  update_time DATE,
  remark      VARCHAR2(500) default ''
)
;
comment on table SYS_MENU
  is '菜单权限表';
comment on column SYS_MENU.menu_id
  is '菜单主键seq_sys_post.nextval';
comment on column SYS_MENU.menu_name
  is '菜单名称';
comment on column SYS_MENU.parent_id
  is '父菜单ID';
comment on column SYS_MENU.order_num
  is '显示顺序';
comment on column SYS_MENU.path
  is '请求地址';
comment on column SYS_MENU.component
  is '路由地址';
comment on column SYS_MENU.query
  is '路由参数';
comment on column SYS_MENU.is_frame
  is '是否为外链（0是 1否）';
comment on column SYS_MENU.is_cache
  is '是否缓存（0缓存 1不缓存）';
comment on column SYS_MENU.menu_type
  is '菜单类型（M目录 C菜单 F按钮）';
comment on column SYS_MENU.visible
  is '菜单状态（0显示 1隐藏）';
comment on column SYS_MENU.status
  is '菜单状态（0正常 1停用）';
comment on column SYS_MENU.perms
  is '权限标识';
comment on column SYS_MENU.icon
  is '菜单图标';
comment on column SYS_MENU.create_by
  is '创建者';
comment on column SYS_MENU.create_time
  is '创建时间';
comment on column SYS_MENU.update_by
  is '更新者';
comment on column SYS_MENU.update_time
  is '更新时间';
comment on column SYS_MENU.remark
  is '备注';
alter table SYS_MENU
  add constraint PK_SYS_MENU primary key (MENU_ID);

prompt
prompt Creating table SYS_MESSAGE
prompt ==========================
prompt
create table SYS_MESSAGE
(
  message_id      INTEGER not null,
  message_content VARCHAR2(1500),
  message_date    DATE,
  user_id         INTEGER,
  message_type    VARCHAR2(255),
  data_id         INTEGER,
  message_noted   VARCHAR2(255)
)
;
comment on table SYS_MESSAGE
  is '系统消息';
comment on column SYS_MESSAGE.message_id
  is '主键';
comment on column SYS_MESSAGE.message_content
  is '消息内容';
comment on column SYS_MESSAGE.message_date
  is '消息时间';
comment on column SYS_MESSAGE.user_id
  is '通知用户ID';
comment on column SYS_MESSAGE.message_type
  is '消息类型';
comment on column SYS_MESSAGE.data_id
  is '关联数据ID';
comment on column SYS_MESSAGE.message_noted
  is '已阅';
alter table SYS_MESSAGE
  add constraint SYS_MESSAGE_PK primary key (MESSAGE_ID);

prompt
prompt Creating table SYS_NOTICE
prompt =========================
prompt
create table SYS_NOTICE
(
  notice_id      NUMBER(20) not null,
  notice_title   VARCHAR2(50) not null,
  notice_type    CHAR(1) not null,
  notice_content CLOB,
  status         CHAR(1) default '0',
  create_by      VARCHAR2(64) default '',
  create_time    DATE,
  update_by      VARCHAR2(64) default '',
  update_time    DATE,
  remark         VARCHAR2(255)
)
;
comment on table SYS_NOTICE
  is '通知公告表';
comment on column SYS_NOTICE.notice_id
  is '公告主键seq_sys_notice.nextval';
comment on column SYS_NOTICE.notice_title
  is '公告标题';
comment on column SYS_NOTICE.notice_type
  is '公告类型（1通知 2公告）';
comment on column SYS_NOTICE.notice_content
  is '公告内容';
comment on column SYS_NOTICE.status
  is '公告状态（0正常 1关闭）';
comment on column SYS_NOTICE.create_by
  is '创建者';
comment on column SYS_NOTICE.create_time
  is '创建时间';
comment on column SYS_NOTICE.update_by
  is '更新者';
comment on column SYS_NOTICE.update_time
  is '更新时间';
comment on column SYS_NOTICE.remark
  is '备注';
alter table SYS_NOTICE
  add constraint PK_SYS_NOTICE primary key (NOTICE_ID);

prompt
prompt Creating table SYS_OPER_LOG
prompt ===========================
prompt
create table SYS_OPER_LOG
(
  oper_id        NUMBER(20) not null,
  title          VARCHAR2(50) default '',
  business_type  NUMBER(2) default 0,
  method         VARCHAR2(100) default '',
  request_method VARCHAR2(10) default '',
  operator_type  NUMBER(1) default 0,
  oper_name      VARCHAR2(50) default '',
  dept_name      VARCHAR2(50) default '',
  oper_url       VARCHAR2(255) default '',
  oper_ip        VARCHAR2(128) default '',
  oper_location  VARCHAR2(255) default '',
  oper_param     VARCHAR2(4000) default '',
  json_result    VARCHAR2(4000) default '',
  status         NUMBER(1) default 0,
  error_msg      VARCHAR2(2000) default '',
  oper_time      DATE
)
;
comment on table SYS_OPER_LOG
  is '操作日志记录';
comment on column SYS_OPER_LOG.oper_id
  is '日志主键seq_sys_oper_log.nextval';
comment on column SYS_OPER_LOG.title
  is '模块标题';
comment on column SYS_OPER_LOG.business_type
  is '业务类型（0其它 1新增 2修改 3删除）';
comment on column SYS_OPER_LOG.method
  is '方法名称';
comment on column SYS_OPER_LOG.request_method
  is '请求方式';
comment on column SYS_OPER_LOG.operator_type
  is '操作类别（0其它 1后台用户 2手机端用户）';
comment on column SYS_OPER_LOG.oper_name
  is '操作人员';
comment on column SYS_OPER_LOG.dept_name
  is '部门名称';
comment on column SYS_OPER_LOG.oper_url
  is '请求URL';
comment on column SYS_OPER_LOG.oper_ip
  is '主机地址';
comment on column SYS_OPER_LOG.oper_location
  is '操作地点';
comment on column SYS_OPER_LOG.oper_param
  is '请求参数';
comment on column SYS_OPER_LOG.json_result
  is '返回参数';
comment on column SYS_OPER_LOG.status
  is '操作状态（0正常 1异常）';
comment on column SYS_OPER_LOG.error_msg
  is '错误消息';
comment on column SYS_OPER_LOG.oper_time
  is '操作时间';
alter table SYS_OPER_LOG
  add constraint PK_SYS_OPER_LOG primary key (OPER_ID);

prompt
prompt Creating table SYS_POST
prompt =======================
prompt
create table SYS_POST
(
  post_id     NUMBER(20) not null,
  post_code   VARCHAR2(64) not null,
  post_name   VARCHAR2(50) not null,
  post_sort   NUMBER(4) not null,
  status      CHAR(1) not null,
  create_by   VARCHAR2(64) default '',
  create_time DATE,
  update_by   VARCHAR2(64) default '',
  update_time DATE,
  remark      VARCHAR2(500)
)
;
comment on table SYS_POST
  is '岗位信息表';
comment on column SYS_POST.post_id
  is '岗位主键seq_sys_post.nextval';
comment on column SYS_POST.post_code
  is '岗位编码';
comment on column SYS_POST.post_name
  is '岗位名称';
comment on column SYS_POST.post_sort
  is '显示顺序';
comment on column SYS_POST.status
  is '状态（0正常 1停用）';
comment on column SYS_POST.create_by
  is '创建者';
comment on column SYS_POST.create_time
  is '创建时间';
comment on column SYS_POST.update_by
  is '更新者';
comment on column SYS_POST.update_time
  is '更新时间';
comment on column SYS_POST.remark
  is '备注';
alter table SYS_POST
  add constraint PK_SYS_POST primary key (POST_ID);

prompt
prompt Creating table SYS_ROLE
prompt =======================
prompt
create table SYS_ROLE
(
  role_id             NUMBER(20) not null,
  role_name           VARCHAR2(30) not null,
  role_key            VARCHAR2(100) not null,
  role_sort           NUMBER(4) not null,
  data_scope          CHAR(1) default '1',
  menu_check_strictly NUMBER(1) default 1,
  dept_check_strictly NUMBER(1) default 1,
  status              CHAR(1) not null,
  del_flag            CHAR(1) default '0',
  create_by           VARCHAR2(64) default '',
  create_time         DATE,
  update_by           VARCHAR2(64) default '',
  update_time         DATE,
  remark              VARCHAR2(500)
)
;
comment on table SYS_ROLE
  is '角色信息表';
comment on column SYS_ROLE.role_id
  is '角色主键seq_sys_post.nextval';
comment on column SYS_ROLE.role_name
  is '角色名称';
comment on column SYS_ROLE.role_key
  is '角色权限字符串';
comment on column SYS_ROLE.role_sort
  is '显示顺序';
comment on column SYS_ROLE.data_scope
  is '数据范围（1：全部数据权限 2：自定数据权限）';
comment on column SYS_ROLE.menu_check_strictly
  is '菜单树选择项是否关联显示';
comment on column SYS_ROLE.dept_check_strictly
  is '部门树选择项是否关联显示';
comment on column SYS_ROLE.status
  is '角色状态（0正常 1停用）';
comment on column SYS_ROLE.del_flag
  is '删除标志（0代表存在 2代表删除）';
comment on column SYS_ROLE.create_by
  is '创建者';
comment on column SYS_ROLE.create_time
  is '创建时间';
comment on column SYS_ROLE.update_by
  is '更新者';
comment on column SYS_ROLE.update_time
  is '更新时间';
comment on column SYS_ROLE.remark
  is '备注';
alter table SYS_ROLE
  add constraint PK_SYS_ROLE primary key (ROLE_ID);

prompt
prompt Creating table SYS_ROLE_DEPT
prompt ============================
prompt
create table SYS_ROLE_DEPT
(
  role_id NUMBER(20) not null,
  dept_id NUMBER(20) not null
)
;
comment on table SYS_ROLE_DEPT
  is '角色和部门关联表';
comment on column SYS_ROLE_DEPT.role_id
  is '角色ID';
comment on column SYS_ROLE_DEPT.dept_id
  is '部门ID';
alter table SYS_ROLE_DEPT
  add constraint PK_SYS_ROLE_DEPT primary key (ROLE_ID, DEPT_ID);

prompt
prompt Creating table SYS_ROLE_MENU
prompt ============================
prompt
create table SYS_ROLE_MENU
(
  role_id NUMBER(20) not null,
  menu_id NUMBER(20) not null
)
;
comment on table SYS_ROLE_MENU
  is '角色和菜单关联表';
comment on column SYS_ROLE_MENU.role_id
  is '角色ID';
comment on column SYS_ROLE_MENU.menu_id
  is '菜单ID';
alter table SYS_ROLE_MENU
  add constraint PK_SYS_ROLE_MENU primary key (ROLE_ID, MENU_ID);

prompt
prompt Creating table SYS_USER
prompt =======================
prompt
create table SYS_USER
(
  user_id     NUMBER(20) not null,
  dept_id     NUMBER(20),
  user_name   VARCHAR2(30) not null,
  nick_name   VARCHAR2(30) default '',
  user_type   VARCHAR2(2) default '00',
  email       VARCHAR2(50) default '',
  phonenumber VARCHAR2(11) default '',
  sex         CHAR(1) default '0',
  avatar      VARCHAR2(100) default '',
  password    VARCHAR2(100) default '',
  status      CHAR(1) default '0',
  del_flag    CHAR(1) default '0',
  login_ip    VARCHAR2(128) default '',
  login_date  DATE,
  create_by   VARCHAR2(64),
  create_time DATE,
  update_by   VARCHAR2(64) default '',
  update_time DATE,
  remark      VARCHAR2(500) default ''
)
;
comment on table SYS_USER
  is '用户信息表';
comment on column SYS_USER.user_id
  is '用户主键seq_sys_user.nextval';
comment on column SYS_USER.dept_id
  is '部门ID';
comment on column SYS_USER.user_name
  is '用户账号';
comment on column SYS_USER.nick_name
  is '用户昵称';
comment on column SYS_USER.user_type
  is '用户类型（00系统用户 01注册用户）';
comment on column SYS_USER.email
  is '用户邮箱';
comment on column SYS_USER.phonenumber
  is '手机号码';
comment on column SYS_USER.sex
  is '用户性别（0男 1女 2未知）';
comment on column SYS_USER.avatar
  is '头像路径';
comment on column SYS_USER.password
  is '密码';
comment on column SYS_USER.status
  is '帐号状态（0正常 1停用）';
comment on column SYS_USER.del_flag
  is '删除标志（0代表存在 2代表删除）';
comment on column SYS_USER.login_ip
  is '最后登录IP';
comment on column SYS_USER.login_date
  is '最后登录时间';
comment on column SYS_USER.create_by
  is '创建者';
comment on column SYS_USER.create_time
  is '创建时间';
comment on column SYS_USER.update_by
  is '更新者';
comment on column SYS_USER.update_time
  is '更新时间';
comment on column SYS_USER.remark
  is '备注';
alter table SYS_USER
  add constraint PK_SYS_USER primary key (USER_ID);

prompt
prompt Creating table SYS_USER_POST
prompt ============================
prompt
create table SYS_USER_POST
(
  user_id NUMBER(20) not null,
  post_id NUMBER(20) not null
)
;
comment on table SYS_USER_POST
  is '用户与岗位关联表';
comment on column SYS_USER_POST.user_id
  is '用户ID';
comment on column SYS_USER_POST.post_id
  is '岗位ID';
alter table SYS_USER_POST
  add constraint PK_SYS_USER_POST primary key (USER_ID, POST_ID);

prompt
prompt Creating table SYS_USER_ROLE
prompt ============================
prompt
create table SYS_USER_ROLE
(
  user_id NUMBER(20) not null,
  role_id NUMBER(20) not null
)
;
comment on table SYS_USER_ROLE
  is '用户和角色关联表';
comment on column SYS_USER_ROLE.user_id
  is '用户ID';
comment on column SYS_USER_ROLE.role_id
  is '角色ID';
alter table SYS_USER_ROLE
  add constraint PK_SYS_USER_ROLE primary key (USER_ID, ROLE_ID);

prompt
prompt Creating table TMP_REPORT_DATA_1
prompt ================================
prompt
create table TMP_REPORT_DATA_1
(
  monty       NVARCHAR2(255),
  main_income NUMBER,
  total       NUMBER,
  his_lowest  NUMBER,
  his_average NUMBER,
  his_highest NUMBER
)
;
comment on column TMP_REPORT_DATA_1.monty
  is '月份';

prompt
prompt Creating table TMP_REPORT_DATA_INCOME
prompt =====================================
prompt
create table TMP_REPORT_DATA_INCOME
(
  biz_income        NVARCHAR2(100),
  bx_jj_yongjin     NUMBER,
  bx_zx_money       NUMBER,
  chengbao_gz_money NUMBER,
  bx_gg_moeny       NUMBER,
  tb_zx_money       NUMBER,
  neikong_zx_money  NUMBER,
  total             NUMBER
)
;

prompt
prompt Creating table WF_CASE
prompt ======================
prompt
create table WF_CASE
(
  case_id       NUMBER not null,
  process_id    INTEGER,
  graph_version INTEGER,
  case_tag      VARCHAR2(1000),
  form_data     CLOB,
  case_status   INTEGER,
  node_id       VARCHAR2(255),
  user_id       INTEGER,
  add_date      DATE,
  end_date      DATE,
  node_line     VARCHAR2(3000)
)
;
comment on table WF_CASE
  is '流程实例';
comment on column WF_CASE.case_id
  is '主键';
comment on column WF_CASE.process_id
  is '流程ID';
comment on column WF_CASE.graph_version
  is '流程图版本';
comment on column WF_CASE.case_tag
  is '实例标签 ';
comment on column WF_CASE.form_data
  is '表单数据';
comment on column WF_CASE.case_status
  is '实例状态';
comment on column WF_CASE.node_id
  is '当前节点ID';
comment on column WF_CASE.user_id
  is '添加人ID';
comment on column WF_CASE.add_date
  is '添加时间';
comment on column WF_CASE.end_date
  is '完成时间';
comment on column WF_CASE.node_line
  is '用户节点流转顺序线';
alter table WF_CASE
  add constraint WF_CASE_PK primary key (CASE_ID);

prompt
prompt Creating table WF_GRAPH
prompt =======================
prompt
create table WF_GRAPH
(
  graph_id      INTEGER not null,
  process_id    INTEGER,
  graph_version INTEGER,
  graph_data    CLOB,
  graph_tag     VARCHAR2(255),
  add_date      DATE
)
;
comment on table WF_GRAPH
  is '流程图信息';
comment on column WF_GRAPH.graph_id
  is '主键';
comment on column WF_GRAPH.process_id
  is '流程ID';
comment on column WF_GRAPH.graph_version
  is '流程图版本';
comment on column WF_GRAPH.graph_data
  is '流程图数据';
comment on column WF_GRAPH.graph_tag
  is '版本标签';
comment on column WF_GRAPH.add_date
  is '添加日期';
alter table WF_GRAPH
  add constraint WF_GRAPH_PK primary key (GRAPH_ID);

prompt
prompt Creating table WF_PROCESS
prompt =========================
prompt
create table WF_PROCESS
(
  process_id     NUMBER not null,
  process_name   VARCHAR2(255),
  process_code   VARCHAR2(255),
  process_des    VARCHAR2(1000),
  graph_version  NUMBER,
  process_enable NUMBER,
  form_path      VARCHAR2(255),
  form_data      CLOB,
  process_cover  VARCHAR2(255),
  add_date       DATE,
  update_date    DATE
)
;
comment on table WF_PROCESS
  is '流程定义表';
comment on column WF_PROCESS.process_id
  is '主键';
comment on column WF_PROCESS.process_name
  is '名称';
comment on column WF_PROCESS.process_code
  is '标识';
comment on column WF_PROCESS.process_des
  is '说明';
comment on column WF_PROCESS.graph_version
  is '版本';
comment on column WF_PROCESS.process_enable
  is '是否启用';
comment on column WF_PROCESS.form_path
  is '表单路径';
comment on column WF_PROCESS.form_data
  is '表单数据';
comment on column WF_PROCESS.process_cover
  is '流程封面';
comment on column WF_PROCESS.add_date
  is '创建时间';
comment on column WF_PROCESS.update_date
  is '修改时间';
alter table WF_PROCESS
  add constraint WF_PROCESS_PK primary key (PROCESS_ID);

prompt
prompt Creating table WF_RECORD
prompt ========================
prompt
create table WF_RECORD
(
  case_id        NUMBER,
  task_id        NUMBER,
  user_name      VARCHAR2(255),
  add_date       DATE,
  record_content VARCHAR2(1000),
  record_result  NUMBER,
  record_id      INTEGER not null,
  node_name      VARCHAR2(255)
)
;
comment on table WF_RECORD
  is '流程处理记录';
comment on column WF_RECORD.case_id
  is '流程实例ID';
comment on column WF_RECORD.task_id
  is '任务ID';
comment on column WF_RECORD.user_name
  is '操作人';
comment on column WF_RECORD.add_date
  is '处理时间';
comment on column WF_RECORD.record_content
  is '记录内容';
comment on column WF_RECORD.record_result
  is '记录结果';
comment on column WF_RECORD.record_id
  is '主键';
comment on column WF_RECORD.node_name
  is '节点名称';
alter table WF_RECORD
  add constraint WF_RECORD_PK primary key (RECORD_ID);

prompt
prompt Creating table WF_TASK
prompt ======================
prompt
create table WF_TASK
(
  user_id       INTEGER,
  node_id       VARCHAR2(255),
  task_status   NUMBER,
  case_id       NUMBER,
  task_id       NUMBER not null,
  add_date      DATE,
  end_date      DATE,
  process_id    NUMBER,
  task_result   INTEGER,
  graph_version INTEGER,
  task_content  VARCHAR2(1000),
  node_name     VARCHAR2(255)
)
;
comment on table WF_TASK
  is '流程任务表';
comment on column WF_TASK.user_id
  is '用户ID';
comment on column WF_TASK.node_id
  is '节点ID';
comment on column WF_TASK.task_status
  is '状态';
comment on column WF_TASK.case_id
  is '实例ID';
comment on column WF_TASK.task_id
  is '主键';
comment on column WF_TASK.add_date
  is '开始时间';
comment on column WF_TASK.end_date
  is '处理时间';
comment on column WF_TASK.process_id
  is '流程ID';
comment on column WF_TASK.task_result
  is '任务结果';
comment on column WF_TASK.graph_version
  is '流程图版本';
comment on column WF_TASK.task_content
  is '任务内容';
comment on column WF_TASK.node_name
  is '节点名称';
alter table WF_TASK
  add constraint WF_TASK_PK primary key (TASK_ID);

prompt
prompt Creating sequence SEQ_GEN_TABLE
prompt ===============================
prompt
create sequence SEQ_GEN_TABLE
minvalue 1
maxvalue 9999999999999999999999999999
start with 180
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_GEN_TABLE_COLUMN
prompt ======================================
prompt
create sequence SEQ_GEN_TABLE_COLUMN
minvalue 1
maxvalue 9999999999999999999999999999
start with 340
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_CONFIG
prompt ================================
prompt
create sequence SEQ_SYS_CONFIG
minvalue 1
maxvalue 9999999999999999999999999999
start with 100
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_DEPT
prompt ==============================
prompt
create sequence SEQ_SYS_DEPT
minvalue 1
maxvalue 9999999999999999999999999999
start with 200
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_DICT_DATA
prompt ===================================
prompt
create sequence SEQ_SYS_DICT_DATA
minvalue 1
maxvalue 9999999999999999999999999999
start with 220
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_DICT_TYPE
prompt ===================================
prompt
create sequence SEQ_SYS_DICT_TYPE
minvalue 1
maxvalue 9999999999999999999999999999
start with 200
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_JOB
prompt =============================
prompt
create sequence SEQ_SYS_JOB
minvalue 1
maxvalue 9999999999999999999999999999
start with 100
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_JOB_LOG
prompt =================================
prompt
create sequence SEQ_SYS_JOB_LOG
minvalue 1
maxvalue 9999999999999999999999999999
start with 1100
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_LOGININFOR
prompt ====================================
prompt
create sequence SEQ_SYS_LOGININFOR
minvalue 1
maxvalue 9999999999999999999999999999
start with 1580
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_MENU
prompt ==============================
prompt
create sequence SEQ_SYS_MENU
minvalue 1
maxvalue 9999999999999999999999999999
start with 2240
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_NOTICE
prompt ================================
prompt
create sequence SEQ_SYS_NOTICE
minvalue 1
maxvalue 9999999999999999999999999999
start with 100
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_OPER_LOG
prompt ==================================
prompt
create sequence SEQ_SYS_OPER_LOG
minvalue 1
maxvalue 9999999999999999999999999999
start with 2080
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_POST
prompt ==============================
prompt
create sequence SEQ_SYS_POST
minvalue 1
maxvalue 9999999999999999999999999999
start with 10
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_ROLE
prompt ==============================
prompt
create sequence SEQ_SYS_ROLE
minvalue 1
maxvalue 9999999999999999999999999999
start with 140
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SYS_USER
prompt ==============================
prompt
create sequence SEQ_SYS_USER
minvalue 1
maxvalue 9999999999999999999999999999
start with 160
increment by 1
cache 20;

prompt
prompt Creating function FIND_IN_SET
prompt =============================
prompt
create or replace function find_in_set(arg1 in varchar2,arg2 in varchar)
return number is Result number;
begin
select instr(','||arg2||',' , ','||arg1||',') into Result from dual;
return(Result);
end find_in_set;
/


prompt Done
spool off
set define on
