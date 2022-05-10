prompt PL/SQL Developer Export User Objects for user RY@PDBORCL
prompt Created by Administrator on 2022��5��6��
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
  is '������Ϣ��';
comment on column DEMO_AREA.area_id
  is '����';
comment on column DEMO_AREA.area_name
  is '��������';
comment on column DEMO_AREA.area_code
  is '�������';
comment on column DEMO_AREA.area_size
  is '�������';
comment on column DEMO_AREA.area_post
  is '�ʱ�';
comment on column DEMO_AREA.area_level
  is '����ȼ�';
comment on column DEMO_AREA.parent_id
  is '���ڵ�ID';
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
  is '����';
comment on column DEMO_GOODS.order_id
  is '���';
comment on column DEMO_GOODS.goods_code
  is '������';
comment on column DEMO_GOODS.goods_name
  is '��������';
comment on column DEMO_GOODS.goods_store
  is '�����ֿ�';
comment on column DEMO_GOODS.goods_num
  is '��������';
comment on column DEMO_GOODS.goods_price
  is '���ﵥ��1';
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
  is '����';
comment on column DEMO_ORDER.order_code
  is '�������';
comment on column DEMO_ORDER.order_money
  is '�������';
comment on column DEMO_ORDER.order_address
  is '���͵�ַ';
comment on column DEMO_ORDER.order_date
  is '����ʱ��';
comment on column DEMO_ORDER.order_user
  is '�ռ���';
comment on column DEMO_ORDER.order_phone
  is '��ϵ��ʽ';
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
  is '��������ҵ���';
comment on column GEN_TABLE.table_id
  is '���';
comment on column GEN_TABLE.table_name
  is '������';
comment on column GEN_TABLE.table_comment
  is '������';
comment on column GEN_TABLE.sub_table_name
  is '�����ӱ�ı���';
comment on column GEN_TABLE.sub_table_fk_name
  is '�ӱ�����������';
comment on column GEN_TABLE.class_name
  is 'ʵ��������';
comment on column GEN_TABLE.tpl_category
  is 'ʹ�õ�ģ�壨crud������� tree���������';
comment on column GEN_TABLE.package_name
  is '���ɰ�·��';
comment on column GEN_TABLE.module_name
  is '����ģ����';
comment on column GEN_TABLE.business_name
  is '����ҵ����';
comment on column GEN_TABLE.function_name
  is '���ɹ�����';
comment on column GEN_TABLE.function_author
  is '���ɹ�������';
comment on column GEN_TABLE.gen_type
  is '���ɴ��뷽ʽ��0zipѹ���� 1�Զ���·����';
comment on column GEN_TABLE.gen_path
  is '����·��������Ĭ����Ŀ·����';
comment on column GEN_TABLE.options
  is '��������ѡ��';
comment on column GEN_TABLE.create_by
  is '������';
comment on column GEN_TABLE.create_time
  is '����ʱ��';
comment on column GEN_TABLE.update_by
  is '������';
comment on column GEN_TABLE.update_time
  is '����ʱ��';
comment on column GEN_TABLE.remark
  is '��ע';
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
  is '��������ҵ����ֶ�';
comment on column GEN_TABLE_COLUMN.column_id
  is '���';
comment on column GEN_TABLE_COLUMN.table_id
  is '��������';
comment on column GEN_TABLE_COLUMN.column_name
  is '������';
comment on column GEN_TABLE_COLUMN.column_comment
  is '������';
comment on column GEN_TABLE_COLUMN.column_type
  is '������';
comment on column GEN_TABLE_COLUMN.java_type
  is 'JAVA����';
comment on column GEN_TABLE_COLUMN.java_field
  is 'JAVA�ֶ���';
comment on column GEN_TABLE_COLUMN.is_pk
  is '�Ƿ�������1�ǣ�';
comment on column GEN_TABLE_COLUMN.is_increment
  is '�Ƿ�������1�ǣ�';
comment on column GEN_TABLE_COLUMN.is_required
  is '�Ƿ���1�ǣ�';
comment on column GEN_TABLE_COLUMN.is_insert
  is '�Ƿ�Ϊ�����ֶΣ�1�ǣ�';
comment on column GEN_TABLE_COLUMN.is_edit
  is '�Ƿ�༭�ֶΣ�1�ǣ�';
comment on column GEN_TABLE_COLUMN.is_list
  is '�Ƿ��б��ֶΣ�1�ǣ�';
comment on column GEN_TABLE_COLUMN.is_query
  is '�Ƿ��ѯ�ֶΣ�1�ǣ�';
comment on column GEN_TABLE_COLUMN.query_type
  is '��ѯ��ʽ�����ڡ������ڡ����ڡ�С�ڡ���Χ��';
comment on column GEN_TABLE_COLUMN.html_type
  is '��ʾ���ͣ��ı����ı��������򡢸�ѡ�򡢵�ѡ�����ڿؼ���';
comment on column GEN_TABLE_COLUMN.dict_type
  is '�ֵ�����';
comment on column GEN_TABLE_COLUMN.sort
  is '����';
comment on column GEN_TABLE_COLUMN.create_by
  is '������';
comment on column GEN_TABLE_COLUMN.create_time
  is '����ʱ��';
comment on column GEN_TABLE_COLUMN.update_by
  is '������';
comment on column GEN_TABLE_COLUMN.update_time
  is '����ʱ��';
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
  is '�ֵ�����';
comment on column JIMU_DICT.dict_code
  is '�ֵ����';
comment on column JIMU_DICT.description
  is '����';
comment on column JIMU_DICT.del_flag
  is 'ɾ��״̬';
comment on column JIMU_DICT.create_by
  is '������';
comment on column JIMU_DICT.create_time
  is '����ʱ��';
comment on column JIMU_DICT.update_by
  is '������';
comment on column JIMU_DICT.update_time
  is '����ʱ��';
comment on column JIMU_DICT.type
  is '�ֵ�����0Ϊstring,1Ϊnumber';
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
  is '�ֵ�id';
