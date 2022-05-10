insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (300, '140', 'area_id', '主键', 'number', 'Long', 'areaId', '1', '1', null, '1', null, null, null, 'EQ', 'input',
        null, 1, 'admin', '2022-04-02 16:19:45', null, '2022-04-02 16:58:47');
insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (301, '140', 'area_name', '地域名称', 'varchar2', 'String', 'areaName', '0', '0', '1', '1', '1', '1', '1', 'LIKE',
        'input', null, 2, 'admin', '2022-04-02 16:19:45', null, '2022-04-02 16:58:48');
insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (302, '140', 'area_code', '地域编码', 'number', 'Long', 'areaCode', '0', '0', null, '1', '1', '1', null, 'LIKE',
        'input', null, 3, 'admin', '2022-04-02 16:19:46', null, '2022-04-02 16:58:48');
insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (303, '140', 'area_size', '地域面积', 'number', 'Long', 'areaSize', '0', '0', '1', '1', '1', '1', null, 'EQ',
        'input', null, 4, 'admin', '2022-04-02 16:19:46', null, '2022-04-02 16:58:48');
insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (304, '140', 'area_post', '邮编', 'number', 'Long', 'areaPost', '0', '0', null, '1', '1', '1', null, 'EQ', 'input',
        null, 5, 'admin', '2022-04-02 16:19:46', null, '2022-04-02 16:58:48');
insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (305, '140', 'area_level', '地域等级', 'number', 'Integer', 'areaLevel', '0', '0', '1', '1', '1', '1', '1', 'EQ',
        'select', 'demo_area_level', 6, 'admin', '2022-04-02 16:19:46', null, '2022-04-02 16:58:48');
insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (306, '140', 'parent_id', '父节点ID', 'number', 'Long', 'parentId', '0', '0', null, '1', '1', null, null, 'EQ',
        'input', null, 7, 'admin', '2022-04-02 16:19:46', null, '2022-04-02 16:58:48');
insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (260, '125', 'order_id', '主键', 'number', 'Long', 'orderId', '1', '1', null, null, null, null, null, 'EQ',
        'input', null, 1, 'admin', '2022-04-01 16:48:57', null, '2022-04-02 11:45:57');
insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (261, '125', 'order_code', '订单编号', 'varchar2', 'String', 'orderCode', '0', '0', '1', null, null, '1', '1',
        'LIKE', 'input', null, 2, 'admin', '2022-04-01 16:48:57', null, '2022-04-02 11:45:57');
insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (262, '125', 'order_money', '订单金额', 'number', 'Long', 'orderMoney', '0', '0', null, null, null, '1', null, 'EQ',
        'input', null, 3, 'admin', '2022-04-01 16:48:57', null, '2022-04-02 11:45:57');
insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (263, '125', 'order_address', '配送地址', 'varchar2', 'String', 'orderAddress', '0', '0', '1', '1', '1', '1', null,
        'EQ', 'textarea', null, 4, 'admin', '2022-04-01 16:48:57', null, '2022-04-02 11:45:57');
insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (264, '125', 'order_date', '创建时间', 'date', 'Date', 'orderDate', '0', '0', '1', '1', '1', '1', '1', 'BETWEEN',
        'datetime', null, 5, 'admin', '2022-04-01 16:48:57', null, '2022-04-02 11:45:57');
insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (265, '125', 'order_user', '收件人', 'varchar2', 'String', 'orderUser', '0', '0', '1', '1', '1', '1', '1', 'LIKE',
        'input', null, 6, 'admin', '2022-04-01 16:48:57', null, '2022-04-02 11:45:57');
insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (266, '125', 'order_phone', '联系方式', 'varchar2', 'String', 'orderPhone', '0', '0', '1', '1', '1', '1', null, 'EQ',
        'input', null, 7, 'admin', '2022-04-01 16:48:58', null, '2022-04-02 11:45:57');
insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (267, '126', 'goods_id', '主键', 'number', 'Long', 'goodsId', '0', '0', null, null, null, null, null, 'EQ',
        'input', null, 1, 'admin', '2022-04-01 16:48:58', null, '2022-04-02 11:46:03');
insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (268, '126', 'order_id', '外键', 'number', 'Long', 'orderId', '0', '0', null, null, null, null, null, 'EQ',
        'input', null, 2, 'admin', '2022-04-01 16:48:58', null, '2022-04-02 11:46:03');
insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (269, '126', 'goods_code', '货物编号', 'varchar2', 'String', 'goodsCode', '0', '0', '1', '1', '1', '1', '1', 'LIKE',
        'input', null, 3, 'admin', '2022-04-01 16:48:58', null, '2022-04-02 11:46:03');
insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (270, '126', 'goods_name', '货物名称', 'varchar2', 'String', 'goodsName', '0', '0', '1', '1', '1', '1', '1', 'LIKE',
        'input', null, 4, 'admin', '2022-04-01 16:48:58', null, '2022-04-02 11:46:03');
insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (271, '126', 'goods_store', '所属仓库', 'varchar2', 'String', 'goodsStore', '0', '0', '1', '1', '1', '1', '1', 'EQ',
        'select', 'demo_goods_store', 5, 'admin', '2022-04-01 16:48:58', null, '2022-04-02 11:46:03');
insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (272, '126', 'goods_num', '货物数量', 'number', 'Long', 'goodsNum', '0', '0', '1', '1', '1', '1', null, 'EQ',
        'input', null, 6, 'admin', '2022-04-01 16:48:59', null, '2022-04-02 11:46:03');
insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (273, '126', 'goods_price', '货物单价', 'number', 'Long', 'goodsPrice', '0', '0', '1', '1', '1', '1', null, 'EQ',
        'input', null, 7, 'admin', '2022-04-01 16:48:59', null, '2022-04-02 11:46:04');
insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (327, '161', 'message_id', '主键', 'number', 'Long', 'messageId', '1', '1', null, '1', null, null, null, 'EQ',
        'input', null, 1, 'admin', '2022-04-08 18:08:49', null, '2022-04-08 18:11:11');
insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (328, '161', 'message_content', '消息内容', 'varchar2', 'String', 'messageContent', '0', '0', null, '1', '1', '1',
        null, 'EQ', 'textarea', null, 2, 'admin', '2022-04-08 18:08:49', null, '2022-04-08 18:11:11');
insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (329, '161', 'message_date', '消息时间', 'date', 'Date', 'messageDate', '0', '0', null, '1', '1', '1', '1',
        'BETWEEN', 'datetime', null, 3, 'admin', '2022-04-08 18:08:49', null, '2022-04-08 18:11:11');
insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (330, '161', 'message_user', '通知用户', 'varchar2', 'String', 'messageUser', '0', '0', null, '1', '1', '1', '1',
        'LIKE', 'input', null, 4, 'admin', '2022-04-08 18:08:49', null, '2022-04-08 18:11:12');
insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (331, '161', 'message_type', '消息类型', 'varchar2', 'String', 'messageType', '0', '0', null, '1', '1', '1', '1',
        'EQ', 'select', 'sys_message_type', 5, 'admin', '2022-04-08 18:08:49', null, '2022-04-08 18:11:12');
insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (332, '161', 'data_id', '关联数据ID', 'number', 'Long', 'dataId', '0', '0', null, '1', '1', '1', null, 'EQ', 'input',
        null, 6, 'admin', '2022-04-08 18:08:50', null, '2022-04-08 18:11:12');
