TYPE=VIEW
query=select `performance_schema`.`global_status`.`VARIABLE_NAME` AS `variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `variable_value` from `performance_schema`.`global_status` where ((`performance_schema`.`global_status`.`VARIABLE_NAME` like \'perf%lost\') and (`performance_schema`.`global_status`.`VARIABLE_VALUE` > 0))
md5=a4602a3a66e4c59a9e72166d18821c07
updatable=1
algorithm=2
definer_user=mysql.sys
definer_host=localhost
suid=0
with_check_option=0
timestamp=2022-10-22 00:49:03
create-version=1
source=SELECT variable_name, variable_value FROM performance_schema.global_status WHERE variable_name LIKE \'perf%lost\' AND variable_value > 0
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `performance_schema`.`global_status`.`VARIABLE_NAME` AS `variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `variable_value` from `performance_schema`.`global_status` where ((`performance_schema`.`global_status`.`VARIABLE_NAME` like \'perf%lost\') and (`performance_schema`.`global_status`.`VARIABLE_VALUE` > 0))