comment on column JIMU_DICT_ITEM.item_text
  is '�ֵ����ı�';
comment on column JIMU_DICT_ITEM.item_value
  is '�ֵ���ֵ';
comment on column JIMU_DICT_ITEM.description
  is '����';
comment on column JIMU_DICT_ITEM.sort_order
  is '����';
comment on column JIMU_DICT_ITEM.status
  is '״̬��1���� 0�����ã�';
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
  is '����excel�����';
comment on column JIMU_REPORT.id
  is '����';
comment on column JIMU_REPORT.code
  is '����';
comment on column JIMU_REPORT.name
  is '����';
comment on column JIMU_REPORT.note
  is '˵��';
comment on column JIMU_REPORT.status
  is '״̬';
comment on column JIMU_REPORT.type
  is '����';
comment on column JIMU_REPORT.json_str
  is 'json�ַ���';
comment on column JIMU_REPORT.api_url
  is '�����ַ';
comment on column JIMU_REPORT.thumb
  is '����ͼ';
comment on column JIMU_REPORT.create_by
  is '������';
comment on column JIMU_REPORT.create_time
  is '����ʱ��';
comment on column JIMU_REPORT.update_by
  is '�޸���';
comment on column JIMU_REPORT.update_time
  is '�޸�ʱ��';
comment on column JIMU_REPORT.del_flag
  is 'ɾ����ʶ0-����,1-��ɾ��';
comment on column JIMU_REPORT.api_method
  is '���󷽷�0-get,1-post';
comment on column JIMU_REPORT.api_code
  is '�������';
comment on column JIMU_REPORT.template
  is '�Ƿ���ģ�� 0-��,1-����';
comment on column JIMU_REPORT.view_count
  is '�������';
comment on column JIMU_REPORT.css_str
  is 'css��ǿ';
comment on column JIMU_REPORT.js_str
  is 'js��ǿ';
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
  is '����Դ����';
comment on column JIMU_REPORT_DATA_SOURCE.report_id
  is '����_id';
comment on column JIMU_REPORT_DATA_SOURCE.code
  is '����';
comment on column JIMU_REPORT_DATA_SOURCE.remark
  is '��ע';
comment on column JIMU_REPORT_DATA_SOURCE.db_type
  is '���ݿ�����';
comment on column JIMU_REPORT_DATA_SOURCE.db_driver
  is '������';
comment on column JIMU_REPORT_DATA_SOURCE.db_url
  is '����Դ��ַ';
comment on column JIMU_REPORT_DATA_SOURCE.db_username
  is '�û���';
comment on column JIMU_REPORT_DATA_SOURCE.db_password
  is '����';
comment on column JIMU_REPORT_DATA_SOURCE.create_by
  is '������';
comment on column JIMU_REPORT_DATA_SOURCE.create_time
  is '��������';
comment on column JIMU_REPORT_DATA_SOURCE.update_by
  is '������';
comment on column JIMU_REPORT_DATA_SOURCE.update_time
  is '��������';
comment on column JIMU_REPORT_DATA_SOURCE.connect_times
  is '����ʧ�ܴ���';
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
  is '�����ֶ�';
comment on column JIMU_REPORT_DB.create_by
  is '�����˵�¼����';
comment on column JIMU_REPORT_DB.update_by
  is '�����˵�¼����';
comment on column JIMU_REPORT_DB.create_time
  is '��������';
comment on column JIMU_REPORT_DB.update_time
  is '��������';
comment on column JIMU_REPORT_DB.db_code
  is '���ݼ�����';
comment on column JIMU_REPORT_DB.db_ch_name
  is '���ݼ�����';
comment on column JIMU_REPORT_DB.db_type
  is '����Դ����';
comment on column JIMU_REPORT_DB.db_table_name
  is '���ݿ����';
comment on column JIMU_REPORT_DB.db_dyn_sql
  is '��̬��ѯSQL';
comment on column JIMU_REPORT_DB.db_key
  is '����ԴKEY';
comment on column JIMU_REPORT_DB.tb_db_key
  is '�����Դ';
comment on column JIMU_REPORT_DB.tb_db_table_name
  is '����ݱ�';
comment on column JIMU_REPORT_DB.java_type
  is 'java�����ݼ�  ���ͣ�spring:springkey,class:java������';
comment on column JIMU_REPORT_DB.java_value
  is 'java������Դ  ��ֵ��bean key/java������';
comment on column JIMU_REPORT_DB.api_url
  is '�����ַ';
comment on column JIMU_REPORT_DB.api_method
  is '���󷽷�0-get,1-post';
comment on column JIMU_REPORT_DB.is_list
  is '�Ƿ����б�0��1�� Ĭ��0';
comment on column JIMU_REPORT_DB.is_page
  is '�Ƿ���Ϊ��ҳ,0:����ҳ��1:��ҳ';
comment on column JIMU_REPORT_DB.db_source
  is '����Դ';
comment on column JIMU_REPORT_DB.db_source_type
  is '���ݿ����� MYSQL ORACLE SQLSERVER';
comment on column JIMU_REPORT_DB.json_data
  is 'json���ݣ�ֱ�ӽ���json����';
comment on column JIMU_REPORT_DB.api_convert
  is 'apiת����';
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
  is '�����˵�¼����';
comment on column JIMU_REPORT_DB_FIELD.create_time
  is '��������';
comment on column JIMU_REPORT_DB_FIELD.update_by
  is '�����˵�¼����';
comment on column JIMU_REPORT_DB_FIELD.update_time
  is '��������';
comment on column JIMU_REPORT_DB_FIELD.jimu_report_db_id
  is '����ԴID';
comment on column JIMU_REPORT_DB_FIELD.field_name
  is '�ֶ���';
comment on column JIMU_REPORT_DB_FIELD.field_text
  is '�ֶ��ı�';
comment on column JIMU_REPORT_DB_FIELD.widget_type
  is '�ؼ�����';
