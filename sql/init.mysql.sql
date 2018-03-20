/*
Navicat Oracle Data Transfer
Oracle Client Version : 12.2.0.1.0

Source Server         : 192.168.100.220
Source Server Version : 110200
Source Host           : 192.168.100.220:1521
Source Schema         : CMHI_PORTAL

Target Server type    : MYSQL
Target Server Version : 50199
File Encoding         : 65001

Date: 2018-03-20 13:53:27
*/

use febs2;

set FOREIGN_key_CHECKS=0;
-- ----------------------------
-- Table structure for ortz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `ortz_blob_triggers`;
CREATE TABLE `ortz_blob_triggers` (
`sched_name`  varchar(120) NOT NULL ,
`trigger_name`  varchar(200) NOT NULL ,
`trigger_group`  varchar(200) NOT NULL ,
`blob_data`  longblob NULL ,
PRIMARY key (`sched_name`, `trigger_name`, `trigger_group`),
FOREIGN key (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
)
type=InnoDB
;

-- ----------------------------
-- Records of ortz_blob_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
`sched_name`  varchar(120) NOT NULL ,
`calendar_name`  varchar(200) NOT NULL ,
`calendar`  longblob NOT NULL ,
PRIMARY key (`sched_name`, `calendar_name`)
)
type=InnoDB
;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
`sched_name`  varchar(120) NOT NULL ,
`trigger_name`  varchar(200) NOT NULL ,
`trigger_group`  varchar(200) NOT NULL ,
`cron_expression`  varchar(120) NOT NULL ,
`time_zone_id`  varchar(80) NULL ,
PRIMARY key (`sched_name`, `trigger_name`, `trigger_group`),
FOREIGN key (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
)
type=InnoDB
;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
BEGIN;
INSERT INTO `qrtz_cron_triggers` values ('MyScheduler', 'TASK_3', 'DEFAULT', '0/1 * * * * ?', 'Asia/Shanghai'), ('MyScheduler', 'TASK_11', 'DEFAULT', '0/5 * * * * ?', 'Asia/Shanghai'), ('MyScheduler', 'TASK_1', 'DEFAULT', '0/1 * * * * ?', 'Asia/Shanghai'), ('MyScheduler', 'TASK_2', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
COMMIT;

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
`sched_name`  varchar(120) NOT NULL ,
`entry_id`  varchar(95) NOT NULL ,
`trigger_name`  varchar(200) NOT NULL ,
`trigger_group`  varchar(200) NOT NULL ,
`instance_name`  varchar(200) NOT NULL ,
`fired_time`  decimal(13,0) NOT NULL ,
`sched_time`  decimal(13,0) NOT NULL ,
`priority`  decimal(13,0) NOT NULL ,
`state`  varchar(16) NOT NULL ,
`job_name`  varchar(200) NULL ,
`job_group`  varchar(200) NULL ,
`is_nonconcurrent`  varchar(1) NULL ,
`requests_recovery`  varchar(1) NULL ,
PRIMARY key (`sched_name`, `entry_id`)
)
type=InnoDB
;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
`sched_name`  varchar(120) NOT NULL ,
`job_name`  varchar(200) NOT NULL ,
`job_group`  varchar(200) NOT NULL ,
`description`  varchar(250) NULL ,
`JOB_CLASS_name`  varchar(250) NOT NULL ,
`IS_DURABLE`  varchar(1) NOT NULL ,
`is_nonconcurrent`  varchar(1) NOT NULL ,
`IS_UPDATE_DATA`  varchar(1) NOT NULL ,
`requests_recovery`  varchar(1) NOT NULL ,
`job_data`  longblob NULL ,
PRIMARY key (`sched_name`, `job_name`, `job_group`)
)
type=InnoDB
;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
BEGIN;
INSERT INTO `qrtz_job_details` 
values ('MyScheduler', 'TASK_3', 'DEFAULT', null, 'cc.mrbird.job.util.ScheduleJob', '0', '0', '0', '0', "job_data"), 
('MyScheduler', 'TASK_1', 'DEFAULT', null, 'cc.mrbird.job.util.ScheduleJob', '0', '0', '0', '0', "job_data"), 
('MyScheduler', 'TASK_2', 'DEFAULT', null, 'cc.mrbird.job.util.ScheduleJob', '0', '0', '0', '0', "job_data"), 
('MyScheduler', 'TASK_11', 'DEFAULT', null, 'cc.mrbird.job.util.ScheduleJob', '0', '0', '0', '0', "job_data");
COMMIT;

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
`sched_name`  varchar(120) NOT NULL ,
`lock_name`  varchar(40) NOT NULL ,
PRIMARY key (`sched_name`, `lock_name`)
)
type=InnoDB
;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
BEGIN;
INSERT INTO `qrtz_locks` values ('MyScheduler', 'state_ACCESS'), ('MyScheduler', 'TRIGGER_ACCESS');
COMMIT;

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
`sched_name`  varchar(120) NOT NULL ,
`trigger_group`  varchar(200) NOT NULL ,
PRIMARY key (`sched_name`, `trigger_group`)
)
type=InnoDB
;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
`sched_name`  varchar(120) NOT NULL ,
`instance_name`  varchar(200) NOT NULL ,
`last_checkin_time`  decimal(13,0) NOT NULL ,
`checkin_interval`  decimal(13,0) NOT NULL ,
PRIMARY key (`sched_name`, `instance_name`)
)
type=InnoDB
;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
BEGIN;
INSERT INTO `qrtz_scheduler_state` values ('MyScheduler', 'SC-2018020120491521424676624', '1521441319044', '15000');
COMMIT;

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
`sched_name`  varchar(120) NOT NULL ,
`trigger_name`  varchar(200) NOT NULL ,
`trigger_group`  varchar(200) NOT NULL ,
`repeat_count`  decimal(7,0) NOT NULL ,
`repeat_interval`  decimal(12,0) NOT NULL ,
`times_triggered`  decimal(10,0) NOT NULL ,
PRIMARY key (`sched_name`, `trigger_name`, `trigger_group`),
FOREIGN key (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
)
type=InnoDB
;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
`sched_name`  varchar(120) NOT NULL ,
`trigger_name`  varchar(200) NOT NULL ,
`trigger_group`  varchar(200) NOT NULL ,
`str_prop_1`  text NULL ,
`str_prop_2`  text NULL ,
`str_prop_3`  text NULL ,
`int_prop_1`  decimal(10,0) NULL ,
`int_prop_2`  decimal(10,0) NULL ,
`long_prop_1`  decimal(13,0) NULL ,
`long_prop_2`  decimal(13,0) NULL ,
`DEC_PROP_1`  decimal(13,4) NULL ,
`dec_prop_2`  decimal(13,4) NULL ,
`bool_prop_1`  varchar(1) NULL ,
`bool_prop_2`  varchar(1) NULL ,
PRIMARY key (`sched_name`, `trigger_name`, `trigger_group`),
FOREIGN key (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
)
type=InnoDB
;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
`sched_name`  varchar(120) NOT NULL ,
`trigger_name`  varchar(200) NOT NULL ,
`trigger_group`  varchar(200) NOT NULL ,
`job_name`  varchar(200) NOT NULL ,
`job_group`  varchar(200) NOT NULL ,
`description`  varchar(250) NULL ,
`next_fire_time`  decimal(13,0) NULL ,
`prev_fire_time`  decimal(13,0) NULL ,
`priority`  decimal(13,0) NULL ,
`trigger_state`  varchar(16) NOT NULL ,
`trigger_type`  varchar(8) NOT NULL ,
`start_time`  decimal(13,0) NOT NULL ,
`end_time`  decimal(13,0) NULL ,
`calendar_name`  varchar(200) NULL ,
`misfire_instr`  decimal(2,0) NULL ,
`job_data`  longblob NULL ,
PRIMARY key (`sched_name`, `trigger_name`, `trigger_group`),
FOREIGN key (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
)
type=InnoDB
;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
BEGIN;
INSERT INTO `qrtz_triggers` 
values ('MyScheduler', 'TASK_3', 'DEFAULT', 'TASK_3', 'DEFAULT', null, '1521425274000', '1521425273000', '5', 'PAUSED', 'CRON', '1519608506000', '0', null, '2', "job_data"),
 ('MyScheduler', 'TASK_11', 'DEFAULT', 'TASK_11', 'DEFAULT', null, '1519614930000', '-1', '5', 'PAUSED', 'CRON', '1519614930000', '0', null, '2', "job_data"), ('MyScheduler', 'TASK_1', 'DEFAULT', 'TASK_1', 'DEFAULT', null, '1521425308000', '1521425307000', '5', 'PAUSED', 'CRON', '1519460774000', '0', null, '2', "job_data"), ('MyScheduler', 'TASK_2', 'DEFAULT', 'TASK_2', 'DEFAULT', null, '1519463190000', '-1', '5', 'PAUSED', 'CRON', '1519463183000', '0', null, '2', "job_data");
COMMIT;

-- ----------------------------
-- Table structure for t_dept
-- ----------------------------
DROP TABLE IF EXISTS `t_dept`;
CREATE TABLE `t_dept` (
`dept_id`  decimal(65,30) NOT NULL ,
`parent_id`  decimal(65,30) NOT NULL ,
`dept_name`  varchar(100) NOT NULL ,
`order_num`  decimal(65,30) NULL ,
`create_time`  datetime NULL ,
PRIMARY key (`dept_id`)
)
type=InnoDB
;

-- ----------------------------
-- Records of t_dept
-- ----------------------------
BEGIN;
INSERT INTO `t_dept` values ('1', '0', '开发部', null, DATE('2018-01-04 15:42:26')), ('3', '1', '开发二部', null, DATE('2018-01-04 15:42:29')), ('5', '0', '人事部', null, DATE('2018-01-04 15:42:32')), ('2', '1', '开发一部', null, DATE('2018-01-04 15:42:34')), ('4', '0', '市场部', null, DATE('2018-01-04 15:42:36')), ('6', '0', '测试部', null, DATE('2018-01-04 15:42:38'));
COMMIT;

-- ----------------------------
-- Table structure for t_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE `t_dict` (
`dict_id`  decimal(65,30) NOT NULL ,
`ikey`  decimal(65,30) NOT NULL ,
`value`  varchar(100) NOT NULL ,
`field_name`  varchar(100) NOT NULL ,
`table_name`  varchar(100) NOT NULL ,
PRIMARY key (`dict_id`)
)
type=InnoDB
;

-- ----------------------------
-- Records of t_dict
-- ----------------------------
BEGIN;
INSERT INTO `t_dict` values ('2', '1', '女', 'ssex', 't_user'), ('6', '0', '菜单', 'type', 't_menu'), ('3', '2', '保密', 'ssex', 't_user'), ('4', '1', '有效', 'status', 't_user'), ('5', '0', '锁定', 'status', 't_user'), ('1', '0', '男', 'ssex', 't_user'), ('7', '1', '按钮', 'type', 't_menu'), ('30', '0', '正常', 'status', 't_job'), ('31', '1', '暂停', 'status', 't_job'), ('32', '0', '成功', 'status', 't_job_log'), ('33', '1', '失败', 'status', 't_job_log');
COMMIT;

-- ----------------------------
-- Table structure for t_job
-- ----------------------------
DROP TABLE IF EXISTS `t_job`;
CREATE TABLE `t_job` (
`job_id`  decimal(65,30) NOT NULL COMMENT '任务id' ,
`bean_name`  varchar(100) NOT NULL COMMENT 'spring bean名称' ,
`method_name`  varchar(100) NOT NULL COMMENT '方法名' ,
`params`  varchar(200) NULL COMMENT '参数' ,
`cron_expression`  varchar(100) NOT NULL COMMENT 'cron表达式' ,
`status`  char(2) NOT NULL COMMENT '任务状态  0：正常  1：暂停' ,
`remark`  varchar(200) NULL COMMENT '备注' ,
`create_time`  datetime NULL COMMENT '创建时间' ,
PRIMARY key (`job_id`)
)
type=InnoDB
;

-- ----------------------------
-- Records of t_job
-- ----------------------------
BEGIN;
INSERT INTO `t_job` values ('3', 'testTask', 'test', 'hello world', '0/1 * * * * ?', '1 ', '有参任务调度测试,每隔一秒触发', DATE('2018-02-26 09:28:26')), ('1', 'testTask', 'test', 'mrbird', '0/1 * * * * ?', '1 ', '有参任务调度测试', DATE('2018-02-24 16:26:14')), ('2', 'testTask', 'test1', null, '0/10 * * * * ?', '1 ', '无参任务调度测试', DATE('2018-02-24 17:06:23')), ('11', 'testTask', 'test2', null, '0/5 * * * * ?', '1 ', '测试异常', DATE('2018-02-26 11:15:30'));
COMMIT;

-- ----------------------------
-- Table structure for t_job_log
-- ----------------------------
DROP TABLE IF EXISTS `t_job_log`;
CREATE TABLE `t_job_log` (
`log_id`  decimal(65,30) NOT NULL COMMENT '任务日志id' ,
`job_id`  decimal(65,30) NOT NULL COMMENT '任务id' ,
`bean_name`  varchar(100) NOT NULL COMMENT 'spring bean名称' ,
`method_name`  varchar(100) NOT NULL COMMENT '方法名' ,
`params`  varchar(200) NULL COMMENT '参数' ,
`status`  char(2) NOT NULL COMMENT '任务状态    0：成功    1：失败' ,
`error`  text NULL COMMENT '失败信息' ,
`times`  decimal(11,0) NULL COMMENT '耗时(单位：毫秒)' ,
`create_time`  datetime NULL COMMENT '创建时间' ,
PRIMARY key (`log_id`)
)
type=InnoDB
;