insert into GEN_TABLE_COLUMN (COLUMN_ID, TABLE_ID, COLUMN_NAME, COLUMN_COMMENT, COLUMN_TYPE, JAVA_TYPE, JAVA_FIELD,
                              IS_PK, IS_INCREMENT, IS_REQUIRED, IS_INSERT, IS_EDIT, IS_LIST, IS_QUERY, QUERY_TYPE,
                              HTML_TYPE, DICT_TYPE, SORT, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (333, '161', 'message_noted', '已阅', 'number', 'Integer', 'messageNoted', '0', '0', null, '1', '1', '1', '1',
        'EQ', 'select', 'sys_yes_no', 7, 'admin', '2022-04-08 18:08:50', null, '2022-04-08 18:11:15');

insert into GEN_TABLE (TABLE_ID, TABLE_NAME, TABLE_COMMENT, SUB_TABLE_NAME, SUB_TABLE_FK_NAME, CLASS_NAME,
                       TPL_CATEGORY, PACKAGE_NAME, MODULE_NAME, BUSINESS_NAME, FUNCTION_NAME, FUNCTION_AUTHOR,
                       GEN_TYPE, GEN_PATH, OPTIONS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (140, 'demo_area', '地域信息表', null, null, 'DemoArea', 'tree', 'com.ruoyi.project.demo', 'demo', 'area', '地域信息',
        '毛泽', '0', '/',
        '{"treeCode":"area_id","treeName":"area_name","treeParentCode":"parent_id","parentMenuId":"2101"}', 'admin',
        '2022-04-02 16:19:41', null, '2022-04-02 16:58:47', null);
insert into GEN_TABLE (TABLE_ID, TABLE_NAME, TABLE_COMMENT, SUB_TABLE_NAME, SUB_TABLE_FK_NAME, CLASS_NAME,
                       TPL_CATEGORY, PACKAGE_NAME, MODULE_NAME, BUSINESS_NAME, FUNCTION_NAME, FUNCTION_AUTHOR,
                       GEN_TYPE, GEN_PATH, OPTIONS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (125, 'demo_order', '订单表', 'demo_goods', 'order_id', 'DemoOrder', 'sub', 'com.ruoyi.project.demo', 'demo',
        'order', '订单管理', '毛泽', '0', '/', '{"parentMenuId":"2101"}', 'admin', '2022-04-01 16:48:57', null,
        '2022-04-02 11:45:57', null);
insert into GEN_TABLE (TABLE_ID, TABLE_NAME, TABLE_COMMENT, SUB_TABLE_NAME, SUB_TABLE_FK_NAME, CLASS_NAME,
                       TPL_CATEGORY, PACKAGE_NAME, MODULE_NAME, BUSINESS_NAME, FUNCTION_NAME, FUNCTION_AUTHOR,
                       GEN_TYPE, GEN_PATH, OPTIONS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (126, 'demo_goods', '订单货物明细表', null, null, 'DemoGoods', 'crud', 'com.ruoyi.project.demo', 'demo', 'goods',
        '货物明细', '毛泽', '0', '/', '{}', 'admin', '2022-04-01 16:48:58', null, '2022-04-02 11:46:03', null);
insert into GEN_TABLE (TABLE_ID, TABLE_NAME, TABLE_COMMENT, SUB_TABLE_NAME, SUB_TABLE_FK_NAME, CLASS_NAME,
                       TPL_CATEGORY, PACKAGE_NAME, MODULE_NAME, BUSINESS_NAME, FUNCTION_NAME, FUNCTION_AUTHOR,
                       GEN_TYPE, GEN_PATH, OPTIONS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (161, 'sys_message', '系统消息', null, null, 'SysMessage', 'crud', 'com.ruoyi.project.system', 'system', 'message',
        '系统消息', 'ruoyi', '0', '/', '{"parentMenuId":1}', 'admin', '2022-04-08 18:08:45', null, '2022-04-08 18:11:11',
        null);

insert into SYS_DEPT (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG,
                      CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-01-11 15:50:41', null, null);
insert into SYS_DEPT (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG,
                      CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-01-11 15:50:41', null,
        null);
insert into SYS_DEPT (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG,
                      CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-01-11 15:50:41', null,
        null);
insert into SYS_DEPT (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG,
                      CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-01-11 15:50:41',
        null, null);
insert into SYS_DEPT (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG,
                      CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-01-11 15:50:41',
        null, null);
insert into SYS_DEPT (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG,
                      CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-01-11 15:50:42',
        null, null);
insert into SYS_DEPT (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG,
                      CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-01-11 15:50:42',
        null, null);
insert into SYS_DEPT (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG,
                      CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-01-11 15:50:42',
        null, null);
insert into SYS_DEPT (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG,
                      CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-01-11 15:50:42',
        null, null);
insert into SYS_DEPT (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG,
                      CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME)
values (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-01-11 15:50:42',
        null, null);

insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (164, 1, '全部完成', '1', 'wf_assign_strategy', null, 'default', 'N', '0', 'admin', '2022-03-28 12:09:55', null,
        null, null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (180, 1, '京东', '1', 'demo_goods_store', null, 'primary', 'N', '0', 'admin', '2022-04-02 11:30:25', 'admin',
        '2022-04-02 11:30:58', null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (1, 1, '男', '0', 'sys_user_sex', null, null, 'Y', '0', 'admin', '2022-01-11 15:51:28', null, null, '性别男');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (2, 2, '女', '1', 'sys_user_sex', null, null, 'N', '0', 'admin', '2022-01-11 15:51:28', null, null, '性别女');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (3, 3, '未知', '2', 'sys_user_sex', null, null, 'N', '0', 'admin', '2022-01-11 15:51:28', null, null, '性别未知');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (4, 1, '显示', '0', 'sys_show_hide', null, 'primary', 'Y', '0', 'admin', '2022-01-11 15:51:28', null, null,
        '显示菜单');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (5, 2, '隐藏', '1', 'sys_show_hide', null, 'danger', 'N', '0', 'admin', '2022-01-11 15:51:29', null, null, '隐藏菜单');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (6, 1, '正常', '0', 'sys_normal_disable', null, 'primary', 'Y', '0', 'admin', '2022-01-11 15:51:29', null, null,
        '正常状态');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (7, 2, '停用', '1', 'sys_normal_disable', null, 'danger', 'N', '0', 'admin', '2022-01-11 15:51:29', null, null,
        '停用状态');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (8, 1, '正常', '0', 'sys_job_status', null, 'primary', 'Y', '0', 'admin', '2022-01-11 15:51:29', null, null,
        '正常状态');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (9, 2, '暂停', '1', 'sys_job_status', null, 'danger', 'N', '0', 'admin', '2022-01-11 15:51:29', null, null,
        '停用状态');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (10, 1, '默认', 'DEFAULT', 'sys_job_group', null, null, 'Y', '0', 'admin', '2022-01-11 15:51:29', null, null,
        '默认分组');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (11, 2, '系统', 'SYSTEM', 'sys_job_group', null, null, 'N', '0', 'admin', '2022-01-11 15:51:29', null, null,
        '系统分组');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (12, 1, '是', 'Y', 'sys_yes_no', null, 'primary', 'Y', '0', 'admin', '2022-01-11 15:51:29', null, null, '系统默认是');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (13, 2, '否', 'N', 'sys_yes_no', null, 'danger', 'N', '0', 'admin', '2022-01-11 15:51:29', null, null, '系统默认否');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (14, 1, '通知', '1', 'sys_notice_type', null, 'warning', 'Y', '0', 'admin', '2022-01-11 15:51:30', null, null,
        '通知');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (15, 2, '公告', '2', 'sys_notice_type', null, 'success', 'N', '0', 'admin', '2022-01-11 15:51:30', null, null,
        '公告');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (16, 1, '正常', '0', 'sys_notice_status', null, 'primary', 'Y', '0', 'admin', '2022-01-11 15:51:30', null, null,
        '正常状态');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (17, 2, '关闭', '1', 'sys_notice_status', null, 'danger', 'N', '0', 'admin', '2022-01-11 15:51:30', null, null,
        '关闭状态');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (18, 99, '其他', '0', 'sys_oper_type', null, 'info', 'N', '0', 'admin', '2022-01-11 15:51:30', null, null, '其他操作');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (19, 1, '新增', '1', 'sys_oper_type', null, 'info', 'N', '0', 'admin', '2022-01-11 15:51:30', null, null, '新增操作');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (20, 2, '修改', '2', 'sys_oper_type', null, 'info', 'N', '0', 'admin', '2022-01-11 15:51:30', null, null, '修改操作');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (21, 3, '删除', '3', 'sys_oper_type', null, 'danger', 'N', '0', 'admin', '2022-01-11 15:51:31', null, null,
        '删除操作');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (22, 4, '授权', '4', 'sys_oper_type', null, 'primary', 'N', '0', 'admin', '2022-01-11 15:51:31', null, null,
        '授权操作');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (23, 5, '导出', '5', 'sys_oper_type', null, 'warning', 'N', '0', 'admin', '2022-01-11 15:51:31', null, null,
        '导出操作');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (24, 6, '导入', '6', 'sys_oper_type', null, 'warning', 'N', '0', 'admin', '2022-01-11 15:51:31', null, null,
        '导入操作');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (25, 7, '强退', '7', 'sys_oper_type', null, 'danger', 'N', '0', 'admin', '2022-01-11 15:51:31', null, null,
        '强退操作');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (26, 8, '生成代码', '8', 'sys_oper_type', null, 'warning', 'N', '0', 'admin', '2022-01-11 15:51:31', null, null,
        '生成操作');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (27, 9, '清空数据', '9', 'sys_oper_type', null, 'danger', 'N', '0', 'admin', '2022-01-11 15:51:31', null, null,
        '清空操作');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (28, 1, '成功', '0', 'sys_common_status', null, 'primary', 'N', '0', 'admin', '2022-01-11 15:51:31', null, null,
        '正常状态');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (29, 2, '失败', '1', 'sys_common_status', null, 'danger', 'N', '0', 'admin', '2022-01-11 15:51:32', null, null,
        '停用状态');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (146, 0, '提交', '0', 'wf_task_result', null, 'primary', 'N', '0', 'admin', '2022-03-24 18:09:05', 'admin',
        '2022-03-24 18:09:15', null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (160, 1, '按用户分配', '1', 'wf_assign_mode', null, 'default', 'N', '0', 'admin', '2022-03-28 12:06:46', 'admin',
        '2022-03-28 12:07:20', null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (163, 4, '自定义', '4', 'wf_assign_mode', null, 'default', 'N', '0', 'admin', '2022-03-28 12:07:47', 'admin',
        '2022-03-28 12:07:52', null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (165, 2, '百分比', '2', 'wf_assign_strategy', null, 'default', 'N', '0', 'admin', '2022-03-28 12:10:04', null, null,
        null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (166, 3, '指定数量', '3', 'wf_assign_strategy', null, 'default', 'N', '0', 'admin', '2022-03-28 12:10:13', null,
        null, null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (167, 10, '提交', '10', 'sys_oper_type', null, 'primary', 'N', '0', 'admin', '2022-03-28 12:35:49', null, null,
        '提交流程实例/任务');
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (100, 4, '已完成', '4', 'wf_case_status', null, 'success', 'N', '0', 'admin', '2022-03-08 17:32:52', 'admin',
        '2022-03-28 12:02:26', null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (101, 1, '未提交', '1', 'wf_case_status', null, 'info', 'N', '0', 'admin', '2022-01-17 16:00:19', 'admin',
        '2022-03-17 19:03:20', null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (102, 2, '已退回', '2', 'wf_case_status', null, 'warning', 'N', '0', 'admin', '2022-01-17 16:00:42', 'admin',
        '2022-03-28 12:01:59', null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (103, 3, '审批中', '3', 'wf_case_status', null, 'primary', 'N', '0', 'admin', '2022-01-17 16:01:00', 'admin',
        '2022-03-28 12:02:31', null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (120, 5, '已注销', '5', 'wf_case_status', null, 'danger', 'N', '0', 'admin', '2022-03-16 11:53:26', null, null,
        null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (141, 1, '已处理', '1', 'wf_task_status', null, 'success', 'N', '0', 'admin', '2022-03-24 11:33:48', null, null,
        null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (143, 2, '退回', '2', 'wf_task_result', null, 'warning', 'N', '0', 'admin', '2022-03-24 12:16:49', null, null,
        null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (145, 2, '已失效', '2', 'wf_task_status', null, 'info', 'N', '0', 'admin', '2022-03-24 12:43:54', 'admin',
        '2022-03-24 12:43:59', null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (181, 2, '淘宝', '2', 'demo_goods_store', null, 'primary', 'N', '0', 'admin', '2022-04-02 11:30:34', 'admin',
        '2022-04-02 11:31:17', null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (182, 3, '天猫', '3', 'demo_goods_store', null, 'primary', 'N', '0', 'admin', '2022-04-02 11:30:41', 'admin',
        '2022-04-02 11:31:12', null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (183, 4, '唯品会', '4', 'demo_goods_store', null, 'primary', 'N', '0', 'admin', '2022-04-02 11:30:50', 'admin',
        '2022-04-02 11:31:07', null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (200, 1, '待办', 'task', 'sys_message_type', null, 'default', 'N', '0', 'admin', '2022-04-08 18:04:02', 'admin',
        '2022-04-21 16:29:25', null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (201, 4, '预警', 'warn', 'sys_message_type', null, 'default', 'N', '0', 'admin', '2022-04-08 18:04:45', 'admin',
        '2022-04-21 16:30:12', null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (202, 2, '通知', 'notice', 'sys_message_type', null, 'default', 'N', '0', 'admin', '2022-04-08 18:05:31', 'admin',
        '2022-04-21 16:29:33', null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (203, 3, '消息', 'msg', 'sys_message_type', null, 'default', 'N', '0', 'admin', '2022-04-08 18:05:44', 'admin',
        '2022-04-21 16:29:49', null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (140, 0, '待处理', '0', 'wf_task_status', null, 'primary', 'N', '0', 'admin', '2022-03-24 11:33:14', null, null,
        null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (142, 1, '同意', '1', 'wf_task_result', null, 'success', 'N', '0', 'admin', '2022-03-24 12:15:27', 'admin',
        '2022-03-24 12:16:54', null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (144, 3, '驳回', '3', 'wf_task_result', null, 'danger', 'N', '0', 'admin', '2022-03-24 12:17:23', 'admin',
        '2022-03-24 12:17:30', null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (161, 2, '按角色分配', '2', 'wf_assign_mode', null, 'default', 'N', '0', 'admin', '2022-03-28 12:06:59', 'admin',
        '2022-03-28 12:07:35', null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (162, 3, '按岗位分配', '3', 'wf_assign_mode', null, 'default', 'N', '0', 'admin', '2022-03-28 12:07:09', 'admin',
        '2022-03-28 12:07:28', null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (184, 1, '省', '1', 'demo_area_level', null, 'primary', 'N', '0', 'admin', '2022-04-02 16:22:45', null, null,
        null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (185, 2, '市', '2', 'demo_area_level', null, 'primary', 'N', '0', 'admin', '2022-04-02 16:22:55', null, null,
        null);
insert into SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS,
                           IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (186, 3, '乡/镇/区', '3', 'demo_area_level', null, 'primary', 'N', '0', 'admin', '2022-04-02 16:23:54', null, null,
        null);

insert into SYS_DICT_TYPE (DICT_ID, DICT_NAME, DICT_TYPE, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                           REMARK)
values (121, '受理模式', 'wf_assign_mode', '0', 'admin', '2022-03-28 12:05:30', 'admin', '2022-03-28 12:08:10',
        '流程图用户节点受理模式');
insert into SYS_DICT_TYPE (DICT_ID, DICT_NAME, DICT_TYPE, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                           REMARK)
values (160, '地域等级', 'demo_area_level', '0', 'admin', '2022-04-02 16:22:20', null, null, '地域信息管理等级（省、市、县、镇。。）');
insert into SYS_DICT_TYPE (DICT_ID, DICT_NAME, DICT_TYPE, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                           REMARK)
values (1, '用户性别', 'sys_user_sex', '0', 'admin', '2022-01-11 15:51:24', null, null, '用户性别列表');
insert into SYS_DICT_TYPE (DICT_ID, DICT_NAME, DICT_TYPE, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                           REMARK)
values (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2022-01-11 15:51:24', null, null, '菜单状态列表');
insert into SYS_DICT_TYPE (DICT_ID, DICT_NAME, DICT_TYPE, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                           REMARK)
values (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2022-01-11 15:51:24', null, null, '系统开关列表');
insert into SYS_DICT_TYPE (DICT_ID, DICT_NAME, DICT_TYPE, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                           REMARK)
values (4, '任务状态', 'sys_job_status', '0', 'admin', '2022-01-11 15:51:25', null, null, '任务状态列表');
insert into SYS_DICT_TYPE (DICT_ID, DICT_NAME, DICT_TYPE, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                           REMARK)
values (5, '任务分组', 'sys_job_group', '0', 'admin', '2022-01-11 15:51:25', null, null, '任务分组列表');
insert into SYS_DICT_TYPE (DICT_ID, DICT_NAME, DICT_TYPE, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                           REMARK)
values (6, '系统是否', 'sys_yes_no', '0', 'admin', '2022-01-11 15:51:25', null, null, '系统是否列表');
insert into SYS_DICT_TYPE (DICT_ID, DICT_NAME, DICT_TYPE, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                           REMARK)
values (7, '通知类型', 'sys_notice_type', '0', 'admin', '2022-01-11 15:51:25', null, null, '通知类型列表');
insert into SYS_DICT_TYPE (DICT_ID, DICT_NAME, DICT_TYPE, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                           REMARK)
values (8, '通知状态', 'sys_notice_status', '0', 'admin', '2022-01-11 15:51:25', null, null, '通知状态列表');
insert into SYS_DICT_TYPE (DICT_ID, DICT_NAME, DICT_TYPE, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                           REMARK)
values (9, '操作类型', 'sys_oper_type', '0', 'admin', '2022-01-11 15:51:25', null, null, '操作类型列表');
insert into SYS_DICT_TYPE (DICT_ID, DICT_NAME, DICT_TYPE, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                           REMARK)
values (10, '系统状态', 'sys_common_status', '0', 'admin', '2022-01-11 15:51:25', null, null, '登录状态列表');
insert into SYS_DICT_TYPE (DICT_ID, DICT_NAME, DICT_TYPE, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                           REMARK)
values (120, '实例状态', 'wf_case_status', '0', 'admin', '2022-01-17 15:59:21', 'admin', '2022-03-28 12:23:04', '流程实例的状态');
insert into SYS_DICT_TYPE (DICT_ID, DICT_NAME, DICT_TYPE, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                           REMARK)
values (100, '任务状态', 'wf_task_status', '0', 'admin', '2022-03-24 11:32:33', 'admin', '2022-03-28 12:23:25', '流程任务状态');
insert into SYS_DICT_TYPE (DICT_ID, DICT_NAME, DICT_TYPE, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                           REMARK)
values (140, '仓库名称', 'demo_goods_store', '0', 'admin', '2022-04-02 11:29:54', null, null, '货物仓库选择');
insert into SYS_DICT_TYPE (DICT_ID, DICT_NAME, DICT_TYPE, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                           REMARK)
values (180, '系统消息类型', 'sys_message_type', '0', 'admin', '2022-04-08 18:02:10', null, null, null);
insert into SYS_DICT_TYPE (DICT_ID, DICT_NAME, DICT_TYPE, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                           REMARK)
values (101, '处理结果', 'wf_task_result', '0', 'admin', '2022-03-24 12:15:03', 'admin', '2022-03-28 12:23:34', '流程任务处理结果');
insert into SYS_DICT_TYPE (DICT_ID, DICT_NAME, DICT_TYPE, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                           REMARK)
values (122, '完成策略', 'wf_assign_strategy', '0', 'admin', '2022-03-28 12:08:52', 'admin', '2022-03-28 12:09:40',
        '流程图用户节点完成策略');

insert into SYS_JOB (JOB_ID, JOB_NAME, JOB_GROUP, INVOKE_TARGET, CRON_EXPRESSION, MISFIRE_POLICY, CONCURRENT, STATUS,
                     CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2022-01-11 15:51:38',
        null, '2022-04-02 15:57:53', null);
insert into SYS_JOB (JOB_ID, JOB_NAME, JOB_GROUP, INVOKE_TARGET, CRON_EXPRESSION, MISFIRE_POLICY, CONCURRENT, STATUS,
                     CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(''ry'')', '0/15 * * * * ?', '3', '1', '1', 'admin',
        '2022-01-11 15:51:38', null, null, null);
insert into SYS_JOB (JOB_ID, JOB_NAME, JOB_GROUP, INVOKE_TARGET, CRON_EXPRESSION, MISFIRE_POLICY, CONCURRENT, STATUS,
                     CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(''ry'', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3',
        '1', '1', 'admin', '2022-01-11 15:51:38', null, null, null);

insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2999, '地域信息', 2101, 1, 'area', 'demo/area/index', null, 1, 0, 'C', '0', '0', 'demo:area:list', 'international',
        'admin', '2022-04-02 16:32:00', 'admin', '2022-04-02 17:03:37', '地域信息菜单');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2124, '地域信息查询', 2999, 1, '#', null, null, 1, 0, 'F', '0', '0', 'demo:area:query', '#', 'admin',
        '2022-04-02 16:32:00', 'ry', null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2125, '地域信息新增', 2999, 2, '#', null, null, 1, 0, 'F', '0', '0', 'demo:area:add', '#', 'admin',
        '2022-04-02 16:32:00', 'ry', null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2126, '地域信息修改', 2999, 3, '#', null, null, 1, 0, 'F', '0', '0', 'demo:area:edit', '#', 'admin',
        '2022-04-02 16:32:01', 'ry', null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2127, '地域信息删除', 2999, 4, '#', null, null, 1, 0, 'F', '0', '0', 'demo:area:remove', '#', 'admin',
        '2022-04-02 16:32:01', 'ry', null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2128, '地域信息导出', 2999, 5, '#', null, null, 1, 0, 'F', '0', '0', 'demo:area:export', '#', 'admin',
        '2022-04-02 16:32:01', 'ry', null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1, '系统管理', 0, 1, 'system', null, null, 1, 0, 'M', '0', '0', null, 'system', 'admin', '2022-01-11 15:50:54',
        null, null, '系统管理目录');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2, '系统监控', 0, 2, 'monitor', null, null, 1, 0, 'M', '0', '0', null, 'monitor', 'admin', '2022-01-11 15:50:54',
        null, null, '系统监控目录');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (3, '系统工具', 0, 3, 'tool', null, null, 1, 0, 'M', '0', '0', null, 'tool', 'admin', '2022-01-11 15:50:54', null,
        null, '系统工具目录');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (100, '用户管理', 1, 3, 'user', 'system/user/index', null, 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin',
        '2022-01-11 15:50:54', 'admin', '2022-04-25 19:23:40', '用户管理菜单');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (101, '角色管理', 1, 1, 'role', 'system/role/index', null, 1, 0, 'C', '0', '0', 'system:role:list', 'peoples',
        'admin', '2022-01-11 15:50:54', 'admin', '2022-04-25 19:23:29', '角色管理菜单');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (102, '菜单管理', 1, 0, 'menu', 'system/menu/index', null, 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table',
        'admin', '2022-01-11 15:50:54', 'admin', '2022-04-25 19:23:10', '菜单管理菜单');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (103, '部门管理', 1, 2, 'dept', 'system/dept/index', null, 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin',
        '2022-01-11 15:50:54', 'admin', '2022-04-25 19:22:13', '部门管理菜单');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (104, '岗位管理', 1, 4, 'post', 'system/post/index', null, 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin',
        '2022-01-11 15:50:55', 'admin', '2022-04-25 19:23:48', '岗位管理菜单');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (105, '字典管理', 1, 6, 'dict', 'system/dict/index', null, 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin',
        '2022-01-11 15:50:55', null, null, '字典管理菜单');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (106, '参数设置', 1, 7, 'config', 'system/config/index', null, 1, 0, 'C', '0', '0', 'system:config:list', 'edit',
        'admin', '2022-01-11 15:50:55', null, null, '参数设置菜单');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (107, '通知公告', 1, 8, 'notice', 'system/notice/index', null, 1, 0, 'C', '0', '0', 'system:notice:list', 'message',
        'admin', '2022-01-11 15:50:55', null, null, '通知公告菜单');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (108, '日志管理', 1, 10, 'log', null, null, 1, 0, 'M', '0', '0', null, 'log', 'admin', '2022-01-11 15:50:55',
        'admin', '2022-04-21 13:45:25', '日志管理菜单');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (109, '在线用户', 2, 1, 'online', 'monitor/online/index', null, 1, 0, 'C', '0', '0', 'monitor:online:list', 'online',
        'admin', '2022-01-11 15:50:55', null, null, '在线用户菜单');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (110, '定时任务', 2, 2, 'job', 'monitor/job/index', null, 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin',
        '2022-01-11 15:50:56', null, null, '定时任务菜单');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', null, 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid',
        'admin', '2022-01-11 15:50:56', null, null, '数据监控菜单');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (112, '服务监控', 2, 4, 'server', 'monitor/server/index', null, 1, 0, 'C', '0', '0', 'monitor:server:list', 'server',
        'admin', '2022-01-11 15:50:56', null, null, '服务监控菜单');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', null, 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis',
        'admin', '2022-01-11 15:50:56', null, null, '缓存监控菜单');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (114, '表单构建', 3, 1, 'build', 'tool/build/index', null, 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin',
        '2022-01-11 15:50:56', null, null, '表单构建菜单');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', null, 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin',
        '2022-01-11 15:50:56', null, null, '代码生成菜单');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (116, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', null, 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger',
        'admin', '2022-01-11 15:50:57', 'admin', '2022-03-01 16:24:07', '系统接口菜单');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', null, 1, 0, 'C', '0', '0', 'monitor:operlog:list',
        'form', 'admin', '2022-01-11 15:50:57', null, null, '操作日志菜单');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', null, 1, 0, 'C', '0', '0',
        'monitor:logininfor:list', 'logininfor', 'admin', '2022-01-11 15:50:57', null, null, '登录日志菜单');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1001, '用户查询', 100, 1, null, null, null, 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin',
        '2022-01-11 15:50:57', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1002, '用户新增', 100, 2, null, null, null, 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin',
        '2022-01-11 15:50:57', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1003, '用户修改', 100, 3, null, null, null, 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin',
        '2022-01-11 15:50:57', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1004, '用户删除', 100, 4, null, null, null, 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin',
        '2022-01-11 15:50:57', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1005, '用户导出', 100, 5, null, null, null, 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin',
        '2022-01-11 15:50:57', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1006, '用户导入', 100, 6, null, null, null, 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin',
        '2022-01-11 15:50:58', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1007, '重置密码', 100, 7, null, null, null, 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin',
        '2022-01-11 15:50:58', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1008, '角色查询', 101, 1, null, null, null, 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin',
        '2022-01-11 15:50:58', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1009, '角色新增', 101, 2, null, null, null, 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin',
        '2022-01-11 15:50:58', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1010, '角色修改', 101, 3, null, null, null, 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin',
        '2022-01-11 15:50:58', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1011, '角色删除', 101, 4, null, null, null, 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin',
        '2022-01-11 15:50:58', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1012, '角色导出', 101, 5, null, null, null, 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin',
        '2022-01-11 15:50:59', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1013, '菜单查询', 102, 1, null, null, null, 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin',
        '2022-01-11 15:50:59', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1014, '菜单新增', 102, 2, null, null, null, 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin',
        '2022-01-11 15:50:59', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1015, '菜单修改', 102, 3, null, null, null, 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin',
        '2022-01-11 15:50:59', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1016, '菜单删除', 102, 4, null, null, null, 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin',
        '2022-01-11 15:50:59', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1017, '部门查询', 103, 1, null, null, null, 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin',
        '2022-01-11 15:50:59', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1018, '部门新增', 103, 2, null, null, null, 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin',
        '2022-01-11 15:50:59', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1019, '部门修改', 103, 3, null, null, null, 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin',
        '2022-01-11 15:51:00', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1020, '部门删除', 103, 4, null, null, null, 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin',
        '2022-01-11 15:51:00', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1021, '岗位查询', 104, 1, null, null, null, 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin',
        '2022-01-11 15:51:00', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1022, '岗位新增', 104, 2, null, null, null, 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin',
        '2022-01-11 15:51:00', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1023, '岗位修改', 104, 3, null, null, null, 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin',
        '2022-01-11 15:51:00', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1024, '岗位删除', 104, 4, null, null, null, 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin',
        '2022-01-11 15:51:00', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1025, '岗位导出', 104, 5, null, null, null, 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin',
        '2022-01-11 15:51:00', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1026, '字典查询', 105, 1, '#', null, null, 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin',
        '2022-01-11 15:51:00', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1027, '字典新增', 105, 2, '#', null, null, 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin',
        '2022-01-11 15:51:00', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1028, '字典修改', 105, 3, '#', null, null, 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin',
        '2022-01-11 15:51:01', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1029, '字典删除', 105, 4, '#', null, null, 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin',
        '2022-01-11 15:51:01', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1030, '字典导出', 105, 5, '#', null, null, 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin',
        '2022-01-11 15:51:01', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1031, '参数查询', 106, 1, '#', null, null, 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin',
        '2022-01-11 15:51:01', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1032, '参数新增', 106, 2, '#', null, null, 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin',
        '2022-01-11 15:51:01', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1033, '参数修改', 106, 3, '#', null, null, 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin',
        '2022-01-11 15:51:02', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1034, '参数删除', 106, 4, '#', null, null, 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin',
        '2022-01-11 15:51:02', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1035, '参数导出', 106, 5, '#', null, null, 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin',
        '2022-01-11 15:51:02', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1036, '公告查询', 107, 1, '#', null, null, 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin',
        '2022-01-11 15:51:02', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1037, '公告新增', 107, 2, '#', null, null, 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin',
        '2022-01-11 15:51:02', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1038, '公告修改', 107, 3, '#', null, null, 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin',
        '2022-01-11 15:51:02', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1039, '公告删除', 107, 4, '#', null, null, 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin',
        '2022-01-11 15:51:02', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1040, '操作查询', 500, 1, '#', null, null, 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin',
        '2022-01-11 15:51:02', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1041, '操作删除', 500, 2, '#', null, null, 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin',
        '2022-01-11 15:51:02', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1042, '日志导出', 500, 4, '#', null, null, 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin',
        '2022-01-11 15:51:03', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1043, '登录查询', 501, 1, '#', null, null, 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin',
        '2022-01-11 15:51:03', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1044, '登录删除', 501, 2, '#', null, null, 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin',
        '2022-01-11 15:51:03', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1045, '日志导出', 501, 3, '#', null, null, 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin',
        '2022-01-11 15:51:03', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1046, '在线查询', 109, 1, '#', null, null, 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin',
        '2022-01-11 15:51:03', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1047, '批量强退', 109, 2, '#', null, null, 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin',
        '2022-01-11 15:51:03', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1048, '单条强退', 109, 3, '#', null, null, 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin',
        '2022-01-11 15:51:04', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1049, '任务查询', 110, 1, '#', null, null, 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin',
        '2022-01-11 15:51:04', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1050, '任务新增', 110, 2, '#', null, null, 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin',
        '2022-01-11 15:51:04', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1051, '任务修改', 110, 3, '#', null, null, 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin',
        '2022-01-11 15:51:04', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1052, '任务删除', 110, 4, '#', null, null, 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin',
        '2022-01-11 15:51:04', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1053, '状态修改', 110, 5, '#', null, null, 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin',
        '2022-01-11 15:51:04', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1054, '任务导出', 110, 7, '#', null, null, 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin',
        '2022-01-11 15:51:04', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1055, '生成查询', 115, 1, '#', null, null, 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin',
        '2022-01-11 15:51:04', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1056, '生成修改', 115, 2, '#', null, null, 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin',
        '2022-01-11 15:51:04', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1057, '生成删除', 115, 3, '#', null, null, 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin',
        '2022-01-11 15:51:05', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1058, '导入代码', 115, 2, '#', null, null, 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin',
        '2022-01-11 15:51:05', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1059, '预览代码', 115, 4, '#', null, null, 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin',
        '2022-01-11 15:51:05', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (1060, '生成代码', 115, 5, '#', null, null, 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin',
        '2022-01-11 15:51:05', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2021, '报表管理', 3, 4, 'report', 'tool/jmReport/index', null, 1, 0, 'C', '0', '0', 'tool:report:list', 'excel',
        'admin', '2022-03-01 11:09:17', 'admin', '2022-03-01 16:25:28', null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2101, '参考案例', 0, 5, 'demo', null, null, 1, 0, 'M', '0', '0', null, 'online', 'admin', '2022-04-01 16:50:31',
        'admin', '2022-04-25 19:07:26', null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2180, '主控面板', 0, 0, 'home', null, null, 1, 0, 'M', '0', '0', null, 'home', 'admin', '2022-04-25 17:58:08', null,
        null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2182, '分析页', 2180, 2, 'analyze', 'home/analyze', null, 1, 0, 'C', '0', '0', null, 'analyze', 'admin',
        '2022-04-25 18:02:08', 'admin', '2022-04-25 18:35:56', null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2088, '流程管理', 3, 5, 'process', 'wf/process/index', null, 1, 1, 'C', '0', '0', 'wf:process:list', 'tree',
        'admin', '2022-01-17 12:12:27', 'admin', '2022-03-01 16:27:45', '流程定义菜单');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2000, '个人办公', 0, 4, 'wf', null, null, 1, 0, 'M', '0', '0', null, 'star', 'admin', '2022-01-11 19:29:59',
        'admin', '2022-03-01 16:32:23', null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2089, '流程定义查询', 2088, 1, '#', null, null, 1, 0, 'F', '0', '0', 'wf:process:query', '#', 'admin',
        '2022-01-17 12:12:27', 'ry', null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2090, '流程定义新增', 2088, 2, '#', null, null, 1, 0, 'F', '0', '0', 'wf:process:add', '#', 'admin',
        '2022-01-17 12:12:27', 'ry', null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2091, '流程定义修改', 2088, 3, '#', null, null, 1, 0, 'F', '0', '0', 'wf:process:edit', '#', 'admin',
        '2022-01-17 12:12:27', 'ry', null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2092, '流程定义删除', 2088, 4, '#', null, null, 1, 0, 'F', '0', '0', 'wf:process:remove', '#', 'admin',
        '2022-01-17 12:12:27', 'ry', null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2120, '我的申请', 2000, 2, 'case', 'wf/case/index', null, 1, 1, 'C', '0', '0', 'wf:case:list', 'component', 'admin',
        '2022-01-17 16:16:33', 'admin', '2022-03-15 17:42:09', '流程实例菜单');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2093, '流程定义导出', 2088, 5, '#', null, null, 1, 0, 'F', '0', '0', 'wf:process:export', '#', 'admin',
        '2022-01-17 12:12:27', 'ry', null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2121, '流程实例查询', 2120, 1, '#', null, null, 1, 0, 'F', '0', '0', 'wf:case:query', '#', 'admin',
        '2022-01-17 16:16:33', 'ry', null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2122, '流程实例新增', 2120, 2, '#', null, null, 1, 0, 'F', '0', '0', 'wf:case:add', '#', 'admin',
        '2022-01-17 16:16:33', 'ry', null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2123, '流程实例修改', 2120, 3, '#', null, null, 1, 0, 'F', '0', '0', 'wf:case:edit', '#', 'admin',
        '2022-01-17 16:16:33', 'ry', null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2080, '任务管理追踪', 2140, 3, null, null, null, 1, 0, 'F', '0', '0', 'wf:task:flow', '#', 'admin',
        '2022-03-25 13:01:14', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2140, '我的任务', 2000, 3, 'task', 'wf/task/index', null, 1, 1, 'C', '0', '0', 'wf:task:list', 'people', 'admin',
        '2022-01-19 13:43:34', 'admin', '2022-03-01 16:32:58', '任务管理菜单');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2102, '订单管理', 2101, 1, 'order', 'demo/order/index', null, 1, 0, 'C', '0', '0', 'demo:order:list', 'build',
        'admin', '2022-04-01 16:54:38', 'admin', '2022-04-01 18:17:19', '订单管理菜单');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2141, '任务管理查询', 2140, 1, '#', null, null, 1, 0, 'F', '0', '0', 'wf:task:query', '#', 'admin',
        '2022-01-19 13:43:34', 'ry', null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2103, '订单管理查询', 2102, 1, '#', null, null, 1, 0, 'F', '0', '0', 'demo:order:query', '#', 'admin',
        '2022-04-01 16:54:38', 'ry', null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2104, '订单管理新增', 2102, 2, '#', null, null, 1, 0, 'F', '0', '0', 'demo:order:add', '#', 'admin',
        '2022-04-01 16:54:39', 'ry', null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2105, '订单管理修改', 2102, 3, '#', null, null, 1, 0, 'F', '0', '0', 'demo:order:edit', '#', 'admin',
        '2022-04-01 16:54:39', 'ry', null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2145, '任务管理提交', 2140, 2, '#', null, null, 1, 0, 'F', '0', '0', 'wf:task:audit', '#', 'admin',
        '2022-01-19 13:43:34', 'admin', '2022-03-25 13:01:27', null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2106, '订单管理删除', 2102, 4, '#', null, null, 1, 0, 'F', '0', '0', 'demo:order:remove', '#', 'admin',
        '2022-04-01 16:54:39', 'ry', null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2107, '订单管理导出', 2102, 5, '#', null, null, 1, 0, 'F', '0', '0', 'demo:order:export', '#', 'admin',
        '2022-04-01 16:54:39', 'ry', null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2098, '消息管理', 1, 9, 'message', 'system/message/index', null, 1, 0, 'C', '0', '0', 'system:message:list', 'bell',
        'admin', '2022-04-11 11:10:38', 'admin', '2022-04-21 18:16:21', '系统消息菜单');
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2160, '系统消息查询', 2098, 1, '#', null, null, 1, 0, 'F', '0', '0', 'system:message:query', '#', 'admin',
        '2022-04-11 11:10:38', 'ry', null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2181, '工作台', 2180, 1, 'work', 'home/work', null, 1, 0, 'C', '0', '0', null, 'work', 'admin',
        '2022-04-25 18:01:48', 'admin', '2022-04-25 18:35:46', null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2061, '流程实例追踪', 2120, 7, null, null, null, 1, 0, 'F', '0', '0', 'wf:case:flow', '#', 'admin',
        '2022-03-17 13:35:51', null, null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2163, '系统消息删除', 2098, 4, '#', null, null, 1, 0, 'F', '0', '0', 'system:message:remove', '#', 'admin',
        '2022-04-11 11:10:39', 'ry', null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2164, '系统消息导出', 2098, 5, '#', null, null, 1, 0, 'F', '0', '0', 'system:message:export', '#', 'admin',
        '2022-04-11 11:10:39', 'ry', null, null);
insert into SYS_MENU (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, PATH, COMPONENT, QUERY, IS_FRAME, IS_CACHE,
                      MENU_TYPE, VISIBLE, STATUS, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME,
                      REMARK)
values (2060, '流程实例提交', 2120, 6, null, null, null, 1, 0, 'F', '0', '0', 'wf:case:audit', '#', 'admin',
        '2022-03-17 13:34:14', 'admin', '2022-03-17 13:34:28', null);

insert into SYS_MESSAGE (MESSAGE_ID, MESSAGE_CONTENT, MESSAGE_DATE, USER_ID, MESSAGE_TYPE, DATA_ID, MESSAGE_NOTED)
values (1352312492711936, '您提交的 请假申请 处理进度已更新', '2022-04-24 11:48:05', 1, 'task', 1352312416616448, 'N');
insert into SYS_MESSAGE (MESSAGE_ID, MESSAGE_CONTENT, MESSAGE_DATE, USER_ID, MESSAGE_TYPE, DATA_ID, MESSAGE_NOTED)
values (1352312492892160, '您有一条待处理的 请假申请', '2022-04-24 11:48:06', 2, 'task', 1352312492851200, 'N');
insert into SYS_MESSAGE (MESSAGE_ID, MESSAGE_CONTENT, MESSAGE_DATE, USER_ID, MESSAGE_TYPE, DATA_ID, MESSAGE_NOTED)
values (1352312492990464, '您有一条待处理的 请假申请', '2022-04-24 11:48:06', 100, 'task', 1352312492941312, 'N');
insert into SYS_MESSAGE (MESSAGE_ID, MESSAGE_CONTENT, MESSAGE_DATE, USER_ID, MESSAGE_TYPE, DATA_ID, MESSAGE_NOTED)
values (1352312493080576, '您有一条待处理的 请假申请', '2022-04-24 11:48:06', 120, 'task', 1352312493031424, 'N');
insert into SYS_MESSAGE (MESSAGE_ID, MESSAGE_CONTENT, MESSAGE_DATE, USER_ID, MESSAGE_TYPE, DATA_ID, MESSAGE_NOTED)
values (1352312423088128, '您有一条待处理的 请假申请', '2022-04-24 11:46:40', 2, 'task', 1352312423030784, 'Y');

insert into SYS_NOTICE (NOTICE_ID, NOTICE_TITLE, NOTICE_TYPE, NOTICE_CONTENT, STATUS, CREATE_BY, CREATE_TIME,
                        UPDATE_BY, UPDATE_TIME, REMARK)
values (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2022-01-11 15:51:42', null, null, '管理员');
insert into SYS_NOTICE (NOTICE_ID, NOTICE_TITLE, NOTICE_TYPE, NOTICE_CONTENT, STATUS, CREATE_BY, CREATE_TIME,
                        UPDATE_BY, UPDATE_TIME, REMARK)
values (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2022-01-11 15:51:43', null, null, '管理员');

insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY,
                      UPDATE_TIME, REMARK)
values (1, 'ceo', '董事长', 1, '0', 'admin', '2022-01-11 15:50:47', null, null, null);
insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY,
                      UPDATE_TIME, REMARK)
values (2, 'se', '项目经理', 2, '0', 'admin', '2022-01-11 15:50:47', null, null, null);
insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY,
                      UPDATE_TIME, REMARK)
values (3, 'hr', '人力资源', 3, '0', 'admin', '2022-01-11 15:50:47', null, null, null);
insert into SYS_POST (POST_ID, POST_CODE, POST_NAME, POST_SORT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY,
                      UPDATE_TIME, REMARK)
values (4, 'user', '普通员工', 4, '0', 'admin', '2022-01-11 15:50:47', null, null, null);

insert into SYS_ROLE_DEPT (ROLE_ID, DEPT_ID)
values (2, 100);
insert into SYS_ROLE_DEPT (ROLE_ID, DEPT_ID)
values (2, 101);
insert into SYS_ROLE_DEPT (ROLE_ID, DEPT_ID)
values (2, 105);

insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (2, 1);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (2, 2000);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (2, 2020);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (2, 2060);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (2, 2061);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (2, 2080);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (2, 2098);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (2, 2120);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (2, 2121);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (2, 2122);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (2, 2123);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (2, 2140);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (2, 2141);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (2, 2145);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (2, 2160);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (2, 2161);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (2, 2162);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (2, 2163);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (2, 2164);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 3);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 4);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 100);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 101);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 102);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 103);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 104);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 105);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 106);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 107);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 108);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 109);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 110);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 111);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 112);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 113);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 114);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 115);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 116);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 500);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 501);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1001);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1002);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1003);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1004);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1005);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1006);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1007);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1008);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1009);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1010);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1011);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1012);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1013);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1014);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1015);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1016);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1017);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1018);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1019);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1020);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1021);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1022);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1023);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1024);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1025);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1026);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1027);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1028);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1029);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1030);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1031);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1032);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1033);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1034);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1035);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1036);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1037);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1038);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1039);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1040);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1041);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1042);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1043);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1044);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1045);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1046);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1047);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1048);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1049);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1050);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1051);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1052);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1053);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1054);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1055);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1056);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1057);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1058);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1059);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 1060);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2000);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2020);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2021);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2060);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2061);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2080);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2088);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2089);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2090);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2091);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2092);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2093);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2101);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2102);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2103);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2104);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2105);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2106);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2107);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2120);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2121);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2122);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2123);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2124);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2125);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2126);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2127);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2128);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2140);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2141);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2145);
insert into SYS_ROLE_MENU (ROLE_ID, MENU_ID)
values (100, 2999);