comment on column JIMU_REPORT_DB_FIELD.widget_width
  is '�ؼ����';
comment on column JIMU_REPORT_DB_FIELD.order_num
  is '����';
comment on column JIMU_REPORT_DB_FIELD.search_flag
  is '��ѯ��ʶ0��1�� Ĭ��0';
comment on column JIMU_REPORT_DB_FIELD.search_mode
  is '��ѯģʽ1��2��Χ';
comment on column JIMU_REPORT_DB_FIELD.dict_code
  is '�ֵ����֧�ִӱ���ȡ����';
comment on column JIMU_REPORT_DB_FIELD.search_value
  is '��ѯĬ��ֵ';
comment on column JIMU_REPORT_DB_FIELD.search_format
  is '��ѯʱ���ʽ�����ʽ';
comment on column JIMU_REPORT_DB_FIELD.ext_json
  is '��������';
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
  is '��̬����ID';
comment on column JIMU_REPORT_DB_PARAM.param_name
  is '�����ֶ�';
comment on column JIMU_REPORT_DB_PARAM.param_txt
  is '�����ı�';
comment on column JIMU_REPORT_DB_PARAM.param_value
  is '����Ĭ��ֵ';
comment on column JIMU_REPORT_DB_PARAM.order_num
  is '����';
comment on column JIMU_REPORT_DB_PARAM.create_by
  is '�����˵�¼����';
comment on column JIMU_REPORT_DB_PARAM.create_time
  is '��������';
comment on column JIMU_REPORT_DB_PARAM.update_by
  is '�����˵�¼����';
comment on column JIMU_REPORT_DB_PARAM.update_time
  is '��������';
comment on column JIMU_REPORT_DB_PARAM.search_flag
  is '��ѯ��ʶ0��1�� Ĭ��0';
comment on column JIMU_REPORT_DB_PARAM.widget_type
  is '��ѯ�ؼ�����';
comment on column JIMU_REPORT_DB_PARAM.search_mode
  is '��ѯģʽ1��2��Χ';
comment on column JIMU_REPORT_DB_PARAM.dict_code
  is '�ֵ�';
comment on column JIMU_REPORT_DB_PARAM.search_format
  is '��ѯʱ���ʽ�����ʽ';
comment on column JIMU_REPORT_DB_PARAM.ext_json
  is '��������';
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
  is '���������ñ�';
comment on column JIMU_REPORT_LINK.id
  is '����id';
comment on column JIMU_REPORT_LINK.report_id
  is '��ľ�����id';
comment on column JIMU_REPORT_LINK.parameter
  is '����';
comment on column JIMU_REPORT_LINK.eject_type
  is '������ʽ��0 ��ǰҳ�� 1 �´��ڣ�';
comment on column JIMU_REPORT_LINK.link_name
  is '��������';
comment on column JIMU_REPORT_LINK.api_method
  is '���󷽷�0-get,1-post';
comment on column JIMU_REPORT_LINK.link_type
  is '���ӷ�ʽ(0 ���籨�� 1 �������� 2 ͼ������)';
comment on column JIMU_REPORT_LINK.api_url
  is '����api';
comment on column JIMU_REPORT_LINK.link_chart_id
  is '����ͼ���ID';
comment on column JIMU_REPORT_LINK.expression
  is '���ʽ';
comment on column JIMU_REPORT_LINK.requirement
  is '����';
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
  is '��ͼ���ñ�';
comment on column JIMU_REPORT_MAP.id
  is '����';
comment on column JIMU_REPORT_MAP.label
  is '��ͼ����';
comment on column JIMU_REPORT_MAP.name
  is '��ͼ����';
comment on column JIMU_REPORT_MAP.data
  is '��ͼ����';
comment on column JIMU_REPORT_MAP.create_by
  is '������';
comment on column JIMU_REPORT_MAP.create_time
  is '����ʱ��';
comment on column JIMU_REPORT_MAP.update_by
  is '�޸���';
comment on column JIMU_REPORT_MAP.update_time
  is '�޸�ʱ��';
comment on column JIMU_REPORT_MAP.del_flag
  is '0��ʾδɾ��,1��ʾɾ��';
comment on column JIMU_REPORT_MAP.sys_org_code
  is '��������';
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
  is '��ľ����Ԥ��Ȩ�ޱ�';
comment on column JIMU_REPORT_SHARE.id
  is '����';
comment on column JIMU_REPORT_SHARE.report_id
  is '����excel�����id';
comment on column JIMU_REPORT_SHARE.preview_url
  is 'Ԥ����ַ';
comment on column JIMU_REPORT_SHARE.preview_lock
  is '������';
comment on column JIMU_REPORT_SHARE.last_update_time
  is '������ʱ��';
comment on column JIMU_REPORT_SHARE.term_of_validity
  is '��Ч��(0:������Ч��1:1�죬2:7��)';
comment on column JIMU_REPORT_SHARE.status
  is '�Ƿ����(0δ���ڣ�1�ѹ���)';
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
  is '������ϸ��Ϣ��';
comment on column QRTZ_JOB_DETAILS.sched_name
  is '��������';
comment on column QRTZ_JOB_DETAILS.job_name
  is '��������';
comment on column QRTZ_JOB_DETAILS.job_group
  is '��������';
comment on column QRTZ_JOB_DETAILS.description
  is '��ؽ���';
comment on column QRTZ_JOB_DETAILS.job_class_name
  is 'ִ������������';
comment on column QRTZ_JOB_DETAILS.is_durable
  is '�Ƿ�־û�';
comment on column QRTZ_JOB_DETAILS.is_nonconcurrent
  is '�Ƿ񲢷�';
comment on column QRTZ_JOB_DETAILS.is_update_data
  is '�Ƿ��������';
comment on column QRTZ_JOB_DETAILS.requests_recovery
  is '�Ƿ���ָܻ�ִ��';
comment on column QRTZ_JOB_DETAILS.job_data
  is '��ų־û�job����';
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
  is '��������ϸ��Ϣ��';