-- ----------------------------
-- Records of t_job_log
-- ----------------------------
BEGIN;
INSERT INTO `t_job_log` values ('2430', '1', 'testTask', 'test', 'mrbird', '0 ', null, '1', DATE('2018-03-19 10:08:22')), ('2432', '1', 'testTask', 'test', 'mrbird', '0 ', null, '1', DATE('2018-03-19 10:08:24')), ('2412', '1', 'testTask', 'test', 'mrbird', '0 ', null, '1', DATE('2018-03-19 10:08:05')), ('2413', '1', 'testTask', 'test', 'mrbird', '0 ', null, '10', DATE('2018-03-19 10:08:05')), ('2415', '1', 'testTask', 'test', 'mrbird', '0 ', null, '1', DATE('2018-03-19 10:08:07')), ('2417', '1', 'testTask', 'test', 'mrbird', '0 ', null, '1', DATE('2018-03-19 10:08:09')), ('2419', '1', 'testTask', 'test', 'mrbird', '0 ', null, '3', DATE('2018-03-19 10:08:11')), ('2421', '1', 'testTask', 'test', 'mrbird', '0 ', null, '1', DATE('2018-03-19 10:08:13')), ('2423', '1', 'testTask', 'test', 'mrbird', '0 ', null, '1', DATE('2018-03-19 10:08:15')), ('2425', '1', 'testTask', 'test', 'mrbird', '0 ', null, '2', DATE('2018-03-19 10:08:17')), ('2427', '1', 'testTask', 'test', 'mrbird', '0 ', null, '1', DATE('2018-03-19 10:08:19')), ('2428', '1', 'testTask', 'test', 'mrbird', '0 ', null, '10', DATE('2018-03-19 10:08:20')), ('2434', '1', 'testTask', 'test', 'mrbird', '0 ', null, '1', DATE('2018-03-19 10:08:26')), ('2436', '11', 'testTask', 'test2', null, '1 ', 'java.lang.NoSuchmethodException: cc.mrbird.job.task.TestTask.test2()', '3', DATE('2018-03-19 10:08:34')), ('2394', '3', 'testTask', 'test', 'hello world', '0 ', null, '1', DATE('2018-03-19 10:07:38')), ('2395', '3', 'testTask', 'test', 'hello world', '0 ', null, '1', DATE('2018-03-19 10:07:39')), ('2396', '3', 'testTask', 'test', 'hello world', '0 ', null, '2', DATE('2018-03-19 10:07:40')), ('2398', '3', 'testTask', 'test', 'hello world', '0 ', null, '1', DATE('2018-03-19 10:07:42')), ('2401', '3', 'testTask', 'test', 'hello world', '0 ', null, '0', DATE('2018-03-19 10:07:45')), ('2403', '3', 'testTask', 'test', 'hello world', '0 ', null, '6', DATE('2018-03-19 10:07:47')), ('2405', '3', 'testTask', 'test', 'hello world', '0 ', null, '0', DATE('2018-03-19 10:07:49')), ('2409', '3', 'testTask', 'test', 'hello world', '0 ', null, '1', DATE('2018-03-19 10:07:53')), ('2392', '3', 'testTask', 'test', 'hello world', '0 ', null, '29', DATE('2018-03-19 10:07:36')), ('2406', '3', 'testTask', 'test', 'hello world', '0 ', null, '0', DATE('2018-03-19 10:07:50')), ('2393', '3', 'testTask', 'test', 'hello world', '0 ', null, '1', DATE('2018-03-19 10:07:37')), ('2397', '3', 'testTask', 'test', 'hello world', '0 ', null, '1', DATE('2018-03-19 10:07:41')), ('2399', '3', 'testTask', 'test', 'hello world', '0 ', null, '1', DATE('2018-03-19 10:07:43')), ('2400', '3', 'testTask', 'test', 'hello world', '0 ', null, '1', DATE('2018-03-19 10:07:44')), ('2402', '3', 'testTask', 'test', 'hello world', '0 ', null, '1', DATE('2018-03-19 10:07:46')), ('2404', '3', 'testTask', 'test', 'hello world', '0 ', null, '1', DATE('2018-03-19 10:07:48')), ('2407', '3', 'testTask', 'test', 'hello world', '0 ', null, '1', DATE('2018-03-19 10:07:51')), ('2408', '3', 'testTask', 'test', 'hello world', '0 ', null, '1', DATE('2018-03-19 10:07:52')), ('2414', '1', 'testTask', 'test', 'mrbird', '0 ', null, '2', DATE('2018-03-19 10:08:06')), ('2416', '1', 'testTask', 'test', 'mrbird', '0 ', null, '1', DATE('2018-03-19 10:08:08')), ('2418', '1', 'testTask', 'test', 'mrbird', '0 ', null, '1', DATE('2018-03-19 10:08:10')), ('2420', '1', 'testTask', 'test', 'mrbird', '0 ', null, '1', DATE('2018-03-19 10:08:12')), ('2422', '1', 'testTask', 'test', 'mrbird', '0 ', null, '3', DATE('2018-03-19 10:08:14')), ('2424', '1', 'testTask', 'test', 'mrbird', '0 ', null, '1', DATE('2018-03-19 10:08:16')), ('2426', '1', 'testTask', 'test', 'mrbird', '0 ', null, '1', DATE('2018-03-19 10:08:18')), ('2429', '1', 'testTask', 'test', 'mrbird', '0 ', null, '1', DATE('2018-03-19 10:08:21')), ('2431', '1', 'testTask', 'test', 'mrbird', '0 ', null, '1', DATE('2018-03-19 10:08:23')), ('2433', '1', 'testTask', 'test', 'mrbird', '0 ', null, '1', DATE('2018-03-19 10:08:25')), ('2435', '1', 'testTask', 'test', 'mrbird', '0 ', null, '5', DATE('2018-03-19 10:08:27'));
COMMIT;

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log` (
`id`  decimal(20,0) NOT NULL ,
`username`  varchar(50) NULL ,
`operation`  text NULL ,
`time`  decimal(11,0) NULL ,
`method`  text NULL ,
`params`  text NULL ,
`ip`  varchar(64) NULL ,
`create_time`  datetime NULL 
)
type=InnoDB
;

-- ----------------------------
-- Records of t_log
-- ----------------------------
BEGIN;
INSERT INTO `t_log` values ('737', 'MrBird', '暂停任务', '11', 'cc.mrbird.job.controller.JobController.pauseJob()', 'jobids: 1', '127.0.0.1', DATE('2018-03-19 10:08:27')), ('738', 'MrBird', '执行任务', '14', 'cc.mrbird.job.controller.JobController.runJob()', 'jobids: 11', '127.0.0.1', DATE('2018-03-19 10:08:34')), ('745', 'MrBird', '删除用户', '117', 'cc.mrbird.system.controller.userController.deleteusers()', 'ids: 69,87,90,163', '127.0.0.1', DATE('2018-03-19 10:38:19')), ('746', 'MrBird', '删除用户', '8', 'cc.mrbird.system.controller.userController.deleteusers()', 'ids: 64', '127.0.0.1', DATE('2018-03-19 10:38:25')), ('730', 'MrBird', '恢复任务', '55', 'cc.mrbird.job.controller.JobController.resumeJob()', 'jobids: 3', '127.0.0.1', DATE('2018-03-19 10:07:32')), ('731', 'MrBird', '执行任务', '40', 'cc.mrbird.job.controller.JobController.runJob()', 'jobids: 3', '127.0.0.1', DATE('2018-03-19 10:07:36')), ('733', 'MrBird', '暂停任务', '10', 'cc.mrbird.job.controller.JobController.pauseJob()', 'jobids: 3', '127.0.0.1', DATE('2018-03-19 10:07:53')), ('734', 'MrBird', '恢复任务', '17', 'cc.mrbird.job.controller.JobController.resumeJob()', 'jobids: 1', '127.0.0.1', DATE('2018-03-19 10:08:02')), ('735', 'MrBird', '执行任务', '13', 'cc.mrbird.job.controller.JobController.runJob()', 'jobids: 1', '127.0.0.1', DATE('2018-03-19 10:08:05'));
COMMIT;

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
`menu_id`  decimal(65,30) NOT NULL ,
`parent_id`  decimal(65,30) NOT NULL ,
`menu_name`  varchar(50) NOT NULL ,
`url`  varchar(100) NULL ,
`perms`  text NULL ,
`icon`  varchar(50) NULL ,
`type`  char(2) NOT NULL ,
`order_num`  decimal(65,30) NULL ,
`create_time`  datetime NOT NULL ,
`modify_time`  datetime NULL 
)
type=InnoDB
;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
BEGIN;
INSERT INTO `t_menu` values ('101', '0', '任务调度', null, null, 'zmdi zmdi-alarm', '0 ', null, DATE('2018-02-24 15:52:57'), null), ('86', '58', 'One 一个', null, null, null, '0 ', null, DATE('2018-01-26 09:42:41'), DATE('2018-01-26 09:43:46')), ('87', '86', '绘画', 'one/painting', null, null, '0 ', null, DATE('2018-01-26 09:47:14'), DATE('2018-01-26 09:48:28')), ('88', '86', '语文', 'one/yuwen', null, null, '0 ', null, DATE('2018-01-26 09:47:40'), DATE('2018-01-26 09:48:15')), ('89', '86', '散文', 'one/essay', null, null, '0 ', null, DATE('2018-01-26 09:48:05'), null), ('81', '58', '影视资讯', null, null, null, '0 ', null, DATE('2018-01-22 14:12:59'), null), ('82', '81', '正在热映', 'movie/hot', null, null, '0 ', null, DATE('2018-01-22 14:13:47'), null), ('83', '81', '即将上映', 'movie/coming', null, null, '0 ', null, DATE('2018-01-22 14:14:36'), null), ('6', '1', '部门管理', 'dept', null, null, '0 ', '4', DATE('2017-12-27 16:57:33'), null), ('8', '2', '在线用户', 'session', null, null, '0 ', '1', DATE('2017-12-27 16:59:33'), null), ('10', '2', '系统日志', 'log', null, null, '0 ', '3', DATE('2017-12-27 17:00:50'), null), ('20', '6', '新增部门', null, 'dept:add', null, '1 ', null, DATE('2017-12-27 17:09:24'), null), ('21', '6', '修改部门', null, 'dept:update', null, '1 ', null, DATE('2017-12-27 17:09:24'), null), ('22', '6', '删除部门', null, 'dept:delete', null, '1 ', null, DATE('2017-12-27 17:09:24'), null), ('24', '10', '删除日志', null, 'log:delete', null, '1 ', null, DATE('2017-12-27 17:11:45'), null), ('14', '4', '新增角色', null, 'role:add', null, '1 ', null, DATE('2017-12-27 17:06:38'), null), ('15', '4', '修改角色', null, 'role:update', null, '1 ', null, DATE('2017-12-27 17:06:38'), null), ('16', '4', '删除角色', null, 'role:delete', null, '1 ', null, DATE('2017-12-27 17:06:38'), null), ('1', '0', '系统管理', null, null, 'zmdi zmdi-settings', '0 ', '1', DATE('2017-12-27 16:39:07'), null), ('2', '0', '系统监控', null, null, 'zmdi zmdi-shield-security', '0 ', '2', DATE('2017-12-27 16:45:51'), DATE('2018-01-17 17:08:28')), ('3', '1', '用户管理', 'user', null, null, '0 ', '1', DATE('2017-12-27 16:47:13'), DATE('2018-01-22 16:44:09')), ('4', '1', '角色管理', 'role', null, null, '0 ', '2', DATE('2017-12-27 16:48:09'), null), ('5', '1', '菜单管理', 'menu', null, null, '0 ', '3', DATE('2017-12-27 16:48:57'), null), ('11', '3', '新增用户', null, 'user:add', null, '1 ', null, DATE('2017-12-27 17:02:58'), null), ('12', '3', '修改用户', null, 'user:update', null, '1 ', null, DATE('2017-12-27 17:04:07'), null), ('13', '3', '删除用户', null, 'user:delete', null, '1 ', null, DATE('2017-12-27 17:04:58'), null), ('17', '5', '新增菜单', null, 'menu:add', null, '1 ', null, DATE('2017-12-27 17:08:02'), null), ('18', '5', '修改菜单', null, 'menu:update', null, '1 ', null, DATE('2017-12-27 17:08:02'), null), ('19', '5', '删除菜单', null, 'menu:delete', null, '1 ', null, DATE('2017-12-27 17:08:02'), null), ('23', '8', '踢出用户', null, 'user:kickout', null, '1 ', null, DATE('2017-12-27 17:11:13'), null), ('59', '58', '天气查询', 'weather', null, null, '0 ', null, DATE('2018-01-12 15:40:02'), null), ('61', '58', '每日一文', 'article', null, null, '0 ', null, DATE('2018-01-15 17:17:14'), null), ('58', '0', '网络资源', null, null, 'zmdi zmdi-globe-alt', '0 ', null, DATE('2018-01-12 15:28:48'), DATE('2018-01-22 19:49:26')), ('65', '64', '新增字典', null, 'dict:add', null, '1 ', null, DATE('2018-01-18 19:10:08'), null), ('66', '64', '修改字典', null, 'dict:update', null, '1 ', null, DATE('2018-01-18 19:10:27'), null), ('67', '64', '删除字典', null, 'dict:delete', null, '1 ', null, DATE('2018-01-18 19:10:47'), null), ('64', '1', '字典管理', 'dict', null, null, '0 ', null, DATE('2018-01-18 10:38:25'), DATE('2018-01-18 18:59:33')), ('102', '101', '定时任务', 'job', null, null, '0 ', null, DATE('2018-02-24 15:53:53'), null), ('103', '102', '新增任务', null, 'job:add', null, '1 ', null, DATE('2018-02-24 15:55:10'), null), ('104', '102', '修改任务', null, 'job:update', null, '1 ', null, DATE('2018-02-24 15:55:53'), null), ('105', '102', '删除任务', null, 'job:delete', null, '1 ', null, DATE('2018-02-24 15:56:18'), null), ('106', '102', '暂停任务', null, 'job:pause', null, '1 ', null, DATE('2018-02-24 15:57:08'), null), ('107', '102', '恢复任务', null, 'job:resume', null, '1 ', null, DATE('2018-02-24 15:58:21'), null), ('108', '102', '立即执行任务', null, 'job:run', null, '1 ', null, DATE('2018-02-24 15:59:45'), null), ('109', '101', '调度日志', 'jobLog', null, null, '0 ', null, DATE('2018-02-24 16:00:45'), null), ('110', '109', '删除日志', null, 'jobLog:delete', null, '1 ', null, DATE('2018-02-24 16:01:21'), null);
COMMIT;

-- ----------------------------
-- Table structure for t_msg
-- ----------------------------
DROP TABLE IF EXISTS `t_msg`;
CREATE TABLE `t_msg` (
`row_id`  decimal(10,0) NOT NULL ,
`msg_code`  varchar(255) NULL ,
`std_name`  varchar(255) NULL ,
`disp_name`  varchar(255) NULL ,
`lang`  varchar(50) NULL ,
`last_upd`  datetime NULL ,
`created_by`  decimal(10,0) NOT NULL ,
`last_upd_by`  decimal(10,0) NOT NULL ,
`mod_num`  decimal(65,30) NOT NULL ,
`created`  datetime NULL ,
PRIMARY key (`row_id`)
)
type=InnoDB
;

-- ----------------------------
-- Records of t_msg
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_report_para
-- ----------------------------
DROP TABLE IF EXISTS `t_report_para`;
CREATE TABLE `t_report_para` (
`row_id`  decimal(10,0) NULL ,
`report_id`  varchar(50) NULL ,
`report_name`  varchar(200) NULL ,
`lang`  varchar(50) NULL ,
`para_name`  varchar(50) NULL ,
`para_value`  text NULL ,
`last_upd`  datetime NULL 
)
type=InnoDB
;

-- ----------------------------
-- Records of t_report_para
-- ----------------------------
BEGIN;
INSERT INTO `t_report_para` values ('372', '2.02.07.02', '财务管理-现金管理分析-现金存量-单体', 'en', 'MONTH_2.02.07.02', '10月', DATE('2014-01-16 13:38:41')), ('374', '2.02.07.03', '财务管理-现金管理分析-现金流量-整体', 'en', 'MONTH_2.02.07.03', '10月', DATE('2014-01-16 13:38:41')), ('375', '2.02.07.04', '财务管理-现金管理分析-现金流量-单体', 'en', 'YEAR_2.02.07.04', '2013年', DATE('2014-01-16 13:38:41')), ('376', '2.02.07.04', '财务管理-现金管理分析-现金流量-单体', 'en', 'MONTH_2.02.07.04', '10月', DATE('2014-01-16 13:38:41')), ('377', '2.03.01.04', '商务市场-市场环境分析-区域竞争对手', 'en', 'YEAR_2.03.01.04', '2013年', DATE('2014-01-16 13:38:41')), ('378', '2.03.01.04', '商务市场-市场环境分析-区域竞争对手', 'en', 'MONTH_2.03.01.04', '10月', DATE('2014-01-16 13:38:41')), ('380', '2.03.02.01', '商务市场-客户关系管理-十大营收客户-整体', 'en', 'MONTH_2.03.02.01', '10月', DATE('2014-01-16 13:38:41')), ('381', '2.03.02.02', '商务市场-客户关系管理-十大业务量客户-整体', 'en', 'YEAR_2.03.02.02', '2013年', DATE('2014-01-16 13:38:41')), ('382', '2.03.02.02', '商务市场-客户关系管理-十大业务量客户-整体', 'en', 'MONTH_2.03.02.02', '10月', DATE('2014-01-16 13:38:41')), ('337', '2.02.01.08', '财务管理-盈利分析(综合)-资本资产效率', 'en', 'YEAR_2.02.01.08', '2013年', DATE('2014-01-16 13:38:41')), ('344', '2.02.02.03', '财务管理-盈利分析(营业收入)-集装箱企业营业收入', 'en', 'MONTH_2.02.02.03', '10月', DATE('2014-01-16 13:38:41')), ('383', '2.03.02.03', '商务市场-客户关系管理-十大营收客户-单体-港口', 'en', 'YEAR_2.03.02.03', '2013年', DATE('2014-01-16 13:38:41')), ('384', '2.03.02.03', '商务市场-客户关系管理-十大营收客户-单体-港口', 'en', 'MONTH_2.03.02.03', '10月', DATE('2014-01-16 13:38:41')), ('385', '2.03.02.04', '商务市场-客户关系管理-十大业务量客户-单体-港口', 'en', 'YEAR_2.03.02.04', '2013年', DATE('2014-01-16 13:38:41')), ('386', '2.03.02.04', '商务市场-客户关系管理-十大业务量客户-单体-港口', 'en', 'MONTH_2.03.02.04', '10月', DATE('2014-01-16 13:38:41')), ('387', '2.03.03.01', '商务市场-价格分析-集装箱码头单箱装卸收入', 'en', 'YEAR_2.03.03.01', '2013年', DATE('2014-01-16 13:38:41')), ('388', '2.03.03.01', '商务市场-价格分析-集装箱码头单箱装卸收入', 'en', 'MONTH_2.03.03.01', '10月', DATE('2014-01-16 13:38:41')), ('389', '3.01.01.01', '码头运营分析-码头业务量分析-综合', 'en', 'YEAR_3.01.01.01', '2013年', DATE('2014-01-16 13:38:41')), ('390', '3.01.01.01', '码头运营分析-码头业务量分析-综合', 'en', 'MONTH_3.01.01.01', '10月', DATE('2014-01-16 13:38:41')), ('391', '3.01.01.02', '码头运营分析-码头业务量分析-集装箱业务量', 'en', 'YEAR_3.01.01.02', '2013年', DATE('2014-01-16 13:38:41')), ('392', '3.01.01.02', '码头运营分析-码头业务量分析-集装箱业务量', 'en', 'MONTH_3.01.01.02', '10月', DATE('2014-01-16 13:38:41')), ('393', '3.01.01.04', '码头运营分析-码头业务量分析-集装箱业务量-单体', 'en', 'YEAR_3.01.01.04', '2013年', DATE('2014-01-16 13:38:41')), ('394', '3.01.01.04', '码头运营分析-码头业务量分析-集装箱业务量-单体', 'en', 'MONTH_3.01.01.04', '10月', DATE('2014-01-16 13:38:41')), ('395', '3.01.02.00', '码头运营分析-码头资产规模分析', 'en', 'YEAR_3.01.02.00', '2013年', DATE('2014-01-16 13:38:41')), ('396', '3.01.02.00', '码头运营分析-码头资产规模分析', 'en', 'MONTH_3.01.02.00', '10月', DATE('2014-01-16 13:38:41')), ('397', '3.01.03.01', '码头运营分析-码头资产效率分析-集装箱', 'en', 'YEAR_3.01.03.01', '2013年', DATE('2014-01-16 13:38:41')), ('398', '3.01.03.01', '码头运营分析-码头资产效率分析-集装箱', 'en', 'MONTH_3.01.03.01', '10月', DATE('2014-01-16 13:38:41')), ('399', '3.01.03.03', '码头运营分析-码头资产效率分析-集装箱-单体', 'en', 'YEAR_3.01.03.03', '2013年', DATE('2014-01-16 13:38:41')), ('400', '3.01.03.03', '码头运营分析-码头资产效率分析-集装箱-单体', 'en', 'MONTH_3.01.03.03', '10月', DATE('2014-01-16 13:38:41')), ('401', '3.01.04.01', '码头运营分析-码头作业效率分析-集装箱', 'en', 'YEAR_3.01.04.01', '2013年', DATE('2014-01-16 13:38:41')), ('402', '3.01.04.01', '码头运营分析-码头作业效率分析-集装箱', 'en', 'MONTH_3.01.04.01', '10月', DATE('2014-01-16 13:38:41')), ('403', '3.01.04.03', '码头运营分析-码头作业效率分析-集装箱-单体', 'en', 'YEAR_3.01.04.03', '2013年', DATE('2014-01-16 13:38:41')), ('404', '3.01.04.03', '码头运营分析-码头作业效率分析-集装箱-单体', 'en', 'MONTH_3.01.04.03', '10月', DATE('2014-01-16 13:38:41')), ('331', '2.02.01.01', '财务管理-盈利分析(综合)-盈利规模-整体', 'en', 'YEAR_2.02.01.01', '2013年', DATE('2014-01-16 13:38:41')), ('352', '2.02.03.04', '财务管理-盈利分析(成本费用)-主营业务成本要素-集装箱二级', 'en', 'MONTH_2.02.03.04', '10月', DATE('2014-01-16 13:38:41')), ('360', '2.02.04.02', '财务管理-资本效率分析-单体', 'en', 'MONTH_2.02.04.02', '10月', DATE('2014-01-16 13:38:41')), ('373', '2.02.07.03', '财务管理-现金管理分析-现金流量-整体', 'en', 'YEAR_2.02.07.03', '2013年', DATE('2014-01-16 13:38:41')), ('379', '2.03.02.01', '商务市场-客户关系管理-十大营收客户-整体', 'en', 'YEAR_2.03.02.01', '2013年', DATE('2014-01-16 13:38:41')), ('237', '1.02.10.01', '专业集装箱码头-码头效率', 'en', 'YEAR_1.02.10.01', '2013年', DATE('2014-01-16 13:38:41')), ('277', '1.03.09.04', '通用码头-商务市场-散杂货-累计', 'en', 'YEAR_1.03.09.04', '2013年', DATE('2014-01-16 13:38:41')), ('321', '1.04.07.02', '保税物流-运营效率-青岛物流', 'en', 'YEAR_1.04.07.02', '2013年', DATE('2014-01-16 13:38:41')), ('367', '2.02.06.04', '财务管理-偿债分析-短期偿债能力-单体', 'en', 'YEAR_2.02.06.04', '2013年', DATE('2014-01-16 13:38:41')), ('260', '1.03.07.02', '通用码头-财务绩效-管理费用-累计', 'en', 'MONTH_1.03.07.02', '10月', DATE('2014-01-16 13:38:41')), ('320', '1.04.07.01', '保税物流-运营效率-招商保税', 'en', 'MONTH_1.04.07.01', '10月', DATE('2014-01-16 13:38:41')), ('210', '1.01.01.00', '管理驾驶舱-首页', 'en', 'DAY_1.01.01.00', '13日', DATE('2014-01-16 13:38:41')), ('248', '1.03.04.02', '通用码头-财务绩效-营业收入-累计', 'en', 'MONTH_1.03.04.02', '10月', DATE('2014-01-16 13:38:41')), ('312', '1.04.06.07', '保税物流-商务市场-招商保税-按项目', 'en', 'MONTH_1.04.06.07', '10月', DATE('2014-01-16 13:38:41')), ('292', '1.04.03.00', '保税物流-宏观环境', 'en', 'MONTH_1.04.03.00', '10月', DATE('2014-01-16 13:38:41')), ('206', '1.04.02.00', '保税物流-价值树', 'zh-cn', 'MONTH_1.04.02.00', '10月', DATE('2014-01-04 00:00:00')), ('198', '1.01.02.00', '管理驾驶舱-价值树', 'zh-cn', 'YEAR_1.01.02.00', '2013年', DATE('2014-01-04 00:00:00')), ('205', '1.04.02.00', '保税物流-价值树', 'zh-cn', 'YEAR_1.04.02.00', '2013年', DATE('2014-01-04 00:00:00')), ('204', '1.03.02.00', '通用码头-价值树', 'zh-cn', 'MONTH_1.03.02.00', '10月', DATE('2014-01-04 00:00:00')), ('203', '1.03.02.00', '通用码头-价值树', 'zh-cn', 'YEAR_1.03.02.00', '2013年', DATE('2014-01-04 00:00:00')), ('202', '1.02.02.00', '专业集装箱码头-价值树', 'zh-cn', 'MONTH_1.02.02.00', '10月', DATE('2014-01-04 00:00:00')), ('201', '1.02.02.00', '专业集装箱码头-价值树', 'zh-cn', 'YEAR_1.02.02.00', '2013年', DATE('2014-01-04 00:00:00')), ('1', '1.01.01.00', '管理驾驶舱-首页', 'zh-cn', 'YEAR_1.01.01.00', '2013年', DATE('2013-12-13 14:57:23')), ('2', '1.01.01.00', '管理驾驶舱-首页', 'zh-cn', 'MONTH_1.01.01.00', '10月', DATE('2013-12-13 14:57:23')), ('4', '1.01.04.00', '管理驾驶舱-财务绩效', 'zh-cn', 'YEAR_1.01.04.00', '2013年', DATE('2013-12-13 14:57:23')), ('5', '1.01.04.00', '管理驾驶舱-财务绩效', 'zh-cn', 'MONTH_1.01.04.00', '10月', DATE('2013-12-13 14:57:23')), ('6', '1.01.05.00', '管理驾驶舱-业务规模', 'zh-cn', 'YEAR_1.01.05.00', '2013年', DATE('2013-12-13 14:57:23')), ('7', '1.01.05.00', '管理驾驶舱-业务规模', 'zh-cn', 'MONTH_1.01.05.00', '10月', DATE('2013-12-13 14:57:23')), ('8', '1.01.05.00', '管理驾驶舱-业务规模', 'zh-cn', 'DAY_1.01.05.00', '13日', DATE('2013-12-13 14:57:23')), ('9', '1.01.07.03', '管理驾驶舱-保税物流运营效率', 'zh-cn', 'YEAR_1.01.07.03', '2013年', DATE('2013-12-13 14:57:23')), ('10', '1.01.07.03', '管理驾驶舱-保税物流运营效率', 'zh-cn', 'MONTH_1.01.07.03', '10月', DATE('2013-12-13 14:57:23')), ('11', '1.02.01.01', '专业集装箱码头-首页', 'zh-cn', 'YEAR_1.02.01.01', '2013年', DATE('2013-12-13 14:57:23')), ('12', '1.02.01.01', '专业集装箱码头-首页', 'zh-cn', 'MONTH_1.02.01.01', '10月', DATE('2013-12-13 14:57:23')), ('13', '1.02.03.00', '专业集装箱码头-宏观环境', 'zh-cn', 'YEAR_1.02.03.00', '2013年', DATE('2013-12-13 14:57:23')), ('14', '1.02.03.00', '专业集装箱码头-宏观环境', 'zh-cn', 'MONTH_1.02.03.00', '10月', DATE('2013-12-13 14:57:23')), ('15', '1.02.04.01', '专业集装箱码头-财务绩效-营业收入', 'zh-cn', 'YEAR_1.02.04.01', '2013年', DATE('2013-12-13 14:57:23')), ('16', '1.02.04.01', '专业集装箱码头-财务绩效-营业收入', 'zh-cn', 'MONTH_1.02.04.01', '10月', DATE('2013-12-13 14:57:23')), ('17', '1.02.05.01', '专业集装箱码头-财务绩效-营业毛利', 'zh-cn', 'YEAR_1.02.05.01', '2013年', DATE('2013-12-13 14:57:23')), ('18', '1.02.05.01', '专业集装箱码头-财务绩效-营业毛利', 'zh-cn', 'MONTH_1.02.05.01', '10月', DATE('2013-12-13 14:57:23')), ('19', '1.02.06.01', '专业集装箱码头-财务绩效-利润总额', 'zh-cn', 'YEAR_1.02.06.01', '2013年', DATE('2013-12-13 14:57:23')), ('20', '1.02.06.01', '专业集装箱码头-财务绩效-利润总额', 'zh-cn', 'MONTH_1.02.06.01', '10月', DATE('2013-12-13 14:57:23')), ('21', '1.02.07.01', '专业集装箱码头-财务绩效-管理费用', 'zh-cn', 'YEAR_1.02.07.01', '2013年', DATE('2013-12-13 14:57:23')), ('22', '1.02.07.01', '专业集装箱码头-财务绩效-管理费用', 'zh-cn', 'MONTH_1.02.07.01', '10月', DATE('2013-12-13 14:57:23')), ('23', '1.02.08.01', '专业集装箱码头-业务规模-日统计', 'zh-cn', 'YEAR_1.02.08.01', '2013年', DATE('2013-12-13 14:57:23')), ('24', '1.02.08.01', '专业集装箱码头-业务规模-日统计', 'zh-cn', 'MONTH_1.02.08.01', '10月', DATE('2013-12-13 14:57:23')), ('25', '1.02.08.01', '专业集装箱码头-业务规模-日统计', 'zh-cn', 'DAY_1.02.08.01', '13日', DATE('2013-12-13 14:57:23')), ('26', '1.02.08.02', '专业集装箱码头-业务规模-月统计', 'zh-cn', 'YEAR_1.02.08.02', '2013年', DATE('2013-12-13 14:57:23')), ('27', '1.02.08.02', '专业集装箱码头-业务规模-月统计', 'zh-cn', 'MONTH_1.02.08.02', '10月', DATE('2013-12-13 14:57:23')), ('28', '1.02.09.01', '专业集装箱码头-商务市场', 'zh-cn', 'YEAR_1.02.09.01', '2013年', DATE('2013-12-13 14:57:23')), ('29', '1.02.09.01', '专业集装箱码头-商务市场', 'zh-cn', 'MONTH_1.02.09.01', '10月', DATE('2013-12-13 14:57:23')), ('31', '1.02.10.01', '专业集装箱码头-码头效率', 'zh-cn', 'MONTH_1.02.10.01', '10月', DATE('2013-12-13 14:57:23')), ('32', '1.03.01.01', '通用码头-首页-实际', 'zh-cn', 'MONTH_1.03.01.01', '10月', DATE('2013-12-13 14:57:23')), ('33', '1.03.01.01', '通用码头-首页-实际', 'zh-cn', 'YEAR_1.03.01.01', '2013年', DATE('2013-12-13 14:57:23')), ('34', '1.03.01.02', '通用码头-首页-累计', 'zh-cn', 'MONTH_1.03.01.02', '10月', DATE('2013-12-13 14:57:23')), ('35', '1.03.01.02', '通用码头-首页-累计', 'zh-cn', 'YEAR_1.03.01.02', '2013年', DATE('2013-12-13 14:57:23')), ('36', '1.03.03.00', '通用码头-宏观环境', 'zh-cn', 'MONTH_1.03.03.00', '10月', DATE('2013-12-13 14:57:23')), ('37', '1.03.03.00', '通用码头-宏观环境', 'zh-cn', 'YEAR_1.03.03.00', '2013年', DATE('2013-12-13 14:57:23')), ('38', '1.03.04.01', '通用码头-财务绩效-营业收入-实际', 'zh-cn', 'YEAR_1.03.04.01', '2013年', DATE('2013-12-13 14:57:23')), ('39', '1.03.04.01', '通用码头-财务绩效-营业收入-实际', 'zh-cn', 'MONTH_1.03.04.01', '10月', DATE('2013-12-13 14:57:23')), ('40', '1.03.04.02', '通用码头-财务绩效-营业收入-累计', 'zh-cn', 'YEAR_1.03.04.02', '2013年', DATE('2013-12-13 14:57:23')), ('42', '1.03.05.01', '通用码头-财务绩效-营业毛利-实际', 'zh-cn', 'YEAR_1.03.05.01', '2013年', DATE('2013-12-13 14:57:23')), ('43', '1.03.05.01', '通用码头-财务绩效-营业毛利-实际', 'zh-cn', 'MONTH_1.03.05.01', '10月', DATE('2013-12-13 14:57:23')), ('44', '1.03.05.02', '通用码头-财务绩效-营业毛利-累计', 'zh-cn', 'YEAR_1.03.05.02', '2013年', DATE('2013-12-13 14:57:23')), ('45', '1.03.05.02', '通用码头-财务绩效-营业毛利-累计', 'zh-cn', 'MONTH_1.03.05.02', '10月', DATE('2013-12-13 14:57:23')), ('46', '1.03.06.01', '通用码头-财务绩效-利润总额-实际', 'zh-cn', 'YEAR_1.03.06.01', '2013年', DATE('2013-12-13 14:57:23')), ('47', '1.03.06.01', '通用码头-财务绩效-利润总额-实际', 'zh-cn', 'MONTH_1.03.06.01', '10月', DATE('2013-12-13 14:57:23')), ('48', '1.03.06.02', '通用码头-财务绩效-利润总额-累计', 'zh-cn', 'YEAR_1.03.06.02', '2013年', DATE('2013-12-13 14:57:23'));
INSERT INTO `t_report_para` values ('49', '1.03.06.02', '通用码头-财务绩效-利润总额-累计', 'zh-cn', 'MONTH_1.03.06.02', '10月', DATE('2013-12-13 14:57:23')), ('50', '1.03.07.01', '通用码头-财务绩效-管理费用-实际', 'zh-cn', 'YEAR_1.03.07.01', '2013年', DATE('2013-12-13 14:57:23')), ('51', '1.03.07.01', '通用码头-财务绩效-管理费用-实际', 'zh-cn', 'MONTH_1.03.07.01', '10月', DATE('2013-12-13 14:57:23')), ('52', '1.03.07.02', '通用码头-财务绩效-管理费用-累计', 'zh-cn', 'YEAR_1.03.07.02', '2013年', DATE('2013-12-13 14:57:23')), ('54', '1.03.08.01', '通用码头-业务规模-集装箱-日统计', 'zh-cn', 'YEAR_1.03.08.01', '2013年', DATE('2013-12-13 14:57:23')), ('55', '1.03.08.01', '通用码头-业务规模-集装箱-日统计', 'zh-cn', 'MONTH_1.03.08.01', '10月', DATE('2013-12-13 14:57:23')), ('56', '1.03.08.01', '通用码头-业务规模-集装箱-日统计', 'zh-cn', 'DAY_1.03.08.01', '13日', DATE('2013-12-13 14:57:23')), ('57', '1.03.08.02', '通用码头-业务规模-集装箱-月统计', 'zh-cn', 'YEAR_1.03.08.02', '2013年', DATE('2013-12-13 14:57:23')), ('58', '1.03.08.02', '通用码头-业务规模-集装箱-月统计', 'zh-cn', 'MONTH_1.03.08.02', '10月', DATE('2013-12-13 14:57:23')), ('59', '1.03.08.03', '通用码头-业务规模-散杂货-日统计', 'zh-cn', 'YEAR_1.03.08.03', '2013年', DATE('2013-12-13 14:57:23')), ('60', '1.03.08.03', '通用码头-业务规模-散杂货-日统计', 'zh-cn', 'MONTH_1.03.08.03', '10月', DATE('2013-12-13 14:57:23')), ('61', '1.03.08.03', '通用码头-业务规模-散杂货-日统计', 'zh-cn', 'DAY_1.03.08.03', '13日', DATE('2013-12-13 14:57:23')), ('62', '1.03.08.04', '通用码头-业务规模-散杂货-月统计', 'zh-cn', 'YEAR_1.03.08.04', '2013年', DATE('2013-12-13 14:57:23')), ('63', '1.03.08.04', '通用码头-业务规模-散杂货-月统计', 'zh-cn', 'MONTH_1.03.08.04', '10月', DATE('2013-12-13 14:57:23')), ('64', '1.03.09.01', '通用码头-商务市场-集装箱-实际', 'zh-cn', 'YEAR_1.03.09.01', '2013年', DATE('2013-12-13 14:57:23')), ('65', '1.03.09.01', '通用码头-商务市场-集装箱-实际', 'zh-cn', 'MONTH_1.03.09.01', '10月', DATE('2013-12-13 14:57:23')), ('66', '1.03.09.02', '通用码头-商务市场-集装箱-累计', 'zh-cn', 'YEAR_1.03.09.02', '2013年', DATE('2013-12-13 14:57:23')), ('67', '1.03.09.02', '通用码头-商务市场-集装箱-累计', 'zh-cn', 'MONTH_1.03.09.02', '10月', DATE('2013-12-13 14:57:23')), ('68', '1.03.09.03', '通用码头-商务市场-散杂货-实际', 'zh-cn', 'YEAR_1.03.09.03', '2013年', DATE('2013-12-13 14:57:23')), ('69', '1.03.09.03', '通用码头-商务市场-散杂货-实际', 'zh-cn', 'MONTH_1.03.09.03', '10月', DATE('2013-12-13 14:57:23')), ('71', '1.03.09.04', '通用码头-商务市场-散杂货-累计', 'zh-cn', 'MONTH_1.03.09.04', '10月', DATE('2013-12-13 14:57:23')), ('72', '1.03.10.01', '通用码头-效率码头-集装箱', 'zh-cn', 'YEAR_1.03.10.01', '2013年', DATE('2013-12-13 14:57:23')), ('73', '1.03.10.01', '通用码头-效率码头-集装箱', 'zh-cn', 'MONTH_1.03.10.01', '10月', DATE('2013-12-13 14:57:23')), ('74', '1.03.11.01', '通用码头-效率码头-散杂货', 'zh-cn', 'YEAR_1.03.11.01', '2013年', DATE('2013-12-13 14:57:23')), ('75', '1.03.11.01', '通用码头-效率码头-散杂货', 'zh-cn', 'MONTH_1.03.11.01', '10月', DATE('2013-12-13 14:57:23')), ('76', '1.04.01.01', '保税物流-首页-招商保税-实际', 'zh-cn', 'YEAR_1.04.01.01', '2013年', DATE('2013-12-13 14:57:23')), ('77', '1.04.01.01', '保税物流-首页-招商保税-实际', 'zh-cn', 'MONTH_1.04.01.01', '10月', DATE('2013-12-13 14:57:23')), ('78', '1.04.01.02', '保税物流-首页-招商保税-累计', 'zh-cn', 'YEAR_1.04.01.02', '2013年', DATE('2013-12-13 14:57:23')), ('79', '1.04.01.02', '保税物流-首页-招商保税-累计', 'zh-cn', 'MONTH_1.04.01.02', '10月', DATE('2013-12-13 14:57:23')), ('80', '1.04.01.03', '保税物流-首页-青岛物流-实际', 'zh-cn', 'YEAR_1.04.01.03', '2013年', DATE('2013-12-13 14:57:23')), ('81', '1.04.01.03', '保税物流-首页-青岛物流-实际', 'zh-cn', 'MONTH_1.04.01.03', '10月', DATE('2013-12-13 14:57:23')), ('82', '1.04.01.04', '保税物流-首页-青岛物流-累计', 'zh-cn', 'YEAR_1.04.01.04', '2013年', DATE('2013-12-13 14:57:23')), ('83', '1.04.01.04', '保税物流-首页-青岛物流-累计', 'zh-cn', 'MONTH_1.04.01.04', '10月', DATE('2013-12-13 14:57:23')), ('84', '1.04.03.00', '保税物流-宏观环境', 'zh-cn', 'YEAR_1.04.03.00', '2013年', DATE('2013-12-13 14:57:23')), ('85', '1.04.03.00', '保税物流-宏观环境', 'zh-cn', 'MONTH_1.04.03.00', '10月', DATE('2013-12-13 14:57:23')), ('86', '1.04.04.01', '保税物流-财务绩效-实际', 'zh-cn', 'YEAR_1.04.04.01', '2013年', DATE('2013-12-13 14:57:23')), ('87', '1.04.04.01', '保税物流-财务绩效-实际', 'zh-cn', 'MONTH_1.04.04.01', '10月', DATE('2013-12-13 14:57:23')), ('88', '1.04.04.02', '保税物流-财务绩效-累计', 'zh-cn', 'YEAR_1.04.04.02', '2013年', DATE('2013-12-13 14:57:23')), ('89', '1.04.04.02', '保税物流-财务绩效-累计', 'zh-cn', 'MONTH_1.04.04.02', '10月', DATE('2013-12-13 14:57:23')), ('90', '1.04.05.01', '保税物流-业务规模', 'zh-cn', 'YEAR_1.04.05.01', '2013年', DATE('2013-12-13 14:57:23')), ('91', '1.04.05.01', '保税物流-业务规模', 'zh-cn', 'MONTH_1.04.05.01', '10月', DATE('2013-12-13 14:57:23')), ('92', '1.04.06.01', '保税物流-商务市场-招商保税-客户整体', 'zh-cn', 'YEAR_1.04.06.01', '2013年', DATE('2013-12-13 14:57:23')), ('93', '1.04.06.01', '保税物流-商务市场-招商保税-客户整体', 'zh-cn', 'MONTH_1.04.06.01', '10月', DATE('2013-12-13 14:57:23')), ('94', '1.04.06.02', '保税物流-商务市场-招商保税-客户仓租', 'zh-cn', 'YEAR_1.04.06.02', '2013年', DATE('2013-12-13 14:57:23')), ('95', '1.04.06.02', '保税物流-商务市场-招商保税-客户仓租', 'zh-cn', 'MONTH_1.04.06.02', '10月', DATE('2013-12-13 14:57:23')), ('96', '1.04.06.03', '保税物流-商务市场-招商保税-客户自营', 'zh-cn', 'YEAR_1.04.06.03', '2013年', DATE('2013-12-13 14:57:23')), ('97', '1.04.06.03', '保税物流-商务市场-招商保税-客户自营', 'zh-cn', 'MONTH_1.04.06.03', '10月', DATE('2013-12-13 14:57:23')), ('99', '1.04.06.04', '保税物流-商务市场-招商保税-按项目', 'zh-cn', 'MONTH_1.04.06.04', '10月', DATE('2013-12-13 14:57:23')), ('100', '1.04.06.05', '保税物流-商务市场-招商保税-按项目', 'zh-cn', 'YEAR_1.04.06.05', '2013年', DATE('2013-12-13 14:57:23')), ('101', '1.04.06.05', '保税物流-商务市场-招商保税-按项目', 'zh-cn', 'MONTH_1.04.06.05', '10月', DATE('2013-12-13 14:57:23')), ('102', '1.04.06.06', '保税物流-商务市场-招商保税-按项目', 'zh-cn', 'YEAR_1.04.06.06', '2013年', DATE('2013-12-13 14:57:23')), ('103', '1.04.06.06', '保税物流-商务市场-招商保税-按项目', 'zh-cn', 'MONTH_1.04.06.06', '10月', DATE('2013-12-13 14:57:23')), ('104', '1.04.06.07', '保税物流-商务市场-招商保税-按项目', 'zh-cn', 'YEAR_1.04.06.07', '2013年', DATE('2013-12-13 14:57:23')), ('106', '1.04.06.08', '保税物流-商务市场-青岛物流-客户整体', 'zh-cn', 'YEAR_1.04.06.08', '2013年', DATE('2013-12-13 14:57:23')), ('107', '1.04.06.08', '保税物流-商务市场-青岛物流-客户整体', 'zh-cn', 'MONTH_1.04.06.08', '10月', DATE('2013-12-13 14:57:23')), ('108', '1.04.06.09', '保税物流-商务市场-青岛物流-客户仓租', 'zh-cn', 'YEAR_1.04.06.09', '2013年', DATE('2013-12-13 14:57:23')), ('109', '1.04.06.09', '保税物流-商务市场-青岛物流-客户仓租', 'zh-cn', 'MONTH_1.04.06.09', '10月', DATE('2013-12-13 14:57:23')), ('110', '1.04.06.10', '保税物流-商务市场-青岛物流-客户堆场', 'zh-cn', 'YEAR_1.04.06.10', '2013年', DATE('2013-12-13 14:57:23')), ('111', '1.04.06.10', '保税物流-商务市场-青岛物流-客户堆场', 'zh-cn', 'MONTH_1.04.06.10', '10月', DATE('2013-12-13 14:57:23')), ('112', '1.04.07.01', '保税物流-运营效率-招商保税', 'zh-cn', 'YEAR_1.04.07.01', '2013年', DATE('2013-12-13 14:57:23')), ('115', '1.04.07.02', '保税物流-运营效率-青岛物流', 'zh-cn', 'MONTH_1.04.07.02', '10月', DATE('2013-12-13 14:57:23')), ('116', '1.04.07.03', '保税物流-运营效率-项目管理-招商保税', 'zh-cn', 'YEAR_1.04.07.03', '2013年', DATE('2013-12-13 14:57:23')), ('117', '1.04.07.03', '保税物流-运营效率-项目管理-招商保税', 'zh-cn', 'MONTH_1.04.07.03', '10月', DATE('2013-12-13 14:57:23')), ('118', '1.04.07.04', '保税物流-运营效率-项目管理-招商保税', 'zh-cn', 'YEAR_1.04.07.04', '2013年', DATE('2013-12-13 14:57:23')), ('119', '1.04.07.04', '保税物流-运营效率-项目管理-招商保税', 'zh-cn', 'MONTH_1.04.07.04', '10月', DATE('2013-12-13 14:57:23')), ('120', '1.05.01.01', '冷链驾驶舱-财务绩效-冷链', 'zh-cn', 'YEAR_1.05.01.01', '2013年', DATE('2013-12-13 14:57:23')), ('121', '1.05.01.01', '冷链驾驶舱-财务绩效-冷链', 'zh-cn', 'MONTH_1.05.01.01', '10月', DATE('2013-12-13 14:57:23')), ('122', '1.05.02.01', '冷链驾驶舱-业务规模-冷链', 'zh-cn', 'YEAR_1.05.02.01', '2013年', DATE('2013-12-13 14:57:23')), ('123', '1.05.02.01', '冷链驾驶舱-业务规模-冷链', 'zh-cn', 'MONTH_1.05.02.01', '10月', DATE('2013-12-13 14:57:23')), ('125', '2.02.01.01', '财务管理-盈利分析(综合)-盈利规模-整体', 'zh-cn', 'MONTH_2.02.01.01', '10月', DATE('2013-12-13 14:57:23')), ('126', '2.02.01.03', '财务管理-盈利分析(综合)-盈利能力-整体', 'zh-cn', 'YEAR_2.02.01.03', '2013年', DATE('2013-12-13 14:57:23')), ('127', '2.02.01.03', '财务管理-盈利分析(综合)-盈利能力-整体', 'zh-cn', 'MONTH_2.02.01.03', '10月', DATE('2013-12-13 14:57:23')), ('128', '2.02.01.05', '财务管理-盈利分析(综合)-盈利规模与能力', 'zh-cn', 'YEAR_2.02.01.05', '2013年', DATE('2013-12-13 14:57:23')), ('129', '2.02.01.05', '财务管理-盈利分析(综合)-盈利规模与能力', 'zh-cn', 'MONTH_2.02.01.05', '10月', DATE('2013-12-13 14:57:23')), ('131', '2.02.01.08', '财务管理-盈利分析(综合)-资本资产效率', 'zh-cn', 'MONTH_2.02.01.08', '10月', DATE('2013-12-13 14:57:23')), ('132', '2.02.02.01', '财务管理-盈利分析(营业收入)-营业收入', 'zh-cn', 'YEAR_2.02.02.01', '2013年', DATE('2013-12-13 14:57:23')), ('133', '2.02.02.01', '财务管理-盈利分析(营业收入)-营业收入', 'zh-cn', 'MONTH_2.02.02.01', '10月', DATE('2013-12-13 14:57:23')), ('134', '2.02.02.02', '财务管理-盈利分析(营业收入)-集装箱码头营业收入', 'zh-cn', 'YEAR_2.02.02.02', '2013年', DATE('2013-12-13 14:57:23')), ('135', '2.02.02.02', '财务管理-盈利分析(营业收入)-集装箱码头营业收入', 'zh-cn', 'MONTH_2.02.02.02', '10月', DATE('2013-12-13 14:57:23')), ('136', '2.02.02.03', '财务管理-盈利分析(营业收入)-集装箱企业营业收入', 'zh-cn', 'YEAR_2.02.02.03', '2013年', DATE('2013-12-13 14:57:23')), ('138', '2.02.03.01', '财务管理-盈利分析(成本费用)-成本费用', 'zh-cn', 'YEAR_2.02.03.01', '2013年', DATE('2013-12-13 14:57:23')), ('139', '2.02.03.01', '财务管理-盈利分析(成本费用)-成本费用', 'zh-cn', 'MONTH_2.02.03.01', '10月', DATE('2013-12-13 14:57:23')), ('140', '2.02.03.02', '财务管理-盈利分析(成本费用)-主营业务成本要素-集装箱', 'zh-cn', 'YEAR_2.02.03.02', '2013年', DATE('2013-12-13 14:57:23')), ('141', '2.02.03.02', '财务管理-盈利分析(成本费用)-主营业务成本要素-集装箱', 'zh-cn', 'MONTH_2.02.03.02', '10月', DATE('2013-12-13 14:57:23')), ('142', '2.02.03.03', '财务管理-盈利分析(成本费用)-主营业务成本要素-集装箱一级', 'zh-cn', 'YEAR_2.02.03.03', '2013年', DATE('2013-12-13 14:57:23')), ('293', '1.04.04.01', '保税物流-财务绩效-实际', 'en', 'YEAR_1.04.04.01', '2013年', DATE('2014-01-16 13:38:41')), ('143', '2.02.03.03', '财务管理-盈利分析(成本费用)-主营业务成本要素-集装箱一级', 'zh-cn', 'MONTH_2.02.03.03', '10月', DATE('2013-12-13 14:57:23')), ('144', '2.02.03.04', '财务管理-盈利分析(成本费用)-主营业务成本要素-集装箱二级', 'zh-cn', 'YEAR_2.02.03.04', '2013年', DATE('2013-12-13 14:57:23')), ('146', '2.02.03.22', '财务管理-盈利分析(成本费用)-主营业务成本变动固定-集装箱', 'zh-cn', 'YEAR_2.02.03.22', '2013年', DATE('2013-12-13 14:57:23')), ('147', '2.02.03.22', '财务管理-盈利分析(成本费用)-主营业务成本变动固定-集装箱', 'zh-cn', 'MONTH_2.02.03.22', '10月', DATE('2013-12-13 14:57:23')), ('148', '2.02.03.27', '财务管理-盈利分析(成本费用)-管理费用', 'zh-cn', 'YEAR_2.02.03.27', '2013年', DATE('2013-12-13 14:57:23')), ('149', '2.02.03.27', '财务管理-盈利分析(成本费用)-管理费用', 'zh-cn', 'MONTH_2.02.03.27', '10月', DATE('2013-12-13 14:57:23')), ('150', '2.02.04.01', '财务管理-资本效率分析-整体', 'zh-cn', 'YEAR_2.02.04.01', '2013年', DATE('2013-12-13 14:57:23')), ('151', '2.02.04.01', '财务管理-资本效率分析-整体', 'zh-cn', 'MONTH_2.02.04.01', '10月', DATE('2013-12-13 14:57:23')), ('152', '2.02.04.02', '财务管理-资本效率分析-单体', 'zh-cn', 'YEAR_2.02.04.02', '2013年', DATE('2013-12-13 14:57:23')), ('154', '2.02.06.01', '财务管理-偿债分析-长期偿债能力-整体', 'zh-cn', 'YEAR_2.02.06.01', '2013年', DATE('2013-12-13 14:57:23')), ('155', '2.02.06.01', '财务管理-偿债分析-长期偿债能力-整体', 'zh-cn', 'MONTH_2.02.06.01', '10月', DATE('2013-12-13 14:57:23')), ('156', '2.02.06.02', '财务管理-偿债分析-长期偿债能力-单体', 'zh-cn', 'YEAR_2.02.06.02', '2013年', DATE('2013-12-13 14:57:23')), ('157', '2.02.06.02', '财务管理-偿债分析-长期偿债能力-单体', 'zh-cn', 'MONTH_2.02.06.02', '10月', DATE('2013-12-13 14:57:23')), ('158', '2.02.06.03', '财务管理-偿债分析-短期偿债能力-整体', 'zh-cn', 'YEAR_2.02.06.03', '2013年', DATE('2013-12-13 14:57:23'));
INSERT INTO `t_report_para` values ('161', '2.02.06.04', '财务管理-偿债分析-短期偿债能力-单体', 'zh-cn', 'MONTH_2.02.06.04', '10月', DATE('2013-12-13 14:57:23')), ('162', '2.02.07.01', '财务管理-现金管理分析-现金存量-整体', 'zh-cn', 'YEAR_2.02.07.01', '2013年', DATE('2013-12-13 14:57:23')), ('163', '2.02.07.01', '财务管理-现金管理分析-现金存量-整体', 'zh-cn', 'MONTH_2.02.07.01', '10月', DATE('2013-12-13 14:57:23')), ('164', '2.02.07.02', '财务管理-现金管理分析-现金存量-单体', 'zh-cn', 'YEAR_2.02.07.02', '2013年', DATE('2013-12-13 14:57:23')), ('165', '2.02.07.02', '财务管理-现金管理分析-现金存量-单体', 'zh-cn', 'MONTH_2.02.07.02', '10月', DATE('2013-12-13 14:57:23')), ('167', '2.02.07.03', '财务管理-现金管理分析-现金流量-整体', 'zh-cn', 'MONTH_2.02.07.03', '10月', DATE('2013-12-13 14:57:23')), ('168', '2.02.07.04', '财务管理-现金管理分析-现金流量-单体', 'zh-cn', 'YEAR_2.02.07.04', '2013年', DATE('2013-12-13 14:57:23')), ('169', '2.02.07.04', '财务管理-现金管理分析-现金流量-单体', 'zh-cn', 'MONTH_2.02.07.04', '10月', DATE('2013-12-13 14:57:23')), ('170', '2.03.01.04', '商务市场-市场环境分析-区域竞争对手', 'zh-cn', 'YEAR_2.03.01.04', '2013年', DATE('2013-12-13 14:57:23')), ('171', '2.03.01.04', '商务市场-市场环境分析-区域竞争对手', 'zh-cn', 'MONTH_2.03.01.04', '10月', DATE('2013-12-13 14:57:23')), ('173', '2.03.02.01', '商务市场-客户关系管理-十大营收客户-整体', 'zh-cn', 'MONTH_2.03.02.01', '10月', DATE('2013-12-13 14:57:23')), ('174', '2.03.02.02', '商务市场-客户关系管理-十大业务量客户-整体', 'zh-cn', 'YEAR_2.03.02.02', '2013年', DATE('2013-12-13 14:57:23')), ('175', '2.03.02.02', '商务市场-客户关系管理-十大业务量客户-整体', 'zh-cn', 'MONTH_2.03.02.02', '10月', DATE('2013-12-13 14:57:23')), ('130', '2.02.01.08', '财务管理-盈利分析(综合)-资本资产效率', 'zh-cn', 'YEAR_2.02.01.08', '2013年', DATE('2013-12-13 14:57:23')), ('137', '2.02.02.03', '财务管理-盈利分析(营业收入)-集装箱企业营业收入', 'zh-cn', 'MONTH_2.02.02.03', '10月', DATE('2013-12-13 14:57:23')), ('176', '2.03.02.03', '商务市场-客户关系管理-十大营收客户-单体-港口', 'zh-cn', 'YEAR_2.03.02.03', '2013年', DATE('2013-12-13 14:57:23')), ('177', '2.03.02.03', '商务市场-客户关系管理-十大营收客户-单体-港口', 'zh-cn', 'MONTH_2.03.02.03', '10月', DATE('2013-12-13 14:57:23')), ('178', '2.03.02.04', '商务市场-客户关系管理-十大业务量客户-单体-港口', 'zh-cn', 'YEAR_2.03.02.04', '2013年', DATE('2013-12-13 14:57:23')), ('179', '2.03.02.04', '商务市场-客户关系管理-十大业务量客户-单体-港口', 'zh-cn', 'MONTH_2.03.02.04', '10月', DATE('2013-12-13 14:57:23')), ('180', '2.03.03.01', '商务市场-价格分析-集装箱码头单箱装卸收入', 'zh-cn', 'YEAR_2.03.03.01', '2013年', DATE('2013-12-13 14:57:23')), ('181', '2.03.03.01', '商务市场-价格分析-集装箱码头单箱装卸收入', 'zh-cn', 'MONTH_2.03.03.01', '10月', DATE('2013-12-13 14:57:23')), ('182', '3.01.01.01', '码头运营分析-码头业务量分析-综合', 'zh-cn', 'YEAR_3.01.01.01', '2013年', DATE('2013-12-13 14:57:23')), ('183', '3.01.01.01', '码头运营分析-码头业务量分析-综合', 'zh-cn', 'MONTH_3.01.01.01', '10月', DATE('2013-12-13 14:57:23')), ('184', '3.01.01.02', '码头运营分析-码头业务量分析-集装箱业务量', 'zh-cn', 'YEAR_3.01.01.02', '2013年', DATE('2013-12-13 14:57:23')), ('185', '3.01.01.02', '码头运营分析-码头业务量分析-集装箱业务量', 'zh-cn', 'MONTH_3.01.01.02', '10月', DATE('2013-12-13 14:57:23')), ('186', '3.01.01.04', '码头运营分析-码头业务量分析-集装箱业务量-单体', 'zh-cn', 'YEAR_3.01.01.04', '2013年', DATE('2013-12-13 14:57:23')), ('187', '3.01.01.04', '码头运营分析-码头业务量分析-集装箱业务量-单体', 'zh-cn', 'MONTH_3.01.01.04', '10月', DATE('2013-12-13 14:57:23')), ('188', '3.01.02.00', '码头运营分析-码头资产规模分析', 'zh-cn', 'YEAR_3.01.02.00', '2013年', DATE('2013-12-13 14:57:23')), ('189', '3.01.02.00', '码头运营分析-码头资产规模分析', 'zh-cn', 'MONTH_3.01.02.00', '10月', DATE('2013-12-13 14:57:23')), ('190', '3.01.03.01', '码头运营分析-码头资产效率分析-集装箱', 'zh-cn', 'YEAR_3.01.03.01', '2013年', DATE('2013-12-13 14:57:23')), ('191', '3.01.03.01', '码头运营分析-码头资产效率分析-集装箱', 'zh-cn', 'MONTH_3.01.03.01', '10月', DATE('2013-12-13 14:57:23')), ('192', '3.01.03.03', '码头运营分析-码头资产效率分析-集装箱-单体', 'zh-cn', 'YEAR_3.01.03.03', '2013年', DATE('2013-12-13 14:57:23')), ('193', '3.01.03.03', '码头运营分析-码头资产效率分析-集装箱-单体', 'zh-cn', 'MONTH_3.01.03.03', '10月', DATE('2013-12-13 14:57:23')), ('194', '3.01.04.01', '码头运营分析-码头作业效率分析-集装箱', 'zh-cn', 'YEAR_3.01.04.01', '2013年', DATE('2013-12-13 14:57:23')), ('195', '3.01.04.01', '码头运营分析-码头作业效率分析-集装箱', 'zh-cn', 'MONTH_3.01.04.01', '10月', DATE('2013-12-13 14:57:23')), ('196', '3.01.04.03', '码头运营分析-码头作业效率分析-集装箱-单体', 'zh-cn', 'YEAR_3.01.04.03', '2013年', DATE('2013-12-13 14:57:23')), ('197', '3.01.04.03', '码头运营分析-码头作业效率分析-集装箱-单体', 'zh-cn', 'MONTH_3.01.04.03', '10月', DATE('2013-12-13 14:57:23')), ('124', '2.02.01.01', '财务管理-盈利分析(综合)-盈利规模-整体', 'zh-cn', 'YEAR_2.02.01.01', '2013年', DATE('2013-12-13 14:57:23')), ('145', '2.02.03.04', '财务管理-盈利分析(成本费用)-主营业务成本要素-集装箱二级', 'zh-cn', 'MONTH_2.02.03.04', '10月', DATE('2013-12-13 14:57:23')), ('153', '2.02.04.02', '财务管理-资本效率分析-单体', 'zh-cn', 'MONTH_2.02.04.02', '10月', DATE('2013-12-13 14:57:23')), ('159', '2.02.06.03', '财务管理-偿债分析-短期偿债能力-整体', 'zh-cn', 'MONTH_2.02.06.03', '10月', DATE('2013-12-13 14:57:23')), ('166', '2.02.07.03', '财务管理-现金管理分析-现金流量-整体', 'zh-cn', 'YEAR_2.02.07.03', '2013年', DATE('2013-12-13 14:57:23')), ('172', '2.03.02.01', '商务市场-客户关系管理-十大营收客户-整体', 'zh-cn', 'YEAR_2.03.02.01', '2013年', DATE('2013-12-13 14:57:23')), ('30', '1.02.10.01', '专业集装箱码头-码头效率', 'zh-cn', 'YEAR_1.02.10.01', '2013年', DATE('2013-12-13 14:57:23')), ('70', '1.03.09.04', '通用码头-商务市场-散杂货-累计', 'zh-cn', 'YEAR_1.03.09.04', '2013年', DATE('2013-12-13 14:57:23')), ('114', '1.04.07.02', '保税物流-运营效率-青岛物流', 'zh-cn', 'YEAR_1.04.07.02', '2013年', DATE('2013-12-13 14:57:23')), ('160', '2.02.06.04', '财务管理-偿债分析-短期偿债能力-单体', 'zh-cn', 'YEAR_2.02.06.04', '2013年', DATE('2013-12-13 14:57:23')), ('113', '1.04.07.01', '保税物流-运营效率-招商保税', 'zh-cn', 'MONTH_1.04.07.01', '10月', DATE('2013-12-13 14:57:23')), ('3', '1.01.01.00', '管理驾驶舱-首页', 'zh-cn', 'DAY_1.01.01.00', '13日', DATE('2013-12-13 14:57:23')), ('41', '1.03.04.02', '通用码头-财务绩效-营业收入-累计', 'zh-cn', 'MONTH_1.03.04.02', '10月', DATE('2013-12-13 14:57:23')), ('105', '1.04.06.07', '保税物流-商务市场-招商保税-按项目', 'zh-cn', 'MONTH_1.04.06.07', '10月', DATE('2013-12-13 14:57:23')), ('1002', '1.01.01.00', '管理驾驶舱-首页', 'zh-cn', 'QUARTER_1.01.01.00', '4季度', DATE('2014-01-16 13:38:41')), ('1000', '1.01.01.00', '管理驾驶舱-首页', 'en', 'QUARTER_1.01.01.00', '4季度', DATE('2014-01-16 13:38:41')), ('406', '1.01.02.00', '管理驾驶舱-价值树', 'en', 'MONTH_1.01.02.00', '10月', DATE('2014-01-16 13:38:41')), ('413', '1.04.02.00', '保税物流-价值树', 'en', 'MONTH_1.04.02.00', '10月', DATE('2014-01-16 13:38:41')), ('405', '1.01.02.00', '管理驾驶舱-价值树', 'en', 'YEAR_1.01.02.00', '2013年', DATE('2014-01-16 13:38:41')), ('412', '1.04.02.00', '保税物流-价值树', 'en', 'YEAR_1.04.02.00', '2013年', DATE('2014-01-16 13:38:41')), ('411', '1.03.02.00', '通用码头-价值树', 'en', 'MONTH_1.03.02.00', '10月', DATE('2014-01-16 13:38:41')), ('410', '1.03.02.00', '通用码头-价值树', 'en', 'YEAR_1.03.02.00', '2013年', DATE('2014-01-16 13:38:41')), ('409', '1.02.02.00', '专业集装箱码头-价值树', 'en', 'MONTH_1.02.02.00', '10月', DATE('2014-01-16 13:38:41')), ('408', '1.02.02.00', '专业集装箱码头-价值树', 'en', 'YEAR_1.02.02.00', '2013年', DATE('2014-01-16 13:38:41')), ('208', '1.01.01.00', '管理驾驶舱-首页', 'en', 'YEAR_1.01.01.00', '2013年', DATE('2014-01-16 13:38:41')), ('209', '1.01.01.00', '管理驾驶舱-首页', 'en', 'MONTH_1.01.01.00', '10月', DATE('2014-01-16 13:38:41')), ('211', '1.01.04.00', '管理驾驶舱-财务绩效', 'en', 'YEAR_1.01.04.00', '2013年', DATE('2014-01-16 13:38:41')), ('212', '1.01.04.00', '管理驾驶舱-财务绩效', 'en', 'MONTH_1.01.04.00', '10月', DATE('2014-01-16 13:38:41')), ('213', '1.01.05.00', '管理驾驶舱-业务规模', 'en', 'YEAR_1.01.05.00', '2013年', DATE('2014-01-16 13:38:41')), ('214', '1.01.05.00', '管理驾驶舱-业务规模', 'en', 'MONTH_1.01.05.00', '10月', DATE('2014-01-16 13:38:41')), ('215', '1.01.05.00', '管理驾驶舱-业务规模', 'en', 'DAY_1.01.05.00', '13日', DATE('2014-01-16 13:38:41')), ('216', '1.01.07.03', '管理驾驶舱-保税物流运营效率', 'en', 'YEAR_1.01.07.03', '2013年', DATE('2014-01-16 13:38:41')), ('217', '1.01.07.03', '管理驾驶舱-保税物流运营效率', 'en', 'MONTH_1.01.07.03', '10月', DATE('2014-01-16 13:38:41')), ('199', '1.01.02.00', '管理驾驶舱-价值树', 'zh-cn', 'MONTH_1.01.02.00', '10月', DATE('2014-01-04 00:00:00')), ('218', '1.02.01.01', '专业集装箱码头-首页', 'en', 'YEAR_1.02.01.01', '2013年', DATE('2014-01-16 13:38:41')), ('219', '1.02.01.01', '专业集装箱码头-首页', 'en', 'MONTH_1.02.01.01', '10月', DATE('2014-01-16 13:38:41')), ('220', '1.02.03.00', '专业集装箱码头-宏观环境', 'en', 'YEAR_1.02.03.00', '2013年', DATE('2014-01-16 13:38:41')), ('221', '1.02.03.00', '专业集装箱码头-宏观环境', 'en', 'MONTH_1.02.03.00', '10月', DATE('2014-01-16 13:38:41')), ('222', '1.02.04.01', '专业集装箱码头-财务绩效-营业收入', 'en', 'YEAR_1.02.04.01', '2013年', DATE('2014-01-16 13:38:41')), ('223', '1.02.04.01', '专业集装箱码头-财务绩效-营业收入', 'en', 'MONTH_1.02.04.01', '10月', DATE('2014-01-16 13:38:41')), ('224', '1.02.05.01', '专业集装箱码头-财务绩效-营业毛利', 'en', 'YEAR_1.02.05.01', '2013年', DATE('2014-01-16 13:38:41')), ('225', '1.02.05.01', '专业集装箱码头-财务绩效-营业毛利', 'en', 'MONTH_1.02.05.01', '10月', DATE('2014-01-16 13:38:41')), ('226', '1.02.06.01', '专业集装箱码头-财务绩效-利润总额', 'en', 'YEAR_1.02.06.01', '2013年', DATE('2014-01-16 13:38:41')), ('227', '1.02.06.01', '专业集装箱码头-财务绩效-利润总额', 'en', 'MONTH_1.02.06.01', '10月', DATE('2014-01-16 13:38:41')), ('294', '1.04.04.01', '保税物流-财务绩效-实际', 'en', 'MONTH_1.04.04.01', '10月', DATE('2014-01-16 13:38:41')), ('295', '1.04.04.02', '保税物流-财务绩效-累计', 'en', 'YEAR_1.04.04.02', '2013年', DATE('2014-01-16 13:38:41')), ('296', '1.04.04.02', '保税物流-财务绩效-累计', 'en', 'MONTH_1.04.04.02', '10月', DATE('2014-01-16 13:38:41')), ('297', '1.04.05.01', '保税物流-业务规模', 'en', 'YEAR_1.04.05.01', '2013年', DATE('2014-01-16 13:38:41')), ('299', '1.04.06.01', '保税物流-商务市场-招商保税-客户整体', 'en', 'YEAR_1.04.06.01', '2013年', DATE('2014-01-16 13:38:41')), ('300', '1.04.06.01', '保税物流-商务市场-招商保税-客户整体', 'en', 'MONTH_1.04.06.01', '10月', DATE('2014-01-16 13:38:41')), ('301', '1.04.06.02', '保税物流-商务市场-招商保税-客户仓租', 'en', 'YEAR_1.04.06.02', '2013年', DATE('2014-01-16 13:38:41')), ('302', '1.04.06.02', '保税物流-商务市场-招商保税-客户仓租', 'en', 'MONTH_1.04.06.02', '10月', DATE('2014-01-16 13:38:41')), ('303', '1.04.06.03', '保税物流-商务市场-招商保税-客户自营', 'en', 'YEAR_1.04.06.03', '2013年', DATE('2014-01-16 13:38:41')), ('304', '1.04.06.03', '保税物流-商务市场-招商保税-客户自营', 'en', 'MONTH_1.04.06.03', '10月', DATE('2014-01-16 13:38:41')), ('305', '1.04.06.04', '保税物流-商务市场-招商保税-按项目', 'en', 'YEAR_1.04.06.04', '2013年', DATE('2014-01-16 13:38:41')), ('306', '1.04.06.04', '保税物流-商务市场-招商保税-按项目', 'en', 'MONTH_1.04.06.04', '10月', DATE('2014-01-16 13:38:41')), ('307', '1.04.06.05', '保税物流-商务市场-招商保税-按项目', 'en', 'YEAR_1.04.06.05', '2013年', DATE('2014-01-16 13:38:41')), ('308', '1.04.06.05', '保税物流-商务市场-招商保税-按项目', 'en', 'MONTH_1.04.06.05', '10月', DATE('2014-01-16 13:38:41')), ('309', '1.04.06.06', '保税物流-商务市场-招商保税-按项目', 'en', 'YEAR_1.04.06.06', '2013年', DATE('2014-01-16 13:38:41')), ('310', '1.04.06.06', '保税物流-商务市场-招商保税-按项目', 'en', 'MONTH_1.04.06.06', '10月', DATE('2014-01-16 13:38:41')), ('311', '1.04.06.07', '保税物流-商务市场-招商保税-按项目', 'en', 'YEAR_1.04.06.07', '2013年', DATE('2014-01-16 13:38:41')), ('313', '1.04.06.08', '保税物流-商务市场-青岛物流-客户整体', 'en', 'YEAR_1.04.06.08', '2013年', DATE('2014-01-16 13:38:41')), ('314', '1.04.06.08', '保税物流-商务市场-青岛物流-客户整体', 'en', 'MONTH_1.04.06.08', '10月', DATE('2014-01-16 13:38:41'));
INSERT INTO `t_report_para` values ('315', '1.04.06.09', '保税物流-商务市场-青岛物流-客户仓租', 'en', 'YEAR_1.04.06.09', '2013年', DATE('2014-01-16 13:38:41')), ('316', '1.04.06.09', '保税物流-商务市场-青岛物流-客户仓租', 'en', 'MONTH_1.04.06.09', '10月', DATE('2014-01-16 13:38:41')), ('317', '1.04.06.10', '保税物流-商务市场-青岛物流-客户堆场', 'en', 'YEAR_1.04.06.10', '2013年', DATE('2014-01-16 13:38:41')), ('318', '1.04.06.10', '保税物流-商务市场-青岛物流-客户堆场', 'en', 'MONTH_1.04.06.10', '10月', DATE('2014-01-16 13:38:41')), ('319', '1.04.07.01', '保税物流-运营效率-招商保税', 'en', 'YEAR_1.04.07.01', '2013年', DATE('2014-01-16 13:38:41')), ('322', '1.04.07.02', '保税物流-运营效率-青岛物流', 'en', 'MONTH_1.04.07.02', '10月', DATE('2014-01-16 13:38:41')), ('323', '1.04.07.03', '保税物流-运营效率-项目管理-招商保税', 'en', 'YEAR_1.04.07.03', '2013年', DATE('2014-01-16 13:38:41')), ('324', '1.04.07.03', '保税物流-运营效率-项目管理-招商保税', 'en', 'MONTH_1.04.07.03', '10月', DATE('2014-01-16 13:38:41')), ('325', '1.04.07.04', '保税物流-运营效率-项目管理-招商保税', 'en', 'YEAR_1.04.07.04', '2013年', DATE('2014-01-16 13:38:41')), ('326', '1.04.07.04', '保税物流-运营效率-项目管理-招商保税', 'en', 'MONTH_1.04.07.04', '10月', DATE('2014-01-16 13:38:41')), ('327', '1.05.01.01', '冷链驾驶舱-财务绩效-冷链', 'en', 'YEAR_1.05.01.01', '2013年', DATE('2014-01-16 13:38:41')), ('328', '1.05.01.01', '冷链驾驶舱-财务绩效-冷链', 'en', 'MONTH_1.05.01.01', '10月', DATE('2014-01-16 13:38:41')), ('329', '1.05.02.01', '冷链驾驶舱-业务规模-冷链', 'en', 'YEAR_1.05.02.01', '2013年', DATE('2014-01-16 13:38:41')), ('330', '1.05.02.01', '冷链驾驶舱-业务规模-冷链', 'en', 'MONTH_1.05.02.01', '10月', DATE('2014-01-16 13:38:41')), ('332', '2.02.01.01', '财务管理-盈利分析(综合)-盈利规模-整体', 'en', 'MONTH_2.02.01.01', '10月', DATE('2014-01-16 13:38:41')), ('333', '2.02.01.03', '财务管理-盈利分析(综合)-盈利能力-整体', 'en', 'YEAR_2.02.01.03', '2013年', DATE('2014-01-16 13:38:41')), ('334', '2.02.01.03', '财务管理-盈利分析(综合)-盈利能力-整体', 'en', 'MONTH_2.02.01.03', '10月', DATE('2014-01-16 13:38:41')), ('335', '2.02.01.05', '财务管理-盈利分析(综合)-盈利规模与能力', 'en', 'YEAR_2.02.01.05', '2013年', DATE('2014-01-16 13:38:41')), ('336', '2.02.01.05', '财务管理-盈利分析(综合)-盈利规模与能力', 'en', 'MONTH_2.02.01.05', '10月', DATE('2014-01-16 13:38:41')), ('338', '2.02.01.08', '财务管理-盈利分析(综合)-资本资产效率', 'en', 'MONTH_2.02.01.08', '10月', DATE('2014-01-16 13:38:41')), ('339', '2.02.02.01', '财务管理-盈利分析(营业收入)-营业收入', 'en', 'YEAR_2.02.02.01', '2013年', DATE('2014-01-16 13:38:41')), ('340', '2.02.02.01', '财务管理-盈利分析(营业收入)-营业收入', 'en', 'MONTH_2.02.02.01', '10月', DATE('2014-01-16 13:38:41')), ('341', '2.02.02.02', '财务管理-盈利分析(营业收入)-集装箱码头营业收入', 'en', 'YEAR_2.02.02.02', '2013年', DATE('2014-01-16 13:38:41')), ('342', '2.02.02.02', '财务管理-盈利分析(营业收入)-集装箱码头营业收入', 'en', 'MONTH_2.02.02.02', '10月', DATE('2014-01-16 13:38:41')), ('343', '2.02.02.03', '财务管理-盈利分析(营业收入)-集装箱企业营业收入', 'en', 'YEAR_2.02.02.03', '2013年', DATE('2014-01-16 13:38:41')), ('345', '2.02.03.01', '财务管理-盈利分析(成本费用)-成本费用', 'en', 'YEAR_2.02.03.01', '2013年', DATE('2014-01-16 13:38:41')), ('346', '2.02.03.01', '财务管理-盈利分析(成本费用)-成本费用', 'en', 'MONTH_2.02.03.01', '10月', DATE('2014-01-16 13:38:41')), ('347', '2.02.03.02', '财务管理-盈利分析(成本费用)-主营业务成本要素-集装箱', 'en', 'YEAR_2.02.03.02', '2013年', DATE('2014-01-16 13:38:41')), ('348', '2.02.03.02', '财务管理-盈利分析(成本费用)-主营业务成本要素-集装箱', 'en', 'MONTH_2.02.03.02', '10月', DATE('2014-01-16 13:38:41')), ('349', '2.02.03.03', '财务管理-盈利分析(成本费用)-主营业务成本要素-集装箱一级', 'en', 'YEAR_2.02.03.03', '2013年', DATE('2014-01-16 13:38:41')), ('350', '2.02.03.03', '财务管理-盈利分析(成本费用)-主营业务成本要素-集装箱一级', 'en', 'MONTH_2.02.03.03', '10月', DATE('2014-01-16 13:38:41')), ('351', '2.02.03.04', '财务管理-盈利分析(成本费用)-主营业务成本要素-集装箱二级', 'en', 'YEAR_2.02.03.04', '2013年', DATE('2014-01-16 13:38:41')), ('353', '2.02.03.22', '财务管理-盈利分析(成本费用)-主营业务成本变动固定-集装箱', 'en', 'YEAR_2.02.03.22', '2013年', DATE('2014-01-16 13:38:41')), ('354', '2.02.03.22', '财务管理-盈利分析(成本费用)-主营业务成本变动固定-集装箱', 'en', 'MONTH_2.02.03.22', '10月', DATE('2014-01-16 13:38:41')), ('355', '2.02.03.27', '财务管理-盈利分析(成本费用)-管理费用', 'en', 'YEAR_2.02.03.27', '2013年', DATE('2014-01-16 13:38:41')), ('356', '2.02.03.27', '财务管理-盈利分析(成本费用)-管理费用', 'en', 'MONTH_2.02.03.27', '10月', DATE('2014-01-16 13:38:41')), ('357', '2.02.04.01', '财务管理-资本效率分析-整体', 'en', 'YEAR_2.02.04.01', '2013年', DATE('2014-01-16 13:38:41')), ('358', '2.02.04.01', '财务管理-资本效率分析-整体', 'en', 'MONTH_2.02.04.01', '10月', DATE('2014-01-16 13:38:41')), ('359', '2.02.04.02', '财务管理-资本效率分析-单体', 'en', 'YEAR_2.02.04.02', '2013年', DATE('2014-01-16 13:38:41')), ('361', '2.02.06.01', '财务管理-偿债分析-长期偿债能力-整体', 'en', 'YEAR_2.02.06.01', '2013年', DATE('2014-01-16 13:38:41')), ('362', '2.02.06.01', '财务管理-偿债分析-长期偿债能力-整体', 'en', 'MONTH_2.02.06.01', '10月', DATE('2014-01-16 13:38:41')), ('363', '2.02.06.02', '财务管理-偿债分析-长期偿债能力-单体', 'en', 'YEAR_2.02.06.02', '2013年', DATE('2014-01-16 13:38:41')), ('364', '2.02.06.02', '财务管理-偿债分析-长期偿债能力-单体', 'en', 'MONTH_2.02.06.02', '10月', DATE('2014-01-16 13:38:41')), ('365', '2.02.06.03', '财务管理-偿债分析-短期偿债能力-整体', 'en', 'YEAR_2.02.06.03', '2013年', DATE('2014-01-16 13:38:41')), ('368', '2.02.06.04', '财务管理-偿债分析-短期偿债能力-单体', 'en', 'MONTH_2.02.06.04', '10月', DATE('2014-01-16 13:38:41')), ('369', '2.02.07.01', '财务管理-现金管理分析-现金存量-整体', 'en', 'YEAR_2.02.07.01', '2013年', DATE('2014-01-16 13:38:41')), ('370', '2.02.07.01', '财务管理-现金管理分析-现金存量-整体', 'en', 'MONTH_2.02.07.01', '10月', DATE('2014-01-16 13:38:41')), ('371', '2.02.07.02', '财务管理-现金管理分析-现金存量-单体', 'en', 'YEAR_2.02.07.02', '2013年', DATE('2014-01-16 13:38:41')), ('228', '1.02.07.01', '专业集装箱码头-财务绩效-管理费用', 'en', 'YEAR_1.02.07.01', '2013年', DATE('2014-01-16 13:38:41')), ('229', '1.02.07.01', '专业集装箱码头-财务绩效-管理费用', 'en', 'MONTH_1.02.07.01', '10月', DATE('2014-01-16 13:38:41')), ('230', '1.02.08.01', '专业集装箱码头-业务规模-日统计', 'en', 'YEAR_1.02.08.01', '2013年', DATE('2014-01-16 13:38:41')), ('231', '1.02.08.01', '专业集装箱码头-业务规模-日统计', 'en', 'MONTH_1.02.08.01', '10月', DATE('2014-01-16 13:38:41')), ('232', '1.02.08.01', '专业集装箱码头-业务规模-日统计', 'en', 'DAY_1.02.08.01', '13日', DATE('2014-01-16 13:38:41')), ('233', '1.02.08.02', '专业集装箱码头-业务规模-月统计', 'en', 'YEAR_1.02.08.02', '2013年', DATE('2014-01-16 13:38:41')), ('234', '1.02.08.02', '专业集装箱码头-业务规模-月统计', 'en', 'MONTH_1.02.08.02', '10月', DATE('2014-01-16 13:38:41')), ('235', '1.02.09.01', '专业集装箱码头-商务市场', 'en', 'YEAR_1.02.09.01', '2013年', DATE('2014-01-16 13:38:41')), ('236', '1.02.09.01', '专业集装箱码头-商务市场', 'en', 'MONTH_1.02.09.01', '10月', DATE('2014-01-16 13:38:41')), ('238', '1.02.10.01', '专业集装箱码头-码头效率', 'en', 'MONTH_1.02.10.01', '10月', DATE('2014-01-16 13:38:41')), ('239', '1.03.01.01', '通用码头-首页-实际', 'en', 'MONTH_1.03.01.01', '10月', DATE('2014-01-16 13:38:41')), ('240', '1.03.01.01', '通用码头-首页-实际', 'en', 'YEAR_1.03.01.01', '2013年', DATE('2014-01-16 13:38:41')), ('241', '1.03.01.02', '通用码头-首页-累计', 'en', 'MONTH_1.03.01.02', '10月', DATE('2014-01-16 13:38:41')), ('242', '1.03.01.02', '通用码头-首页-累计', 'en', 'YEAR_1.03.01.02', '2013年', DATE('2014-01-16 13:38:41')), ('243', '1.03.03.00', '通用码头-宏观环境', 'en', 'MONTH_1.03.03.00', '10月', DATE('2014-01-16 13:38:41')), ('244', '1.03.03.00', '通用码头-宏观环境', 'en', 'YEAR_1.03.03.00', '2013年', DATE('2014-01-16 13:38:41')), ('245', '1.03.04.01', '通用码头-财务绩效-营业收入-实际', 'en', 'YEAR_1.03.04.01', '2013年', DATE('2014-01-16 13:38:41')), ('246', '1.03.04.01', '通用码头-财务绩效-营业收入-实际', 'en', 'MONTH_1.03.04.01', '10月', DATE('2014-01-16 13:38:41')), ('247', '1.03.04.02', '通用码头-财务绩效-营业收入-累计', 'en', 'YEAR_1.03.04.02', '2013年', DATE('2014-01-16 13:38:41')), ('249', '1.03.05.01', '通用码头-财务绩效-营业毛利-实际', 'en', 'YEAR_1.03.05.01', '2013年', DATE('2014-01-16 13:38:41')), ('250', '1.03.05.01', '通用码头-财务绩效-营业毛利-实际', 'en', 'MONTH_1.03.05.01', '10月', DATE('2014-01-16 13:38:41')), ('251', '1.03.05.02', '通用码头-财务绩效-营业毛利-累计', 'en', 'YEAR_1.03.05.02', '2013年', DATE('2014-01-16 13:38:41')), ('252', '1.03.05.02', '通用码头-财务绩效-营业毛利-累计', 'en', 'MONTH_1.03.05.02', '10月', DATE('2014-01-16 13:38:41')), ('253', '1.03.06.01', '通用码头-财务绩效-利润总额-实际', 'en', 'YEAR_1.03.06.01', '2013年', DATE('2014-01-16 13:38:41')), ('254', '1.03.06.01', '通用码头-财务绩效-利润总额-实际', 'en', 'MONTH_1.03.06.01', '10月', DATE('2014-01-16 13:38:41')), ('255', '1.03.06.02', '通用码头-财务绩效-利润总额-累计', 'en', 'YEAR_1.03.06.02', '2013年', DATE('2014-01-16 13:38:41')), ('256', '1.03.06.02', '通用码头-财务绩效-利润总额-累计', 'en', 'MONTH_1.03.06.02', '10月', DATE('2014-01-16 13:38:41')), ('257', '1.03.07.01', '通用码头-财务绩效-管理费用-实际', 'en', 'YEAR_1.03.07.01', '2013年', DATE('2014-01-16 13:38:41')), ('258', '1.03.07.01', '通用码头-财务绩效-管理费用-实际', 'en', 'MONTH_1.03.07.01', '10月', DATE('2014-01-16 13:38:41')), ('259', '1.03.07.02', '通用码头-财务绩效-管理费用-累计', 'en', 'YEAR_1.03.07.02', '2013年', DATE('2014-01-16 13:38:41')), ('261', '1.03.08.01', '通用码头-业务规模-集装箱-日统计', 'en', 'YEAR_1.03.08.01', '2013年', DATE('2014-01-16 13:38:41')), ('262', '1.03.08.01', '通用码头-业务规模-集装箱-日统计', 'en', 'MONTH_1.03.08.01', '10月', DATE('2014-01-16 13:38:41')), ('263', '1.03.08.01', '通用码头-业务规模-集装箱-日统计', 'en', 'DAY_1.03.08.01', '13日', DATE('2014-01-16 13:38:41')), ('264', '1.03.08.02', '通用码头-业务规模-集装箱-月统计', 'en', 'YEAR_1.03.08.02', '2013年', DATE('2014-01-16 13:38:41')), ('265', '1.03.08.02', '通用码头-业务规模-集装箱-月统计', 'en', 'MONTH_1.03.08.02', '10月', DATE('2014-01-16 13:38:41')), ('266', '1.03.08.03', '通用码头-业务规模-散杂货-日统计', 'en', 'YEAR_1.03.08.03', '2013年', DATE('2014-01-16 13:38:41')), ('267', '1.03.08.03', '通用码头-业务规模-散杂货-日统计', 'en', 'MONTH_1.03.08.03', '10月', DATE('2014-01-16 13:38:41')), ('268', '1.03.08.03', '通用码头-业务规模-散杂货-日统计', 'en', 'DAY_1.03.08.03', '13日', DATE('2014-01-16 13:38:41')), ('269', '1.03.08.04', '通用码头-业务规模-散杂货-月统计', 'en', 'YEAR_1.03.08.04', '2013年', DATE('2014-01-16 13:38:41')), ('270', '1.03.08.04', '通用码头-业务规模-散杂货-月统计', 'en', 'MONTH_1.03.08.04', '10月', DATE('2014-01-16 13:38:41')), ('271', '1.03.09.01', '通用码头-商务市场-集装箱-实际', 'en', 'YEAR_1.03.09.01', '2013年', DATE('2014-01-16 13:38:41')), ('272', '1.03.09.01', '通用码头-商务市场-集装箱-实际', 'en', 'MONTH_1.03.09.01', '10月', DATE('2014-01-16 13:38:41')), ('273', '1.03.09.02', '通用码头-商务市场-集装箱-累计', 'en', 'YEAR_1.03.09.02', '2013年', DATE('2014-01-16 13:38:41')), ('274', '1.03.09.02', '通用码头-商务市场-集装箱-累计', 'en', 'MONTH_1.03.09.02', '10月', DATE('2014-01-16 13:38:41')), ('275', '1.03.09.03', '通用码头-商务市场-散杂货-实际', 'en', 'YEAR_1.03.09.03', '2013年', DATE('2014-01-16 13:38:41')), ('276', '1.03.09.03', '通用码头-商务市场-散杂货-实际', 'en', 'MONTH_1.03.09.03', '10月', DATE('2014-01-16 13:38:41')), ('278', '1.03.09.04', '通用码头-商务市场-散杂货-累计', 'en', 'MONTH_1.03.09.04', '10月', DATE('2014-01-16 13:38:41')), ('279', '1.03.10.01', '通用码头-效率码头-集装箱', 'en', 'YEAR_1.03.10.01', '2013年', DATE('2014-01-16 13:38:41')), ('280', '1.03.10.01', '通用码头-效率码头-集装箱', 'en', 'MONTH_1.03.10.01', '10月', DATE('2014-01-16 13:38:41')), ('281', '1.03.11.01', '通用码头-效率码头-散杂货', 'en', 'YEAR_1.03.11.01', '2013年', DATE('2014-01-16 13:38:41')), ('282', '1.03.11.01', '通用码头-效率码头-散杂货', 'en', 'MONTH_1.03.11.01', '10月', DATE('2014-01-16 13:38:41')), ('283', '1.04.01.01', '保税物流-首页-招商保税-实际', 'en', 'YEAR_1.04.01.01', '2013年', DATE('2014-01-16 13:38:41'));
INSERT INTO `t_report_para` values ('284', '1.04.01.01', '保税物流-首页-招商保税-实际', 'en', 'MONTH_1.04.01.01', '10月', DATE('2014-01-16 13:38:41')), ('285', '1.04.01.02', '保税物流-首页-招商保税-累计', 'en', 'YEAR_1.04.01.02', '2013年', DATE('2014-01-16 13:38:41')), ('286', '1.04.01.02', '保税物流-首页-招商保税-累计', 'en', 'MONTH_1.04.01.02', '10月', DATE('2014-01-16 13:38:41')), ('287', '1.04.01.03', '保税物流-首页-青岛物流-实际', 'en', 'YEAR_1.04.01.03', '2013年', DATE('2014-01-16 13:38:41')), ('288', '1.04.01.03', '保税物流-首页-青岛物流-实际', 'en', 'MONTH_1.04.01.03', '10月', DATE('2014-01-16 13:38:41')), ('289', '1.04.01.04', '保税物流-首页-青岛物流-累计', 'en', 'YEAR_1.04.01.04', '2013年', DATE('2014-01-16 13:38:41')), ('290', '1.04.01.04', '保税物流-首页-青岛物流-累计', 'en', 'MONTH_1.04.01.04', '10月', DATE('2014-01-16 13:38:41')), ('291', '1.04.03.00', '保税物流-宏观环境', 'en', 'YEAR_1.04.03.00', '2013年', DATE('2014-01-16 13:38:41'));
COMMIT;

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
`role_id`  decimal(65,30) NOT NULL ,
`role_name`  varchar(100) NOT NULL ,
`remark`  varchar(100) NULL ,
`create_time`  datetime NOT NULL ,
`modify_time`  datetime NULL 
)
type=InnoDB
;

-- ----------------------------
-- Records of t_role
-- ----------------------------
BEGIN;
INSERT INTO `t_role` values ('23', '用户管理员', '负责用户的增删改操作', DATE('2018-01-09 15:32:41'), null), ('1', '管理员', '管理员', DATE('2017-12-27 16:23:11'), DATE('2018-02-24 16:01:45')), ('2', '测试账号', '测试账号', DATE('2017-12-27 16:25:09'), DATE('2018-01-23 09:11:11')), ('3', '注册账户', '注册账户，只可查看，不可操作', DATE('2017-12-29 16:00:15'), DATE('2018-02-24 17:33:45')), ('24', '系统监控员', '可查看系统监控信息，但不可操作', DATE('2018-01-09 15:52:01'), DATE('2018-03-07 19:05:33')), ('25', '用户查看', '查看用户，无相应操作权限', DATE('2018-01-09 15:56:30'), null), ('63', '影院工作者', '可查看影视信息', DATE('2018-02-06 08:48:28'), DATE('2018-03-07 19:05:26')), ('64', '天气预报员', '可查看天气预报信息', DATE('2018-02-27 08:47:04'), null), ('65', '文章审核', '文章类', DATE('2018-02-27 08:48:01'), DATE('2018-03-13 11:20:34'));
COMMIT;

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu` (
`role_id`  decimal(65,30) NOT NULL ,
`menu_id`  decimal(65,30) NOT NULL 
)
type=InnoDB
;

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `t_role_menu` values ('3', '58'), ('3', '59'), ('3', '61'), ('3', '81'), ('3', '82'), ('3', '83'), ('3', '86'), ('3', '87'), ('3', '88'), ('3', '89'), ('3', '1'), ('3', '3'), ('3', '4'), ('3', '5'), ('3', '6'), ('3', '64'), ('3', '2'), ('3', '8'), ('3', '10'), ('3', '101'), ('3', '102'), ('3', '109'), ('63', '58'), ('63', '81'), ('63', '82'), ('63', '83'), ('24', '8'), ('24', '2'), ('24', '10'), ('65', '86'), ('65', '88'), ('65', '89'), ('65', '58'), ('65', '61'), ('2', '81'), ('2', '61'), ('2', '24'), ('2', '82'), ('2', '83'), ('2', '58'), ('2', '59'), ('2', '2'), ('2', '8'), ('2', '10'), ('23', '11'), ('23', '12'), ('23', '13'), ('23', '3'), ('23', '1'), ('25', '1'), ('25', '3'), ('1', '59'), ('1', '2'), ('1', '3'), ('1', '67'), ('1', '1'), ('1', '4'), ('1', '5'), ('1', '6'), ('1', '20'), ('1', '21'), ('1', '22'), ('1', '10'), ('1', '8'), ('1', '58'), ('1', '66'), ('1', '11'), ('1', '12'), ('1', '64'), ('1', '13'), ('1', '14'), ('1', '65'), ('1', '15'), ('1', '16'), ('1', '17'), ('1', '18'), ('1', '23'), ('1', '81'), ('1', '82'), ('1', '83'), ('1', '19'), ('1', '24'), ('1', '61'), ('1', '86'), ('1', '87'), ('1', '88'), ('1', '89'), ('1', '101'), ('1', '102'), ('1', '103'), ('1', '104'), ('1', '105'), ('1', '106'), ('1', '107'), ('1', '108'), ('1', '109'), ('1', '110'), ('64', '59'), ('64', '58');
COMMIT;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
`user_id`  decimal(65,30) NOT NULL ,
`username`  varchar(50) NOT NULL ,
`password`  varchar(128) NOT NULL ,
`dept_id`  decimal(65,30) NULL ,
`email`  varchar(128) NULL ,
`mobile`  varchar(20) NULL ,
`status`  char(1) NOT NULL ,
`create_time`  datetime NOT NULL ,
`modify_time`  datetime NULL ,
`last_login_time`  datetime NULL ,
`ssex`  char(1) NULL ,
`theme`  varchar(10) NULL ,
`avatar`  varchar(100) NULL ,
`description`  varchar(100) NULL 
)
type=InnoDB
;