insert into SYS_ROLE (ROLE_ID, ROLE_NAME, ROLE_KEY, ROLE_SORT, DATA_SCOPE, MENU_CHECK_STRICTLY, DEPT_CHECK_STRICTLY,
                      STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2022-01-11 15:50:50', null, null, '超级管理员');
insert into SYS_ROLE (ROLE_ID, ROLE_NAME, ROLE_KEY, ROLE_SORT, DATA_SCOPE, MENU_CHECK_STRICTLY, DEPT_CHECK_STRICTLY,
                      STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2022-01-11 15:50:50', 'admin', '2022-04-11 19:14:31',
        '普通角色');
insert into SYS_ROLE (ROLE_ID, ROLE_NAME, ROLE_KEY, ROLE_SORT, DATA_SCOPE, MENU_CHECK_STRICTLY, DEPT_CHECK_STRICTLY,
                      STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (100, '开发人员', 'developer', 3, '1', 1, 1, '0', '0', 'admin', '2022-04-07 11:35:01', null, null, null);

insert into SYS_USER_POST (USER_ID, POST_ID)
values (1, 1);
insert into SYS_USER_POST (USER_ID, POST_ID)
values (2, 2);
insert into SYS_USER_POST (USER_ID, POST_ID)
values (100, 4);
insert into SYS_USER_POST (USER_ID, POST_ID)
values (120, 1);

insert into SYS_USER_ROLE (USER_ID, ROLE_ID)
values (1, 1);
insert into SYS_USER_ROLE (USER_ID, ROLE_ID)
values (2, 2);
insert into SYS_USER_ROLE (USER_ID, ROLE_ID)
values (100, 2);
insert into SYS_USER_ROLE (USER_ID, ROLE_ID)
values (120, 2);
insert into SYS_USER_ROLE (USER_ID, ROLE_ID)
values (120, 100);

insert into SYS_USER (USER_ID, DEPT_ID, USER_NAME, NICK_NAME, USER_TYPE, EMAIL, PHONENUMBER, SEX, AVATAR, PASSWORD,
                      STATUS, DEL_FLAG, LOGIN_IP, LOGIN_DATE, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1',
        '/profile/avatar/2022/03/02/44c9596d-a163-4ad1-ac94-d5ac405f061b.jpeg',
        '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2022-04-24 18:25:58',
        'admin', '2022-01-11 15:50:45', null, '2022-04-24 18:25:57', '管理员');
insert into SYS_USER (USER_ID, DEPT_ID, USER_NAME, NICK_NAME, USER_TYPE, EMAIL, PHONENUMBER, SEX, AVATAR, PASSWORD,
                      STATUS, DEL_FLAG, LOGIN_IP, LOGIN_DATE, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', null,
        '$2a$10$tZKRMl0/DvjmU.P4.oSERuU0aVLjR6yRGJhVTGhsXa/rtAFC9I1dy', '0', '0', '127.0.0.1', '2022-04-24 16:03:03',
        'admin', '2022-01-11 15:50:45', 'admin', '2022-04-24 16:03:03', '测试员');
insert into SYS_USER (USER_ID, DEPT_ID, USER_NAME, NICK_NAME, USER_TYPE, EMAIL, PHONENUMBER, SEX, AVATAR, PASSWORD,
                      STATUS, DEL_FLAG, LOGIN_IP, LOGIN_DATE, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (100, 101, 'user1', '测试用户1', '00', null, null, '0', null,
        '$2a$10$uzHKcR72k7LAs8psQsdaH.0l2Fsbod4gXdUlVK2Gxwp55wvhsrAO6', '0', '0', '127.0.0.1', '2022-03-31 16:26:12',
        'admin', '2022-03-25 17:27:44', null, '2022-03-31 16:26:13', null);
insert into SYS_USER (USER_ID, DEPT_ID, USER_NAME, NICK_NAME, USER_TYPE, EMAIL, PHONENUMBER, SEX, AVATAR, PASSWORD,
                      STATUS, DEL_FLAG, LOGIN_IP, LOGIN_DATE, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK)
values (120, 100, 'zhangjw', '张军伟', '00', null, null, '0', null,
        '$2a$10$P4kDq4XpL.qI45voVZiWCegF.4o2VuD4Xm.EUBrKuqQHEdq4NOMAu', '0', '0', null, null, 'admin',
        '2022-04-07 11:34:32', 'admin', '2022-04-07 11:35:10', null);

insert into WF_CASE (CASE_ID, PROCESS_ID, GRAPH_VERSION, CASE_TAG, FORM_DATA, CASE_STATUS, NODE_ID, USER_ID,
                     ADD_DATE, END_DATE, NODE_LINE)
values (1352312416616448, 1502155677548658, 13, '发GV多个地方',
        '{"reason":"辅导费","timerange":["2022-04-01T16:00:00.000Z","2022-04-08T16:00:00.000Z"],"name":"都非常舒服成都市","type":1}',
        3, null, 1, '2022-04-24 11:46:32', null, '["1EA83DDB","60FBAFE4"]');

insert into WF_GRAPH (GRAPH_ID, PROCESS_ID, GRAPH_VERSION, GRAPH_DATA, GRAPH_TAG, ADD_DATE)
values (1352312335990784, 1502155677548658, 13,
        '{"edges":[{"endPoint":{"x":680.0,"y":280.0},"id":"854E2DC6","pointsList":[{"x":630.0,"y":120.0},{"x":730.0,"y":120.0},{"x":580.0,"y":280.0},{"x":680.0,"y":280.0}],"properties":{},"sourceNodeId":"1EA83DDB","startPoint":{"x":630.0,"y":120.0},"targetNodeId":"E9D44495","type":"sequence"},{"endPoint":{"x":740.0,"y":400.0},"id":"F03DE3BA","pointsList":[{"x":720.0,"y":310.0},{"x":720.0,"y":410.0},{"x":740.0,"y":300.0},{"x":740.0,"y":400.0}],"properties":{"condition":"${type} == 1"},"sourceNodeId":"E9D44495","startPoint":{"x":720.0,"y":310.0},"targetNodeId":"60FBAFE4","text":{"value":"事假","x":734.0,"y":353.0},"type":"sequence"},{"endPoint":{"x":1140.0,"y":320.0},"id":"A83A9B9B","pointsList":[{"x":820.0,"y":440.0},{"x":920.0,"y":440.0},{"x":1140.0,"y":420.0},{"x":1140.0,"y":320.0}],"properties":{},"sourceNodeId":"60FBAFE4","startPoint":{"x":820.0,"y":440.0},"targetNodeId":"C7854DA0","type":"sequence"},{"endPoint":{"x":230.0,"y":120.0},"id":"43F4B4AE","pointsList":[{"x":150.0,"y":120.0},{"x":250.0,"y":120.0},{"x":130.0,"y":120.0},{"x":230.0,"y":120.0}],"properties":{},"sourceNodeId":"4D36965E","startPoint":{"x":150.0,"y":120.0},"targetNodeId":"F4A72BDD","type":"sequence"},{"endPoint":{"x":470.0,"y":120.0},"id":"1FFDC4C6","pointsList":[{"x":390.0,"y":120.0},{"x":490.0,"y":120.0},{"x":370.0,"y":120.0},{"x":470.0,"y":120.0}],"properties":{},"sourceNodeId":"F4A72BDD","startPoint":{"x":390.0,"y":120.0},"targetNodeId":"1EA83DDB","type":"sequence"},{"endPoint":{"x":1140.0,"y":260.0},"id":"AD3CA686","pointsList":[{"x":760.0,"y":280.0},{"x":860.0,"y":280.0},{"x":1140.0,"y":160.0},{"x":1140.0,"y":260.0}],"properties":{"condition":"${type} == 2"},"sourceNodeId":"E9D44495","startPoint":{"x":760.0,"y":280.0},"targetNodeId":"C7854DA0","text":{"value":"病假","x":975.0,"y":245.0},"type":"sequence"}],"nodes":[{"id":"1EA83DDB","properties":{"active":1,"assign":[2],"message":"当时但是多所多所多所","mode":1,"name":"用户1审批","strategy":1},"text":{"value":"用户1审批","x":542.0,"y":135.0},"type":"userTask","x":550.0,"y":120.0},{"id":"E9D44495","properties":{},"text":{"value":"?","x":720.0,"y":280.0},"type":"condition","x":720.0,"y":280.0},{"id":"C7854DA0","properties":{},"text":{"value":"结束","x":1140.0,"y":290.0},"type":"end","x":1140.0,"y":290.0},{"id":"60FBAFE4","properties":{"active":1,"assign":[2],"message":"硕大的所多所多","mode":2,"name":"用户2审批","strategy":1},"text":{"value":"用户2审批","x":738.0,"y":455.0},"type":"userTask","x":740.0,"y":440.0},{"id":"4D36965E","properties":{},"text":{"value":"开始","x":120.0,"y":120.0},"type":"start","x":120.0,"y":120.0},{"id":"F4A72BDD","properties":{"invoke":"com.ruoyi.project.wf.test.TestIServiceTaskHandler","name":"二位翁翁翁无"},"text":{"value":"二位翁翁翁无","x":305.0,"y":135.0},"type":"serviceTask","x":310.0,"y":120.0}]}',
        '颠三倒四多所多', '2022-04-24 11:44:54');
insert into WF_GRAPH (GRAPH_ID, PROCESS_ID, GRAPH_VERSION, GRAPH_DATA, GRAPH_TAG, ADD_DATE)
values (1504409743733473, 1502155677548658, 3,
        '{"edges":[{"endPoint":{"x":470.0,"y":120.0},"id":"AC7A28D2","pointsList":[{"x":280.0,"y":120.0},{"x":380.0,"y":120.0},{"x":370.0,"y":120.0},{"x":470.0,"y":120.0}],"sourceNodeId":"9E685E8B","startPoint":{"x":280.0,"y":120.0},"targetNodeId":"1EA83DDB","type":"sequence"},{"endPoint":{"x":680.0,"y":280.0},"id":"854E2DC6","pointsList":[{"x":630.0,"y":120.0},{"x":730.0,"y":120.0},{"x":580.0,"y":280.0},{"x":680.0,"y":280.0}],"sourceNodeId":"1EA83DDB","startPoint":{"x":630.0,"y":120.0},"targetNodeId":"E9D44495","type":"sequence"},{"endPoint":{"x":740.0,"y":400.0},"id":"F03DE3BA","pointsList":[{"x":720.0,"y":310.0},{"x":720.0,"y":410.0},{"x":740.0,"y":300.0},{"x":740.0,"y":400.0}],"sourceNodeId":"E9D44495","startPoint":{"x":720.0,"y":310.0},"targetNodeId":"60FBAFE4","text":{"value":"${type} == 1","x":730.0,"y":355.0},"type":"sequence"},{"endPoint":{"x":1140.0,"y":320.0},"id":"A83A9B9B","pointsList":[{"x":820.0,"y":440.0},{"x":920.0,"y":440.0},{"x":1140.0,"y":420.0},{"x":1140.0,"y":320.0}],"sourceNodeId":"60FBAFE4","startPoint":{"x":820.0,"y":440.0},"targetNodeId":"C7854DA0","type":"sequence"},{"endPoint":{"x":1050.0,"y":140.0},"id":"EC401656","pointsList":[{"x":720.0,"y":250.0},{"x":720.0,"y":150.0},{"x":950.0,"y":140.0},{"x":1050.0,"y":140.0}],"sourceNodeId":"E9D44495","startPoint":{"x":720.0,"y":250.0},"targetNodeId":"9F2DC992","text":{"value":"${type} == 2","x":860.0,"y":170.0},"type":"sequence"}],"nodes":[{"id":"9E685E8B","properties":{},"text":{"value":"开始","x":250.0,"y":120.0},"type":"start","x":250.0,"y":120.0},{"id":"1EA83DDB","properties":{},"text":{"value":"用户1审批","x":542.0,"y":134.0},"type":"userTask","x":550.0,"y":120.0},{"id":"E9D44495","properties":{},"text":{"value":"?","x":720.0,"y":280.0},"type":"condition","x":720.0,"y":280.0},{"id":"C7854DA0","properties":{},"text":{"value":"结束","x":1140.0,"y":290.0},"type":"end","x":1140.0,"y":290.0},{"id":"60FBAFE4","properties":{},"text":{"value":"用户2审批","x":738.0,"y":454.0},"type":"userTask","x":740.0,"y":440.0},{"id":"9F2DC992","properties":{},"text":{"value":"结束","x":1080.0,"y":140.0},"type":"end","x":1080.0,"y":140.0}]}',
        '重建流程', '2022-03-17 18:50:08');
insert into WF_GRAPH (GRAPH_ID, PROCESS_ID, GRAPH_VERSION, GRAPH_DATA, GRAPH_TAG, ADD_DATE)
values (1504411623700217, 1502155677548658, 4,
        '{"edges":[{"endPoint":{"x":470.0,"y":120.0},"id":"AC7A28D2","pointsList":[{"x":280.0,"y":120.0},{"x":380.0,"y":120.0},{"x":370.0,"y":120.0},{"x":470.0,"y":120.0}],"sourceNodeId":"9E685E8B","startPoint":{"x":280.0,"y":120.0},"targetNodeId":"1EA83DDB","type":"sequence"},{"endPoint":{"x":680.0,"y":280.0},"id":"854E2DC6","pointsList":[{"x":630.0,"y":120.0},{"x":730.0,"y":120.0},{"x":580.0,"y":280.0},{"x":680.0,"y":280.0}],"sourceNodeId":"1EA83DDB","startPoint":{"x":630.0,"y":120.0},"targetNodeId":"E9D44495","type":"sequence"},{"endPoint":{"x":740.0,"y":400.0},"id":"F03DE3BA","pointsList":[{"x":720.0,"y":310.0},{"x":720.0,"y":410.0},{"x":740.0,"y":300.0},{"x":740.0,"y":400.0}],"sourceNodeId":"E9D44495","startPoint":{"x":720.0,"y":310.0},"targetNodeId":"60FBAFE4","text":{"value":"${type} == 1","x":730.0,"y":355.0},"type":"sequence"},{"endPoint":{"x":1140.0,"y":320.0},"id":"A83A9B9B","pointsList":[{"x":820.0,"y":440.0},{"x":920.0,"y":440.0},{"x":1140.0,"y":420.0},{"x":1140.0,"y":320.0}],"sourceNodeId":"60FBAFE4","startPoint":{"x":820.0,"y":440.0},"targetNodeId":"C7854DA0","type":"sequence"},{"endPoint":{"x":1050.0,"y":140.0},"id":"EC401656","pointsList":[{"x":720.0,"y":250.0},{"x":720.0,"y":150.0},{"x":950.0,"y":140.0},{"x":1050.0,"y":140.0}],"sourceNodeId":"E9D44495","startPoint":{"x":720.0,"y":250.0},"targetNodeId":"9F2DC992","text":{"value":"${type} == 2","x":860.0,"y":170.0},"type":"sequence"}],"nodes":[{"id":"9E685E8B","properties":{},"text":{"value":"开始","x":250.0,"y":120.0},"type":"start","x":250.0,"y":120.0},{"id":"1EA83DDB","properties":{"active":1,"assign":[2,1],"mode":1,"range":1,"strategy":1},"text":{"value":"用户1审批","x":542.0,"y":134.0},"type":"userTask","x":550.0,"y":120.0},{"id":"E9D44495","properties":{},"text":{"value":"?","x":720.0,"y":280.0},"type":"condition","x":720.0,"y":280.0},{"id":"C7854DA0","properties":{},"text":{"value":"结束","x":1140.0,"y":290.0},"type":"end","x":1140.0,"y":290.0},{"id":"60FBAFE4","properties":{"active":1,"assign":[1,2],"mode":1,"range":1,"strategy":1},"text":{"value":"用户2审批","x":738.0,"y":454.0},"type":"userTask","x":740.0,"y":440.0},{"id":"9F2DC992","properties":{},"text":{"value":"结束","x":1080.0,"y":140.0},"type":"end","x":1080.0,"y":140.0}]}',
        '流程就饿点', '2022-03-17 18:57:36');
insert into WF_GRAPH (GRAPH_ID, PROCESS_ID, GRAPH_VERSION, GRAPH_DATA, GRAPH_TAG, ADD_DATE)
values (1350205756416000, 1502155677548658, 5,
        '{"edges":[{"endPoint":{"x":680.0,"y":280.0},"id":"854E2DC6","pointsList":[{"x":630.0,"y":120.0},{"x":730.0,"y":120.0},{"x":580.0,"y":280.0},{"x":680.0,"y":280.0}],"sourceNodeId":"1EA83DDB","startPoint":{"x":630.0,"y":120.0},"targetNodeId":"E9D44495","type":"sequence"},{"endPoint":{"x":740.0,"y":400.0},"id":"F03DE3BA","pointsList":[{"x":720.0,"y":310.0},{"x":720.0,"y":410.0},{"x":740.0,"y":300.0},{"x":740.0,"y":400.0}],"sourceNodeId":"E9D44495","startPoint":{"x":720.0,"y":310.0},"targetNodeId":"60FBAFE4","text":{"value":"事假","x":734.0,"y":353.0},"type":"sequence"},{"endPoint":{"x":1140.0,"y":320.0},"id":"A83A9B9B","pointsList":[{"x":820.0,"y":440.0},{"x":920.0,"y":440.0},{"x":1140.0,"y":420.0},{"x":1140.0,"y":320.0}],"sourceNodeId":"60FBAFE4","startPoint":{"x":820.0,"y":440.0},"targetNodeId":"C7854DA0","type":"sequence"},{"endPoint":{"x":1050.0,"y":140.0},"id":"EC401656","pointsList":[{"x":720.0,"y":250.0},{"x":720.0,"y":150.0},{"x":950.0,"y":140.0},{"x":1050.0,"y":140.0}],"sourceNodeId":"E9D44495","startPoint":{"x":720.0,"y":250.0},"targetNodeId":"9F2DC992","text":{"value":"病假","x":846.0,"y":163.0},"type":"sequence"},{"endPoint":{"x":230.0,"y":120.0},"id":"43F4B4AE","pointsList":[{"x":150.0,"y":120.0},{"x":250.0,"y":120.0},{"x":130.0,"y":120.0},{"x":230.0,"y":120.0}],"sourceNodeId":"4D36965E","startPoint":{"x":150.0,"y":120.0},"targetNodeId":"F4A72BDD","type":"sequence"},{"endPoint":{"x":470.0,"y":120.0},"id":"1FFDC4C6","pointsList":[{"x":390.0,"y":120.0},{"x":490.0,"y":120.0},{"x":370.0,"y":120.0},{"x":470.0,"y":120.0}],"sourceNodeId":"F4A72BDD","startPoint":{"x":390.0,"y":120.0},"targetNodeId":"1EA83DDB","type":"sequence"}],"nodes":[{"id":"1EA83DDB","properties":{"active":1,"assign":[2],"mode":1,"strategy":1},"text":{"value":"用户1审批","x":542.0,"y":134.0},"type":"userTask","x":550.0,"y":120.0},{"id":"E9D44495","properties":{},"text":{"value":"?","x":720.0,"y":280.0},"type":"condition","x":720.0,"y":280.0},{"id":"C7854DA0","properties":{},"text":{"value":"结束","x":1140.0,"y":290.0},"type":"end","x":1140.0,"y":290.0},{"id":"60FBAFE4","properties":{"active":1,"assign":[2],"mode":2,"strategy":1},"text":{"value":"用户2审批","x":738.0,"y":454.0},"type":"userTask","x":740.0,"y":440.0},{"id":"9F2DC992","properties":{},"text":{"value":"结束","x":1080.0,"y":140.0},"type":"end","x":1080.0,"y":140.0},{"id":"4D36965E","properties":{},"text":{"value":"开始","x":120.0,"y":120.0},"type":"start","x":120.0,"y":120.0},{"id":"F4A72BDD","properties":{"invoke":"com.ruoyi.project.wf.test.TestServiceHandler"},"text":{"value":"执行某个方法","x":305.0,"y":132.0},"type":"serviceTask","x":310.0,"y":120.0}]}',
        '测试流程（终）', '2022-03-25 17:26:26');
insert into WF_GRAPH (GRAPH_ID, PROCESS_ID, GRAPH_VERSION, GRAPH_DATA, GRAPH_TAG, ADD_DATE)
values (1351121009295360, 1502155677548658, 8,
        '{"edges":[{"endPoint":{"x":680.0,"y":280.0},"id":"854E2DC6","pointsList":[{"x":630.0,"y":120.0},{"x":730.0,"y":120.0},{"x":580.0,"y":280.0},{"x":680.0,"y":280.0}],"properties":{},"sourceNodeId":"1EA83DDB","startPoint":{"x":630.0,"y":120.0},"targetNodeId":"E9D44495","type":"sequence"},{"endPoint":{"x":740.0,"y":400.0},"id":"F03DE3BA","pointsList":[{"x":720.0,"y":310.0},{"x":720.0,"y":410.0},{"x":740.0,"y":300.0},{"x":740.0,"y":400.0}],"properties":{"condition":"${type} == 1"},"sourceNodeId":"E9D44495","startPoint":{"x":720.0,"y":310.0},"targetNodeId":"60FBAFE4","text":{"value":"事假","x":734.0,"y":353.0},"type":"sequence"},{"endPoint":{"x":1140.0,"y":320.0},"id":"A83A9B9B","pointsList":[{"x":820.0,"y":440.0},{"x":920.0,"y":440.0},{"x":1140.0,"y":420.0},{"x":1140.0,"y":320.0}],"properties":{},"sourceNodeId":"60FBAFE4","startPoint":{"x":820.0,"y":440.0},"targetNodeId":"C7854DA0","type":"sequence"},{"endPoint":{"x":230.0,"y":120.0},"id":"43F4B4AE","pointsList":[{"x":150.0,"y":120.0},{"x":250.0,"y":120.0},{"x":130.0,"y":120.0},{"x":230.0,"y":120.0}],"properties":{},"sourceNodeId":"4D36965E","startPoint":{"x":150.0,"y":120.0},"targetNodeId":"F4A72BDD","type":"sequence"},{"endPoint":{"x":470.0,"y":120.0},"id":"1FFDC4C6","pointsList":[{"x":390.0,"y":120.0},{"x":490.0,"y":120.0},{"x":370.0,"y":120.0},{"x":470.0,"y":120.0}],"properties":{},"sourceNodeId":"F4A72BDD","startPoint":{"x":390.0,"y":120.0},"targetNodeId":"1EA83DDB","type":"sequence"},{"endPoint":{"x":1140.0,"y":260.0},"id":"AD3CA686","pointsList":[{"x":760.0,"y":280.0},{"x":860.0,"y":280.0},{"x":1140.0,"y":160.0},{"x":1140.0,"y":260.0}],"properties":{"condition":"${type} == 2"},"sourceNodeId":"E9D44495","startPoint":{"x":760.0,"y":280.0},"targetNodeId":"C7854DA0","text":{"value":"病假","x":975.0,"y":245.0},"type":"sequence"}],"nodes":[{"id":"1EA83DDB","properties":{"active":1,"assign":[120,100],"mode":1,"strategy":1},"text":{"value":"用户1审批","x":542.0,"y":135.0},"type":"userTask","x":550.0,"y":120.0},{"id":"E9D44495","properties":{},"text":{"value":"?","x":720.0,"y":280.0},"type":"condition","x":720.0,"y":280.0},{"id":"C7854DA0","properties":{},"text":{"value":"结束","x":1140.0,"y":290.0},"type":"end","x":1140.0,"y":290.0},{"id":"60FBAFE4","properties":{"active":1,"assign":[2],"mode":2,"strategy":1},"text":{"value":"用户2审批","x":738.0,"y":455.0},"type":"userTask","x":740.0,"y":440.0},{"id":"4D36965E","properties":{},"text":{"value":"开始","x":120.0,"y":120.0},"type":"start","x":120.0,"y":120.0},{"id":"F4A72BDD","properties":{"invoke":"com.ruoyi.project.wf.test.TestServiceHandler"},"text":{"value":"执行某个方法","x":305.0,"y":135.0},"type":"serviceTask","x":310.0,"y":120.0}]}',
        '颠三倒四', '2022-04-07 15:47:18');
insert into WF_GRAPH (GRAPH_ID, PROCESS_ID, GRAPH_VERSION, GRAPH_DATA, GRAPH_TAG, ADD_DATE)
values (1351121111138304, 1502155677548658, 10,
        '{"edges":[{"endPoint":{"x":680.0,"y":280.0},"id":"854E2DC6","pointsList":[{"x":630.0,"y":120.0},{"x":730.0,"y":120.0},{"x":580.0,"y":280.0},{"x":680.0,"y":280.0}],"properties":{},"sourceNodeId":"1EA83DDB","startPoint":{"x":630.0,"y":120.0},"targetNodeId":"E9D44495","type":"sequence"},{"endPoint":{"x":740.0,"y":400.0},"id":"F03DE3BA","pointsList":[{"x":720.0,"y":310.0},{"x":720.0,"y":410.0},{"x":740.0,"y":300.0},{"x":740.0,"y":400.0}],"properties":{"condition":"${type} == 1"},"sourceNodeId":"E9D44495","startPoint":{"x":720.0,"y":310.0},"targetNodeId":"60FBAFE4","text":{"value":"事假","x":734.0,"y":353.0},"type":"sequence"},{"endPoint":{"x":1140.0,"y":320.0},"id":"A83A9B9B","pointsList":[{"x":820.0,"y":440.0},{"x":920.0,"y":440.0},{"x":1140.0,"y":420.0},{"x":1140.0,"y":320.0}],"properties":{},"sourceNodeId":"60FBAFE4","startPoint":{"x":820.0,"y":440.0},"targetNodeId":"C7854DA0","type":"sequence"},{"endPoint":{"x":230.0,"y":120.0},"id":"43F4B4AE","pointsList":[{"x":150.0,"y":120.0},{"x":250.0,"y":120.0},{"x":130.0,"y":120.0},{"x":230.0,"y":120.0}],"properties":{},"sourceNodeId":"4D36965E","startPoint":{"x":150.0,"y":120.0},"targetNodeId":"F4A72BDD","type":"sequence"},{"endPoint":{"x":470.0,"y":120.0},"id":"1FFDC4C6","pointsList":[{"x":390.0,"y":120.0},{"x":490.0,"y":120.0},{"x":370.0,"y":120.0},{"x":470.0,"y":120.0}],"properties":{},"sourceNodeId":"F4A72BDD","startPoint":{"x":390.0,"y":120.0},"targetNodeId":"1EA83DDB","type":"sequence"},{"endPoint":{"x":1140.0,"y":260.0},"id":"AD3CA686","pointsList":[{"x":760.0,"y":280.0},{"x":860.0,"y":280.0},{"x":1140.0,"y":160.0},{"x":1140.0,"y":260.0}],"properties":{"condition":""},"sourceNodeId":"E9D44495","startPoint":{"x":760.0,"y":280.0},"targetNodeId":"C7854DA0","text":{"value":"病假","x":975.0,"y":245.0},"type":"sequence"}],"nodes":[{"id":"1EA83DDB","properties":{"active":1,"assign":[120,100],"mode":1,"rate":3,"strategy":2},"text":{"value":"用户1审批","x":542.0,"y":135.0},"type":"userTask","x":550.0,"y":120.0},{"id":"E9D44495","properties":{},"text":{"value":"?","x":720.0,"y":280.0},"type":"condition","x":720.0,"y":280.0},{"id":"C7854DA0","properties":{},"text":{"value":"结束","x":1140.0,"y":290.0},"type":"end","x":1140.0,"y":290.0},{"id":"60FBAFE4","properties":{"active":1,"assign":[2],"mode":2,"strategy":1},"text":{"value":"用户2审批","x":738.0,"y":455.0},"type":"userTask","x":740.0,"y":440.0},{"id":"4D36965E","properties":{},"text":{"value":"开始","x":120.0,"y":120.0},"type":"start","x":120.0,"y":120.0},{"id":"F4A72BDD","properties":{"invoke":"com.ruoyi.project.wf.test.TestServiceHandler"},"text":{"value":"执行某个方法","x":305.0,"y":135.0},"type":"serviceTask","x":310.0,"y":120.0}]}',
        '颠三倒四', '2022-04-07 15:49:22');
insert into WF_GRAPH (GRAPH_ID, PROCESS_ID, GRAPH_VERSION, GRAPH_DATA, GRAPH_TAG, ADD_DATE)
values (1350628153081856, 1502155677548658, 7,
        '{"edges":[{"endPoint":{"x":680.0,"y":280.0},"id":"854E2DC6","pointsList":[{"x":630.0,"y":120.0},{"x":730.0,"y":120.0},{"x":580.0,"y":280.0},{"x":680.0,"y":280.0}],"properties":{},"sourceNodeId":"1EA83DDB","startPoint":{"x":630.0,"y":120.0},"targetNodeId":"E9D44495","type":"sequence"},{"endPoint":{"x":740.0,"y":400.0},"id":"F03DE3BA","pointsList":[{"x":720.0,"y":310.0},{"x":720.0,"y":410.0},{"x":740.0,"y":300.0},{"x":740.0,"y":400.0}],"properties":{"condition":"${type} == 1"},"sourceNodeId":"E9D44495","startPoint":{"x":720.0,"y":310.0},"targetNodeId":"60FBAFE4","text":{"value":"事假","x":734.0,"y":353.0},"type":"sequence"},{"endPoint":{"x":1140.0,"y":320.0},"id":"A83A9B9B","pointsList":[{"x":820.0,"y":440.0},{"x":920.0,"y":440.0},{"x":1140.0,"y":420.0},{"x":1140.0,"y":320.0}],"properties":{},"sourceNodeId":"60FBAFE4","startPoint":{"x":820.0,"y":440.0},"targetNodeId":"C7854DA0","type":"sequence"},{"endPoint":{"x":230.0,"y":120.0},"id":"43F4B4AE","pointsList":[{"x":150.0,"y":120.0},{"x":250.0,"y":120.0},{"x":130.0,"y":120.0},{"x":230.0,"y":120.0}],"properties":{},"sourceNodeId":"4D36965E","startPoint":{"x":150.0,"y":120.0},"targetNodeId":"F4A72BDD","type":"sequence"},{"endPoint":{"x":470.0,"y":120.0},"id":"1FFDC4C6","pointsList":[{"x":390.0,"y":120.0},{"x":490.0,"y":120.0},{"x":370.0,"y":120.0},{"x":470.0,"y":120.0}],"properties":{},"sourceNodeId":"F4A72BDD","startPoint":{"x":390.0,"y":120.0},"targetNodeId":"1EA83DDB","type":"sequence"},{"endPoint":{"x":1140.0,"y":260.0},"id":"AD3CA686","pointsList":[{"x":760.0,"y":280.0},{"x":860.0,"y":280.0},{"x":1140.0,"y":160.0},{"x":1140.0,"y":260.0}],"properties":{"condition":"${type} == 2"},"sourceNodeId":"E9D44495","startPoint":{"x":760.0,"y":280.0},"targetNodeId":"C7854DA0","text":{"value":"病假","x":975.0,"y":245.0},"type":"sequence"}],"nodes":[{"id":"1EA83DDB","properties":{"active":1,"assign":[2],"mode":1,"strategy":1},"text":{"value":"用户1审批","x":542.0,"y":134.0},"type":"userTask","x":550.0,"y":120.0},{"id":"E9D44495","properties":{},"text":{"value":"?","x":720.0,"y":280.0},"type":"condition","x":720.0,"y":280.0},{"id":"C7854DA0","properties":{},"text":{"value":"结束","x":1140.0,"y":290.0},"type":"end","x":1140.0,"y":290.0},{"id":"60FBAFE4","properties":{"active":1,"assign":[2],"mode":2,"strategy":1},"text":{"value":"用户2审批","x":738.0,"y":454.0},"type":"userTask","x":740.0,"y":440.0},{"id":"4D36965E","properties":{},"text":{"value":"开始","x":120.0,"y":120.0},"type":"start","x":120.0,"y":120.0},{"id":"F4A72BDD","properties":{"invoke":"com.ruoyi.project.wf.test.TestServiceHandler"},"text":{"value":"执行某个方法","x":305.0,"y":132.0},"type":"serviceTask","x":310.0,"y":120.0}]}',
        '最后一次改动', '2022-03-31 16:40:07');
insert into WF_GRAPH (GRAPH_ID, PROCESS_ID, GRAPH_VERSION, GRAPH_DATA, GRAPH_TAG, ADD_DATE)
values (1351121620148224, 1502155677548658, 11,
        '{"edges":[{"endPoint":{"x":680.0,"y":280.0},"id":"854E2DC6","pointsList":[{"x":630.0,"y":120.0},{"x":730.0,"y":120.0},{"x":580.0,"y":280.0},{"x":680.0,"y":280.0}],"properties":{},"sourceNodeId":"1EA83DDB","startPoint":{"x":630.0,"y":120.0},"targetNodeId":"E9D44495","type":"sequence"},{"endPoint":{"x":740.0,"y":400.0},"id":"F03DE3BA","pointsList":[{"x":720.0,"y":310.0},{"x":720.0,"y":410.0},{"x":740.0,"y":300.0},{"x":740.0,"y":400.0}],"properties":{"condition":"${type} == 1"},"sourceNodeId":"E9D44495","startPoint":{"x":720.0,"y":310.0},"targetNodeId":"60FBAFE4","text":{"value":"事假","x":734.0,"y":353.0},"type":"sequence"},{"endPoint":{"x":1140.0,"y":320.0},"id":"A83A9B9B","pointsList":[{"x":820.0,"y":440.0},{"x":920.0,"y":440.0},{"x":1140.0,"y":420.0},{"x":1140.0,"y":320.0}],"properties":{},"sourceNodeId":"60FBAFE4","startPoint":{"x":820.0,"y":440.0},"targetNodeId":"C7854DA0","type":"sequence"},{"endPoint":{"x":230.0,"y":120.0},"id":"43F4B4AE","pointsList":[{"x":150.0,"y":120.0},{"x":250.0,"y":120.0},{"x":130.0,"y":120.0},{"x":230.0,"y":120.0}],"properties":{},"sourceNodeId":"4D36965E","startPoint":{"x":150.0,"y":120.0},"targetNodeId":"F4A72BDD","type":"sequence"},{"endPoint":{"x":470.0,"y":120.0},"id":"1FFDC4C6","pointsList":[{"x":390.0,"y":120.0},{"x":490.0,"y":120.0},{"x":370.0,"y":120.0},{"x":470.0,"y":120.0}],"properties":{},"sourceNodeId":"F4A72BDD","startPoint":{"x":390.0,"y":120.0},"targetNodeId":"1EA83DDB","type":"sequence"},{"endPoint":{"x":1140.0,"y":260.0},"id":"AD3CA686","pointsList":[{"x":760.0,"y":280.0},{"x":860.0,"y":280.0},{"x":1140.0,"y":160.0},{"x":1140.0,"y":260.0}],"properties":{"condition":""},"sourceNodeId":"E9D44495","startPoint":{"x":760.0,"y":280.0},"targetNodeId":"C7854DA0","text":{"value":"病假","x":975.0,"y":245.0},"type":"sequence"}],"nodes":[{"id":"1EA83DDB","properties":{"active":1,"assign":[120,100],"invoke":"多少度","mode":4,"rate":3,"strategy":2},"text":{"value":"用户1审批","x":542.0,"y":135.0},"type":"userTask","x":550.0,"y":120.0},{"id":"E9D44495","properties":{},"text":{"value":"?","x":720.0,"y":280.0},"type":"condition","x":720.0,"y":280.0},{"id":"C7854DA0","properties":{},"text":{"value":"结束","x":1140.0,"y":290.0},"type":"end","x":1140.0,"y":290.0},{"id":"60FBAFE4","properties":{"active":1,"assign":[2],"mode":2,"strategy":1},"text":{"value":"用户2审批","x":738.0,"y":455.0},"type":"userTask","x":740.0,"y":440.0},{"id":"4D36965E","properties":{},"text":{"value":"开始","x":120.0,"y":120.0},"type":"start","x":120.0,"y":120.0},{"id":"F4A72BDD","properties":{"invoke":"颠三倒四"},"text":{"value":"执行某个方法","x":305.0,"y":135.0},"type":"serviceTask","x":310.0,"y":120.0}]}',
        '但是', '2022-04-07 15:59:43');
insert into WF_GRAPH (GRAPH_ID, PROCESS_ID, GRAPH_VERSION, GRAPH_DATA, GRAPH_TAG, ADD_DATE)
values (1351122191548416, 1502155677548658, 12,
        '{"edges":[{"endPoint":{"x":680.0,"y":280.0},"id":"854E2DC6","pointsList":[{"x":630.0,"y":120.0},{"x":730.0,"y":120.0},{"x":580.0,"y":280.0},{"x":680.0,"y":280.0}],"properties":{},"sourceNodeId":"1EA83DDB","startPoint":{"x":630.0,"y":120.0},"targetNodeId":"E9D44495","type":"sequence"},{"endPoint":{"x":740.0,"y":400.0},"id":"F03DE3BA","pointsList":[{"x":720.0,"y":310.0},{"x":720.0,"y":410.0},{"x":740.0,"y":300.0},{"x":740.0,"y":400.0}],"properties":{"condition":"${type} == 1"},"sourceNodeId":"E9D44495","startPoint":{"x":720.0,"y":310.0},"targetNodeId":"60FBAFE4","text":{"value":"事假","x":734.0,"y":353.0},"type":"sequence"},{"endPoint":{"x":1140.0,"y":320.0},"id":"A83A9B9B","pointsList":[{"x":820.0,"y":440.0},{"x":920.0,"y":440.0},{"x":1140.0,"y":420.0},{"x":1140.0,"y":320.0}],"properties":{},"sourceNodeId":"60FBAFE4","startPoint":{"x":820.0,"y":440.0},"targetNodeId":"C7854DA0","type":"sequence"},{"endPoint":{"x":230.0,"y":120.0},"id":"43F4B4AE","pointsList":[{"x":150.0,"y":120.0},{"x":250.0,"y":120.0},{"x":130.0,"y":120.0},{"x":230.0,"y":120.0}],"properties":{},"sourceNodeId":"4D36965E","startPoint":{"x":150.0,"y":120.0},"targetNodeId":"F4A72BDD","type":"sequence"},{"endPoint":{"x":470.0,"y":120.0},"id":"1FFDC4C6","pointsList":[{"x":390.0,"y":120.0},{"x":490.0,"y":120.0},{"x":370.0,"y":120.0},{"x":470.0,"y":120.0}],"properties":{},"sourceNodeId":"F4A72BDD","startPoint":{"x":390.0,"y":120.0},"targetNodeId":"1EA83DDB","type":"sequence"},{"endPoint":{"x":1140.0,"y":260.0},"id":"AD3CA686","pointsList":[{"x":760.0,"y":280.0},{"x":860.0,"y":280.0},{"x":1140.0,"y":160.0},{"x":1140.0,"y":260.0}],"properties":{"condition":"${type} == 1"},"sourceNodeId":"E9D44495","startPoint":{"x":760.0,"y":280.0},"targetNodeId":"C7854DA0","text":{"value":"病假","x":975.0,"y":245.0},"type":"sequence"}],"nodes":[{"id":"1EA83DDB","properties":{"active":1,"assign":[120,100],"invoke":"多少度","mode":4,"rate":3,"strategy":2},"text":{"value":"用户1审批","x":542.0,"y":135.0},"type":"userTask","x":550.0,"y":120.0},{"id":"E9D44495","properties":{},"text":{"value":"?","x":720.0,"y":280.0},"type":"condition","x":720.0,"y":280.0},{"id":"C7854DA0","properties":{},"text":{"value":"结束","x":1140.0,"y":290.0},"type":"end","x":1140.0,"y":290.0},{"id":"60FBAFE4","properties":{"active":1,"assign":[2],"mode":2,"strategy":1},"text":{"value":"用户2审批","x":738.0,"y":455.0},"type":"userTask","x":740.0,"y":440.0},{"id":"4D36965E","properties":{},"text":{"value":"开始","x":120.0,"y":120.0},"type":"start","x":120.0,"y":120.0},{"id":"F4A72BDD","properties":{"invoke":"颠三倒四"},"text":{"value":"执行某个方法","x":305.0,"y":135.0},"type":"serviceTask","x":310.0,"y":120.0}]}',
        '大', '2022-04-07 16:11:21');
insert into WF_GRAPH (GRAPH_ID, PROCESS_ID, GRAPH_VERSION, GRAPH_DATA, GRAPH_TAG, ADD_DATE)
values (1502211852826746, 1502136650939912, 1,
        '{"nodes":[{"id":"9472B97D","type":"start","x":200.0,"y":140.0,"text":{"value":"开始","x":200.0,"y":140.0,"editable":false,"draggable":false},"invoke":null,"status":null,"properties":{}},{"id":"851FA24B","type":"userTask","x":390.0,"y":140.0,"text":{"value":"辅导辅导的","x":385.0,"y":150.0,"editable":false,"draggable":false},"invoke":null,"status":null,"properties":{"active":1,"mode":1,"assign":[1,2],"range":1,"strategy":1}},{"id":"E492C53B","type":"serviceTask","x":630.0,"y":140.0,"text":null,"invoke":null,"status":null,"properties":{}},{"id":"B27AA5A0","type":"end","x":860.0,"y":140.0,"text":{"value":"结束","x":860.0,"y":140.0,"editable":false,"draggable":false},"invoke":null,"status":null,"properties":{}}],"edges":[{"id":"819AF641","type":"sequence","text":null,"condition":null,"sourceNodeId":"9472B97D","targetNodeId":"851FA24B","startPoint":{"x":230.0,"y":140.0},"endPoint":{"x":310.0,"y":140.0},"pointsList":[{"x":230.0,"y":140.0},{"x":330.0,"y":140.0},{"x":210.0,"y":140.0},{"x":310.0,"y":140.0}]},{"id":"E9A7AE10","type":"sequence","text":null,"condition":null,"sourceNodeId":"851FA24B","targetNodeId":"E492C53B","startPoint":{"x":470.0,"y":140.0},"endPoint":{"x":550.0,"y":140.0},"pointsList":[{"x":470.0,"y":140.0},{"x":570.0,"y":140.0},{"x":450.0,"y":140.0},{"x":550.0,"y":140.0}]},{"id":"F8D28969","type":"sequence","text":null,"condition":null,"sourceNodeId":"E492C53B","targetNodeId":"B27AA5A0","startPoint":{"x":710.0,"y":140.0},"endPoint":{"x":830.0,"y":140.0},"pointsList":[{"x":710.0,"y":140.0},{"x":810.0,"y":140.0},{"x":730.0,"y":140.0},{"x":830.0,"y":140.0}]}],"startIndex":null}',
        '辅导辅导辅导', '2022-03-11 17:16:30');
insert into WF_GRAPH (GRAPH_ID, PROCESS_ID, GRAPH_VERSION, GRAPH_DATA, GRAPH_TAG, ADD_DATE)
values (1502212099393101, 1502136650939912, 2,
        '{"nodes":[{"id":"F13EFFA2","type":"start","x":180.0,"y":170.0,"text":{"value":"开始","x":180.0,"y":170.0,"editable":false,"draggable":false},"invoke":null,"status":null,"properties":{}},{"id":"4E63178B","type":"end","x":610.0,"y":180.0,"text":{"value":"结束","x":610.0,"y":180.0,"editable":false,"draggable":false},"invoke":null,"status":null,"properties":{}}],"edges":[{"id":"5118B711","type":"sequence","text":null,"condition":null,"sourceNodeId":"F13EFFA2","targetNodeId":"4E63178B","startPoint":{"x":210.0,"y":170.0},"endPoint":{"x":610.0,"y":150.0},"pointsList":[{"x":210.0,"y":170.0},{"x":310.0,"y":170.0},{"x":610.0,"y":50.0},{"x":610.0,"y":150.0}]}],"startIndex":null}',
        '辅导辅导费', '2022-03-11 17:17:28');
insert into WF_GRAPH (GRAPH_ID, PROCESS_ID, GRAPH_VERSION, GRAPH_DATA, GRAPH_TAG, ADD_DATE)
values (1502216989586640, 1502155677548658, 1,
        '{"edges":[{"endPoint":{"x":610.0,"y":130.0},"id":"489AF85F","pointsList":[{"x":280.0,"y":120.0},{"x":380.0,"y":120.0},{"x":510.0,"y":130.0},{"x":610.0,"y":130.0}],"sourceNodeId":"9E685E8B","startPoint":{"x":280.0,"y":120.0},"targetNodeId":"84C9545C","type":"sequence"}],"nodes":[{"id":"9E685E8B","properties":{},"text":{"draggable":false,"editable":false,"value":"开始","x":250.0,"y":120.0},"type":"start","x":250.0,"y":120.0},{"id":"84C9545C","properties":{},"text":{"draggable":false,"editable":false,"value":"结束","x":640.0,"y":130.0},"type":"end","x":640.0,"y":130.0}]}',
        '冠福股份', '2022-03-11 17:36:54');
insert into WF_GRAPH (GRAPH_ID, PROCESS_ID, GRAPH_VERSION, GRAPH_DATA, GRAPH_TAG, ADD_DATE)
values (1502223878873575, 1502155677548658, 2,
        '{"edges":[{"endPoint":{"x":610.0,"y":130.0},"id":"489AF85F","pointsList":[{"x":280.0,"y":120.0},{"x":380.0,"y":120.0},{"x":510.0,"y":130.0},{"x":610.0,"y":130.0}],"sourceNodeId":"9E685E8B","startPoint":{"x":280.0,"y":120.0},"targetNodeId":"84C9545C","type":"sequence"},{"endPoint":{"x":290.0,"y":230.0},"id":"98C1E6EA","pointsList":[{"x":250.0,"y":150.0},{"x":250.0,"y":250.0},{"x":190.0,"y":230.0},{"x":290.0,"y":230.0}],"sourceNodeId":"9E685E8B","startPoint":{"x":250.0,"y":150.0},"targetNodeId":"E7AFA199","type":"sequence"},{"endPoint":{"x":640.0,"y":160.0},"id":"F8579810","pointsList":[{"x":450.0,"y":230.0},{"x":550.0,"y":230.0},{"x":640.0,"y":260.0},{"x":640.0,"y":160.0}],"sourceNodeId":"E7AFA199","startPoint":{"x":450.0,"y":230.0},"targetNodeId":"84C9545C","type":"sequence"}],"nodes":[{"id":"9E685E8B","properties":{},"text":{"value":"开始","x":250.0,"y":120.0},"type":"start","x":250.0,"y":120.0},{"id":"84C9545C","properties":{},"text":{"value":"结束","x":640.0,"y":130.0},"type":"end","x":640.0,"y":130.0},{"id":"E7AFA199","properties":{},"text":{"value":"反对法地方","x":369.0,"y":243.0},"type":"userTask","x":370.0,"y":230.0}]}',
        '的似的是的', '2022-03-11 18:04:17');
insert into WF_GRAPH (GRAPH_ID, PROCESS_ID, GRAPH_VERSION, GRAPH_DATA, GRAPH_TAG, ADD_DATE)
values (1502227463019589, 1502136650939912, 3,
        '{"edges":[{"endPoint":{"x":320.0,"y":170.0},"id":"9B937428","pointsList":[{"x":210.0,"y":170.0},{"x":310.0,"y":170.0},{"x":220.0,"y":170.0},{"x":320.0,"y":170.0}],"sourceNodeId":"F13EFFA2","startPoint":{"x":210.0,"y":170.0},"targetNodeId":"0C5A475F","type":"sequence"},{"endPoint":{"x":660.0,"y":170.0},"id":"D213CD75","pointsList":[{"x":480.0,"y":170.0},{"x":580.0,"y":170.0},{"x":560.0,"y":170.0},{"x":660.0,"y":170.0}],"sourceNodeId":"0C5A475F","startPoint":{"x":480.0,"y":170.0},"targetNodeId":"8BD399E4","type":"sequence"},{"endPoint":{"x":970.0,"y":170.0},"id":"3D9987A8","pointsList":[{"x":740.0,"y":170.0},{"x":840.0,"y":170.0},{"x":870.0,"y":170.0},{"x":970.0,"y":170.0}],"sourceNodeId":"8BD399E4","startPoint":{"x":740.0,"y":170.0},"targetNodeId":"4E63178B","type":"sequence"},{"endPoint":{"x":700.0,"y":270.0},"id":"A39E8F53","pointsList":[{"x":700.0,"y":200.0},{"x":700.0,"y":300.0},{"x":700.0,"y":170.0},{"x":700.0,"y":270.0}],"sourceNodeId":"8BD399E4","startPoint":{"x":700.0,"y":200.0},"targetNodeId":"9603D5A3","type":"sequence"},{"endPoint":{"x":700.0,"y":470.0},"id":"E80AD4B6","pointsList":[{"x":700.0,"y":350.0},{"x":700.0,"y":450.0},{"x":700.0,"y":370.0},{"x":700.0,"y":470.0}],"sourceNodeId":"9603D5A3","startPoint":{"x":700.0,"y":350.0},"targetNodeId":"38AB5A23","type":"sequence"},{"endPoint":{"x":1000.0,"y":200.0},"id":"CDC43E56","pointsList":[{"x":780.0,"y":510.0},{"x":880.0,"y":510.0},{"x":1000.0,"y":300.0},{"x":1000.0,"y":200.0}],"sourceNodeId":"38AB5A23","startPoint":{"x":780.0,"y":510.0},"targetNodeId":"4E63178B","type":"sequence"}],"nodes":[{"id":"F13EFFA2","properties":{},"text":{"value":"开始","x":180.0,"y":170.0},"type":"start","x":180.0,"y":170.0},{"id":"4E63178B","properties":{},"text":{"value":"结束","x":1000.0,"y":170.0},"type":"end","x":1000.0,"y":170.0},{"id":"0C5A475F","properties":{"active":1,"mode":1,"assign":[1,2],"range":1,"strategy":1},"text":{"value":"111","x":395.0,"y":180.0},"type":"userTask","x":400.0,"y":170.0},{"id":"8BD399E4","properties":{},"text":{"value":"?","x":700.0,"y":170.0},"type":"condition","x":700.0,"y":170.0},{"id":"9603D5A3","properties":{},"text":{"value":"222","x":693.0,"y":326.0},"type":"serviceTask","x":700.0,"y":310.0},{"id":"38AB5A23","properties":{},"text":{"value":"3333","x":692.0,"y":523.0},"type":"userTask","x":700.0,"y":510.0}]}',
        '是多少', '2022-03-11 18:18:31');
insert into WF_GRAPH (GRAPH_ID, PROCESS_ID, GRAPH_VERSION, GRAPH_DATA, GRAPH_TAG, ADD_DATE)
values (1350626272354304, 1502155677548658, 6,
        '{"edges":[{"endPoint":{"x":680.0,"y":280.0},"id":"854E2DC6","pointsList":[{"x":630.0,"y":120.0},{"x":730.0,"y":120.0},{"x":580.0,"y":280.0},{"x":680.0,"y":280.0}],"properties":{},"sourceNodeId":"1EA83DDB","startPoint":{"x":630.0,"y":120.0},"targetNodeId":"E9D44495","type":"sequence"},{"endPoint":{"x":740.0,"y":400.0},"id":"F03DE3BA","pointsList":[{"x":720.0,"y":310.0},{"x":720.0,"y":410.0},{"x":740.0,"y":300.0},{"x":740.0,"y":400.0}],"properties":{"condition":"${type} == 1"},"sourceNodeId":"E9D44495","startPoint":{"x":720.0,"y":310.0},"targetNodeId":"60FBAFE4","text":{"value":"事假","x":734.0,"y":353.0},"type":"sequence"},{"endPoint":{"x":1140.0,"y":320.0},"id":"A83A9B9B","pointsList":[{"x":820.0,"y":440.0},{"x":920.0,"y":440.0},{"x":1140.0,"y":420.0},{"x":1140.0,"y":320.0}],"properties":{},"sourceNodeId":"60FBAFE4","startPoint":{"x":820.0,"y":440.0},"targetNodeId":"C7854DA0","type":"sequence"},{"endPoint":{"x":1050.0,"y":140.0},"id":"EC401656","pointsList":[{"x":720.0,"y":250.0},{"x":720.0,"y":150.0},{"x":950.0,"y":140.0},{"x":1050.0,"y":140.0}],"properties":{"condition":"${type} == 2"},"sourceNodeId":"E9D44495","startPoint":{"x":720.0,"y":250.0},"targetNodeId":"9F2DC992","text":{"value":"病假","x":846.0,"y":163.0},"type":"sequence"},{"endPoint":{"x":230.0,"y":120.0},"id":"43F4B4AE","pointsList":[{"x":150.0,"y":120.0},{"x":250.0,"y":120.0},{"x":130.0,"y":120.0},{"x":230.0,"y":120.0}],"properties":{},"sourceNodeId":"4D36965E","startPoint":{"x":150.0,"y":120.0},"targetNodeId":"F4A72BDD","type":"sequence"},{"endPoint":{"x":470.0,"y":120.0},"id":"1FFDC4C6","pointsList":[{"x":390.0,"y":120.0},{"x":490.0,"y":120.0},{"x":370.0,"y":120.0},{"x":470.0,"y":120.0}],"properties":{},"sourceNodeId":"F4A72BDD","startPoint":{"x":390.0,"y":120.0},"targetNodeId":"1EA83DDB","type":"sequence"}],"nodes":[{"id":"1EA83DDB","properties":{"active":1,"assign":[2],"mode":1,"strategy":1},"text":{"value":"用户1审批","x":542.0,"y":134.0},"type":"userTask","x":550.0,"y":120.0},{"id":"E9D44495","properties":{},"text":{"value":"?","x":720.0,"y":280.0},"type":"condition","x":720.0,"y":280.0},{"id":"C7854DA0","properties":{},"text":{"value":"结束","x":1140.0,"y":290.0},"type":"end","x":1140.0,"y":290.0},{"id":"60FBAFE4","properties":{"active":1,"assign":[2],"mode":2,"strategy":1},"text":{"value":"用户2审批","x":738.0,"y":454.0},"type":"userTask","x":740.0,"y":440.0},{"id":"9F2DC992","properties":{},"text":{"value":"结束","x":1080.0,"y":140.0},"type":"end","x":1080.0,"y":140.0},{"id":"4D36965E","properties":{},"text":{"value":"开始","x":120.0,"y":120.0},"type":"start","x":120.0,"y":120.0},{"id":"F4A72BDD","properties":{"invoke":"com.ruoyi.project.wf.test.TestServiceHandler"},"text":{"value":"执行某个方法","x":305.0,"y":132.0},"type":"serviceTask","x":310.0,"y":120.0}]}',
        '修改了条件', '2022-03-31 16:01:51');
insert into WF_GRAPH (GRAPH_ID, PROCESS_ID, GRAPH_VERSION, GRAPH_DATA, GRAPH_TAG, ADD_DATE)
values (1351121034625024, 1502155677548658, 9,
        '{"edges":[{"endPoint":{"x":680.0,"y":280.0},"id":"854E2DC6","pointsList":[{"x":630.0,"y":120.0},{"x":730.0,"y":120.0},{"x":580.0,"y":280.0},{"x":680.0,"y":280.0}],"properties":{},"sourceNodeId":"1EA83DDB","startPoint":{"x":630.0,"y":120.0},"targetNodeId":"E9D44495","type":"sequence"},{"endPoint":{"x":740.0,"y":400.0},"id":"F03DE3BA","pointsList":[{"x":720.0,"y":310.0},{"x":720.0,"y":410.0},{"x":740.0,"y":300.0},{"x":740.0,"y":400.0}],"properties":{"condition":"${type} == 1"},"sourceNodeId":"E9D44495","startPoint":{"x":720.0,"y":310.0},"targetNodeId":"60FBAFE4","text":{"value":"事假","x":734.0,"y":353.0},"type":"sequence"},{"endPoint":{"x":1140.0,"y":320.0},"id":"A83A9B9B","pointsList":[{"x":820.0,"y":440.0},{"x":920.0,"y":440.0},{"x":1140.0,"y":420.0},{"x":1140.0,"y":320.0}],"properties":{},"sourceNodeId":"60FBAFE4","startPoint":{"x":820.0,"y":440.0},"targetNodeId":"C7854DA0","type":"sequence"},{"endPoint":{"x":230.0,"y":120.0},"id":"43F4B4AE","pointsList":[{"x":150.0,"y":120.0},{"x":250.0,"y":120.0},{"x":130.0,"y":120.0},{"x":230.0,"y":120.0}],"properties":{},"sourceNodeId":"4D36965E","startPoint":{"x":150.0,"y":120.0},"targetNodeId":"F4A72BDD","type":"sequence"},{"endPoint":{"x":470.0,"y":120.0},"id":"1FFDC4C6","pointsList":[{"x":390.0,"y":120.0},{"x":490.0,"y":120.0},{"x":370.0,"y":120.0},{"x":470.0,"y":120.0}],"properties":{},"sourceNodeId":"F4A72BDD","startPoint":{"x":390.0,"y":120.0},"targetNodeId":"1EA83DDB","type":"sequence"},{"endPoint":{"x":1140.0,"y":260.0},"id":"AD3CA686","pointsList":[{"x":760.0,"y":280.0},{"x":860.0,"y":280.0},{"x":1140.0,"y":160.0},{"x":1140.0,"y":260.0}],"properties":{"condition":""},"sourceNodeId":"E9D44495","startPoint":{"x":760.0,"y":280.0},"targetNodeId":"C7854DA0","text":{"value":"病假","x":975.0,"y":245.0},"type":"sequence"}],"nodes":[{"id":"1EA83DDB","properties":{"active":1,"assign":[120,100],"mode":1,"strategy":1},"text":{"value":"用户1审批","x":542.0,"y":135.0},"type":"userTask","x":550.0,"y":120.0},{"id":"E9D44495","properties":{},"text":{"value":"?","x":720.0,"y":280.0},"type":"condition","x":720.0,"y":280.0},{"id":"C7854DA0","properties":{},"text":{"value":"结束","x":1140.0,"y":290.0},"type":"end","x":1140.0,"y":290.0},{"id":"60FBAFE4","properties":{"active":1,"assign":[2],"mode":2,"strategy":1},"text":{"value":"用户2审批","x":738.0,"y":455.0},"type":"userTask","x":740.0,"y":440.0},{"id":"4D36965E","properties":{},"text":{"value":"开始","x":120.0,"y":120.0},"type":"start","x":120.0,"y":120.0},{"id":"F4A72BDD","properties":{"invoke":"com.ruoyi.project.wf.test.TestServiceHandler"},"text":{"value":"执行某个方法","x":305.0,"y":135.0},"type":"serviceTask","x":310.0,"y":120.0}]}',
        '颠三倒四多', '2022-04-07 15:47:49');

insert into WF_PROCESS (PROCESS_ID, PROCESS_NAME, PROCESS_CODE, PROCESS_DES, GRAPH_VERSION, PROCESS_ENABLE,
                        FORM_PATH, FORM_DATA, PROCESS_COVER, ADD_DATE, UPDATE_DATE)
values (1502155677548658, '请假申请', 'ask_leave', '实训中心cc', 13, 0, '@/views/wf/child/index.vue', '{
  "reason": null,
  "timerange": null,
  "name": null,
  "type": 1
}', '/profile/upload/2022/03/17/858f96ae-ee5b-4624-b027-beabe17f4135.jpg', null, '2022-04-07 16:11:28');

insert into WF_RECORD (CASE_ID, TASK_ID, USER_NAME, ADD_DATE, RECORD_CONTENT, RECORD_RESULT, RECORD_ID, NODE_NAME)
values (1352312416616448, null, 'admin', '2022-04-24 11:46:40', null, 0, 1352312422981632, '开始');
insert into WF_RECORD (CASE_ID, TASK_ID, USER_NAME, ADD_DATE, RECORD_CONTENT, RECORD_RESULT, RECORD_ID, NODE_NAME)
values (1352312416616448, 1352312423030784, 'ry', '2022-04-24 11:48:05', null, 1, 1352312492752896, '用户1审批');

insert into WF_TASK (USER_ID, NODE_ID, TASK_STATUS, CASE_ID, TASK_ID, ADD_DATE, END_DATE, PROCESS_ID, TASK_RESULT,
                     GRAPH_VERSION, TASK_CONTENT, NODE_NAME)
values (2, '60FBAFE4', 0, 1352312416616448, 1352312492851200, '2022-04-24 11:48:06', null, 1502155677548658, null, 13,
        null, '用户2审批');
insert into WF_TASK (USER_ID, NODE_ID, TASK_STATUS, CASE_ID, TASK_ID, ADD_DATE, END_DATE, PROCESS_ID, TASK_RESULT,
                     GRAPH_VERSION, TASK_CONTENT, NODE_NAME)
values (2, '1EA83DDB', 1, 1352312416616448, 1352312423030784, '2022-04-24 11:46:40', '2022-04-24 11:48:05',
        1502155677548658, 1, 13, null, '用户1审批');
insert into WF_TASK (USER_ID, NODE_ID, TASK_STATUS, CASE_ID, TASK_ID, ADD_DATE, END_DATE, PROCESS_ID, TASK_RESULT,
                     GRAPH_VERSION, TASK_CONTENT, NODE_NAME)
values (100, '60FBAFE4', 0, 1352312416616448, 1352312492941312, '2022-04-24 11:48:06', null, 1502155677548658, null, 13,
        null, '用户2审批');
insert into WF_TASK (USER_ID, NODE_ID, TASK_STATUS, CASE_ID, TASK_ID, ADD_DATE, END_DATE, PROCESS_ID, TASK_RESULT,
                     GRAPH_VERSION, TASK_CONTENT, NODE_NAME)
values (120, '60FBAFE4', 0, 1352312416616448, 1352312493031424, '2022-04-24 11:48:06', null, 1502155677548658, null, 13,
        null, '用户2审批');

insert into QRTZ_CRON_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, CRON_EXPRESSION, TIME_ZONE_ID)
values ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');
insert into QRTZ_CRON_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, CRON_EXPRESSION, TIME_ZONE_ID)
values ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
insert into QRTZ_CRON_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, CRON_EXPRESSION, TIME_ZONE_ID)
values ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');