comment on column QRTZ_TRIGGERS.sched_name
  is '��������';
comment on column QRTZ_TRIGGERS.trigger_name
  is '������������';
comment on column QRTZ_TRIGGERS.trigger_group
  is '�����������������';
comment on column QRTZ_TRIGGERS.job_name
  is 'qrtz_job_details��job_name�����';
comment on column QRTZ_TRIGGERS.job_group
  is 'qrtz_job_details��job_group�����';
comment on column QRTZ_TRIGGERS.description
  is '��ؽ���';
comment on column QRTZ_TRIGGERS.next_fire_time
  is '��һ�δ���ʱ�䣨���룩';
comment on column QRTZ_TRIGGERS.prev_fire_time
  is '��һ�δ���ʱ�䣨Ĭ��Ϊ-1��ʾ��������';
comment on column QRTZ_TRIGGERS.priority
  is '���ȼ�';
comment on column QRTZ_TRIGGERS.trigger_state
  is '������״̬';
comment on column QRTZ_TRIGGERS.trigger_type
  is '������������';
comment on column QRTZ_TRIGGERS.start_time
  is '��ʼʱ��';
comment on column QRTZ_TRIGGERS.end_time
  is '����ʱ��';
comment on column QRTZ_TRIGGERS.calendar_name
  is '�ճ̱�����';
comment on column QRTZ_TRIGGERS.misfire_instr
  is '����ִ�еĲ���';
comment on column QRTZ_TRIGGERS.job_data
  is '��ų־û�job����';
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
  is 'Blob���͵Ĵ�������';
comment on column QRTZ_BLOB_TRIGGERS.sched_name
  is '��������';
comment on column QRTZ_BLOB_TRIGGERS.trigger_name
  is 'qrtz_triggers��trigger_name�����';
comment on column QRTZ_BLOB_TRIGGERS.trigger_group
  is 'qrtz_triggers��trigger_group�����';
comment on column QRTZ_BLOB_TRIGGERS.blob_data
  is '��ų־û�Trigger����';
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
  is '������Ϣ��';
comment on column QRTZ_CALENDARS.sched_name
  is '��������';
comment on column QRTZ_CALENDARS.calendar_name
  is '��������';
comment on column QRTZ_CALENDARS.calendar
  is '��ų־û�calendar����';
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
  is 'Cron���͵Ĵ�������';
comment on column QRTZ_CRON_TRIGGERS.sched_name
  is '��������';
comment on column QRTZ_CRON_TRIGGERS.trigger_name
  is 'qrtz_triggers��trigger_name�����';
comment on column QRTZ_CRON_TRIGGERS.trigger_group
  is 'qrtz_triggers��trigger_group�����';
comment on column QRTZ_CRON_TRIGGERS.cron_expression
  is 'cron���ʽ';
comment on column QRTZ_CRON_TRIGGERS.time_zone_id
  is 'ʱ��';
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
  is '�Ѵ����Ĵ�������';
comment on column QRTZ_FIRED_TRIGGERS.sched_name
  is '��������';
comment on column QRTZ_FIRED_TRIGGERS.entry_id
  is '������ʵ��id';
comment on column QRTZ_FIRED_TRIGGERS.trigger_name
  is 'qrtz_triggers��trigger_name�����';
comment on column QRTZ_FIRED_TRIGGERS.trigger_group
  is 'qrtz_triggers��trigger_group�����';
comment on column QRTZ_FIRED_TRIGGERS.instance_name
  is '������ʵ����';
comment on column QRTZ_FIRED_TRIGGERS.fired_time
  is '������ʱ��';
comment on column QRTZ_FIRED_TRIGGERS.sched_time
  is '��ʱ���ƶ���ʱ��';
comment on column QRTZ_FIRED_TRIGGERS.priority
  is '���ȼ�';
comment on column QRTZ_FIRED_TRIGGERS.state
  is '״̬';
comment on column QRTZ_FIRED_TRIGGERS.job_name
  is '��������';
comment on column QRTZ_FIRED_TRIGGERS.job_group
  is '��������';
comment on column QRTZ_FIRED_TRIGGERS.is_nonconcurrent
  is '�Ƿ񲢷�';
comment on column QRTZ_FIRED_TRIGGERS.requests_recovery
  is '�Ƿ���ָܻ�ִ��';
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
  is '�洢�ı�������Ϣ��';
comment on column QRTZ_LOCKS.sched_name
  is '��������';
comment on column QRTZ_LOCKS.lock_name
  is '����������';
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
  is '��ͣ�Ĵ�������';
comment on column QRTZ_PAUSED_TRIGGER_GRPS.sched_name
  is '��������';
comment on column QRTZ_PAUSED_TRIGGER_GRPS.trigger_group
  is 'qrtz_triggers��trigger_group�����';
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
  is '������״̬��';
comment on column QRTZ_SCHEDULER_STATE.sched_name
  is '��������';
comment on column QRTZ_SCHEDULER_STATE.instance_name
  is 'ʵ������';
comment on column QRTZ_SCHEDULER_STATE.last_checkin_time
  is '�ϴμ��ʱ��';
comment on column QRTZ_SCHEDULER_STATE.checkin_interval
  is '�����ʱ��';
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
  is '�򵥴���������Ϣ��';
comment on column QRTZ_SIMPLE_TRIGGERS.sched_name
  is '��������';
comment on column QRTZ_SIMPLE_TRIGGERS.trigger_name
  is 'qrtz_triggers��trigger_name�����';
comment on column QRTZ_SIMPLE_TRIGGERS.trigger_group
  is 'qrtz_triggers��trigger_group�����';
comment on column QRTZ_SIMPLE_TRIGGERS.repeat_count
  is '�ظ��Ĵ���ͳ��';
comment on column QRTZ_SIMPLE_TRIGGERS.repeat_interval
  is '�ظ��ļ��ʱ��';
comment on column QRTZ_SIMPLE_TRIGGERS.times_triggered
  is '�Ѿ������Ĵ���';
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
  is 'ͬ�����Ƶ�������';