-- ----------------------------
-- Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO `t_user` values ('162', 'beibei', 'b5ce06e87e255d097fb6956f7fb0d8b3', '5', 'beibei@qq.com', '13488873263', '1', DATE('2018-02-24 17:34:14'), DATE('2018-03-01 16:11:43'), DATE('2018-03-14 11:41:39'), '2', 'green', '17e420c250804efe904a09a33796d5a10.jpg', '我是贝贝。'), ('41', 'hippo', 'ed08932437f80522619de4b7f87fcdda', '4', 'hq@qq.com', '18067887364', '1', DATE('2017-12-29 19:53:03'), DATE('2018-02-06 11:33:22'), DATE('2018-02-06 11:37:14'), '1', 'teal', 'default.jpg', null), ('4', 'MrBird', '42ee25d1e43e9f57119a00d0a39e5250', '1', '852252812@qq.com', '17720888889', '1', DATE('2017-12-27 15:47:19'), DATE('2018-03-01 16:07:39'), DATE('2018-03-19 14:12:47'), '0', 'green', '595ba7b05f2e485eb50565a50cb6cc3c.jpeg', '我就是我 颜色不一样的烟火...'), ('6', 'tester', '243e29429b340192700677d48c09d992', '6', 'tester@qq.com', '13888888888', '1', DATE('2017-12-27 17:35:14'), DATE('2018-03-01 16:52:30'), DATE('2018-01-23 09:17:27'), '1', 'teal', 'default.jpg', null), ('23', 'scott', 'ac3af72d9f95161a502fd326865c2f15', '6', 'scott@qq.com', '15134627389', '1', DATE('2017-12-29 16:16:39'), DATE('2018-03-01 16:11:33'), DATE('2018-03-19 14:14:35'), '1', 'blue-grey', 'default.jpg', '我是scott'), ('24', 'smith', '228208eafc74e48c44619cc543fc0efe', '3', 'smith@qq.com', '13364754932', '1', DATE('2017-12-29 16:21:31'), DATE('2018-02-27 08:48:16'), DATE('2018-02-27 08:48:27'), '1', 'teal', 'default.jpg', null), ('25', 'allen', '83baac97928a113986054efacaeec1d2', '3', 'allen@qq.com', '13427374857', '0', DATE('2017-12-29 16:21:54'), DATE('2018-01-17 11:28:16'), null, '1', 'indigo', 'default.jpg', null), ('26', 'martin', 'b26c9edca9a61016bca1f6fb042e679e', '4', 'martin@qq.com', '15562736678', '1', DATE('2017-12-29 16:22:24'), DATE('2018-01-25 09:23:15'), DATE('2018-01-25 17:24:50'), '1', 'teal', 'default.jpg', null), ('27', 'ford', '0448f0dcfd856b0e831842072b532141', '6', 'ford@qq.com', '15599998373', '0', DATE('2017-12-29 16:22:52'), DATE('2018-03-13 11:19:56'), DATE('2018-03-08 16:31:59'), '0', 'cyan', 'default.jpg', null), ('68', 'kangkang', '9983fe3651aaef335ec77159712009af', '2', 'kangkang@hotmail.com', '18874783892', '1', DATE('2018-01-03 17:23:24'), DATE('2018-01-17 11:27:39'), null, '0', 'green', 'default.jpg', null), ('92', 'userLook', '815bffb1baa36e14e8b0b5887a853291', '3', 'userlook@163.com', '13455998888', '1', DATE('2018-01-09 15:56:58'), DATE('2018-01-17 11:17:42'), DATE('2018-01-09 15:57:09'), '1', 'indigo', 'default.jpg', null), ('125', '卑微的浮萍', 'c1cc7ea10ee9b41fd33f129394480612', '6', 'BWDFP@163.com', '17728872787', '0', DATE('2018-01-17 15:05:15'), DATE('2018-01-19 09:20:35'), DATE('2018-01-17 15:05:27'), '2', 'green', 'default.jpg', null), ('91', '系统监控员', '7c28d1cd33414ac15832f7be92668b7a', '6', 'xtjk@qq.com', '18088736652', '1', DATE('2018-01-09 15:52:56'), null, DATE('2018-01-09 15:53:12'), '0', 'cyan', 'default.jpg', null), ('161', 'hero', '1ab36105101bab2e665eeeb954ee4aa2', '4', 'hero@qq.com', '13477589012', '0', DATE('2018-02-05 14:54:25'), DATE('2018-02-27 14:57:20'), null, '0', 'green', 'default.jpg', null);
COMMIT;

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
`user_id`  decimal(65,30) NOT NULL ,
`role_id`  decimal(65,30) NOT NULL 
)
type=InnoDB
;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
BEGIN;
INSERT INTO `t_user_role` values ('27', '3'), ('24', '65'), ('161', '64'), ('4', '1'), ('23', '3'), ('23', '24'), ('23', '25'), ('162', '1'), ('162', '3'), ('26', '3'), ('26', '23'), ('26', '24'), ('92', '25'), ('68', '1'), ('92', '2'), ('92', '3'), ('25', '3'), ('125', '3'), ('91', '24'), ('165', '3'), ('41', '1'), ('6', '2');
COMMIT;