insert into QRTZ_JOB_DETAILS (SCHED_NAME, JOB_NAME, JOB_GROUP, DESCRIPTION, JOB_CLASS_NAME, IS_DURABLE,
                              IS_NONCONCURRENT, IS_UPDATE_DATA, REQUESTS_RECOVERY, JOB_DATA)
values ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', null,
        'com.ruoyi.common.utils.job.QuartzDisallowConcurrentExecution', '0', '1', '0', '0',
        'ACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720027636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017E481EFF107870707070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800');
insert into QRTZ_JOB_DETAILS (SCHED_NAME, JOB_NAME, JOB_GROUP, DESCRIPTION, JOB_CLASS_NAME, IS_DURABLE,
                              IS_NONCONCURRENT, IS_UPDATE_DATA, REQUESTS_RECOVERY, JOB_DATA)
values ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', null,
        'com.ruoyi.common.utils.job.QuartzDisallowConcurrentExecution', '0', '1', '0', '0',
        'ACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720027636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017E481EFF107870707070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800');
insert into QRTZ_JOB_DETAILS (SCHED_NAME, JOB_NAME, JOB_GROUP, DESCRIPTION, JOB_CLASS_NAME, IS_DURABLE,
                              IS_NONCONCURRENT, IS_UPDATE_DATA, REQUESTS_RECOVERY, JOB_DATA)
values ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', null,
        'com.ruoyi.common.utils.job.QuartzDisallowConcurrentExecution', '0', '1', '0', '0',
        'ACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720027636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017E481EFF107870707070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800');

insert into QRTZ_LOCKS (SCHED_NAME, LOCK_NAME)
values ('RuoyiScheduler', 'STATE_ACCESS');
insert into QRTZ_LOCKS (SCHED_NAME, LOCK_NAME)
values ('RuoyiScheduler', 'TRIGGER_ACCESS');

insert into QRTZ_SCHEDULER_STATE (SCHED_NAME, INSTANCE_NAME, LAST_CHECKIN_TIME, CHECKIN_INTERVAL)
values ('RuoyiScheduler', 'DESKTOP-G3LCNPL1650790434419', 1650799901737, 15000);

insert into QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP, DESCRIPTION, NEXT_FIRE_TIME,
                           PREV_FIRE_TIME, PRIORITY, TRIGGER_STATE, TRIGGER_TYPE, START_TIME, END_TIME, CALENDAR_NAME,
                           MISFIRE_INSTR, JOB_DATA)
values ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', null, 1650790440000, -1, 5,
        'PAUSED', 'CRON', 1650790435000, 0, null, 2, null);
insert into QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP, DESCRIPTION, NEXT_FIRE_TIME,
                           PREV_FIRE_TIME, PRIORITY, TRIGGER_STATE, TRIGGER_TYPE, START_TIME, END_TIME, CALENDAR_NAME,
                           MISFIRE_INSTR, JOB_DATA)
values ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', null, 1650790440000, -1, 5,
        'PAUSED', 'CRON', 1650790436000, 0, null, 2, null);
insert into QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, JOB_NAME, JOB_GROUP, DESCRIPTION, NEXT_FIRE_TIME,
                           PREV_FIRE_TIME, PRIORITY, TRIGGER_STATE, TRIGGER_TYPE, START_TIME, END_TIME, CALENDAR_NAME,
                           MISFIRE_INSTR, JOB_DATA)
values ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', null, 1650790440000, -1, 5,
        'PAUSED', 'CRON', 1650790437000, 0, null, 2, null);