comment on column QRTZ_SIMPROP_TRIGGERS.sched_name
  is '��������';
comment on column QRTZ_SIMPROP_TRIGGERS.trigger_name
  is 'qrtz_triggers��trigger_name�����';
comment on column QRTZ_SIMPROP_TRIGGERS.trigger_group
  is 'qrtz_triggers��trigger_group�����';
comment on column QRTZ_SIMPROP_TRIGGERS.str_prop_1
  is 'String���͵�trigger�ĵ�һ������';
comment on column QRTZ_SIMPROP_TRIGGERS.str_prop_2
  is 'String���͵�trigger�ĵڶ�������';
comment on column QRTZ_SIMPROP_TRIGGERS.str_prop_3
  is 'String���͵�trigger�ĵ���������';
comment on column QRTZ_SIMPROP_TRIGGERS.int_prop_1
  is 'int���͵�trigger�ĵ�һ������';
comment on column QRTZ_SIMPROP_TRIGGERS.int_prop_2
  is 'int���͵�trigger�ĵڶ�������';
comment on column QRTZ_SIMPROP_TRIGGERS.long_prop_1
  is 'long���͵�trigger�ĵ�һ������';
comment on column QRTZ_SIMPROP_TRIGGERS.long_prop_2
  is 'long���͵�trigger�ĵڶ�������';
comment on column QRTZ_SIMPROP_TRIGGERS.dec_prop_1
  is 'decimal���͵�trigger�ĵ�һ������';
comment on column QRTZ_SIMPROP_TRIGGERS.dec_prop_2
  is 'decimal���͵�trigger�ĵڶ�������';
comment on column QRTZ_SIMPROP_TRIGGERS.bool_prop_1
  is 'Boolean���͵�trigger�ĵ�һ������';
comment on column QRTZ_SIMPROP_TRIGGERS.bool_prop_2
  is 'Boolean���͵�trigger�ĵڶ�������';
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
  is '����';
comment on column REP_DEMO_DXTJ.name
  is '����';
comment on column REP_DEMO_DXTJ.gtime
  is '��Ӷ����';
comment on column REP_DEMO_DXTJ.update_by
  is 'ְ��';
comment on column REP_DEMO_DXTJ.jphone
  is '��ͥ�绰';
comment on column REP_DEMO_DXTJ.birth
  is '��������';
comment on column REP_DEMO_DXTJ.hukou
  is '�������ڵ�';
comment on column REP_DEMO_DXTJ.laddress
  is '��ϵ��ַ';
comment on column REP_DEMO_DXTJ.jperson
  is '������ϵ��';
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
  is '����';
comment on column REP_DEMO_EMPLOYEE.num
  is '���';
comment on column REP_DEMO_EMPLOYEE.name
  is '����';
comment on column REP_DEMO_EMPLOYEE.sex
  is '�Ա�';
comment on column REP_DEMO_EMPLOYEE.birthday
  is '��������';
comment on column REP_DEMO_EMPLOYEE.nation
  is '����';
comment on column REP_DEMO_EMPLOYEE.political
  is '������ò';
comment on column REP_DEMO_EMPLOYEE.native_place
  is '����';
comment on column REP_DEMO_EMPLOYEE.height
  is '���';
comment on column REP_DEMO_EMPLOYEE.weight
  is '����';
comment on column REP_DEMO_EMPLOYEE.health
  is '����״��';
comment on column REP_DEMO_EMPLOYEE.id_card
  is '���֤��';
comment on column REP_DEMO_EMPLOYEE.education
  is 'ѧ��';
comment on column REP_DEMO_EMPLOYEE.school
  is '��ҵѧУ';
comment on column REP_DEMO_EMPLOYEE.major
  is 'רҵ';
comment on column REP_DEMO_EMPLOYEE.address
  is '��ϵ��ַ';
comment on column REP_DEMO_EMPLOYEE.zip_code
  is '�ʱ�';
comment on column REP_DEMO_EMPLOYEE.email
  is 'Email';
comment on column REP_DEMO_EMPLOYEE.phone
  is '�ֻ���';
comment on column REP_DEMO_EMPLOYEE.foreign_language
  is '��������';
comment on column REP_DEMO_EMPLOYEE.foreign_language_level
  is '����ˮƽ';
comment on column REP_DEMO_EMPLOYEE.computer_level
  is '�����ˮƽ';
comment on column REP_DEMO_EMPLOYEE.graduation_time
  is '��ҵʱ��';
comment on column REP_DEMO_EMPLOYEE.arrival_time
  is '��ְʱ��';
comment on column REP_DEMO_EMPLOYEE.positional_titles
  is 'ְ��';
comment on column REP_DEMO_EMPLOYEE.education_experience
  is '��������';
comment on column REP_DEMO_EMPLOYEE.work_experience
  is '��������';
comment on column REP_DEMO_EMPLOYEE.create_by
  is '������';
comment on column REP_DEMO_EMPLOYEE.create_time
  is '����ʱ��';
comment on column REP_DEMO_EMPLOYEE.update_by
  is '�޸���';
comment on column REP_DEMO_EMPLOYEE.update_time
  is '�޸�ʱ��';
comment on column REP_DEMO_EMPLOYEE.del_flag
  is 'ɾ����ʶ0-����,1-��ɾ��';
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
  is '��Ʒ����';
comment on column REP_DEMO_GONGSI.gdata
  is '����';
comment on column REP_DEMO_GONGSI.tdata
  is '��ע';
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
  is '�������ñ�';
comment on column SYS_CONFIG.config_id
  is '��������seq_sys_config.nextval';
comment on column SYS_CONFIG.config_name
  is '��������';
comment on column SYS_CONFIG.config_key
  is '��������';
comment on column SYS_CONFIG.config_value
  is '������ֵ';
comment on column SYS_CONFIG.config_type
  is 'ϵͳ���ã�Y�� N��';
comment on column SYS_CONFIG.create_by
  is '������';