-- ----------------------------
-- Indexes structure for table ortz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Primary key structure for table ortz_blob_triggers
-- ----------------------------
-- ALTER TABLE `ortz_blob_triggers` ADD PRIMARY key (`sched_name`, `trigger_name`, `trigger_group`);

-- ----------------------------
-- Indexes structure for table qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Primary key structure for table qrtz_calendars
-- ----------------------------
-- ALTER TABLE `qrtz_calendars` ADD PRIMARY key (`sched_name`, `calendar_name`);

-- ----------------------------
-- Indexes structure for table qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Primary key structure for table qrtz_cron_triggers
-- ----------------------------
-- ALTER TABLE `qrtz_cron_triggers` ADD PRIMARY key (`sched_name`, `trigger_name`, `trigger_group`);

-- ----------------------------
-- Indexes structure for table qrtz_fired_triggers
-- ----------------------------
CREATE INDEX `idX_QRTZ_Ft_INSt_job_REQ_RCVRY` ON `qrtz_fired_triggers`(`sched_name`, `instance_name`, `requests_recovery`) ;
CREATE INDEX `idX_QRTZ_Ft_JG` ON `qrtz_fired_triggers`(`sched_name`, `job_group`) ;
CREATE INDEX `idX_QRTZ_Ft_J_G` ON `qrtz_fired_triggers`(`sched_name`, `job_name`, `job_group`) ;
CREATE INDEX `idX_QRTZ_Ft_TG` ON `qrtz_fired_triggers`(`sched_name`, `trigger_group`) ;
CREATE INDEX `idX_QRTZ_Ft_TRIG_INSt_name` ON `qrtz_fired_triggers`(`sched_name`, `instance_name`) ;
CREATE INDEX `idX_QRTZ_Ft_t_G` ON `qrtz_fired_triggers`(`sched_name`, `trigger_name`, `trigger_group`) ;

