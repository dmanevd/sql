create database IF NOT EXISTS tcodata;
use tcodata;
ADD JARS /usr/hdp/current/hive-webhcat/share/hcatalog/mssql-jdbc.jar /usr/hdp/current/hive-webhcat/share/hcatalog/tcodata-datalake-jdbc-handler.jar /usr/hdp/current/hive-webhcat/share/hcatalog/avro-1.8.2.jar;
CREATE TABLE `dim_driver`(
  `subscription_id` int, 
  `external_id` bigint, 
  `ingested_time` timestamp, 
  `persisted_time` timestamp, 
  `version_id` string, 
  `site_id` int, 
  `group_id` int, 
  `last_license` timestamp, 
  `next_license` timestamp, 
  `license_interval` int, 
  `license_remind` int, 
  `license_remind2` int, 
  `license` boolean, 
  `created` timestamp, 
  `employee_no` string, 
  `extended_id` string, 
  `name` string, 
  `def_allow_veh_access` boolean, 
  `distance_checked` timestamp, 
  `updated` timestamp)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.orc.OrcSerde' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'
LOCATION
  'adl://home/hive/warehouse/tcodata.db/dim_driver'
TBLPROPERTIES (
  'STATS_GENERATED_VIA_STATS_TASK'='true', 
  'auto.purge'='true', 
  'numFiles'='255', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='305322582', 
  'transient_lastDdlTime'='1530709250')
;
CREATE TABLE `dim_driver_norm`(
  `is_active` timestamp, 
  `subscription_id` int, 
  `external_id` bigint, 
  `ingested_time` timestamp, 
  `persisted_time` timestamp, 
  `version_id` string, 
  `site_id` int, 
  `group_id` int, 
  `last_license` timestamp, 
  `next_license` timestamp, 
  `license_interval` int, 
  `license_remind` int, 
  `license_remind2` int, 
  `license` boolean, 
  `created` timestamp, 
  `employee_no` string, 
  `extended_id` string, 
  `name` string, 
  `def_allow_veh_access` boolean, 
  `distance_checked` timestamp, 
  `updated` timestamp)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.orc.OrcSerde' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'
LOCATION
  'adl://home/hive/warehouse/tcodata.db/dim_driver_norm'
TBLPROPERTIES (
  'auto.purge'='true', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='1062286', 
  'transient_lastDdlTime'='1530709382')