comment on column SYS_CONFIG.create_time
  is '����ʱ��';
comment on column SYS_CONFIG.update_by
  is '������';
comment on column SYS_CONFIG.update_time
  is '����ʱ��';
comment on column SYS_CONFIG.remark
  is '��ע';
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
  is '������Ϣ��';
comment on column SYS_DEPT.dept_id
  is '��������seq_sys_dept.nextval';
comment on column SYS_DEPT.parent_id
  is '������id';
comment on column SYS_DEPT.ancestors
  is '�漶�б�';
comment on column SYS_DEPT.dept_name
  is '��������';
comment on column SYS_DEPT.order_num
  is '��ʾ˳��';
comment on column SYS_DEPT.leader
  is '������';
comment on column SYS_DEPT.phone
  is '��ϵ�绰';
comment on column SYS_DEPT.email
  is '����';
comment on column SYS_DEPT.status
  is '����״̬��0���� 1ͣ�ã�';
comment on column SYS_DEPT.del_flag
  is 'ɾ����־��0������� 2����ɾ����';
comment on column SYS_DEPT.create_by
  is '������';
comment on column SYS_DEPT.create_time
  is '����ʱ��';
comment on column SYS_DEPT.update_by
  is '������';
comment on column SYS_DEPT.update_time
  is '����ʱ��';
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
  is '�ֵ����ݱ�';
comment on column SYS_DICT_DATA.dict_code
  is '�ֵ�����seq_sys_dict_data.nextval';
comment on column SYS_DICT_DATA.dict_sort
  is '�ֵ�����';
comment on column SYS_DICT_DATA.dict_label
  is '�ֵ��ǩ';
comment on column SYS_DICT_DATA.dict_value
  is '�ֵ��ֵ';
comment on column SYS_DICT_DATA.dict_type
  is '�ֵ�����';
comment on column SYS_DICT_DATA.css_class
  is '��ʽ���ԣ�������ʽ��չ��';
comment on column SYS_DICT_DATA.list_class
  is '��������ʽ';
comment on column SYS_DICT_DATA.is_default
  is '�Ƿ�Ĭ�ϣ�Y�� N��';
comment on column SYS_DICT_DATA.status
  is '״̬��0���� 1ͣ�ã�';
comment on column SYS_DICT_DATA.create_by
  is '������';
comment on column SYS_DICT_DATA.create_time
  is '����ʱ��';
comment on column SYS_DICT_DATA.update_by
  is '������';
comment on column SYS_DICT_DATA.update_time
  is '����ʱ��';
comment on column SYS_DICT_DATA.remark
  is '��ע';
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
  is '�ֵ����ͱ�';
comment on column SYS_DICT_TYPE.dict_id
  is '�ֵ�����seq_sys_dict_type.nextval';
comment on column SYS_DICT_TYPE.dict_name
  is '�ֵ�����';
comment on column SYS_DICT_TYPE.dict_type
  is '�ֵ�����';
comment on column SYS_DICT_TYPE.status
  is '״̬��0���� 1ͣ�ã�';
comment on column SYS_DICT_TYPE.create_by
  is '������';
comment on column SYS_DICT_TYPE.create_time
  is '����ʱ��';
comment on column SYS_DICT_TYPE.update_by
  is '������';
comment on column SYS_DICT_TYPE.update_time
  is '����ʱ��';
comment on column SYS_DICT_TYPE.remark
  is '��ע';
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
  is '��ʱ������ȱ�';
comment on column SYS_JOB.job_id
  is '��������seq_sys_job.nextval';
comment on column SYS_JOB.job_name
  is '��������';
comment on column SYS_JOB.job_group
  is '��������';
comment on column SYS_JOB.invoke_target
  is '����Ŀ���ַ���';
comment on column SYS_JOB.cron_expression
  is 'cronִ�б��ʽ';
comment on column SYS_JOB.misfire_policy
  is '�ƻ�ִ�д�����ԣ�1����ִ�� 2ִ��һ�� 3����ִ�У�';
comment on column SYS_JOB.concurrent
  is '�Ƿ񲢷�ִ�У�0���� 1��ֹ��';
comment on column SYS_JOB.status
  is '״̬��0���� 1��ͣ��';
comment on column SYS_JOB.create_by
  is '������';
comment on column SYS_JOB.create_time
  is '����ʱ��';
comment on column SYS_JOB.update_by
  is '������';
comment on column SYS_JOB.update_time
  is '����ʱ��';
comment on column SYS_JOB.remark
  is '��ע��Ϣ';
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
  is '��ʱ���������־��';
comment on column SYS_JOB_LOG.job_log_id
  is '��־����seq_sys_job_log.nextval';
comment on column SYS_JOB_LOG.job_name
  is '��������';
comment on column SYS_JOB_LOG.job_group
  is '��������';
comment on column SYS_JOB_LOG.invoke_target
  is '����Ŀ���ַ���';
comment on column SYS_JOB_LOG.job_message
  is '��־��Ϣ';
comment on column SYS_JOB_LOG.status
  is 'ִ��״̬��0���� 1ʧ�ܣ�';
comment on column SYS_JOB_LOG.exception_info
  is '�쳣��Ϣ';
comment on column SYS_JOB_LOG.create_time
  is '����ʱ��';
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
  is 'ϵͳ���ʼ�¼';
comment on column SYS_LOGININFOR.info_id
  is '��������seq_seq_sys_logininfor.nextval';
comment on column SYS_LOGININFOR.user_name
  is '��¼�˺�';
comment on column SYS_LOGININFOR.ipaddr
  is '��¼IP��ַ';
comment on column SYS_LOGININFOR.login_location
  is '��¼�ص�';
comment on column SYS_LOGININFOR.browser
  is '���������';
comment on column SYS_LOGININFOR.os
  is '����ϵͳ';
comment on column SYS_LOGININFOR.status
  is '��¼״̬��0�ɹ� 1ʧ�ܣ�';
comment on column SYS_LOGININFOR.msg
  is '��ʾ��Ϣ';