-- ----------------------------
-- Primary key structure for table qrtz_fired_triggers
-- ----------------------------
-- ALTER TABLE `qrtz_fired_triggers` ADD PRIMARY key (`sched_name`, `entry_id`);

-- ----------------------------
-- Indexes structure for table qrtz_job_details
-- ----------------------------
CREATE INDEX `idX_QRTZ_J_GRP` ON `qrtz_job_details`(`sched_name`, `job_group`) ;
CREATE INDEX `idX_QRTZ_J_REQ_RECOVERY` ON `qrtz_job_details`(`sched_name`, `requests_recovery`) ;

-- ----------------------------
-- Primary key structure for table qrtz_job_details
-- ----------------------------
-- ALTER TABLE `qrtz_job_details` ADD PRIMARY key (`sched_name`, `job_name`, `job_group`);

-- ----------------------------
-- Indexes structure for table qrtz_locks
-- ----------------------------

-- ----------------------------
-- Primary key structure for table qrtz_locks
-- ----------------------------
-- ALTER TABLE `qrtz_locks` ADD PRIMARY key (`sched_name`, `lock_name`);

-- ----------------------------
-- Indexes structure for table qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Primary key structure for table qrtz_paused_trigger_grps
-- ----------------------------
-- ALTER TABLE `qrtz_paused_trigger_grps` ADD PRIMARY key (`sched_name`, `trigger_group`);