;
CREATE TABLE `dim_event_desc`(
  `subscription_id` int, 
  `external_id` bigint, 
  `ingested_time` timestamp, 
  `persisted_time` timestamp, 
  `version_id` string, 
  `description` string, 
  `eventtype` int, 
  `in_use` boolean, 
  `start_odo` boolean, 
  `start_position` boolean, 
  `end_odo` boolean, 
  `end_position` boolean, 
  `record_f3_count` boolean, 
  `use_warning_msg` boolean, 
  `active_position` boolean, 
  `record_time` int, 
  `alarm_time` int, 
  `relay_time` int, 
  `relay2_time` int, 
  `critical_time` int, 
  `active_time` int, 
  `active_end_time` int, 
  `track_time` int, 
  `track_interval` int, 
  `alarm_state` int, 
  `relay_state` int, 
  `relay2_state` int, 
  `critical_id` string, 
  `warning_message` string, 
  `summary_type` int, 
  `summary_id` int, 
  `priority` int, 
  `event_save_id` int, 
  `updated` timestamp, 
  `notes` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.orc.OrcSerde' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'
LOCATION
  'adl://home/hive/warehouse/tcodata.db/dim_event_desc'
TBLPROPERTIES (
  'auto.purge'='true', 
  'numFiles'='10', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='682608', 
  'transient_lastDdlTime'='1525684054')
;
CREATE TABLE `dim_event_desc_norm`(
  `is_active` timestamp, 
  `subscription_id` int, 
  `external_id` bigint, 
  `ingested_time` timestamp, 
  `persisted_time` timestamp, 
  `version_id` string, 
  `description` string, 
  `eventtype` int, 
  `in_use` boolean, 
  `start_odo` boolean, 
  `start_position` boolean, 
  `end_odo` boolean, 
  `end_position` boolean, 
  `record_f3_count` boolean, 
  `use_warning_msg` boolean, 
  `active_position` boolean, 
  `record_time` int, 
  `alarm_time` int, 
  `relay_time` int, 
  `relay2_time` int, 
  `critical_time` int, 
  `active_time` int, 
  `active_end_time` int, 
  `track_time` int, 
  `track_interval` int, 
  `alarm_state` int, 
  `relay_state` int, 
  `relay2_state` int, 
  `critical_id` string, 
  `warning_message` string, 
  `summary_type` int, 
  `summary_id` int, 
  `priority` int, 
  `event_save_id` int, 
  `updated` timestamp, 
  `notes` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.orc.OrcSerde' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'
LOCATION
  'adl://home/hive/warehouse/tcodata.db/dim_event_desc_norm'
TBLPROPERTIES (
  'auto.purge'='true', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='549117', 
  'transient_lastDdlTime'='1525939942')
;
CREATE TABLE `dim_location`(
  `subscription_id` int, 
  `external_id` bigint, 
  `ingested_time` timestamp, 
  `persisted_time` timestamp, 
  `version_id` string, 
  `name` string, 
  `details` string, 
  `type` int, 
  `shape_type` int, 
  `source` int, 
  `latitude` double, 
  `longitude` double, 
  `radius` int, 
  `upper_left_lat` double, 
  `upper_left_lng` double, 
  `lower_right_lat` double, 
  `lower_right_lng` double, 
  `deleted` boolean, 
  `show_on_map` boolean, 
  `customer_code` string, 
  `tax_type` int, 
  `site_id` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.orc.OrcSerde' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'
LOCATION
  'adl://home/hive/warehouse/tcodata.db/dim_location'
TBLPROPERTIES (
  'STATS_GENERATED_VIA_STATS_TASK'='true', 
  'auto.purge'='true', 
  'numFiles'='283', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='30830928', 
  'transient_lastDdlTime'='1526515255')
;
CREATE TABLE `dim_location_norm`(
  `is_active` timestamp, 
  `subscription_id` int, 
  `external_id` bigint, 
  `ingested_time` timestamp, 
  `persisted_time` timestamp, 
  `version_id` string, 
  `name` string, 
  `details` string, 
  `type` int, 
  `shape_type` int, 
  `source` int, 
  `latitude` double, 
  `longitude` double, 
  `radius` int, 
  `upper_left_lat` double, 
  `upper_left_lng` double, 
  `lower_right_lat` double, 
  `lower_right_lng` double, 
  `deleted` boolean, 
  `show_on_map` boolean, 
  `customer_code` string, 
  `tax_type` int, 
  `site_id` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.orc.OrcSerde' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'
LOCATION
  'adl://home/hive/warehouse/tcodata.db/dim_location_norm'
TBLPROPERTIES (
  'auto.purge'='true', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='4601746', 
  'transient_lastDdlTime'='1526472086')
;
CREATE TABLE `dim_subscription`(
  `subscription_id` int COMMENT 'from deserializer', 
  `name` string COMMENT 'from deserializer', 
  `org_id` int COMMENT 'from deserializer', 
  `token_timeout_millis` bigint COMMENT 'from deserializer', 
  `account_id` int COMMENT 'from deserializer', 
  `gmt_offset` int COMMENT 'from deserializer', 
  `lang` string COMMENT 'from deserializer', 
  `is_active` boolean COMMENT 'from deserializer', 
  `map_provider_id` string COMMENT 'from deserializer', 
  `company_id` int COMMENT 'from deserializer')
ROW FORMAT SERDE 
  'org.apache.hive.storage.jdbc.JdbcSerDe' 
STORED BY 
  'org.apache.hive.storage.jdbc.JdbcStorageHandler' 
WITH SERDEPROPERTIES ( 
  'serialization.format'='1')
LOCATION
  'adl://home/hive/warehouse/tcodata.db/dim_subscription'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='{\"BASIC_STATS\":\"true\"}', 
  'hive.sql.column.mapping'='subscription_id=SID, name=OrganizationName, org_id=OrganizationId, token_timeout_millis=TokenTimeout, account_id=ParentAccountId, gmt_offset=GmtOffset, lang=LanguageName, is_active=IsActive, map_provider_id=MapProviderId, company_id=CompanyID', 
  'hive.sql.database.type'='MSSQL', 
  'hive.sql.jdbc.driver'='com.microsoft.sqlserver.jdbc.SQLServerDriver', 
  'hive.sql.jdbc.url'='jdbc:sqlserver://mvsdevtcoasq01.database.windows.net:1433\;databaseName=mvsdevtcosdb01\;user=sqladmin\;password=iCvgKlh_hsxGIRrR', 
  'hive.sql.query'='SELECT cast(ID AS int) SID, OrganizationName, OrganizationId, datediff_big(ms, \'1970-01-01\', cast(TokenTimeout as datetime2)) TokenTimeout, cast(ParentAccountId as int) ParentAccountId, GmtOffset, LanguageName, IsActive, MapProviderId, CompanyID FROM dbo.Subscription', 
  'numFiles'='0', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1525671702')
;
CREATE TABLE `dim_vehicle`(
  `subscription_id` int, 
  `external_id` bigint, 
  `ingested_time` timestamp, 
  `persisted_time` timestamp, 
  `version_id` string, 
  `site_id` int, 
  `group_id` int, 
  `last_license` timestamp, 
  `next_license` timestamp, 
  `license_interval` int, 
  `license_remind` int, 
  `license_remind2` int, 
  `license` boolean, 
  `created` timestamp, 
  `description` string, 
  `reg_no` string, 
  `unit_type` int, 
  `vehicle_icon` string, 
  `target_fuel_consumption` double, 
  `target_hourly_consumption` double, 
  `default_driver_id` int, 
  `last_update` timestamp, 
  `distance_checked` timestamp, 
  `last_odometer` double, 
  `last_trip` timestamp, 
  `last_engine_sec` int, 
  `last_service_key` int, 
  `next_service_km` double, 
  `service_km` double, 
  `remind_km` double, 
  `remind_km2` double, 
  `next_service_date` timestamp, 
  `service_months` int, 
  `remind_weeks` int, 
  `remind_weeks2` int, 
  `next_service_sec` int, 
  `service_sec` int, 
  `remind_sec` int, 
  `remind_sec2` int, 
  `last_cor` timestamp, 
  `next_cor` timestamp, 
  `cor_interval` int, 
  `cor_remind` int, 
  `cor_remind2` int, 
  `ignore_late_download` boolean, 
  `remind_on_distance` boolean, 
  `remind_on_duration` boolean, 
  `service_hours` boolean, 
  `cor` boolean, 
  `def_allow_driver_access` boolean, 
  `active` boolean, 
  `active_reason` string, 
  `active_state` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.orc.OrcSerde' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'
LOCATION
  'adl://home/hive/warehouse/tcodata.db/dim_vehicle'
TBLPROPERTIES (
  'STATS_GENERATED_VIA_STATS_TASK'='true', 
  'auto.purge'='true', 
  'numFiles'='1399', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='175114355', 
  'transient_lastDdlTime'='1526983293')
;
CREATE TABLE `dim_vehicle_norm`(
  `is_active` timestamp, 
  `subscription_id` int, 
  `external_id` bigint, 
  `ingested_time` timestamp, 
  `persisted_time` timestamp, 
  `version_id` string, 
  `site_id` int, 
  `group_id` int, 
  `last_license` timestamp, 
  `next_license` timestamp, 
  `license_interval` int, 
  `license_remind` int, 
  `license_remind2` int, 
  `license` boolean, 
  `created` timestamp, 
  `description` string, 
  `reg_no` string, 
  `unit_type` int, 
  `vehicle_icon` string, 
  `target_fuel_consumption` double, 
  `target_hourly_consumption` double, 
  `default_driver_id` int, 
  `last_update` timestamp, 
  `distance_checked` timestamp, 
  `last_odometer` double, 
  `last_trip` timestamp, 
  `last_engine_sec` int, 
  `last_service_key` int, 
  `next_service_km` double, 
  `service_km` double, 
  `remind_km` double, 
  `remind_km2` double, 
  `next_service_date` timestamp, 
  `service_months` int, 
  `remind_weeks` int, 
  `remind_weeks2` int, 
  `next_service_sec` int, 
  `service_sec` int, 
  `remind_sec` int, 
  `remind_sec2` int, 
  `last_cor` timestamp, 
  `next_cor` timestamp, 
  `cor_interval` int, 
  `cor_remind` int, 
  `cor_remind2` int, 
  `ignore_late_download` boolean, 
  `remind_on_distance` boolean, 
  `remind_on_duration` boolean, 
  `service_hours` boolean, 
  `cor` boolean, 
  `def_allow_driver_access` boolean, 
  `active` boolean, 
  `active_reason` string, 
  `active_state` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.orc.OrcSerde' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'
LOCATION
  'adl://home/hive/warehouse/tcodata.db/dim_vehicle_norm'
TBLPROPERTIES (
  'auto.purge'='true', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='507007', 
  'transient_lastDdlTime'='1526980020')
;
CREATE TABLE `fact_event`(
  `subscription_id` int, 
  `external_id` bigint, 
  `ingested_time` timestamp, 
  `persisted_time` timestamp, 
  `vehicle_id` int, 
  `lineage_code` int, 
  `driver_id` int, 
  `driver_orig_id` int, 
  `event_id` int, 
  `event_type` int, 
  `start_seq` int, 
  `end_seq` int, 
  `start` timestamp, 
  `end_` timestamp, 
  `recorded` timestamp, 
  `start_odo` double, 
  `end_odo` double, 
  `odometer` double, 
  `start_gps_id` bigint, 
  `end_gps_id` bigint, 
  `total_time` int, 
  `total_occurs` int, 
  `value` double, 
  `litres` double, 
  `f3prm` int, 
  `f3value` double)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.orc.OrcSerde' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'
LOCATION
  'adl://home/hive/warehouse/tcodata.db/fact_event'
TBLPROPERTIES (
  'STATS_GENERATED_VIA_STATS_TASK'='true', 
  'auto.purge'='true', 
  'numFiles'='3913', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='5706625351', 
  'transient_lastDdlTime'='1526983300')
;
CREATE TABLE `fact_gps_pos`(
  `subscription_id` int, 
  `external_id` bigint, 
  `ingested_time` timestamp, 
  `persisted_time` timestamp, 
  `vehicle_id` int, 
  `lineage_code` int, 
  `driver_id` int, 
  `driver_orig_id` int, 
  `event_time` timestamp, 
  `latitude` double, 
  `longitude` double, 
  `altitude` int, 
  `velocity` int, 
  `block_seq` int, 
  `heading` int, 
  `satellites` int, 
  `hdop` double, 
  `age_of_read` int, 
  `distance_since_read` int, 
  `is_avl` boolean, 
  `odometer` double, 
  `coord_valid` boolean, 
  `event_year` int, 
  `event_month` int, 
  `event_day` int, 
  `event_hour` int, 
  `event_minute` int, 
  `event_second` bigint, 
  `event_msecond` bigint, 
  `geohash1` string, 
  `geohash2` string, 
  `geohash3` string, 
  `geohash4` string, 
  `geohash5` string, 
  `geohash6` string, 
  `geohash7` string, 
  `geohash8` string, 
  `geohash9` string, 
  `geohash10` string, 
  `geohash11` string, 
  `geohash12` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.orc.OrcSerde' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'
LOCATION
  'adl://home/hive/warehouse/tcodata.db/fact_gps_pos'
TBLPROPERTIES (
  'STATS_GENERATED_VIA_STATS_TASK'='true', 
  'auto.purge'='true', 
  'numFiles'='4295', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='186281816607', 
  'transient_lastDdlTime'='1526983318')
;
CREATE TABLE `fact_sub_trip`(
  `subscription_id` int, 
  `external_id` string, 
  `ingested_time` timestamp, 
  `persisted_time` timestamp, 
  `vehicle_id` int, 
  `lineage_code` int, 
  `trip_id` int, 
  `seq` int, 
  `depart_time` timestamp, 
  `halt_time` timestamp, 
  `trip_distance` double, 
  `odometer` double, 
  `max_speed` double, 
  `speed_time` int, 
  `speed_occurs` int, 
  `speed_score` double, 
  `max_brake` double, 
  `brake_time` int, 
  `brake_occurs` int, 
  `brake_score` double, 
  `max_accel` double, 
  `accel_time` int, 
  `accel_occurs` int, 
  `accel_score` double, 
  `max_rpm` double, 
  `rpm_time` int, 
  `rpm_occurs` int, 
  `rpm_score` double, 
  `gb_time` int, 
  `gb_score` double, 
  `ex_idle_time` int, 
  `ex_idle_occurs` int, 
  `ex_idle_score` double, 
  `n_idle_time` int, 
  `n_idle_occurs` int, 
  `litres` double, 
  `pulse_prm_id` int, 
  `pulse_value` double, 
  `start_gps_id` bigint, 
  `end_gps_id` bigint, 
  `start_engine_sec` int, 
  `end_engine_sec` int, 
  `standing_time` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.orc.OrcSerde' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'
LOCATION
  'adl://home/hive/warehouse/tcodata.db/fact_sub_trip'
TBLPROPERTIES (
  'STATS_GENERATED_VIA_STATS_TASK'='true', 
  'auto.purge'='true', 
  'numFiles'='4334', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='5644588708', 
  'transient_lastDdlTime'='1527776418')
;
CREATE TABLE `fact_trip`(
  `subscription_id` int, 
  `external_id` bigint, 
  `ingested_time` timestamp, 
  `persisted_time` timestamp, 
  `vehicle_id` int, 
  `lineage_code` int, 
  `driver_id` int, 
  `driver_orig_id` int, 
  `trip_no` int, 
  `trip_start` timestamp, 
  `trip_end` timestamp, 
  `category_id` int, 
  `notes` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.orc.OrcSerde' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'
LOCATION
  'adl://home/hive/warehouse/tcodata.db/fact_trip'
TBLPROPERTIES (
  'STATS_GENERATED_VIA_STATS_TASK'='true', 
  'auto.purge'='true', 
  'numFiles'='4350', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='839554323', 
  'transient_lastDdlTime'='1530708612')
;
CREATE TABLE `lineage_eh_pos`(
  `eh_ns` string COMMENT 'from deserializer', 
  `eh_name` string COMMENT 'from deserializer', 
  `partition_id` int COMMENT 'from deserializer', 
  `from_seq_no` bigint COMMENT 'from deserializer', 
  `to_seq_no` bigint COMMENT 'from deserializer', 
  `count` bigint COMMENT 'from deserializer', 
  `preferred_loc` string COMMENT 'from deserializer', 
  `upd_date` timestamp COMMENT 'from deserializer', 
  `correlation_id` string COMMENT 'from deserializer')
ROW FORMAT SERDE 
  'org.apache.hive.storage.jdbc.JdbcSerDe' 
STORED BY 
  'org.apache.hive.storage.jdbc.JdbcStorageHandler' 
WITH SERDEPROPERTIES ( 
  'serialization.format'='1')
LOCATION
  'adl://home/hive/warehouse/tcodata.db/lineage_eh_pos'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='{\"BASIC_STATS\":\"true\"}', 
  'hive.sql.column.mapping'='eh_ns=EhNamespace, eh_name=EhName, partition_id=PartitionId, from_seq_no=FromSeqNo, to_seq_no=ToSeqNo, count=SeqCount, preferred_loc=PreferredLoc, upd_date=DateUtc, correlation_id=CorrelationId', 
  'hive.sql.database.type'='MSSQL', 
  'hive.sql.jdbc.driver'='com.microsoft.sqlserver.jdbc.SQLServerDriver', 
  'hive.sql.jdbc.url'='jdbc:sqlserver://mvsdevtcoasq01.database.windows.net:1433\;databaseName=mvsdevtcosdb01\;user=sqladmin\;password=iCvgKlh_hsxGIRrR', 
  'hive.sql.query'='SELECT EhNamespace, EhName, PartitionId, FromSeqNo, ToSeqNo, SeqCount, PreferredLoc, DateUtc, CorrelationId FROM dbo.EventHubsPositionsDataLake', 
  'numFiles'='0', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1525671705')
;
CREATE TABLE `lineage_eh_state`(
  `subscription_id` int, 
  `etype` int, 
  `eclass` int, 
  `upd_date` timestamp, 
  `eh_ns` string, 
  `eh_name` string, 
  `start_ingested` timestamp, 
  `end_ingested` timestamp, 
  `start_offset` bigint, 
  `end_offset` bigint, 
  `start_version` string, 
  `end_version` string, 
  `total` bigint)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.orc.OrcSerde' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'
LOCATION
  'adl://home/hive/warehouse/tcodata.db/lineage_eh_state'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='{\"BASIC_STATS\":\"true\"}', 
  'auto.purge'='true', 
  'numFiles'='0', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1525671689')
;
CREATE TABLE `lineage_mixt_ext`(
  `subscription_id` int COMMENT 'from deserializer', 
  `etype` int COMMENT 'from deserializer', 
  `eclass` int COMMENT 'from deserializer', 
  `upd_date` timestamp COMMENT 'from deserializer', 
  `fact_id` bigint COMMENT 'from deserializer', 
  `dim_version` string COMMENT 'from deserializer', 
  `batch_len` bigint COMMENT 'from deserializer', 
  `duration_millis` bigint COMMENT 'from deserializer', 
  `total` bigint COMMENT 'from deserializer')
ROW FORMAT SERDE 
  'org.apache.hive.storage.jdbc.JdbcSerDe' 
STORED BY 
  'org.apache.hive.storage.jdbc.JdbcStorageHandler' 
WITH SERDEPROPERTIES ( 
  'serialization.format'='1')
LOCATION
  'adl://home/hive/warehouse/tcodata.db/lineage_mixt_ext'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='{\"BASIC_STATS\":\"true\"}', 
  'hive.sql.column.mapping'='subscription_id=ID, eclass=EntityType, eclass=EntityClass, upd_date=LastSyncDateUtc, fact_id=FactFirstNotProcessedId, dim_version=DimensionActiveVersion, batch_len=LastSyncElementsCount, duration_millis=LastSyncDuration, total=TotalElementsCount', 
  'hive.sql.database.type'='MSSQL', 
  'hive.sql.jdbc.driver'='com.microsoft.sqlserver.jdbc.SQLServerDriver', 
  'hive.sql.jdbc.url'='jdbc:sqlserver://mvsdevtcoasq01.database.windows.net:1433\;databaseName=mvsdevtcosdb01\;user=sqladmin\;password=iCvgKlh_hsxGIRrR', 
  'hive.sql.query'='SELECT cast(ParentSubscriptionId AS int) SID, EntityType, EntityClass, LastSyncDateUtc, FactFirstNotProcessedId, DimensionActiveVersion, LastSyncElementsCount, datediff_big(ms, \'1970-01-01\', cast(LastSyncDuration as datetime2)) LastSyncDuration, TotalElementsCount FROM dbo.TrackedEntityEndpoint', 
  'numFiles'='0', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1525671707')
;
CREATE TABLE `lineage_mixt_raw`(
  `subscription_id` int COMMENT 'from deserializer', 
  `etype` int COMMENT 'from deserializer', 
  `eclass` int COMMENT 'from deserializer', 
  `upd_date` timestamp COMMENT 'from deserializer', 
  `duration_millis` bigint COMMENT 'from deserializer', 
  `offset` bigint COMMENT 'from deserializer', 
  `active_version` string COMMENT 'from deserializer', 
  `batch_len` bigint COMMENT 'from deserializer', 
  `total` bigint COMMENT 'from deserializer', 
  `correlation_id` string COMMENT 'from deserializer')
ROW FORMAT SERDE 
  'org.apache.hive.storage.jdbc.JdbcSerDe' 
STORED BY 
  'org.apache.hive.storage.jdbc.JdbcStorageHandler' 
WITH SERDEPROPERTIES ( 
  'serialization.format'='1')
LOCATION
  'adl://home/hive/warehouse/tcodata.db/lineage_mixt_raw'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='{\"BASIC_STATS\":\"true\"}', 
  'hive.sql.column.mapping'='subscription_id=SID, eclass=EntityType, eclass=EntityClass, upd_date=LastSyncDateUtc, duration_millis=LastSyncDuration, offset=LastProcessedId, active_version=ActiveVersion, batch_len=LastSyncElementsCount, total=TotalElementsCount, correlation_id=CorrelationId', 
  'hive.sql.database.type'='MSSQL', 
  'hive.sql.jdbc.driver'='com.microsoft.sqlserver.jdbc.SQLServerDriver', 
  'hive.sql.jdbc.url'='jdbc:sqlserver://mvsdevtcoasq01.database.windows.net:1433\;databaseName=mvsdevtcosdb01\;user=sqladmin\;password=iCvgKlh_hsxGIRrR', 
  'hive.sql.query'='SELECT cast(ParentSubscriptionId AS int) SID, EntityType, EntityClass, LastSyncDateUtc, datediff_big(ms, \'1970-01-01\', cast(LastSyncDuration as datetime2)) LastSyncDuration, LastProcessedId, ActiveVersion, LastSyncElementsCount, TotalElementsCount, CorrelationId FROM dbo.TrackedEntityEndpointDataLake', 
  'numFiles'='0', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1525671708')
;
CREATE TABLE `lineage_mixt_raw_offsets`(
  `subscription_id` int, 
  `etype` int, 
  `eclass` int, 
  `upd_date` timestamp, 
  `duration_millis` bigint, 
  `offset` bigint, 
  `active_version` string, 
  `batch_len` bigint, 
  `total` bigint, 
  `correlation_id` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.orc.OrcSerde' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'
LOCATION
  'adl://home/hive/warehouse/tcodata.db/lineage_mixt_raw_offsets'
TBLPROPERTIES (
  'auto.purge'='true', 
  'numFiles'='1601', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='790947', 
  'transient_lastDdlTime'='1525952069')
;
CREATE TABLE `mng_signals`(
  `subscription_id` int COMMENT 'from deserializer', 
  `etype` int COMMENT 'from deserializer', 
  `eclass` int COMMENT 'from deserializer', 
  `upd_date` timestamp COMMENT 'from deserializer', 
  `correlation_id` string COMMENT 'from deserializer', 
  `signal_type` int COMMENT 'from deserializer', 
  `signal_value` bigint COMMENT 'from deserializer', 
  `signal_payload` binary COMMENT 'from deserializer')
ROW FORMAT SERDE 
  'org.apache.hive.storage.jdbc.JdbcSerDe' 
STORED BY 
  'org.apache.hive.storage.jdbc.JdbcStorageHandler' 
WITH SERDEPROPERTIES ( 
  'serialization.format'='1')
LOCATION
  'adl://home/hive/warehouse/tcodata.db/mng_signals'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='{\"BASIC_STATS\":\"true\"}', 
  'hive.sql.column.mapping'='subscription_id=SID, etype=EntityType, eclass=EntityClass, upd_date=DateUtc, correlation_id=CorrelationId, signal_type=SignalType, signal_value=SignalValue, signal_payload=SignalPayload', 
  'hive.sql.database.type'='MSSQL', 
  'hive.sql.jdbc.driver'='com.microsoft.sqlserver.jdbc.SQLServerDriver', 
  'hive.sql.jdbc.url'='jdbc:sqlserver://mvsdevtcoasq01.database.windows.net:1433\;databaseName=mvsdevtcosdb01\;user=sqladmin\;password=iCvgKlh_hsxGIRrR', 
  'hive.sql.query'='SELECT cast(ParentSubscriptionId AS int) SID, EntityType, EntityClass, DateUtc, CorrelationId, SignalType, SignalValue, SignalPayload FROM dbo.EventHubsMngSignalsDataLake', 
  'numFiles'='0', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1525671704')
;
CREATE TABLE `stat_heatmaps`(
  `level` int, 
  `geohash` string, 
  `latitude` double, 
  `longitude` double, 
  `count` bigint, 
  `upd_date` timestamp)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.orc.OrcSerde' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'
LOCATION
  'adl://home/hive/warehouse/tcodata.db/stat_heatmaps'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='{\"BASIC_STATS\":\"true\"}', 
  'auto.purge'='true', 
  'numFiles'='0', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='0', 
  'transient_lastDdlTime'='1525671692')
;