comment on column SYS_LOGININFOR.login_time
  is '����ʱ��';
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
  is '�˵�Ȩ�ޱ�';
comment on column SYS_MENU.menu_id
  is '�˵�����seq_sys_post.nextval';
comment on column SYS_MENU.menu_name
  is '�˵�����';
comment on column SYS_MENU.parent_id
  is '���˵�ID';
comment on column SYS_MENU.order_num
  is '��ʾ˳��';
comment on column SYS_MENU.path
  is '�����ַ';
comment on column SYS_MENU.component
  is '·�ɵ�ַ';
comment on column SYS_MENU.query
  is '·�ɲ���';
comment on column SYS_MENU.is_frame
  is '�Ƿ�Ϊ������0�� 1��';
comment on column SYS_MENU.is_cache
  is '�Ƿ񻺴棨0���� 1�����棩';
comment on column SYS_MENU.menu_type
  is '�˵����ͣ�MĿ¼ C�˵� F��ť��';
comment on column SYS_MENU.visible
  is '�˵�״̬��0��ʾ 1���أ�';
comment on column SYS_MENU.status
  is '�˵�״̬��0���� 1ͣ�ã�';
comment on column SYS_MENU.perms
  is 'Ȩ�ޱ�ʶ';
comment on column SYS_MENU.icon
  is '�˵�ͼ��';
comment on column SYS_MENU.create_by
  is '������';
comment on column SYS_MENU.create_time
  is '����ʱ��';
comment on column SYS_MENU.update_by
  is '������';
comment on column SYS_MENU.update_time
  is '����ʱ��';
comment on column SYS_MENU.remark
  is '��ע';
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
  is 'ϵͳ��Ϣ';
comment on column SYS_MESSAGE.message_id
  is '����';
comment on column SYS_MESSAGE.message_content
  is '��Ϣ����';
comment on column SYS_MESSAGE.message_date
  is '��Ϣʱ��';
comment on column SYS_MESSAGE.user_id
  is '֪ͨ�û�ID';
comment on column SYS_MESSAGE.message_type
  is '��Ϣ����';
comment on column SYS_MESSAGE.data_id
  is '��������ID';
comment on column SYS_MESSAGE.message_noted
  is '����';
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
  is '֪ͨ�����';
comment on column SYS_NOTICE.notice_id
  is '��������seq_sys_notice.nextval';
comment on column SYS_NOTICE.notice_title
  is '�������';
comment on column SYS_NOTICE.notice_type
  is '�������ͣ�1֪ͨ 2���棩';
comment on column SYS_NOTICE.notice_content
  is '��������';
comment on column SYS_NOTICE.status
  is '����״̬��0���� 1�رգ�';
comment on column SYS_NOTICE.create_by
  is '������';
comment on column SYS_NOTICE.create_time
  is '����ʱ��';
comment on column SYS_NOTICE.update_by
  is '������';
comment on column SYS_NOTICE.update_time
  is '����ʱ��';
comment on column SYS_NOTICE.remark
  is '��ע';
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
  is '������־��¼';
comment on column SYS_OPER_LOG.oper_id
  is '��־����seq_sys_oper_log.nextval';
comment on column SYS_OPER_LOG.title
  is 'ģ�����';
comment on column SYS_OPER_LOG.business_type
  is 'ҵ�����ͣ�0���� 1���� 2�޸� 3ɾ����';
comment on column SYS_OPER_LOG.method
  is '��������';
comment on column SYS_OPER_LOG.request_method
  is '����ʽ';
comment on column SYS_OPER_LOG.operator_type
  is '�������0���� 1��̨�û� 2�ֻ����û���';
comment on column SYS_OPER_LOG.oper_name
  is '������Ա';
comment on column SYS_OPER_LOG.dept_name
  is '��������';
comment on column SYS_OPER_LOG.oper_url
  is '����URL';
comment on column SYS_OPER_LOG.oper_ip
  is '������ַ';
comment on column SYS_OPER_LOG.oper_location
  is '�����ص�';
comment on column SYS_OPER_LOG.oper_param
  is '�������';
comment on column SYS_OPER_LOG.json_result
  is '���ز���';
comment on column SYS_OPER_LOG.status
  is '����״̬��0���� 1�쳣��';
comment on column SYS_OPER_LOG.error_msg
  is '������Ϣ';
comment on column SYS_OPER_LOG.oper_time
  is '����ʱ��';
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
  is '��λ��Ϣ��';
comment on column SYS_POST.post_id
  is '��λ����seq_sys_post.nextval';
comment on column SYS_POST.post_code
  is '��λ����';
comment on column SYS_POST.post_name
  is '��λ����';
comment on column SYS_POST.post_sort
  is '��ʾ˳��';
comment on column SYS_POST.status
  is '״̬��0���� 1ͣ�ã�';
comment on column SYS_POST.create_by
  is '������';
comment on column SYS_POST.create_time
  is '����ʱ��';
comment on column SYS_POST.update_by
  is '������';
comment on column SYS_POST.update_time
  is '����ʱ��';
comment on column SYS_POST.remark
  is '��ע';
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
  is '��ɫ��Ϣ��';
comment on column SYS_ROLE.role_id
  is '��ɫ����seq_sys_post.nextval';
comment on column SYS_ROLE.role_name
  is '��ɫ����';
comment on column SYS_ROLE.role_key
  is '��ɫȨ���ַ���';
comment on column SYS_ROLE.role_sort
  is '��ʾ˳��';
comment on column SYS_ROLE.data_scope
  is '���ݷ�Χ��1��ȫ������Ȩ�� 2���Զ�����Ȩ�ޣ�';
comment on column SYS_ROLE.menu_check_strictly
  is '�˵���ѡ�����Ƿ������ʾ';
comment on column SYS_ROLE.dept_check_strictly
  is '������ѡ�����Ƿ������ʾ';
comment on column SYS_ROLE.status
  is '��ɫ״̬��0���� 1ͣ�ã�';