-- ----------------------------
-- Indexes structure for table qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Primary key structure for table qrtz_scheduler_state
-- ----------------------------
-- ALTER TABLE `qrtz_scheduler_state` ADD PRIMARY key (`sched_name`, `instance_name`);

-- ----------------------------
-- Indexes structure for table qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Primary key structure for table qrtz_simple_triggers
-- ----------------------------
-- ALTER TABLE `qrtz_simple_triggers` ADD PRIMARY key (`sched_name`, `trigger_name`, `trigger_group`);

-- ----------------------------
-- Indexes structure for table qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Primary key structure for table qrtz_simprop_triggers
-- ----------------------------
-- ALTER TABLE `qrtz_simprop_triggers` ADD PRIMARY key (`sched_name`, `trigger_name`, `trigger_group`);

-- ----------------------------
-- Indexes structure for table qrtz_triggers
-- ----------------------------
CREATE INDEX `idX_QRTZ_t_C` ON `qrtz_triggers`(`sched_name`, `calendar_name`) ;
CREATE INDEX `idX_QRTZ_t_G` ON `qrtz_triggers`(`sched_name`, `trigger_group`) ;
CREATE INDEX `idX_QRTZ_t_J` ON `qrtz_triggers`(`sched_name`, `job_name`, `job_group`) ;
CREATE INDEX `idX_QRTZ_t_JG` ON `qrtz_triggers`(`sched_name`, `job_group`) ;
CREATE INDEX `idX_QRTZ_t_next_fire_time` ON `qrtz_triggers`(`sched_name`, `next_fire_time`) ;
CREATE INDEX `idX_QRTZ_t_NFt_MISFIRE` ON `qrtz_triggers`(`sched_name`, `misfire_instr`, `next_fire_time`) ;
CREATE INDEX `idX_QRTZ_t_NFt_ST` ON `qrtz_triggers`(`sched_name`, `trigger_state`, `next_fire_time`) ;
CREATE INDEX `idX_QRTZ_t_NFt_St_MISFIRE` ON `qrtz_triggers`(`sched_name`, `misfire_instr`, `next_fire_time`, `trigger_state`) ;
CREATE INDEX `idX_QRTZ_t_NFt_St_MISFIRE_GRP` ON `qrtz_triggers`(`sched_name`, `misfire_instr`, `next_fire_time`, `trigger_group`, `trigger_state`) ;
CREATE INDEX `idX_QRTZ_t_N_G_state` ON `qrtz_triggers`(`sched_name`, `trigger_group`, `trigger_state`) ;
CREATE INDEX `idX_QRTZ_t_N_state` ON `qrtz_triggers`(`sched_name`, `trigger_name`, `trigger_group`, `trigger_state`) ;
CREATE INDEX `idX_QRTZ_t_state` ON `qrtz_triggers`(`sched_name`, `trigger_state`) ;