comment on column SYS_ROLE.del_flag
  is 'ɾ����־��0������� 2����ɾ����';
comment on column SYS_ROLE.create_by
  is '������';
comment on column SYS_ROLE.create_time
  is '����ʱ��';
comment on column SYS_ROLE.update_by
  is '������';
comment on column SYS_ROLE.update_time
  is '����ʱ��';
comment on column SYS_ROLE.remark
  is '��ע';
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
  is '��ɫ�Ͳ��Ź�����';
comment on column SYS_ROLE_DEPT.role_id
  is '��ɫID';
comment on column SYS_ROLE_DEPT.dept_id
  is '����ID';
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
  is '��ɫ�Ͳ˵�������';
comment on column SYS_ROLE_MENU.role_id
  is '��ɫID';
comment on column SYS_ROLE_MENU.menu_id
  is '�˵�ID';
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
  is '�û���Ϣ��';
comment on column SYS_USER.user_id
  is '�û�����seq_sys_user.nextval';
comment on column SYS_USER.dept_id
  is '����ID';
comment on column SYS_USER.user_name
  is '�û��˺�';
comment on column SYS_USER.nick_name
  is '�û��ǳ�';
comment on column SYS_USER.user_type
  is '�û����ͣ�00ϵͳ�û� 01ע���û���';
comment on column SYS_USER.email
  is '�û�����';
comment on column SYS_USER.phonenumber
  is '�ֻ�����';
comment on column SYS_USER.sex
  is '�û��Ա�0�� 1Ů 2δ֪��';
comment on column SYS_USER.avatar
  is 'ͷ��·��';
comment on column SYS_USER.password
  is '����';
comment on column SYS_USER.status
  is '�ʺ�״̬��0���� 1ͣ�ã�';
comment on column SYS_USER.del_flag
  is 'ɾ����־��0������� 2����ɾ����';
comment on column SYS_USER.login_ip
  is '����¼IP';
comment on column SYS_USER.login_date
  is '����¼ʱ��';
comment on column SYS_USER.create_by
  is '������';
comment on column SYS_USER.create_time
  is '����ʱ��';
comment on column SYS_USER.update_by
  is '������';
comment on column SYS_USER.update_time
  is '����ʱ��';
comment on column SYS_USER.remark
  is '��ע';
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
  is '�û����λ������';
comment on column SYS_USER_POST.user_id
  is '�û�ID';
comment on column SYS_USER_POST.post_id
  is '��λID';
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
  is '�û��ͽ�ɫ������';
comment on column SYS_USER_ROLE.user_id
  is '�û�ID';
comment on column SYS_USER_ROLE.role_id
  is '��ɫID';
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
  is '�·�';

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
  is '����ʵ��';
comment on column WF_CASE.case_id
  is '����';
comment on column WF_CASE.process_id
  is '����ID';
comment on column WF_CASE.graph_version
  is '����ͼ�汾';
comment on column WF_CASE.case_tag
  is 'ʵ����ǩ ';
comment on column WF_CASE.form_data
  is '������';
comment on column WF_CASE.case_status
  is 'ʵ��״̬';
comment on column WF_CASE.node_id
  is '��ǰ�ڵ�ID';
comment on column WF_CASE.user_id
  is '�����ID';
comment on column WF_CASE.add_date
  is '���ʱ��';
comment on column WF_CASE.end_date
  is '���ʱ��';
comment on column WF_CASE.node_line
  is '�û��ڵ���ת˳����';
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
  is '����ͼ��Ϣ';
comment on column WF_GRAPH.graph_id
  is '����';
comment on column WF_GRAPH.process_id
  is '����ID';
comment on column WF_GRAPH.graph_version
  is '����ͼ�汾';
comment on column WF_GRAPH.graph_data
  is '����ͼ����';
comment on column WF_GRAPH.graph_tag
  is '�汾��ǩ';
comment on column WF_GRAPH.add_date
  is '�������';
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
  is '���̶����';
comment on column WF_PROCESS.process_id
  is '����';
comment on column WF_PROCESS.process_name
  is '����';
comment on column WF_PROCESS.process_code
  is '��ʶ';
comment on column WF_PROCESS.process_des
  is '˵��';
comment on column WF_PROCESS.graph_version
  is '�汾';
comment on column WF_PROCESS.process_enable
  is '�Ƿ�����';
comment on column WF_PROCESS.form_path
  is '��·��';
comment on column WF_PROCESS.form_data
  is '������';
comment on column WF_PROCESS.process_cover
  is '���̷���';
comment on column WF_PROCESS.add_date
  is '����ʱ��';
comment on column WF_PROCESS.update_date
  is '�޸�ʱ��';
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
  is '���̴����¼';
comment on column WF_RECORD.case_id
  is '����ʵ��ID';
comment on column WF_RECORD.task_id
  is '����ID';
comment on column WF_RECORD.user_name
  is '������';
comment on column WF_RECORD.add_date
  is '����ʱ��';
comment on column WF_RECORD.record_content
  is '��¼����';
comment on column WF_RECORD.record_result
  is '��¼���';
comment on column WF_RECORD.record_id
  is '����';
comment on column WF_RECORD.node_name
  is '�ڵ�����';
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
  is '���������';
comment on column WF_TASK.user_id
  is '�û�ID';
comment on column WF_TASK.node_id
  is '�ڵ�ID';
comment on column WF_TASK.task_status
  is '״̬';
comment on column WF_TASK.case_id
  is 'ʵ��ID';
comment on column WF_TASK.task_id
  is '����';
comment on column WF_TASK.add_date
  is '��ʼʱ��';
comment on column WF_TASK.end_date
  is '����ʱ��';
comment on column WF_TASK.process_id
  is '����ID';
comment on column WF_TASK.task_result
  is '������';
comment on column WF_TASK.graph_version
  is '����ͼ�汾';
comment on column WF_TASK.task_content
  is '��������';
comment on column WF_TASK.node_name
  is '�ڵ�����';
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