-- ----------------------------
-- Primary key structure for table qrtz_triggers
-- ----------------------------
-- ALTER TABLE `qrtz_triggers` ADD PRIMARY key (`sched_name`, `trigger_name`, `trigger_group`);

-- ----------------------------
-- Indexes structure for table t_dept
-- ----------------------------

-- ----------------------------
-- Primary key structure for table t_dept
-- ----------------------------
-- ALTER TABLE `t_dept` ADD PRIMARY key (`dept_id`);

-- ----------------------------
-- Indexes structure for table t_dict
-- ----------------------------

-- ----------------------------
-- Primary key structure for table t_dict
-- ----------------------------
-- ALTER TABLE `t_dict` ADD PRIMARY key (`dict_id`);

-- ----------------------------
-- Indexes structure for table t_job
-- ----------------------------

-- ----------------------------
-- Primary key structure for table t_job
-- ----------------------------
-- ALTER TABLE `t_job` ADD PRIMARY key (`job_id`);

-- ----------------------------
-- Indexes structure for table t_job_log
-- ----------------------------

-- ----------------------------
-- Primary key structure for table t_job_log
-- ----------------------------
-- ALTER TABLE `t_job_log` ADD PRIMARY key (`log_id`);

-- ----------------------------
-- Indexes structure for table t_msg
-- ----------------------------

-- ----------------------------
-- Primary key structure for table t_msg
-- ----------------------------
-- ALTER TABLE `t_msg` ADD PRIMARY key (`row_id`);

set FOREIGN_key_CHECKS=1;
